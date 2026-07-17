VERSION 5.00
Begin VB.Form Anafrm
  Caption = "MusaLLaT.exe Virüsünü Silme"
  BackColor = &H8000000A&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  ClientLeft = 19425
  ClientTop = 6585
  ClientWidth = 8430
  ClientHeight = 7875
  StartUpPosition = 2 'CenterScreen
  Begin Frame Frame1
    Left = 120
    Top = 1800
    Width = 8175
    Height = 5175
    TabIndex = 1
    Begin ListBox List1
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 120
      Top = 240
      Width = 7935
      Height = 4155
      TabIndex = 2
    End
    Begin Label LBLTaranan
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 120
      Top = 4440
      Width = 7935
      Height = 615
      TabIndex = 3
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin CommandButton Command1
    Caption = "Hakkýmý Helal Ediyorum"
    Left = 0
    Top = 7440
    Width = 8415
    Height = 375
    TabIndex = 0
  End
  Begin Label Label2
    Caption = "Virüsü silmek için ""Hakkýmý Helal ediyorum"" butonuna týklamanýz yeterli"
    Left = 1560
    Top = 7080
    Width = 4950
    Height = 195
    TabIndex = 5
    AutoSize = -1  'True
  End
  Begin Label Label1
    Caption = "Anafrm.frx":0
    Left = 120
    Top = 120
    Width = 8175
    Height = 1575
    TabIndex = 4
    Alignment = 2 'Center
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 162
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "Anafrm"

'VA: 4028EC
Private Declare Function GetFileVersionInfoSize Lib "version.dll" Alias "GetFileVersionInfoSizeA" (ByVal lptstrFilename As String, lpdwHandle As Long) As Long
'VA: 402898
Private Declare Function GetFileVersionInfo Lib "version.dll"  Alias "GetFileVersionInfoA" (ByVal lptstrFilename As String, ByVal dwHandle As Long, ByVal dwLen As Long, lpData As Any) As Long
'VA: 40261C
Private Declare Function DeleteFile Lib "kernel32" Alias "DeleteFileA" (ByVal lpFileName As String) As Long
'VA: 402498
Private Declare Function FindClose Lib "kernel32" Alias "FindClose" (ByVal hFindFile As Long) As Long
'VA: 402454
Private Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" (ByVal hFindFile As Long, lpFindFileData As WIN32_FIND_DATA) As Long
'VA: 40240C
Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long


