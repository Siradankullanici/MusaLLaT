VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "VersionInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Private Type UDT_1_0043A5FC
  bStruc(52) As Byte ' String fields: 0
End Type


Public Property Let FileName() '45BF60
  loc_0045BF66: ext_4010EC
  loc_0045BF7E: ext_40109C
  loc_0045BFBA: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045BFD2: call var_8008 = global_00401148
  loc_0045BFE8: var_800C = VersionInfo.Proc_4_29_45E210
End Sub

Public Property Get FileName() '45C010
  loc_0045C016: ext_4010EC
  loc_0045C02E: ext_40109C
  loc_0045C073: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C089: call var_8008 = global_00401148
  loc_0045C094: GoTo loc_0045C0A0
  loc_0045C099: call var_800C = global_004011CC(global_0045C0A1)
  loc_0045C09F: Exit Sub
  loc_0045C0A0: ' Referenced from: 0045C094
End Sub

Public Property Let ModuleName() '45C0D0
  loc_0045C0D6: ext_4010EC
  loc_0045C0EE: ext_40109C
  loc_0045C12A: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C142: call var_8008 = global_00401148
  loc_0045C158: var_800C = VersionInfo.Proc_4_29_45E210
End Sub

Public Property Get ModuleName() '45C180
  loc_0045C186: ext_4010EC
  loc_0045C19E: ext_40109C
  loc_0045C1E3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C1F9: call var_8008 = global_00401148
  loc_0045C204: GoTo loc_0045C210
  loc_0045C209: call var_800C = global_004011CC(global_0045C211)
  loc_0045C20F: Exit Sub
  loc_0045C210: ' Referenced from: 0045C204
End Sub

Public Property Get Language() '45C240
  loc_0045C246: ext_4010EC
  loc_0045C25E: ext_40109C
  loc_0045C29A: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C2AE: call var_8008 = global_00401018(global_64)
  loc_0045C2B7: If var_8008 = 8 Then
  loc_0045C2CE:   call var_800C = global_0040119C(global_64, 00000004h, "&H")
  loc_0045C2D9:   call var_8010 = global_004011AC
  loc_0045C2E0:   call var_8014 = global_00401044(var_8010)
  loc_0045C2EB:   call var_8018 = global_004011AC
  loc_0045C2F2:   call var_801C = global_004011D8(var_8018)
  loc_0045C2F8:   call var_8020 = global_00401190
  loc_0045C2FE:   var_24 = var_8020
  loc_0045C30B:   call var_8024 = global_00401150(00000002h, var_28, var_2C)
  loc_0045C314: End If
  loc_0045C31A: GoTo loc_0045C330
  loc_0045C326: call var_8028 = global_00401150(00000002h, var_28, var_2C, global_0045C331)
  loc_0045C32F: Exit Sub
  loc_0045C330: ' Referenced from: 0045C31A
End Sub

Public Property Get CodePage() '45C360
  loc_0045C366: ext_4010EC
  loc_0045C37E: ext_40109C
  loc_0045C3BA: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C3CE: call var_8008 = global_00401018(global_64)
  loc_0045C3D7: If var_8008 = 8 Then
  loc_0045C3EE:   call var_800C = global_004011B0(global_64, 00000004h, "&H")
  loc_0045C3F9:   call var_8010 = global_004011AC
  loc_0045C400:   call var_8014 = global_00401044(var_8010)
  loc_0045C40B:   call var_8018 = global_004011AC
  loc_0045C412:   call var_801C = global_004011D8(var_8018)
  loc_0045C418:   call var_8020 = global_00401190
  loc_0045C41E:   var_24 = var_8020
  loc_0045C42B:   call var_8024 = global_00401150(00000002h, var_28, var_2C)
  loc_0045C434: End If
  loc_0045C43A: GoTo loc_0045C450
  loc_0045C446: call var_8028 = global_00401150(00000002h, var_28, var_2C, global_0045C451)
  loc_0045C44F: Exit Sub
  loc_0045C450: ' Referenced from: 0045C43A
End Sub

Public Property Get CompanyName() '45C480
  loc_0045C486: ext_4010EC
  loc_0045C49E: ext_40109C
  loc_0045C4E3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C4F8: call var_8008 = global_00401148
  loc_0045C50F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045C518: var_44 = var_2C
  loc_0045C528: call var_8010 = global_004011AC(var_2C)
  loc_0045C531: call var_8014 = global_004011CC
  loc_0045C53C: GoTo loc_0045C565
  loc_0045C546: If (0 And 4) Then
  loc_0045C54B:   call var_8018 = global_004011CC(global_0045C566)
  loc_0045C551: End If
  loc_0045C55B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045C564: Exit Sub
  loc_0045C565: ' Referenced from: 0045C53C
End Sub

Public Property Get FileDescription() '45C590
  loc_0045C596: ext_4010EC
  loc_0045C5AE: ext_40109C
  loc_0045C5F3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C608: call var_8008 = global_00401148
  loc_0045C61F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045C628: var_44 = var_2C
  loc_0045C638: call var_8010 = global_004011AC(var_2C)
  loc_0045C641: call var_8014 = global_004011CC
  loc_0045C64C: GoTo loc_0045C675
  loc_0045C656: If (0 And 4) Then
  loc_0045C65B:   call var_8018 = global_004011CC(global_0045C676)
  loc_0045C661: End If
  loc_0045C66B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045C674: Exit Sub
  loc_0045C675: ' Referenced from: 0045C64C
End Sub

Public Property Get FileVersion() '45C6A0
  loc_0045C6A6: ext_4010EC
  loc_0045C6BE: ext_40109C
  loc_0045C703: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C718: call var_8008 = global_00401148
  loc_0045C72F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045C738: var_44 = var_2C
  loc_0045C748: call var_8010 = global_004011AC(var_2C)
  loc_0045C751: call var_8014 = global_004011CC
  loc_0045C75C: GoTo loc_0045C785
  loc_0045C766: If (0 And 4) Then
  loc_0045C76B:   call var_8018 = global_004011CC(global_0045C786)
  loc_0045C771: End If
  loc_0045C77B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045C784: Exit Sub
  loc_0045C785: ' Referenced from: 0045C75C
