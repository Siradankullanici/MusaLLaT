
Private Sub Proc_2_0_45BA20
  loc_0045BA26: ext_4010EC
  loc_0045BA88: call var_8008 = global_00401054(0, 0)
  loc_0045BA98: call var_8010 = global_00401054
  loc_0045BA9C: If OpenProcessToken(GetCurrentProcess(0), 40, var_34) Then
  loc_0045BAAC:   call var_8014 = global_00401188(var_4C, Me, var_3C)
  loc_0045BABB:   call var_801C = global_00401054
  loc_0045BAC2:   call var_8020 = global_004010F4(Me, var_4C)
  loc_0045BACB:   call var_8024 = global_004011CC
  loc_0045BAD3:   If LookupPrivilegeValue(0, var_8014, ) Then
  loc_0045BAED:     call var_8028 = global_00401040(00000008h, var_2C, var_3C)
  loc_0045BB0E:     call var_8030 = global_00401054
  loc_0045BB19:     var_44 = (AdjustTokenPrivileges(var_34, 0, 1, 16, var_20, var_48))
  loc_0045BB1C:   End If
  loc_0045BB1C: End If
  loc_0045BB21: GoTo loc_0045BB2D
  loc_0045BB26: call var_8034 = global_004011CC(global_0045BB2E)
  loc_0045BB2C: Exit Sub
  loc_0045BB2D: ' Referenced from: 0045BB21
End Sub

Private  Proc_2_1_45BB50(arg_C, arg_10, arg_14, arg_18) '45BB50
  loc_0045BB56: ext_4010EC
  loc_0045BB94: call var_8004 = global_00401170(var_24, 0, 0, 0)
  loc_0045BB9C: var_4C = var_8004
  loc_0045BBAD: call var_8008 = global_00401188(var_38, arg_10, 0, 00020006h, var_4C)
  loc_0045BBC8: call var_8010 = global_00401054
  loc_0045BBD2: call var_8014 = global_004010F4(arg_10, var_38)
  loc_0045BBE1: var_40 = var_4C
  loc_0045BBEB: call var_8018 = global_00401194
  loc_0045BC03: call var_801C = global_004011CC
  loc_0045BC0D: If (RegOpenKeyEx(arg_C, var_8008, , , ) = 0) Then
  loc_0045BC22:   call var_8020 = global_00401188(var_38, arg_14, 0, 00000004h, arg_18, 00000004h)
  loc_0045BC2D:   call var_8024 = global_00401170(var_24, var_8020)
  loc_0045BC38:   call var_802C = global_00401054
  loc_0045BC42:   call var_8030 = global_004010F4(arg_14, var_38)
  loc_0045BC5A:   call var_8034 = global_004011CC
  loc_0045BC64:   If (RegSetValueEx(var_8024, , , , , ) = 0) Then
  loc_0045BC6A:     call var_8038 = global_00401170(var_24)
  loc_0045BC6D:     var_803C = RegCloseKey(var_8038)
  loc_0045BC72:     call var_8040 = global_00401054
  loc_0045BC74:   End If
  loc_0045BC74: End If
  loc_0045BC79: GoTo loc_0045BC94
  loc_0045BC7F: If var_4 Then
  loc_0045BC84:   call var_8044 = global_00401014(global_0045BC9E)
  loc_0045BC8A: End If
  loc_0045BC8D: call var_8048 = global_004011CC
  loc_0045BC93: Exit Sub
  loc_0045BC94: ' Referenced from: 0045BC79
  loc_0045BC97: call var_804C = global_00401014
End Sub

Private Sub Proc_2_2_45BCD0
  loc_0045BCD6: ext_4010EC
  loc_0045BD28: If global_00460558 = 0 Then
  loc_0045BD34:   call var_8004 = global_00401134(global_00418EE0, global_00460558, 0, 0, 0)
  loc_0045BD3A: End If
  loc_0045BD47: var_40 = global_00460558.UnkVCall_00000014h
  loc_0045BD4E: If var_40 < 0 Then
  loc_0045BD5F:   call var_8008 = global_00401058(var_40, global_00460558, global_00418ED0, 00000014h)
  loc_0045BD63: Else
  loc_0045BD69: End If
  loc_0045BD75: var_44 = var_40.UnkVCall_00000100h
  loc_0045BD7F: If var_44 < 0 Then
  loc_0045BD8D:   call var_800C = global_00401058(var_44, var_40, global_00418EF0, 00000100h)
  loc_0045BD8F: End If
  loc_0045BD9B: var_28 = var_44
  loc_0045BD9E: call var_8010 = global_004011D4
  loc_0045BDB8: var_34 = Proc_45BF50(global_0045BF20)
  loc_0045BDBB: call var_8018 = global_00401148
  loc_0045BDC5: call var_801C = global_00401148
  loc_0045BDD4: call var_8020 = global_004010D4(global_00419148, var_80, var_38)
  loc_0045BDE3: call var_8028 = global_00401054
  loc_0045BDF6: call var_802C = global_00401038(global_00419148, var_38, var_80)
  loc_0045BE14: call var_8030 = global_004011A0(global_00419148, var_80)
  loc_0045BE1D: If (RegisterClass(var_8020)) Then
  loc_0045BE2A:   If global_00460558 = 0 Then
  loc_0045BE36:     call var_8034 = global_00401134(global_00418EE0, global_00460558)
  loc_0045BE3C:   End If
  loc_0045BE49:   var_40 = global_00460558.UnkVCall_00000014h
  loc_0045BE50:   If var_40 < 0 Then
  loc_0045BE5B:     call var_8038 = global_00401058(var_40, global_00460558, global_00418ED0, 00000014h)
  loc_0045BE5D:   End If
  loc_0045BE69:   var_44 = var_40.UnkVCall_00000100h
  loc_0045BE73:   If var_44 < 0 Then
  loc_0045BE81:     call var_803C = global_00401058(var_44, var_40, global_00418EF0, 00000100h)
  loc_0045BE83:   End If
  loc_0045BEA2:   call var_8040 = global_00401188(var_3C, "RegEdit_RegEdit", 00000000h, 00000000h, 00000000h, 00000000h, 00000000h, 00000000h, 00000000h, 00000000h, var_44, 00000000h)
  loc_0045BEAE:   var_8044 = CreateWindowEx(262144, var_8040, , , , , , , , , , )
  loc_0045BEB3:   call var_8048 = global_00401054
  loc_0045BEBC:   call var_804C = global_004011CC
  loc_0045BEC5:   call var_8050 = global_004011D4
  loc_0045BEC7: End If
  loc_0045BECC: GoTo loc_0045BEE1
  loc_0045BED1: call var_8054 = global_004011CC(global_0045BF00)
  loc_0045BEDA: call var_8058 = global_004011D4
  loc_0045BEE0: Exit Sub
  loc_0045BEE1: ' Referenced from: 0045BECC
  loc_0045BEEA: call var_805C = global_004011A0(global_00419148, var_80)
  loc_0045BEF9: call var_8060 = global_00401050(global_00419148, var_38)
End Sub
