
Private  Proc_1_0_45B780(arg_C, arg_10, arg_14) '45B780
  loc_0045B786: ext_4010EC
  loc_0045B7C8: call var_8004 = global_00401188(var_1C, arg_C, var_18, 0, 0, 0)
  loc_0045B7D1: var_8008 = RegCreateKey(Me, var_8004, )
  loc_0045B7DC: call var_800C = global_00401054
  loc_0045B7E9: call var_8010 = global_004010F4(arg_C, var_1C)
  loc_0045B7EE: call var_8014 = global_004011CC
  loc_0045B7FA: call var_8018 = global_00401018(arg_14)
  loc_0045B80B: call var_801C = global_00401188(var_20, arg_14, var_8018)
  loc_0045B81C: call var_8020 = global_00401188(var_1C, arg_10, 00000000h, 00000001h, var_801C)
  loc_0045B823: var_8024 = RegSetValueEx(var_18, var_8020, , , , )
  loc_0045B828: call var_8028 = global_00401054
  loc_0045B832: call var_802C = global_004010F4(arg_10, var_1C)
  loc_0045B83C: call var_8030 = global_004010F4(arg_14, var_20)
  loc_0045B848: call var_8034 = global_00401150(00000002h, var_1C, var_20)
  loc_0045B855: var_8038 = RegCloseKey(var_18)
  loc_0045B85A: call var_803C = global_00401054
  loc_0045B861: GoTo loc_0045B877
  loc_0045B86D: call var_8040 = global_00401150(00000002h, var_1C, var_20, global_0045B878)
  loc_0045B876: Exit Sub
  loc_0045B877: ' Referenced from: 0045B861
End Sub

Private Sub Proc_1_1_45B890
  loc_0045B896: ext_4010EC
  loc_0045B8DB: call var_8004 = global_00401148(0, 0, 0)
  loc_0045B8F4: call var_800C = global_004011CC
  loc_0045B8FD: If (Proc_2_0_45BA20(var_28, , ) = True) Then
  loc_0045B90E:   call var_8010 = global_0040114C(global_0041C1DC)
  loc_0045B91B:   call var_8014 = global_00401148
  loc_0045B925:   call var_8018 = global_00401148
  loc_0045B942:   var_801C = Proc_2_1_45BB50(var_3C, 80000002h, var_28)
  loc_0045B957:   call var_8020 = global_00401150(00000002h, var_28, var_2C, var_2C, var_8010)
  loc_0045B95F:   call var_8024 = global_00401014
  loc_0045B96A:   call var_8028 = global_0040114C(global_0041C1DC)
  loc_0045B977:   call var_802C = global_00401148
  loc_0045B981:   call var_8030 = global_00401148
  loc_0045B99E:   var_8034 = Proc_2_1_45BB50(var_3C, 80000002h, var_28)
  loc_0045B9AD:   call var_8038 = global_00401150(00000002h, var_28, var_2C, var_2C, var_8028)
  loc_0045B9B5:   call var_803C = global_00401014
  loc_0045B9BB: End If
  loc_0045B9C0: GoTo loc_0045B9EE
  loc_0045B9C6: If var_4 Then
  loc_0045B9CB:   call var_8040 = global_00401014(global_0045B9EF)
  loc_0045B9D1: End If
  loc_0045B9DB: call var_8044 = global_00401150(00000002h, var_28, var_2C)
  loc_0045B9E7: call var_8048 = global_00401014
  loc_0045B9ED: Exit Sub
  loc_0045B9EE: ' Referenced from: 0045B9C0
End Sub