End Sub

Public Property Get InternalName() '45C7B0
  loc_0045C7B6: ext_4010EC
  loc_0045C7CE: ext_40109C
  loc_0045C813: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C828: call var_8008 = global_00401148
  loc_0045C83F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045C848: var_44 = var_2C
  loc_0045C858: call var_8010 = global_004011AC(var_2C)
  loc_0045C861: call var_8014 = global_004011CC
  loc_0045C86C: GoTo loc_0045C895
  loc_0045C876: If (0 And 4) Then
  loc_0045C87B:   call var_8018 = global_004011CC(global_0045C896)
  loc_0045C881: End If
  loc_0045C88B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045C894: Exit Sub
  loc_0045C895: ' Referenced from: 0045C86C
End Sub

Public Property Get LegalCopyright() '45C8C0
  loc_0045C8C6: ext_4010EC
  loc_0045C8DE: ext_40109C
  loc_0045C923: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045C938: call var_8008 = global_00401148
  loc_0045C94F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045C958: var_44 = var_2C
  loc_0045C968: call var_8010 = global_004011AC(var_2C)
  loc_0045C971: call var_8014 = global_004011CC
  loc_0045C97C: GoTo loc_0045C9A5
  loc_0045C986: If (0 And 4) Then
  loc_0045C98B:   call var_8018 = global_004011CC(global_0045C9A6)
  loc_0045C991: End If
  loc_0045C99B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045C9A4: Exit Sub
  loc_0045C9A5: ' Referenced from: 0045C97C
End Sub

Public Property Get OriginalFileName() '45C9D0
  loc_0045C9D6: ext_4010EC
  loc_0045C9EE: ext_40109C
  loc_0045CA33: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045CA48: call var_8008 = global_00401148
  loc_0045CA5F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045CA68: var_44 = var_2C
  loc_0045CA78: call var_8010 = global_004011AC(var_2C)
  loc_0045CA81: call var_8014 = global_004011CC
  loc_0045CA8C: GoTo loc_0045CAB5
  loc_0045CA96: If (0 And 4) Then
  loc_0045CA9B:   call var_8018 = global_004011CC(global_0045CAB6)
  loc_0045CAA1: End If
  loc_0045CAAB: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045CAB4: Exit Sub
  loc_0045CAB5: ' Referenced from: 0045CA8C
End Sub

Public Property Get ProductName() '45CAE0
  loc_0045CAE6: ext_4010EC
  loc_0045CAFE: ext_40109C
  loc_0045CB43: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045CB58: call var_8008 = global_00401148
  loc_0045CB6F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045CB78: var_44 = var_2C
  loc_0045CB88: call var_8010 = global_004011AC(var_2C)
  loc_0045CB91: call var_8014 = global_004011CC
  loc_0045CB9C: GoTo loc_0045CBC5
  loc_0045CBA6: If (0 And 4) Then
  loc_0045CBAB:   call var_8018 = global_004011CC(global_0045CBC6)
  loc_0045CBB1: End If
  loc_0045CBBB: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045CBC4: Exit Sub
  loc_0045CBC5: ' Referenced from: 0045CB9C
End Sub

Public Property Get ProductVersion() '45CBF0
  loc_0045CBF6: ext_4010EC
  loc_0045CC0E: ext_40109C
  loc_0045CC53: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045CC68: call var_8008 = global_00401148
  loc_0045CC7F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045CC88: var_44 = var_2C
  loc_0045CC98: call var_8010 = global_004011AC(var_2C)
  loc_0045CCA1: call var_8014 = global_004011CC
  loc_0045CCAC: GoTo loc_0045CCD5
  loc_0045CCB6: If (0 And 4) Then
  loc_0045CCBB:   call var_8018 = global_004011CC(global_0045CCD6)
  loc_0045CCC1: End If
  loc_0045CCCB: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045CCD4: Exit Sub
  loc_0045CCD5: ' Referenced from: 0045CCAC
End Sub

Public Property Get LegalTrademarks() '45CD00
  loc_0045CD06: ext_4010EC
  loc_0045CD1E: ext_40109C
  loc_0045CD63: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045CD78: call var_8008 = global_00401148
  loc_0045CD8F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045CD98: var_44 = var_2C
  loc_0045CDA8: call var_8010 = global_004011AC(var_2C)
  loc_0045CDB1: call var_8014 = global_004011CC
  loc_0045CDBC: GoTo loc_0045CDE5
  loc_0045CDC6: If (0 And 4) Then
  loc_0045CDCB:   call var_8018 = global_004011CC(global_0045CDE6)
  loc_0045CDD1: End If
  loc_0045CDDB: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045CDE4: Exit Sub
  loc_0045CDE5: ' Referenced from: 0045CDBC
End Sub

Public Property Get LegalTrademarks1() '45CE10
  loc_0045CE16: ext_4010EC
  loc_0045CE2E: ext_40109C
  loc_0045CE73: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045CE88: call var_8008 = global_00401148
  loc_0045CE9F: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045CEA8: var_44 = var_2C
  loc_0045CEB8: call var_8010 = global_004011AC(var_2C)
  loc_0045CEC1: call var_8014 = global_004011CC
  loc_0045CECC: GoTo loc_0045CEF5
  loc_0045CED6: If (0 And 4) Then
  loc_0045CEDB:   call var_8018 = global_004011CC(global_0045CEF6)
  loc_0045CEE1: End If
  loc_0045CEEB: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045CEF4: Exit Sub
  loc_0045CEF5: ' Referenced from: 0045CECC
End Sub

Public Property Get LegalTrademarks2() '45CF20
  loc_0045CF26: ext_4010EC
  loc_0045CF3E: ext_40109C
  loc_0045CF83: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045CF98: call var_8008 = global_00401148
  loc_0045CFAF: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045CFB8: var_44 = var_2C
  loc_0045CFC8: call var_8010 = global_004011AC(var_2C)
  loc_0045CFD1: call var_8014 = global_004011CC
  loc_0045CFDC: GoTo loc_0045D005
  loc_0045CFE6: If (0 And 4) Then
  loc_0045CFEB:   call var_8018 = global_004011CC(global_0045D006)
  loc_0045CFF1: End If
  loc_0045CFFB: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045D004: Exit Sub
  loc_0045D005: ' Referenced from: 0045CFDC
