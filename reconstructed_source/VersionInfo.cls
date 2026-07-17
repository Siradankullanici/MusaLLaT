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

Option Explicit

Private Declare Function GetFileVersionInfoSize Lib "version" Alias "GetFileVersionInfoSizeA" (ByVal lptstrFilename As String, lpdwHandle As Long) As Long
Private Declare Function GetFileVersionInfo Lib "version" Alias "GetFileVersionInfoA" (ByVal lptstrFilename As String, ByVal dwHandle As Long, ByVal dwLen As Long, lpData As Any) As Long
Private Declare Function VerQueryValue Lib "version" Alias "VerQueryValueA" (pBlock As Any, ByVal lpSubBlock As String, ByVal lplpBuffer As Long, puLen As Long) As Long
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function GetModuleFileName Lib "kernel32" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
Private Declare Function lstrcpy Lib "kernel32" Alias "lstrcpyA" (ByVal lpString1 As String, ByVal lpString2 As String) As Long

Private m_sFileName As String
Private m_sModuleName As String
Private m_sFileVersion As String
Private m_sCompanyName As String
Private m_sFileDescription As String
Private m_sInternalName As String
Private m_sLegalCopyright As String
Private m_sOriginalFileName As String
Private m_sProductName As String
Private m_sProductVersion As String
Private m_sLegalTrademarks As String
Private m_sComments As String
Private m_sPrivateBuild As String
Private m_sSpecialBuild As String
Private m_sLanguage As String
Private m_sCodePage As String
Private m_lFileFlagsRaw As Long
Private m_lFileOSRaw As Long
Private m_lFileTypeRaw As Long
Private m_lFileSubTypeRaw As Long

Public Property Let FileName(ByVal sNewValue As String)
    m_sFileName = sNewValue
    Proc_4_29_45E210
End Property

Public Property Get FileName() As String
    FileName = m_sFileName
End Property

Public Property Let ModuleName(ByVal sNewValue As String)
    m_sModuleName = sNewValue
    Proc_4_29_45E210
End Property

Public Property Get ModuleName() As String
    ModuleName = m_sModuleName
End Property

Public Property Get Language() As String
    If Len(m_sLanguage) = 8 Then
        Language = "&H" & Mid(m_sLanguage, 5, 4) & m_sLanguage
    End If
End Property

Public Property Get CodePage() As String
    If Len(m_sCodePage) = 8 Then
        CodePage = Val("&H" & Mid(m_sCodePage, 1, 4))
    End If
End Property

Public Property Get CompanyName() As String
    CompanyName = Proc_4_28_45DF50("CompanyName")
End Property

Public Property Get FileDescription() As String
    FileDescription = Proc_4_28_45DF50("FileDescription")
End Property

Public Property Get FileVersion() As String
    FileVersion = Proc_4_28_45DF50("FileVersion")
End Property

Public Property Get InternalName() As String
    InternalName = Proc_4_28_45DF50("InternalName")
End Property

Public Property Get LegalCopyright() As String
    LegalCopyright = Proc_4_28_45DF50("LegalCopyright")
End Property

Public Property Get OriginalFileName() As String
    OriginalFileName = Proc_4_28_45DF50("OriginalFileName")
End Property

Public Property Get ProductName() As String
    ProductName = Proc_4_28_45DF50("ProductName")
End Property

Public Property Get ProductVersion() As String
    ProductVersion = Proc_4_28_45DF50("ProductVersion")
End Property

Public Property Get LegalTrademarks() As String
    LegalTrademarks = Proc_4_28_45DF50("LegalTrademarks")
End Property

Public Property Get LegalTrademarks1() As String
    LegalTrademarks1 = Proc_4_28_45DF50("LegalTrademarks1")
End Property

Public Property Get LegalTrademarks2() As String
    LegalTrademarks2 = Proc_4_28_45DF50("LegalTrademarks2")
End Property

Public Property Get Comments() As String
    Comments = Proc_4_28_45DF50("Comments")
End Property

Public Property Get PrivateBuild() As String
    PrivateBuild = Proc_4_28_45DF50("PrivateBuild")
End Property

Public Property Get SpecialBuild() As String
    SpecialBuild = Proc_4_28_45DF50("SpecialBuild")
End Property

Public Property Get FileFlagsRaw() As Long
    FileFlagsRaw = False
End Property

Public Property Get FileFlags() As String
    Dim sFlags As String
    
    If False Then sFlags = sFlags & "Debug "
    If (False And 4) Then sFlags = sFlags & "Patched "
    If (False And 2) Then sFlags = sFlags & "Pre-release "
    If (False And 8) Then sFlags = sFlags & "Private "
    If (False And 32) Then sFlags = sFlags & "Special "
    
    FileFlags = sFlags
End Property

Public Property Get FileOSRaw() As Long
    FileOSRaw = 0
End Property

Public Property Get FileOS() As String
    Dim sOS As String
    
    If 0 Then
        sOS = "Unknown"
    ElseIf (0 And 2) Then
        sOS = "Win16"
    ElseIf (0 And 3) Then
        sOS = "PM16"
    ElseIf (0 And 4) Then
        sOS = "PM32"
    Else
        sOS = "Win32"
    End If
    
    If (0 And 65536) Then
        sOS = sOS & " on DOS"
    ElseIf (0 And 131072) Then
        sOS = sOS & " on OS2/16"
    ElseIf (0 And 196608) Then
        sOS = sOS & " on OS2/32"
    ElseIf 262144 Then
        sOS = sOS & " on Windows NT"
    End If
    
    FileOS = sOS
