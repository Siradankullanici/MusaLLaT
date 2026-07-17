
Public Sub Proc_1_0_4059D0
  loc_00405A90: var_ret_1 = arg_C
  loc_00405A97: var_eax = GetFileVersionInfoSize(var_ret_1, var_168)
  loc_00405A9C: var_16C = GetFileVersionInfoSize(var_ret_1, var_168)
  loc_00405AAD: var_ret_2 = var_58
  loc_00405ACC: ecx = vbNullString
  loc_00405AD8: ecx = vbNullString
  loc_00405AE4: ecx = vbNullString
  loc_00405AF0: ecx = vbNullString
  loc_00405AFC: ecx = vbNullString
  loc_00405B08: ecx = vbNullString
  loc_00405B14: ecx = vbNullString
  loc_00405B20: ecx = vbNullString
  loc_00405B2C: ecx = vbNullString
  loc_00405B38: ecx = vbNullString
  loc_00405B42: If var_16C > 0 Then
  loc_00405B62:   var_30 = String$(var_16C, "")
  loc_00405B79:   var_ret_3 = var_30
  loc_00405B89:   var_ret_4 = arg_C
  loc_00405B90:   var_eax = GetFileVersionInfo(var_ret_4, 0, var_16C, var_ret_3)
  loc_00405B95:   var_168 = GetFileVersionInfo(var_ret_4, 0, var_16C, var_ret_3)
  loc_00405BAC:   var_ret_5 = var_58
  loc_00405BB6:   var_ret_6 = var_5C
  loc_00405BD3:   If var_168 = 0 Then GoTo loc_004082DA
  loc_00405C3E:   call __vbaRefVarAry(Split(var_30, Chr(1) & Chr(1), -1, 0))
  loc_00405C56:   var_11C = UBound(eax)
  loc_00405C85:   var_E4 = Split(var_30, Chr(1) & Chr(1), -1, 0)
  loc_00405CC3:   call __vbaVarIndexLoad(var_F4, var_E4, 00000001h, var_118)
  loc_00405D1D:   var_74 = Chr(1)
  loc_00405D4D:   var_54 = Split(CStr(__vbaVarIndexLoad(var_F4, var_E4, 00000001h, var_118)), var_74, -1, %StkVar1 = CStr(%StkVar2))
  loc_00405D7D:   call __vbaRefVarAry(var_54)
  loc_00405D88:   var_ret_8 = UBound(__vbaRefVarAry(var_54))
  loc_00405D8E:   var_12C = var_ret_8
  loc_00405DD9:   For var_24 = 0 To var_ret_8 Step 1
  loc_00405DDF: 
  loc_00405DE1:     If var_180 = 0 Then GoTo loc_004082DA
  loc_00405E04:     var_11C = var_24
  loc_00405E21:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00405E78:     var_12C = vbNullString
  loc_00405F01:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00405F2B:     var_15C = vbNullString
  loc_00405F6C:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00405F85:     eax = (var_64 = "CompanyName") + 1
  loc_00405F8B:     var_170 = (var_64 = "CompanyName") + 1
  loc_00406003:     var_11C = var_24
  loc_00406014:     If var_170 Then
  loc_00406040:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00406097:       var_12C = vbNullString
  loc_00406120:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_0040614A:       var_15C = vbNullString
  loc_0040618B:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00406198:       GoTo loc_0040824A
  loc_0040619D:     End If
  loc_004061C3:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_0040621A:     var_12C = vbNullString
  loc_004062A3:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_004062CD:     var_15C = vbNullString
  loc_0040630E:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00406327:     eax = (var_64 = "FileDescription") + 1
  loc_0040632D:     var_170 = (var_64 = "FileDescription") + 1
  loc_004063AA:     var_11C = var_24
  loc_004063B6:     If var_170 Then
  loc_004063E2:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00406439:       var_12C = vbNullString
  loc_004064C2:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_004064EC:       var_15C = vbNullString
  loc_0040652D:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_0040653A:       GoTo loc_0040824A
  loc_0040653F:     End If
  loc_00406565:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_004065BC:     var_12C = vbNullString
  loc_00406645:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_0040666F:     var_15C = vbNullString
  loc_004066B0:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_004066C9:     eax = (var_64 = "FileVersion") + 1
  loc_004066CF:     var_170 = (var_64 = "FileVersion") + 1
  loc_0040674C:     var_11C = var_24
  loc_00406758:     If var_170 Then
  loc_00406784:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_004067DB:       var_12C = vbNullString
  loc_00406864:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_0040688E:       var_15C = vbNullString
  loc_004068CF:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_004068DC:       GoTo loc_0040824A
  loc_004068E1:     End If
  loc_00406907:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_0040695E:     var_12C = vbNullString
  loc_004069E7:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00406A11:     var_15C = vbNullString
  loc_00406A52:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00406A6B:     eax = (var_64 = "InternalName") + 1
  loc_00406A71:     var_170 = (var_64 = "InternalName") + 1
  loc_00406AEE:     var_11C = var_24
  loc_00406AFA:     If var_170 Then
  loc_00406B26:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00406B7D:       var_12C = vbNullString
  loc_00406C06:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00406C30:       var_15C = vbNullString
  loc_00406C71:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00406C7E:       GoTo loc_0040824A
  loc_00406C83:     End If
  loc_00406CA9:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00406D00:     var_12C = vbNullString
  loc_00406D89:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00406DB3:     var_15C = vbNullString
  loc_00406DF4:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00406E0D:     eax = (var_64 = "OriginalFilename") + 1
  loc_00406E13:     var_170 = (var_64 = "OriginalFilename") + 1
  loc_00406E90:     var_11C = var_24
  loc_00406E9C:     If var_170 Then
  loc_00406EC8:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00406F1F:       var_12C = vbNullString
  loc_00406FA8:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00406FD2:       var_15C = vbNullString
  loc_00407013:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00407020:       GoTo loc_0040824A
  loc_00407025:     End If
  loc_0040704B:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_004070A2:     var_12C = vbNullString
  loc_0040712B:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407155:     var_15C = vbNullString
  loc_00407196:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_004071AF:     eax = (var_64 = "LegalCopyright") + 1
  loc_004071B5:     var_170 = (var_64 = "LegalCopyright") + 1
  loc_00407232:     var_11C = var_24
  loc_0040723E:     If var_170 Then
  loc_0040726A:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_004072C1:       var_12C = vbNullString
  loc_0040734A:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407374:       var_15C = vbNullString
  loc_004073B5:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_004073C2:       GoTo loc_0040824A
  loc_004073C7:     End If
  loc_004073ED:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00407444:     var_12C = vbNullString
  loc_004074CD:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_004074F7:     var_15C = vbNullString
  loc_00407538:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00407551:     eax = (var_64 = "ProductVersion") + 1
  loc_00407557:     var_170 = (var_64 = "ProductVersion") + 1
  loc_004075D4:     var_11C = var_24
  loc_004075E0:     If var_170 Then
  loc_0040760C:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00407663:       var_12C = vbNullString
  loc_004076EC:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407716:       var_15C = vbNullString
  loc_00407757:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00407764:       GoTo loc_0040824A
  loc_00407769:     End If
  loc_0040778F:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_004077E6:     var_12C = vbNullString
  loc_0040786F:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407899:     var_15C = vbNullString
  loc_004078DA:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_004078F3:     eax = (var_64 = "ProductName") + 1
  loc_004078F9:     var_170 = (var_64 = "ProductName") + 1
  loc_00407976:     var_11C = var_24
  loc_00407982:     If var_170 Then
  loc_004079AE:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00407A05:       var_12C = vbNullString
  loc_00407A8E:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407AB8:       var_15C = vbNullString
  loc_00407AF9:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00407B06:       GoTo loc_0040824A
  loc_00407B0B:     End If
  loc_00407B31:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00407B88:     var_12C = vbNullString
  loc_00407C11:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407C3B:     var_15C = vbNullString
  loc_00407C7C:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00407C95:     eax = (var_64 = "Comments") + 1
  loc_00407C9B:     var_170 = (var_64 = "Comments") + 1
  loc_00407D18:     var_11C = var_24
  loc_00407D24:     If var_170 Then
  loc_00407D50:       call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00407DA7:       var_12C = vbNullString
  loc_00407E30:       call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407E5A:       var_15C = vbNullString
  loc_00407E9B:       var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00407EA8:       GoTo loc_0040824A
  loc_00407EAD:     End If
  loc_00407ED3:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00407F2A:     var_12C = vbNullString
  loc_00407FB3:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_00407FDD:     var_15C = vbNullString
  loc_0040801E:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_00408037:     eax = (var_64 = "BuildID") + 1
  loc_0040803D:     var_170 = (var_64 = "BuildID") + 1
  loc_004080B2:     If var_170 = 0 Then GoTo loc_004082BD
  loc_004080D5:     var_11C = var_24
  loc_004080F2:     call __vbaVarIndexLoad(var_74, var_54, 00000001h, var_118)
  loc_00408149:     var_12C = vbNullString
  loc_004081D2:     call __vbaVarIndexLoad(var_F4, Split(CStr(vbNullString & var_74), Chr(0) & Chr(0) & Chr(0), -1, 0), 00000001h, var_138)
  loc_004081FC:     var_15C = vbNullString
  loc_0040823D:     var_64 = Replace(CStr(vbNullString & var_F4), CStr(Chr(0)), vbNullString, 1, -1, 0)
  loc_0040824A:     'Referenced from: 00406198
  loc_0040824A:     ecx = var_64
  loc_004082BD: 
  loc_004082CF:   Next var_24
  loc_004082D5:   GoTo loc_00405DDF
  loc_004082DA: End If
  loc_004082DF: GoTo loc_0040835E
  loc_004082E5: If var_4 Then
  loc_004082F0: End If
  loc_0040835D: Exit Sub
  loc_0040835E: 'Referenced from: 004082DF
End Sub

Public Sub Proc_1_1_4083C0
  loc_00408404: GoTo loc_00408410
  loc_0040840F: Exit Sub
  loc_00408410: 'Referenced from: 00408404
End Sub