End Sub

Public Property Get Comments() '45D030
  loc_0045D036: ext_4010EC
  loc_0045D04E: ext_40109C
  loc_0045D093: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D0A8: call var_8008 = global_00401148
  loc_0045D0BF: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045D0C8: var_44 = var_2C
  loc_0045D0D8: call var_8010 = global_004011AC(var_2C)
  loc_0045D0E1: call var_8014 = global_004011CC
  loc_0045D0EC: GoTo loc_0045D115
  loc_0045D0F6: If (0 And 4) Then
  loc_0045D0FB:   call var_8018 = global_004011CC(global_0045D116)
  loc_0045D101: End If
  loc_0045D10B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045D114: Exit Sub
  loc_0045D115: ' Referenced from: 0045D0EC
End Sub

Public Property Get PrivateBuild() '45D140
  loc_0045D146: ext_4010EC
  loc_0045D15E: ext_40109C
  loc_0045D1A3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D1B8: call var_8008 = global_00401148
  loc_0045D1CF: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045D1D8: var_44 = var_2C
  loc_0045D1E8: call var_8010 = global_004011AC(var_2C)
  loc_0045D1F1: call var_8014 = global_004011CC
  loc_0045D1FC: GoTo loc_0045D225
  loc_0045D206: If (0 And 4) Then
  loc_0045D20B:   call var_8018 = global_004011CC(global_0045D226)
  loc_0045D211: End If
  loc_0045D21B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045D224: Exit Sub
  loc_0045D225: ' Referenced from: 0045D1FC
End Sub

Public Property Get SpecialBuild() '45D250
  loc_0045D256: ext_4010EC
  loc_0045D26E: ext_40109C
  loc_0045D2B3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D2C8: call var_8008 = global_00401148
  loc_0045D2DF: var_800C = VersionInfo.Proc_4_28_45DF50(var_28)
  loc_0045D2E8: var_44 = var_2C
  loc_0045D2F8: call var_8010 = global_004011AC(var_2C)
  loc_0045D301: call var_8014 = global_004011CC
  loc_0045D30C: GoTo loc_0045D335
  loc_0045D316: If (0 And 4) Then
  loc_0045D31B:   call var_8018 = global_004011CC(global_0045D336)
  loc_0045D321: End If
  loc_0045D32B: call var_801C = global_00401150(00000002h, var_28, var_2C)
  loc_0045D334: Exit Sub
  loc_0045D335: ' Referenced from: 0045D30C
End Sub

Public Property Get FileFlagsRaw() '45D360
  loc_0045D366: ext_4010EC
  loc_0045D37E: ext_40109C
  loc_0045D3BA: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D3D3: var_24 = False
End Sub

Public Property Get FileFlags() '45D400
  loc_0045D406: ext_4010EC
  loc_0045D41E: ext_40109C
  loc_0045D463: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D48E: If False Then
  loc_0045D4A0:   call var_8008 = global_00401044("Debug ", var_24)
  loc_0045D4AB:   call var_800C = global_004011AC
  loc_0045D4B1: End If
  loc_0045D4C0: If (False And 4) Then
  loc_0045D4D2:   call var_8010 = global_00401044("Patched ", var_24)
  loc_0045D4DD:   call var_8014 = global_004011AC
  loc_0045D4E3: End If
  loc_0045D4F2: If (False And 2) Then
  loc_0045D504:   call var_8018 = global_00401044("Pre-release ", var_24)
  loc_0045D50F:   call var_801C = global_004011AC
  loc_0045D515: End If
  loc_0045D524: If (False And 8) Then
  loc_0045D536:   call var_8020 = global_00401044("Private ", var_24)
  loc_0045D541:   call var_8024 = global_004011AC
  loc_0045D547: End If
  loc_0045D556: If (False And 32) Then
  loc_0045D568:   call var_8028 = global_00401044("Special ", var_24)
  loc_0045D573:   call var_802C = global_004011AC
  loc_0045D579: End If
  loc_0045D586: call var_8030 = global_00401148
  loc_0045D591: GoTo loc_0045D59D
  loc_0045D596: call var_8034 = global_004011CC(global_0045D5A7)
  loc_0045D59C: Exit Sub
  loc_0045D59D: ' Referenced from: 0045D591
  loc_0045D5A0: call var_8038 = global_004011CC
End Sub

Public Property Get FileOSRaw() '45D5E0
  loc_0045D5E6: ext_4010EC
  loc_0045D5FE: ext_40109C
  loc_0045D63A: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D64D: var_24 = global_100
End Sub

Public Property Get FileOS() '45D680
  loc_0045D686: ext_4010EC
  loc_0045D69E: ext_40109C
  loc_0045D6E3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D708: If global_100 Then
  loc_0045D719:   call var_8008 = global_00401148
  loc_0045D724: Else
  loc_0045D733:   If (global_100 And 2) Then
  loc_0045D744:     call var_800C = global_00401148
  loc_0045D74C:   Else
  loc_0045D75B:     If (global_100 And 3) Then
  loc_0045D76C:       call var_8010 = global_00401148
  loc_0045D774:     Else
  loc_0045D783:       If (global_100 And 4) Then
  loc_0045D794:         call var_8014 = global_00401148
  loc_0045D79C:       Else
  loc_0045D7AB:         call var_8018 = global_00401148
  loc_0045D7B1:       End If
  loc_0045D7B1:     End If
  loc_0045D7B1:   End If
  loc_0045D7B1: End If
  loc_0045D7C3: If (global_100 And 65536) Then
  loc_0045D7D5:   call var_801C = global_00401044(" on DOS", var_24)
  loc_0045D7E0:   call var_8020 = global_004011AC
  loc_0045D7EB: Else
  loc_0045D7FC:   If (global_100 And 131072) Then
  loc_0045D80E:     call var_8024 = global_00401044(" on OS2/16", var_24)
  loc_0045D819:     call var_8028 = global_004011AC
  loc_0045D821:   Else
  loc_0045D833:     If (global_100 And 196608) Then
  loc_0045D845:       call var_802C = global_00401044(" on OS2/32", var_24)
  loc_0045D850:       call var_8030 = global_004011AC
  loc_0045D858:     Else
  loc_0045D866:       If var_28 = 262144 Then
  loc_0045D878:         call var_8034 = global_00401044(" on Windows NT", var_24)
  loc_0045D883:         call var_8038 = global_004011AC
  loc_0045D889:       End If
  loc_0045D889:     End If
  loc_0045D889:   End If
  loc_0045D889: End If
  loc_0045D896: call var_803C = global_00401148
  loc_0045D8A1: GoTo loc_0045D8AD
  loc_0045D8A6: call var_8040 = global_004011CC(global_0045D8B7)
  loc_0045D8AC: Exit Sub
  loc_0045D8AD: ' Referenced from: 0045D8A1
  loc_0045D8B0: call var_8044 = global_004011CC