End Property

Public Property Get FileTypeRaw() As Long
    FileTypeRaw = 0
End Property

Public Property Get FileType() As String
    Dim lType As Long
    lType = 0
    
    Select Case lType
        Case 1: FileType = "App"
        Case 2: FileType = "DLL"
        Case 3: FileType = "Driver"
        Case 4: FileType = "Font"
        Case 7: FileType = "VXD"
        Case 0: FileType = "Unknown"
        Case 5: FileType = "Static Lib"
        Case 6: FileType = ""
    End Select
End Property

Public Property Get FileSubTypeRaw() As Long
    FileSubTypeRaw = 0
End Property

Public Property Get FileSubType() As String
    Dim lType As Long
    Dim lSubType As Long
    lType = 0
    
    If lType <> 3 Then
        If 0 = 4 Then GoTo SubTypeDone
        If 0 = 5 Then GoTo SubTypeDone
        If 0 = 6 Then GoTo SubTypeDone
    Else
        lSubType = 0
        Select Case lType
            Case 10: FileSubType = "Printer"
            Case 4: FileSubType = "Communications"
            Case 11: FileSubType = "Keyboard"
            Case 8: FileSubType = "Installable"
            Case 2: FileSubType = "Display"
            Case 3: FileSubType = "Input Method"
            Case 5: FileSubType = "Mouse"
            Case 6: FileSubType = "Network"
            Case 1: FileSubType = "System"
            Case 9: FileSubType = "Sound"
            Case 7: FileSubType = "Tape"
            Case 0: FileSubType = "Unknown"
        End Select
        GoTo SubTypeDone
    End If
    
    If 0 = 4 Then
        lSubType = 0
        Select Case lSubType
            Case 1: FileSubType = "Raster"
            Case 3: FileSubType = "Vector"
            Case 2: FileSubType = "TrueType"
            Case 0: FileSubType = "Unknown"
        End Select
        GoTo SubTypeDone
    End If
    
    If 0 = 5 Then
        FileSubType = CStr(0)
        GoTo SubTypeDone
    End If

SubTypeDone:
End Property

Private Function Proc_4_28_45DF50(ByVal sStringName As String) As String
    Dim sBlock As String
    Dim sSubBlock As String
    Dim lBufferLen As Long
    Dim lpBuffer As Long
    Dim lVerSize As Long
    Dim sTranslation As String
    Dim sLangCode As String
    
    sSubBlock = "\StringFileInfo\" & m_sLanguage & "\" & sStringName
    
    If VerQueryValue(ByVal m_sFileName, sSubBlock, lpBuffer, lVerSize) Then
        sBlock = String(lVerSize, vbNullChar)
        CopyMemory ByVal sBlock, ByVal lpBuffer, lVerSize
        Proc_4_28_45DF50 = Left(sBlock, InStr(sBlock, vbNullChar) - 1)
    End If
End Function

Private Sub Proc_4_29_45E210()
    Dim hModule As Long
    Dim sModulePath As String
    Dim lVerSize As Long
    Dim lVerHandle As Long
    Dim sVerData As String
    Dim lpBuffer As Long
    Dim lVerLen As Long
    Dim sSubBlock As String
    Dim sTranslation As String
    Dim bTranslation(3) As Byte
    
    If Len(m_sFileName) > 0 Then
        hModule = GetModuleHandle(m_sFileName)
        sModulePath = String(260, vbNullChar)
        GetModuleFileName hModule, sModulePath, 260
        sModulePath = Left(sModulePath, InStr(sModulePath, vbNullChar) - 1)
    End If
    
    lVerSize = GetFileVersionInfoSize(sModulePath, lVerHandle)
    If lVerSize > 0 Then
        sVerData = String(lVerSize, vbNullChar)
        
        If GetFileVersionInfo(sModulePath, 0, lVerSize, ByVal sVerData) Then
            sSubBlock = "\VarFileInfo\Translation"
            If VerQueryValue(ByVal sVerData, sSubBlock, lpBuffer, lVerLen) Then
                CopyMemory bTranslation(0), ByVal lpBuffer, 4
                m_sLanguage = Hex(bTranslation(1)) & Hex(bTranslation(0)) & Hex(bTranslation(3)) & Hex(bTranslation(2))
                
                sSubBlock = "\"
                If VerQueryValue(ByVal sVerData, sSubBlock, lpBuffer, lVerLen) Then
                    CopyMemory ByVal m_sCompanyName, ByVal lpBuffer, lVerLen
                End If
            End If
        End If
    End If
End Sub

Private Function Proc_4_30_45ED50(ByVal sIn As String) As String
    Dim aParts() As String
    
    aParts = Split(sIn, vbNullChar)
    If UBound(aParts) > 0 Then
        Proc_4_30_45ED50 = Mid(sIn, (UBound(aParts) - 1))
    Else
        If 0 = 0 Then
            Proc_4_30_45ED50 = ""
        ElseIf 0 = 1 Then
            Proc_4_30_45ED50 = ""
        End If
    End If
End Function

Private Function Proc_4_31_45EEA0(ByVal sValue As String, ByVal sDefault As String) As String
    Dim sHex As String
    Dim sResult As String
    
    sHex = sDefault
    sResult = Mid(sValue, 1, Len(sValue) - 1)
    sResult = Hex(sResult)
    
    Proc_4_31_45EEA0 = sResult
End Function