Private Sub Command1_Click() '403430
  Dim var_34 As Variant
  loc_004034BC: Set var_34 = Me
  loc_004034C8: Command1.Enabled = edi
  loc_004034EF: var_eax = %fobj
  loc_0040350E: var_eax = List1.Clear
  loc_00403535: var_eax = %fobj
  loc_00403580: var_eax = List1.AddItem vbNullString, var_78
  loc_004035A1: var_eax = %fobj
  loc_004035EC: var_eax = List1.AddItem " Bilgisayar taranýyor lütfen bekleyiniz ...!", var_78
  loc_0040360D: var_eax = %fobj
  loc_00403656: var_eax = List1.AddItem vbNullString, var_78
  loc_00403677: var_eax = %fobj
  loc_0040367F: On Error Resume Next
  loc_004036C0: var_28 = var_0040258C & var_00402594 & var_00402594 & "da"
  loc_004036CA: var_3C = var_28 & "ta"
  loc_004036DC: var_54 = Environ(var_28 & "ta")
  loc_004036E2: var_7C = "\MusaLLaT.exe"
  loc_00403716: SetAttr CStr(var_54 + "\MusaLLaT.exe"), 0
  loc_004037A8: var_28 = var_0040258C & var_00402594 & var_00402594 & "da"
  loc_004037B2: var_3C = var_28 & "ta"
  loc_004037CB: var_7C = "\MusaLLaT.exe"
  loc_004037D8: var_8C = "  Silindi!"
  loc_00403844: var_2C = CStr(Environ(var_28 & "ta") + "\MusaLLaT.exe" & "  Silindi!")
  loc_00403854: var_eax = List1.AddItem var_2C, var_98
  loc_00403890: var_eax = %fobj
  loc_004038E6: var_28 = var_0040258C & var_00402594 & var_00402594 & "da"
  loc_004038F0: var_3C = var_28 & "ta"
  loc_00403908: var_7C = "\MusaLLaT.exe"
  loc_00403945: var_eax = DeleteFile(CStr(Environ(var_28 & "ta") + "\MusaLLaT.exe"))
  loc_004039C2: var_2C = "*.exe*"
  loc_004039EE: var_24 = Environ$("userprofile") & "\Documents\"
  loc_00403A03: var_eax = Call Anafrm.FindFiles(var_24, var_28, var_2C)
  loc_00403A51: var_28 = "*.exe*"
  loc_00403A76: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403AAD: var_28 = "*.exe*"
  loc_00403AC1: var_20 = "E:\"
  loc_00403AD2: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403B09: var_28 = "*.exe*"
  loc_00403B1D: var_20 = "F:\"
  loc_00403B2E: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403B65: var_28 = "*.exe*"
  loc_00403B79: var_20 = "G:\"
  loc_00403B8A: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403BC1: var_28 = "*.exe*"
  loc_00403BD5: var_20 = "J:\"
  loc_00403BE6: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403C1D: var_28 = "*.exe*"
  loc_00403C31: var_20 = "I:\"
  loc_00403C42: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403C79: var_28 = "*.exe*"
  loc_00403C8D: var_20 = "L:\"
  loc_00403C9E: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403CD5: var_28 = "*.exe*"
  loc_00403CE9: var_20 = "H:\"
  loc_00403CFA: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403D31: var_28 = "*.exe*"
  loc_00403D45: var_20 = "K:\"
  loc_00403D56: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403D82: GoTo loc_0040418B
  loc_00403DCC: var_2C = "*.exe*"
  loc_00403DF8: var_24 = Environ$("userprofile") & "\Documents\"
  loc_00403E0C: var_eax = Call Anafrm.FindFiles(var_24, var_28, var_2C)
  loc_00403E5A: var_28 = "*.exe*"
  loc_00403E7F: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403EB6: var_28 = "*.exe*"
  loc_00403ECA: var_20 = "E:\"
  loc_00403EDB: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403F12: var_28 = "*.exe*"
  loc_00403F26: var_20 = "F:\"
  loc_00403F37: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403F6E: var_28 = "*.exe*"
  loc_00403F82: var_20 = "G:\"
  loc_00403F93: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00403FCA: var_28 = "*.exe*"
  loc_00403FDE: var_20 = "J:\"
  loc_00403FEF: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00404026: var_28 = "*.exe*"
  loc_0040403A: var_20 = "I:\"
  loc_0040404B: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_00404082: var_28 = "*.exe*"
  loc_00404096: var_20 = "L:\"
  loc_004040A7: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_004040DE: var_28 = "*.exe*"
  loc_004040F2: var_20 = "H:\"
  loc_00404103: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_0040413A: var_28 = "*.exe*"
  loc_0040414E: var_20 = "K:\"
  loc_0040415F: var_eax = Call Anafrm.FindFiles(var_20, var_24, var_28)
  loc_0040418B: 'Referenced from: 00403D82
  loc_00404191: var_eax = Anafrm.Proc_0_3_404210(Me)
  loc_00404197: Exit Sub
  loc_004041A2: GoTo loc_004041E8
  loc_004041C6: var_eax = %fobj
  loc_004041E7: Exit Sub
  loc_004041E8: 'Referenced from: 004041A2
End Sub

Private Sub Form_Load() '405080
  loc_004050E5: On Error Resume Next
  loc_0040510D: var_eax = Anafrm.Proc_0_5_404E20(Me, "MusaLLaT.exe", FFFFFFFFh)
  loc_0040517F: Open Environ$("windir") & "\System32\drivers\etc\hosts" For Output As #1 Len = -1
  loc_004051AD: Close #1
  loc_004051D9: Set var_30 = CreateObject("Wscript.Shell", 0)
  loc_004051E6: var_98 = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr"
  loc_0040523B: var_30 = Me.RegDelete
  loc_0040535D: var_60 = "HK" & "EY_C" & "URR" & "ENT_U" & "SE" & "R\S" & "OFT" & "WARE\Mic" & "rosoft" & "\Win" & "dows\Curre" & "ntVers" & "ion\Poli"
  loc_00405427: var_88 = var_60 & "cies\Sy" & "stem\Dis" & "abl" & "eRe" & "gis" & "try" & "To" & "ol" & var_00402CBC
  loc_00405478: var_30 = Me.RegDelete
  loc_00405601: var_60 = "HKE" & "Y_CU" & "RRE" & "NT_USER\Sof" & "tware\Po" & "licies\Mic" & "ros" & "oft\W" & "indows\S" & "ys" & "tem\Di" & "sab" & "le"
  loc_0040562A: var_88 = var_60 & var_00402DA8 & "MD"
  loc_0040567B: var_30 = Me.RegDelete
  loc_00405816: var_68 = "HKE" & "Y_CU" & "RREN" & "T_US" & "ER\SO" & "FTW" & "ARE" & "\Mi" & "cro" & "soft" & "\Wi" & "ndo" & "ws\Cu" & "rren" & "tVer"
  loc_0040586D: var_88 = var_68 & "sion\R" & "un\M" & "usa" & "LLaT"
  loc_004058BE: var_30 = Me.RegDelete
  loc_0040592E: GoTo loc_00405998
  loc_00405997: Exit Sub
  loc_00405998: 'Referenced from: 0040592E