End Sub

Public Property Get FileTypeRaw() '45D8F0
  loc_0045D8F6: ext_4010EC
  loc_0045D90E: ext_40109C
  loc_0045D94A: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045D95D: var_24 = global_104
End Sub

Public Property Get FileType() '45D990
  loc_0045D996: ext_4010EC
  loc_0045D9AE: ext_40109C
  loc_0045D9F3: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045DA06: var_2C = global_104
  loc_0045DA0C: var_44 = var_2C
  loc_0045DA1C: Select Case var_2C
  loc_0045DA23:   Case Else
  loc_0045DA23:     GoTo loc_0045DACA
  loc_0045DA28:   Case 1
  loc_0045DA37:     call var_8008 = global_00401148
  loc_0045DA3D:     GoTo loc_0045DACA
  loc_0045DA42:   Case 2
  loc_0045DA51:     call var_800C = global_00401148
  loc_0045DA57:     GoTo loc_0045DACA
  loc_0045DA59:   Case 3
  loc_0045DA68:     call var_8010 = global_00401148
  loc_0045DA6E:     GoTo loc_0045DACA
  loc_0045DA70:   Case 4
  loc_0045DA7F:     call var_8014 = global_00401148
  loc_0045DA85:     GoTo loc_0045DACA
  loc_0045DA87:   Case 7
  loc_0045DA96:     call var_8018 = global_00401148
  loc_0045DA9C:     GoTo loc_0045DACA
  loc_0045DA9E:   Case 0
  loc_0045DAAD:     call var_801C = global_00401148
  loc_0045DAB3:     GoTo loc_0045DACA
  loc_0045DAB5:   Case 5
  loc_0045DAC4:     call var_8020 = global_00401148
  loc_0045DACA:   Case 6
  loc_0045DACA: End Select
  loc_0045DACA: ' Referenced from: 0045DA23
  loc_0045DACA: ' Referenced from: 0045DA3D
  loc_0045DACA: ' Referenced from: 0045DA57
  loc_0045DACA: ' Referenced from: 0045DA6E
  loc_0045DACA: ' Referenced from: 0045DA85
  loc_0045DACA: ' Referenced from: 0045DA9C
  loc_0045DACA: ' Referenced from: 0045DAB3
  loc_0045DAD7: call var_8024 = global_00401148
  loc_0045DAE2: GoTo loc_0045DAEE
  loc_0045DAE7: call var_8028 = global_004011CC(global_0045DAF8)
  loc_0045DAED: Exit Sub
  loc_0045DAEE: ' Referenced from: 0045DAE2
  loc_0045DAF1: call var_802C = global_004011CC
End Sub

Public Property Get FileSubTypeRaw() '45DB50
  loc_0045DB56: ext_4010EC
  loc_0045DB6E: ext_40109C
  loc_0045DBAA: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045DBBD: var_24 = global_108
End Sub

Public Property Get FileSubType() '45DBF0
  loc_0045DBF6: ext_4010EC
  loc_0045DC0E: ext_40109C
  loc_0045DC53: call var_8004 = global_00401070(FFFFFFFFh, Me, 0, 0, 0)
  loc_0045DC68: call var_8008 = global_00401148
  loc_0045DC7B: var_2C = global_104
  loc_0045DC88: If var_2C <> 3 Then
  loc_0045DC8E:   If var_4C = 4 Then GoTo loc_0045DE0A
  loc_0045DC98:   If var_4C = 5 Then GoTo loc_0045DE92
  loc_0045DC9E:   GoTo loc_0045DEB1
  loc_0045DCA3:   GoTo loc_0045DEB1
  loc_0045DCA8:   GoTo loc_0045DEB1
  loc_0045DCB2: Else
  loc_0045DCC5:   var_50 = global_108
  loc_0045DCD5:   Select Case var_2C
  loc_0045DCDC:     Case Else
  loc_0045DCDC:       GoTo loc_0045DE05
  loc_0045DCE1:     Case 10
  loc_0045DCF0:       call var_800C = global_00401148
  loc_0045DCF6:       GoTo loc_0045DE05
  loc_0045DCFB:     Case 4
  loc_0045DD0A:       call var_8010 = global_00401148
  loc_0045DD10:       GoTo loc_0045DE05
  loc_0045DD15:     Case 11
  loc_0045DD24:       call var_8014 = global_00401148
  loc_0045DD2A:       GoTo loc_0045DE05
  loc_0045DD2F:     Case 8
  loc_0045DD3E:       call var_8018 = global_00401148
  loc_0045DD44:       GoTo loc_0045DE05
  loc_0045DD49:     Case 2
  loc_0045DD58:       call var_801C = global_00401148
  loc_0045DD5E:       GoTo loc_0045DE05
  loc_0045DD63:     Case 3
  loc_0045DD72:       call var_8020 = global_00401148
  loc_0045DD78:       GoTo loc_0045DE05
  loc_0045DD7D:     Case 5
  loc_0045DD8C:       call var_8024 = global_00401148
  loc_0045DD92:       GoTo loc_0045DE05
  loc_0045DD94:     Case 6
  loc_0045DDA3:       call var_8028 = global_00401148
  loc_0045DDA9:       GoTo loc_0045DE05
  loc_0045DDAB:     Case 1
  loc_0045DDBA:       call var_802C = global_00401148
  loc_0045DDC0:       GoTo loc_0045DE05
  loc_0045DDC2:     Case 9
  loc_0045DDD1:       call var_8030 = global_00401148
  loc_0045DDD7:       GoTo loc_0045DE05
  loc_0045DDD9:     Case 7
  loc_0045DDE8:       call var_8034 = global_00401148
  loc_0045DDEE:       GoTo loc_0045DE05
  loc_0045DDF0:     Case 0
  loc_0045DDFF:       call var_8038 = global_00401148
  loc_0045DE05:   End Select
  loc_0045DE05:   GoTo loc_0045DEB1
  loc_0045DE1D:   var_54 = global_108
  loc_0045DE29:   Select Case global_108
  loc_0045DE30:     Case Else
  loc_0045DE30:       GoTo loc_0045DE8C
  loc_0045DE32:     Case 1
  loc_0045DE41:       call var_803C = global_00401148
  loc_0045DE47:       GoTo loc_0045DE8C
  loc_0045DE49:     Case 3
  loc_0045DE58:       call var_8040 = global_00401148
  loc_0045DE5E:       GoTo loc_0045DE8C
  loc_0045DE60:     Case 2
  loc_0045DE6F:       call var_8044 = global_00401148
  loc_0045DE75:       GoTo loc_0045DE8C
  loc_0045DE77:     Case 0
  loc_0045DE86:       call var_8048 = global_00401148
  loc_0045DE8C:   End Select
  loc_0045DE8C:   GoTo loc_0045DEB1
  loc_0045DE8E:   GoTo loc_0045DEB1
  loc_0045DE90:   GoTo loc_0045DEB1
  loc_0045DEA0:   call var_804C = global_0040100C(global_108)
  loc_0045DEAB:   call var_8050 = global_004011AC
  loc_0045DEB1: End If
  loc_0045DEB1: ' Referenced from: 0045DE05
  loc_0045DEB1: ' Referenced from: 0045DE8C
  loc_0045DEB1: ' Referenced from: 0045DE8E
  loc_0045DEB1: ' Referenced from: 0045DE90
  loc_0045DEBE: call var_8054 = global_00401148
  loc_0045DEC9: GoTo loc_0045DED5
  loc_0045DECE: call var_8058 = global_004011CC(global_0045DEDF)
  loc_0045DED4: Exit Sub
  loc_0045DED5: ' Referenced from: 0045DEC9
  loc_0045DED8: call var_805C = global_004011CC
End Sub