End Sub

Public Sub FindFiles(strRootFolder, strFolder, strFile) '404540
  Dim var_2C0 As Variant
  loc_0040459A: On Error Resume Next
  loc_004045E4: var_2C0 = (Right$(strRootFolder, 1) = var_004027F4)
  loc_00404600: If var_2C0 Then
  loc_0040461F:   ecx = strRootFolder & var_004027F4
  loc_00404625: End If
  loc_0040466D: var_ret_1 = strRootFolder & var_00402678
  loc_00404674: var_eax = FindFirstFile(var_ret_1, var_404)
  loc_004046A4: var_34 = FindFirstFile(var_ret_1, var_404)
  loc_004046CB: If var_34 = -1 Then
  loc_004046CD:   GoTo loc_00404C90
  loc_004046D2: End If
  loc_004046E0: 
  loc_004046EB: If var_38 Then
  loc_00404704:   Dim var_260 As String * 260
  loc_00404712:   var_290 = Dim var_260 As String * 260
  loc_0040472F:   var_eax = Anafrm.Proc_0_4_404D00(Me, var_290, var_294, " ?", var_404)
  loc_00404748:   var_260 = var_290
  loc_0040476D:   var_3C = var_294
  loc_0040478C:   Dim var_58 As String * 14
  loc_0040479A:   var_290 = Dim var_58 As String * 14
  loc_004047B7:   var_eax = Anafrm.Proc_0_4_404D00(Me, var_290, var_294, var_28C)
  loc_004047CA:   var_58 = var_290
  loc_00404805:   var_30 = var_294
  loc_0040482A:   If var_28C And 16 = 0 Then
  loc_0040484C:     esi = (var_3C = var_004027FC) + 1
  loc_00404860:     eax = (var_3C = "..") + 1
  loc_00404865:     If (var_3C = "..") + 1 = 0 Then
  loc_0040488A:       var_290 = strRootFolder & var_3C
  loc_004048A8:       var_eax = Call Anafrm.FindFiles(var_290, strFolder, strFile)
  loc_004048AE:       var_2C0 = Call Anafrm.FindFiles(var_290, strFolder, strFile)
  loc_004048F6:     End If
  loc_004048F6:     GoTo loc_00404C1D
  loc_004048FB:   End If
  loc_0040490E:   call Like(strFolder, edx, FFFFFFFFh, edi, (var_3C = "..") + 1, ebx)
  loc_00404919:   If Like(strFolder, edx, FFFFFFFFh, edi, (var_3C = "..") + 1 = 0 Then GoTo loc_00404C1D
  loc_00404930:   call Like(strFile, var_3C)
  loc_0040493B:   If Like(strFile, var_3C) = 0 Then GoTo loc_00404C1D
  loc_00404965:   var_2C0 = Me
  loc_00404980:   LBLTaranan.Caption = eax
  loc_00404985:   var_2C4 = var_2C0
  loc_004049C7:   var_eax = %fobj
  loc_00404A00:   var_eax = call Proc_1_0_4059D0(var_2A8, strRootFolder & var_3C, Me)
  loc_00404A24:   var_eax = call Proc_1_1_4083C0(, , )
  loc_00404A49:   esi = (call Proc_1_1_4083C0(, , ) = "z 3 r 0 _ x") + 1
  loc_00404A4C:   var_eax = call Proc_1_1_4083C0(, , )
  loc_00404A59:   var_294 = call Proc_1_1_4083C0(, , )
  loc_00404A6F:   eax = (var_294 = "z3r0_x") + 1
  loc_00404A75:   var_2C0 = (var_294 = "z3r0_x") + 1
  loc_00404A9E:   If var_2C0 Then
  loc_00404AD8:     var_eax = DeleteFile(strRootFolder & var_3C)
  loc_00404B9B:     var_294 = strRootFolder & var_3C & "  Silindi!"
  loc_00404BB1:     var_eax = List1.AddItem var_294, var_2AC
  loc_00404BB9:     var_2C4 = List1.AddItem var_294, var_2AC
  loc_00404C17:     var_eax = %fobj
  loc_00404C1D:   End If
  loc_00404C1D: 
  loc_00404C42:   var_eax = FindNextFile(var_34, var_28C)
  loc_00404C72:   var_38 = FindNextFile(var_34, var_28C)
  loc_00404C75:   GoTo loc_004046E0
  loc_00404C7A: End If
  loc_00404C85: var_eax = FindClose(var_34)
  loc_00404C90: 'Referenced from: 004046CD
  loc_00404C95: GoTo loc_00404CC9
  loc_00404CB6: var_eax = %fobj
  loc_00404CC8: Exit Sub
  loc_00404CC9: 'Referenced from: 00404C95
End Sub

Public Sub Proc_0_3_404210
  Dim var_14 As Variant
  loc_00404263: var_28 = List1.ListCount
  loc_0040428B: setz bl
  loc_00404290: var_eax = %fobj
  loc_0040429C: If ebx Then
  loc_004042D9:   var_eax = List1.AddItem vbNullString, var_18
  loc_004042FA:   var_eax = %fobj
  loc_0040433A:   var_eax = List1.AddItem vbNullString, var_18
  loc_0040435B:   var_eax = %fobj
  loc_0040436F:   Set var_14 = %fobj
  loc_0040439B:   var_eax = List1.AddItem " Bilgisayarýnýzda MusaLLaT.exe virüsü bulunamadý,  Hakkýnýzý Helal edin!", var_18
  loc_004043A5:   If List1.AddItem " Bilgisayarýnýzda MusaLLaT.exe virüsü bulunamadý < 0 Then
  loc_004043AB:     GoTo loc_004044B5
  loc_004043E7:   var_eax = List1.AddItem vbNullString, var_18
  loc_00404408:   var_eax = %fobj
  loc_00404448:   var_eax = List1.AddItem vbNullString, var_18
  loc_00404469:   var_eax = %fobj
  loc_0040447D:   Set var_14 = %fobj
  loc_004044A9:   var_eax = List1.AddItem " MusaLLaT.exe virüsü silindi!, Lütfen hakkýnýzý helal edin :(", var_18
  loc_004044B3:   If List1.AddItem " MusaLLaT.exe virüsü silindi! < 0 Then
  loc_004044B5:     'Referenced from: 004043AB
  loc_004044C1:     List1.AddItem " MusaLLaT.exe virüsü silindi!, Lütfen hakkýnýzý helal edin :(", var_18 = CheckObj(var_14, var_004024D4, 492)
  loc_004044C7:   End If
  loc_004044C7: End If
  loc_004044CA: var_eax = %fobj
  loc_004044DE: Set var_14 = %fobj
  loc_004044E7: Command1.Enabled = True
  loc_00404508: var_eax = %fobj
  loc_00404513: GoTo loc_0040451F
  loc_00404518: var_eax = %fobj
  loc_0040451E: Exit Sub
  loc_0040451F: 'Referenced from: 00404513
End Sub

Public Sub Proc_0_4_404D00
  loc_00404D43: var_44 = arg_C
  loc_00404D69: var_ret_1 = CLng(InStr(1, arg_C, Chr(0), 0))
  loc_00404D87: If var_ret_1 = 1 Then
  loc_00404D91:   var_1C = vbNullString
  loc_00404D9C:   GoTo loc_00404DF8
  loc_00404D9E: End If
  loc_00404DA0: If var_ret_1 > 0 Then
  loc_00404DB6:   var_1C = Left$(arg_C, var_ret_1 - 00000001h)
  loc_00404DC1:   GoTo loc_00404DF8
  loc_00404DC3: End If
  loc_00404DC8: var_1C = edi
  loc_00404DD3: GoTo loc_00404DF8
  loc_00404DD9: If var_4 Then
  loc_00404DE4: End If
  loc_00404DF7: Exit Sub
  loc_00404DF8: 'Referenced from: 00404D9C
End Sub

Public Sub Proc_0_5_404E20
  loc_00404E6E: On Error Resume Next
  loc_00404EA3: var_68 = "Select Name from Win32_Process Where Name = '" & arg_C & var_004029BC
  loc_00404EE7: var_30 = var_004029C4 & "inm" & "gm"
  loc_00404EF9: var_38 = var_30 & "ts:"
  loc_00404F0F: var_60 = GetObject(var_30 & "ts:", 10)
  loc_00404F62: Set var_B4 = Me.ExecQuery
  loc_00404F74: call __vbaForEachCollAd(var_B8, var_24, var_B4)
  loc_00404F7A: var_D0 = __vbaForEachCollAd(var_B8, var_24, var_B4)
  loc_00404FB9: GoTo loc_00404FF4
  loc_00404FBB: 
  loc_00404FCD: var_24 = Me.Terminate
  loc_00404FE8: Next
  loc_00404FEE: var_D0 = Next
  loc_00404FF4: 'Referenced from: 00404FB9
  loc_00404FFB: If var_D0 <> 0 Then GoTo loc_00404FBB
  loc_00404FFD: Method_8964E04D
  loc_00405002: GoTo loc_00405042
  loc_00405041: Exit Sub
  loc_00405042: 'Referenced from: 00405002
  loc_0040505E: var_eax = %fobj
End Sub