Private  Proc_4_28_45DF50(arg_C) '45DF50
  loc_0045DF56: ext_4010EC
  loc_0045DF6E: ext_40109C
  loc_0045DFA7: call var_8004 = global_00401070(FFFFFFFFh, 0, 0, 0)
  loc_0045DFB6: call var_8008 = global_00401070(FFFFFFFFh)
  loc_0045DFCF: call var_800C = global_00401044(global_64, "\StringFileInfo\")
  loc_0045DFDA: call var_8010 = global_004011AC
  loc_0045DFE6: call var_8014 = global_00401044("\", var_8010)
  loc_0045DFF1: call var_8018 = global_004011AC
  loc_0045DFFE: call var_801C = global_00401044(arg_C, var_8018)
  loc_0045E009: call var_8020 = global_004011AC
  loc_0045E019: call var_8024 = global_00401150(00000002h, var_3C, var_40)
  loc_0045E034: call var_8028 = global_0040117C(var_38, global_60)
  loc_0045E03E: If var_38 Then
  loc_0045E047:   If var_38 = 1 Then
  loc_0045E051:     var_48 = (eax - var_38(20))
  loc_0045E05D:     If var_48 < 0 Then
  loc_0045E068:     Else
  loc_0045E068:       call var_802C = global_004010AC
  loc_0045E06E:       var_68 = var_802C
  loc_0045E071:     End If
  loc_0045E074:     var_6C = var_48
  loc_0045E079:   Else
  loc_0045E079:   End If
  loc_0045E079:   call var_8030 = global_004010AC
  loc_0045E07F:   var_6C = var_8030
  loc_0045E082: End If
  loc_0045E092: call var_8034 = global_00401188(var_3C, var_30, var_2C, var_24)
  loc_0045E09F: var_38(12) = var_38(12) + var_6C
  loc_0045E0AB: call var_803C = global_00401054
  loc_0045E0B5: call var_8040 = global_004011C4(var_38)
  loc_0045E0C3: call var_8044 = global_004010F4(var_30, var_3C)
  loc_0045E0DB: call var_8048 = global_004011CC
  loc_0045E0E7: If (VerQueryValue(var_38(12)+var_6C, var_8034, , )) Then
  loc_0045E101:   call var_804C = global_00401098(var_24(-1))
  loc_0045E10C:   call var_8050 = global_004011AC
  loc_0045E125:   call var_8054 = global_00401188(var_3C, var_28, var_2C)
  loc_0045E12C:   var_8058 = lstrcpy(var_8054, )
  loc_0045E131:   call var_805C = global_00401054
  loc_0045E13F:   call var_8060 = global_004010F4(var_28, var_3C)
  loc_0045E148:   call var_8064 = global_004011CC
  loc_0045E166:   var_8068 = VersionInfo.Proc_4_30_45ED50(var_28)
  loc_0045E16F:   var_64 = var_3C
  loc_0045E17F:   call var_806C = global_004011AC(var_3C)
  loc_0045E185: End If
  loc_0045E192: call var_8070 = global_00401148
  loc_0045E19D: GoTo loc_0045E1D0
  loc_0045E1A7: If (0 And 4) Then
  loc_0045E1AC:   call var_8074 = global_004011CC(global_0045E1E3)
  loc_0045E1B2: End If
  loc_0045E1B6: call var_8078 = global_004011C4(var_38)
  loc_0045E1C6: call var_807C = global_00401150(00000002h, var_3C, var_40)
  loc_0045E1CF: Exit Sub
  loc_0045E1D0: ' Referenced from: 0045E19D
  loc_0045E1D3: call var_8080 = global_004011CC
  loc_0045E1DC: call var_8084 = global_004011CC
End Sub

Private Sub Proc_4_29_45E210
  loc_0045E216: ext_4010EC
  loc_0045E22E: ext_40109C
  loc_0045E25E: call var_8004 = global_00401070(FFFFFFFFh, 0, 0, 0)
  loc_0045E272: call var_8008 = global_00401018(global_52)
  loc_0045E27A: If var_8008 > 0 Then
  loc_0045E292:   call var_800C = global_00401188(var_48, global_52)
  loc_0045E2A4:   call var_8014 = global_00401054
  loc_0045E2B5:   call var_8018 = global_004010F4(global_52, var_48)
  loc_0045E2C7:   call var_801C = global_004011CC
  loc_0045E2E7:   call var_8020 = global_004010A4(var_A0, 00000104h)
  loc_0045E2F4:   call var_8024 = global_0040101C(var_A0)
  loc_0045E2FF:   call var_8028 = global_004011AC
  loc_0045E30D:   call var_802C = global_00401148
  loc_0045E316:   call var_8030 = global_004011CC
  loc_0045E322:   call var_8034 = global_00401014
  loc_0045E336:   call var_8038 = global_00401018(global_56)
  loc_0045E348:   call var_803C = global_00401188(var_48, global_56, var_8038)
  loc_0045E35E:   call var_8044 = global_00401054
  loc_0045E36F:   call var_8048 = global_004010F4(global_56, var_48)
  loc_0045E383:   var_E8 = (GetModuleFileName(GetModuleHandle(var_800C), var_803C, ) = 0)
  loc_0045E38D:   call var_804C = global_004011CC
  loc_0045E393: End If
  loc_0045E3A1: call var_8050 = global_00401018(global_56)
  loc_0045E3BD: call var_8054 = global_00401188(var_48, global_56, var_34)
  loc_0045E3CF: call var_805C = global_00401054
  loc_0045E3E0: call var_8060 = global_004010F4(global_56, var_48)
  loc_0045E3EC: var_24 = GetFileVersionInfoSize(var_8054, )
  loc_0045E3F2: call var_8064 = global_004011CC
  loc_0045E427: call var_8068 = global_004010D0(00000080h, 00000001h, global_60, 00000011h, 00000001h, var_24(-1), 00000000h)
  loc_0045E442: call var_806C = global_0040117C(var_38, global_60)
  loc_0045E44C: If var_38 Then
  loc_0045E455:   If var_38 = 1 Then
  loc_0045E45F:     var_E8 = (eax - var_38(20))
  loc_0045E471:     If var_E8 < 0 Then
  loc_0045E47F:     Else
  loc_0045E47F:       call var_8070 = global_004010AC
  loc_0045E485:       var_11C = var_8070
  loc_0045E48B:     End If
  loc_0045E491:     var_120 = var_E8
  loc_0045E499:   Else
  loc_0045E499:   End If
  loc_0045E499:   call var_8074 = global_004010AC
  loc_0045E49F:   var_120 = var_8074
  loc_0045E4A5: End If
  loc_0045E4AB: var_38(12) = var_38(12) + var_120
  loc_0045E4C3: call var_8078 = global_00401188(var_48, global_56, 00000000h, var_24, var_38(12)+var_120)
  loc_0045E4D5: call var_8080 = global_00401054
  loc_0045E4E6: call var_8084 = global_004010F4(global_56, var_48)
  loc_0045E4F0: call var_8088 = global_004011C4(var_38)
  loc_0045E504: var_EC = (GetFileVersionInfo(var_8078, , , ) = 0)
  loc_0045E50E: call var_808C = global_004011CC
  loc_0045E526: call var_8090 = global_0040117C(var_38, global_60)
  loc_0045E530: If var_38 Then
  loc_0045E539:   If var_38 = 1 Then
  loc_0045E543:     var_E8 = (edx - var_38(20))
  loc_0045E555:     If var_E8 < 0 Then
  loc_0045E563:     Else
  loc_0045E563:       call var_8094 = global_004010AC
  loc_0045E569:       var_124 = var_8094
  loc_0045E56F:     End If
  loc_0045E575:     var_128 = var_E8
  loc_0045E57D:   Else
  loc_0045E57D:   End If
  loc_0045E57D:   call var_8098 = global_004010AC
  loc_0045E583:   var_128 = var_8098
  loc_0045E589: End If
  loc_0045E59A: call var_809C = global_00401188(var_48, "\VarFileInfo\Translation", var_2C, var_24)
  loc_0045E5A7: var_38(12) = var_38(12) + var_128
  loc_0045E5B9: call var_80A4 = global_00401054
  loc_0045E5C3: call var_80A8 = global_004011C4(var_38)
  loc_0045E5D7: var_EC = (VerQueryValue(var_38(12)+var_128, var_809C, , ) = 0)
  loc_0045E5E1: call var_80AC = global_004011CC
  loc_0045E60C: call var_80B0 = global_004010D0(00000080h, 00000001h, var_28, 00000011h, 00000001h, var_24(-1), 00000000h)
  loc_0045E624: call var_80B4 = global_0040117C(var_38, var_28)
  loc_0045E62E: If var_38 Then
  loc_0045E637:   If var_38 = 1 Then
  loc_0045E641:     var_E8 = (edx - var_38(20))
  loc_0045E653:     If var_E8 < 0 Then
  loc_0045E661:     Else
  loc_0045E661:       call var_80B8 = global_004010AC
  loc_0045E667:       var_12C = var_80B8
  loc_0045E66D:     End If
  loc_0045E673:     var_130 = var_E8
  loc_0045E67B:   Else
  loc_0045E67B:   End If
  loc_0045E67B:   call var_80BC = global_004010AC
  loc_0045E681:   var_130 = var_80BC
  loc_0045E687: End If
  loc_0045E695: var_38(12) = var_38(12) + var_130
  loc_0045E69C: var_80C0 = CopyMemory(var_38(12)+var_130, var_2C, var_24)
  loc_0045E6A1: call var_80C4 = global_00401054
  loc_0045E6AB: call var_80C8 = global_004011C4(var_38)
  loc_0045E6C0: call var_80CC = global_0040117C(var_38, var_28)
  loc_0045E6CA: If var_38 Then
  loc_0045E6D3:   If var_38 = 1 Then
  loc_0045E6E0:     var_E8 = (eax - var_38(20))
  loc_0045E6F2:     If var_E8 < 0 Then
  loc_0045E700:     Else
  loc_0045E700:       call var_80D0 = global_004010AC
  loc_0045E706:       var_134 = var_80D0
  loc_0045E70C:     End If
  loc_0045E712:     var_138 = var_E8
  loc_0045E71A:   Else
  loc_0045E71A:   End If
  loc_0045E71A:   call var_80D4 = global_004010AC
  loc_0045E720:   var_138 = var_80D4
  loc_0045E726: End If
  loc_0045E72C: var_38(12) = var_38(12) + var_138
  loc_0045E732: var_A8 = var_38(12)+var_138
  loc_0045E749: call var_80D8 = global_00401140(&H4011)
  loc_0045E754: call var_80DC = global_004011AC
  loc_0045E75E: call var_80E0 = global_004011C4(var_38)
  loc_0045E76C: call var_80E4 = global_0040117C(var_3C, var_28)
  loc_0045E776: If var_3C Then
  loc_0045E77F:   If var_3C = 1 Then
  loc_0045E789:     var_EC = (eax - var_3C(20))
  loc_0045E79B:     If var_EC < 0 Then
  loc_0045E7A9:     Else
  loc_0045E7A9:       call var_80E8 = global_004010AC
  loc_0045E7AF:       var_13C = var_80E8
  loc_0045E7B5:     End If
  loc_0045E7BB:     var_140 = var_EC
  loc_0045E7C3:   Else
  loc_0045E7C3:   End If
  loc_0045E7C3:   call var_80EC = global_004010AC
  loc_0045E7C9:   var_140 = var_80EC
  loc_0045E7CF: End If
  loc_0045E7D5: var_3C(12) = var_3C(12) + var_140
  loc_0045E7DB: var_B8 = var_3C(12)+var_140
  loc_0045E7F2: call var_80F0 = global_00401140(&H4011)
  loc_0045E7FD: call var_80F4 = global_004011AC
  loc_0045E807: call var_80F8 = global_004011C4(var_3C)
  loc_0045E815: call var_80FC = global_0040117C(var_40, var_28)
  loc_0045E81F: If var_40 Then
  loc_0045E828:   If var_40 = 1 Then
  loc_0045E835:     var_F0 = (eax - var_40(20))
  loc_0045E847:     If var_F0 < 0 Then
  loc_0045E855:     Else
  loc_0045E855:       call var_8100 = global_004010AC
  loc_0045E85B:       var_144 = var_8100
  loc_0045E861:     End If
  loc_0045E867:     var_148 = var_F0
  loc_0045E86F:   Else
  loc_0045E86F:   End If
  loc_0045E86F:   call var_8104 = global_004010AC
  loc_0045E875:   var_148 = var_8104
  loc_0045E87B: End If
  loc_0045E881: var_40(12) = var_40(12) + var_148
  loc_0045E887: var_C8 = var_40(12)+var_148
  loc_0045E89E: call var_8108 = global_00401140(&H4011)
  loc_0045E8A9: call var_810C = global_004011AC
  loc_0045E8B3: call var_8110 = global_004011C4(var_40)
  loc_0045E8C1: call var_8114 = global_0040117C(var_44, var_28)
  loc_0045E8CB: If var_44 Then
  loc_0045E8D4:   If var_44 = 1 Then
  loc_0045E8E1:     var_F4 = (eax - var_44(20))
  loc_0045E8F3:     If var_F4 < 0 Then
  loc_0045E901:     Else
  loc_0045E901:       call var_8118 = global_004010AC
  loc_0045E907:       var_14C = var_8118
  loc_0045E90D:     End If
  loc_0045E913:     var_150 = var_F4
  loc_0045E91B:   Else
  loc_0045E91B:   End If
  loc_0045E91B:   call var_811C = global_004010AC
  loc_0045E921:   var_150 = var_811C
  loc_0045E927: End If
  loc_0045E92D: var_44(12) = var_44(12) + var_150
  loc_0045E933: var_D8 = var_44(12)+var_150
  loc_0045E94A: call var_8120 = global_00401140(&H4011)
  loc_0045E955: call var_8124 = global_004011AC
  loc_0045E95F: call var_8128 = global_004011C4(var_44)
  loc_0045E967: call var_812C = global_00401000(00000002h)
  loc_0045E972: call var_8130 = global_004011AC
  loc_0045E97B: var_10C = var_48
  loc_0045E991: call var_8134 = global_004011AC
  loc_0045E9AC: var_8138 = VersionInfo.Proc_4_31_45EEA0(var_4C)
  loc_0045E9B4: call var_813C = global_00401000(00000002h, var_50, var_54)
  loc_0045E9BF: call var_8140 = global_004011AC
  loc_0045E9C8: var_110 = var_58
  loc_0045E9DE: call var_8144 = global_004011AC
  loc_0045E9F9: var_8148 = VersionInfo.Proc_4_31_45EEA0(var_5C)
  loc_0045EA01: call var_814C = global_00401000(00000002h, var_60, var_64)
  loc_0045EA0C: call var_8150 = global_004011AC
  loc_0045EA15: var_114 = var_68
  loc_0045EA2B: call var_8154 = global_004011AC
  loc_0045EA46: var_8158 = VersionInfo.Proc_4_31_45EEA0(var_6C)
  loc_0045EA4E: call var_815C = global_00401000(00000002h, var_70, var_74)
  loc_0045EA5C: call var_8160 = global_004011AC
  loc_0045EA65: var_118 = var_7C
  loc_0045EA7B: call var_8164 = global_004011AC
  loc_0045EA9C: var_8168 = VersionInfo.Proc_4_31_45EEA0(var_80)
  loc_0045EAAA: call var_816C = global_00401044(var_64, var_54, var_84, var_88)
  loc_0045EAB5: call var_8170 = global_004011AC
  loc_0045EAC0: call var_8174 = global_00401044(var_74, var_8170)
  loc_0045EACE: call var_8178 = global_004011AC
  loc_0045EADC: call var_817C = global_00401044(var_88, var_8178)
  loc_0045EAEA: call var_8180 = global_004011AC
  loc_0045EAF8: call var_8184 = global_00401148
  loc_0045EB48: call var_8188 = global_00401150(0000000Fh, var_4C, var_50, var_5C, var_60, var_54, var_64, var_6C, var_70, var_78, var_74, var_80, var_84, var_8C, var_88, var_90)
  loc_0045EB64: call var_818C = global_004010B0("00000000", global_64)
  loc_0045EB6C: If var_818C = 0 Then
  loc_0045EB80:   call var_8190 = global_00401148
  loc_0045EB86: End If
  loc_0045EB98: call var_8194 = global_0040117C(var_38, global_60)
  loc_0045EBA2: If var_38 Then
  loc_0045EBAB:   If var_38 = 1 Then
  loc_0045EBB5:     var_E8 = (edx - var_38(20))
  loc_0045EBC7:     If var_E8 < 0 Then
  loc_0045EBD5:     Else
  loc_0045EBD5:       call var_8198 = global_004010AC
  loc_0045EBDB:       var_154 = var_8198
  loc_0045EBE1:     End If
  loc_0045EBE7:     var_158 = var_E8
  loc_0045EBEF:   Else
  loc_0045EBEF:   End If
  loc_0045EBEF:   call var_819C = global_004010AC
  loc_0045EBF5:   var_158 = var_819C
  loc_0045EBFB: End If
  loc_0045EC0C: call var_81A0 = global_00401188(var_48, "\", var_2C, var_24)
  loc_0045EC19: var_38(12) = var_38(12) + var_158
  loc_0045EC2B: call var_81A8 = global_00401054
  loc_0045EC35: call var_81AC = global_004011C4(var_38)
  loc_0045EC49: var_EC = (VerQueryValue(var_38(12)+var_158, var_81A0, , ) = 0)
  loc_0045EC53: call var_81B0 = global_004011CC
  loc_0045EC6F: var_81B4 = CopyMemory(global_68, var_2C, var_24)
  loc_0045EC74: call var_81B8 = global_00401054
  loc_0045EC7F: GoTo loc_0045ED1C
  loc_0045EC88: call var_81BC = global_004011C4(var_38, global_0045ED29)
  loc_0045EC92: call var_81C0 = global_004011C4(var_3C)
  loc_0045EC9C: call var_81C4 = global_004011C4(var_40)
  loc_0045ECA6: call var_81C8 = global_004011C4(var_44)
  loc_0045ED06: call var_81CC = global_00401150(00000013h, var_48, var_4C, var_50, var_54, var_58, var_5C, var_60, var_64, var_68, var_6C, var_70, var_74, var_78, var_7C, var_80)
  loc_0045ED15: call var_81D0 = global_00401014
  loc_0045ED1B: Exit Sub
  loc_0045ED1C: ' Referenced from: 0045EC7F
  loc_0045ED22: call var_81D4 = global_00401068(00000000h, var_28)
End Sub

Private  Proc_4_30_45ED50(arg_C) '45ED50
  loc_0045ED56: ext_4010EC
  loc_0045ED6E: ext_40109C
  loc_0045EDA7: call var_8004 = global_00401070(FFFFFFFFh, 0, 0, 0)
  loc_0045EDC3: call var_8008 = global_00401130(00000000h, global_0043A9D8, arg_C, 00000001h)
  loc_0045EDCB: call var_800C = global_004010BC
  loc_0045EDD1: var_28 = var_800C
  loc_0045EDF0: If var_28 > 1 Then
  loc_0045EE11:   call var_8010 = global_0040119C(arg_C, (var_28 - 1))
  loc_0045EE1C:   call var_8014 = global_004011AC
  loc_0045EE24: Else
  loc_0045EE31:   If var_2C = 0 Then
  loc_0045EE42:     call var_8018 = global_00401148
  loc_0045EE4A:   Else
  loc_0045EE56:     If var_2C = 1 Then
  loc_0045EE64:       call var_801C = global_00401148
  loc_0045EE6A:     End If
  loc_0045EE6A:   End If
  loc_0045EE6A: End If
  loc_0045EE6F: GoTo loc_0045EE7B
  loc_0045EE74: call var_8020 = global_004011CC(global_0045EE7C)
  loc_0045EE7A: Exit Sub
  loc_0045EE7B: ' Referenced from: 0045EE6F
End Sub

Private  Proc_4_31_45EEA0(arg_C, arg_10) '45EEA0
  loc_0045EEA6: ext_4010EC
  loc_0045EEBE: ext_40109C
  loc_0045EEF7: call var_8004 = global_00401070(FFFFFFFFh, 0, 0, 0)
  loc_0045EF04: var_60 = global_0041C1DC
  loc_0045EF18: call var_8008 = global_0040118C
  loc_0045EF28: call var_800C = global_0040114C(arg_10, var_38)
  loc_0045EF33: call var_8010 = global_00401100(var_48, var_800C)
  loc_0045EF3E: var_70 = arg_C
  loc_0045EF4E: call var_8014 = global_0040114C(arg_10)
  loc_0045EF61: call var_8018 = global_0040111C(var_58, 8, var_48, var_8014)
  loc_0045EF6C: call var_801C = global_00401118(var_28, var_8018)
  loc_0045EF73: call var_8020 = global_004011B0(var_801C)
  loc_0045EF7E: call var_8024 = global_004011AC
  loc_0045EF87: call var_8028 = global_004011CC
  loc_0045EF9B: call var_802C = global_00401024(00000003h, var_38, var_48, var_58)
  loc_0045EFA9: GoTo loc_0045EFDF
  loc_0045EFB3: If (0 And 4) Then
  loc_0045EFB8:   call var_8030 = global_004011CC(global_0045EFE0)
  loc_0045EFBE: End If
  loc_0045EFC1: call var_8034 = global_004011CC
  loc_0045EFD5: call var_8038 = global_00401024(00000003h, var_38, var_48, var_58)
  loc_0045EFDE: Exit Sub
  loc_0045EFDF: ' Referenced from: 0045EFA9
End Sub
