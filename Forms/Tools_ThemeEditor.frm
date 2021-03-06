VERSION 5.00
Begin VB.Form FormThemeEditor 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   " Resource editor"
   ClientHeight    =   9315
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   13260
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   621
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   884
   ShowInTaskbar   =   0   'False
   Begin PhotoDemon.pdButtonStrip btsBackcolor 
      Height          =   495
      Left            =   9600
      TabIndex        =   13
      Top             =   7440
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   873
   End
   Begin PhotoDemon.pdColorSelector csColorLight 
      Height          =   1575
      Left            =   4200
      TabIndex        =   11
      Top             =   5640
      Width           =   2535
      _ExtentX        =   4895
      _ExtentY        =   2778
      Caption         =   "light theme color"
      FontSize        =   10
   End
   Begin VB.PictureBox picPreview 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   2775
      Left            =   9600
      ScaleHeight     =   183
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   231
      TabIndex        =   10
      Top             =   4560
      Width           =   3495
   End
   Begin PhotoDemon.pdCheckBox chkColoration 
      Height          =   375
      Left            =   4200
      TabIndex        =   9
      Top             =   5160
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   661
      Caption         =   "run-time coloration"
   End
   Begin PhotoDemon.pdButton cmdSave 
      Height          =   495
      Left            =   240
      TabIndex        =   8
      Top             =   7920
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   873
      Caption         =   "force save resource package"
   End
   Begin PhotoDemon.pdButtonStrip btsResourceType 
      Height          =   975
      Left            =   4200
      TabIndex        =   6
      Top             =   3480
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   1720
      Caption         =   "resource type"
   End
   Begin PhotoDemon.pdTextBox txtResourceName 
      Height          =   375
      Left            =   4200
      TabIndex        =   5
      Top             =   1920
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   661
   End
   Begin PhotoDemon.pdButton cmdResourcePath 
      Height          =   375
      Left            =   12720
      TabIndex        =   4
      Top             =   480
      Width           =   450
      _ExtentX        =   794
      _ExtentY        =   661
      Caption         =   "..."
   End
   Begin PhotoDemon.pdTextBox txtResourcePath 
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   480
      Width           =   12375
      _ExtentX        =   21828
      _ExtentY        =   661
      FontSize        =   12
   End
   Begin PhotoDemon.pdLabel lblTitle 
      Height          =   375
      Index           =   0
      Left            =   120
      Top             =   120
      Width           =   12975
      _ExtentX        =   22886
      _ExtentY        =   661
      Caption         =   "current resource file"
      FontSize        =   12
   End
   Begin PhotoDemon.pdButton cmdAddResource 
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   7200
      Width           =   3615
      _ExtentX        =   6376
      _ExtentY        =   1085
      Caption         =   "add a new resource"
   End
   Begin PhotoDemon.pdListBox lstResources 
      Height          =   6135
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   10821
      Caption         =   "current resources"
   End
   Begin PhotoDemon.pdCommandBarMini cmdBar 
      Align           =   2  'Align Bottom
      Height          =   795
      Left            =   0
      TabIndex        =   0
      Top             =   8520
      Width           =   13260
      _ExtentX        =   23389
      _ExtentY        =   1402
   End
   Begin PhotoDemon.pdLabel lblTitle 
      Height          =   375
      Index           =   1
      Left            =   3960
      Top             =   960
      Width           =   9135
      _ExtentX        =   16113
      _ExtentY        =   661
      Caption         =   "edit current resource"
      FontSize        =   12
   End
   Begin PhotoDemon.pdLabel lblTitle 
      Height          =   375
      Index           =   2
      Left            =   4200
      Top             =   1560
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   661
      Caption         =   "resource name"
      FontSize        =   12
   End
   Begin PhotoDemon.pdTextBox txtResourceLocation 
      Height          =   375
      Left            =   4200
      TabIndex        =   7
      Top             =   2880
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   661
   End
   Begin PhotoDemon.pdLabel lblTitle 
      Height          =   375
      Index           =   3
      Left            =   4200
      Top             =   2520
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   661
      Caption         =   "resource location"
      FontSize        =   12
   End
   Begin PhotoDemon.pdLabel lblTitle 
      Height          =   375
      Index           =   4
      Left            =   4200
      Top             =   4680
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   661
      Caption         =   "image resource properties:"
      FontSize        =   12
   End
   Begin PhotoDemon.pdColorSelector csColorDark 
      Height          =   1575
      Left            =   6960
      TabIndex        =   12
      Top             =   5640
      Width           =   2535
      _ExtentX        =   4471
      _ExtentY        =   2778
      Caption         =   "dark theme color"
      FontSize        =   10
   End
End
Attribute VB_Name = "FormThemeEditor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'***************************************************************************
'Resource editor dialog
'Copyright 2016-2016 by Tanner Helland
'Created: 22/August/16
'Last updated: 15/December/16
'Last update: start work on compiling resource files
'
'As of v7.0, PD finally supports visual themes using its internal theming engine.  As part of supporting
' visual themes, various PD controls need access to image resources at a size and color scheme appropriate
' for the current theme.
'
'This resource editor is designed to help with that task.
'
'At present, PD's original resource file is still required, as all resources have *not* yet been migrated
' to the new format.
'
'Also, please note that this dialog is absolutely *not* meant for external use.  It is for PD developers, only.
'
'All source code in this file is licensed under a modified BSD license.  This means you may use the code in your own
' projects IF you provide attribution.  For more information, please visit http://photodemon.org/about/license/
'
'***************************************************************************

Private Enum PD_Resource_Type
    PDRT_Image = 0
    PDRT_Other = 1
End Enum

#If False Then
    Private Const PDRT_Image = 0, PDRT_Other = 1
#End If

Private Type PD_Resource
    ResourceName As String
    ResFileLocation As String
    ResType As PD_Resource_Type
    ResSupportsColoration As Boolean
    ResColorLight As Long
    ResColorDark As Long
End Type

Private m_NumOfResources As Long
Private m_Resources() As PD_Resource
Private m_LastResourceIndex As Long

Private m_FSO As pdFSO

Private m_PreviewDIBOriginal As pdDIB, m_PreviewDIB As pdDIB

Private m_SuspendUpdates As Boolean

Private Sub btsBackcolor_Click(ByVal buttonIndex As Long)
    UpdatePreview
End Sub

Private Sub btsResourceType_LostFocusAPI()
    SyncResourceAgainstCurrentUI
End Sub

Private Sub chkColoration_Click()
    SyncResourceAgainstCurrentUI
    UpdatePreview
End Sub

Private Sub cmdAddResource_Click()
    
    Dim srcFile As String
    
    Dim cCommonDialog As pdOpenSaveDialog: Set cCommonDialog = New pdOpenSaveDialog
    If cCommonDialog.GetOpenFileName(srcFile, , True, False, , , m_FSO.GetPathOnly(txtResourcePath.Text), "Select resource", , Me.hWnd) Then
        
        If (m_NumOfResources > UBound(m_Resources)) Then ReDim Preserve m_Resources(0 To m_NumOfResources * 2 - 1) As PD_Resource
        
        With m_Resources(m_NumOfResources)
            .ResourceName = m_FSO.GetFilename(srcFile, True)
            .ResFileLocation = srcFile
            
            If Loading.QuickLoadImageToDIB(srcFile, m_PreviewDIBOriginal, False, False) Then
                .ResType = PDRT_Image
            End If
            
        End With
        
        lstResources.AddItem m_Resources(m_NumOfResources).ResourceName
        lstResources.ListIndex = m_NumOfResources
        
        SyncUIAgainstCurrentResource
        
        m_NumOfResources = m_NumOfResources + 1
        
    End If
    
End Sub

Private Sub cmdResourcePath_Click()
    
    Dim srcFile As String
    srcFile = m_FSO.GetFilename(txtResourcePath.Text)
    
    Dim cCommonDialog As pdOpenSaveDialog: Set cCommonDialog = New pdOpenSaveDialog
    If cCommonDialog.GetOpenFileName(srcFile, , False, False, "PD Resource Files (*.pdr)|*.pdr", , m_FSO.GetPathOnly(txtResourcePath.Text), "Select resource file", "pdr", Me.hWnd) Then
        If (Len(srcFile) <> 0) Then
            txtResourcePath.Text = srcFile
            g_UserPreferences.SetPref_String "Themes", "LastResourceFile", srcFile
            LoadResourceFromFile
        End If
    End If
    
End Sub

Private Sub cmdSave_Click()

    Dim okayToProceed As Boolean: okayToProceed = True
    
    'If the user isn't editing an existing file, prompt them for a filename
    If (Len(txtResourcePath.Text) = 0) Then
    
        Dim srcFile As String
        
        Dim cCommonDialog As pdOpenSaveDialog: Set cCommonDialog = New pdOpenSaveDialog
        If cCommonDialog.GetSaveFileName(srcFile, , True, "PD Resource Files (*.pdr)|*.pdr", , g_UserPreferences.GetThemePath, "Save resource file", "pdr", Me.hWnd) Then
            If (Len(srcFile) <> 0) Then
                txtResourcePath.Text = srcFile
                g_UserPreferences.SetPref_String "Themes", "LastResourceFile", srcFile
                okayToProceed = True
            Else
                okayToProceed = False
            End If
        Else
            okayToProceed = False
        End If
        
    End If
    
    If okayToProceed Then
    
        'Save a copy of the current XML information in XML format.  (Note that this is different from *compiling*
        ' the resource file, as you'd expect.)
        Dim cXML As pdXML: Set cXML = New pdXML
        cXML.PrepareNewXML "pdResource"
        cXML.WriteTag "ResourceCount", m_NumOfResources
        cXML.WriteTag "LastEditedResource", m_LastResourceIndex
        
        Dim i As Long
        For i = 0 To m_NumOfResources - 1
            cXML.WriteTag CStr(i + 1), vbNullString, True
            
            With m_Resources(i)
                cXML.WriteTag "Name", m_Resources(i).ResourceName
                cXML.WriteTag "FileLocation", .ResFileLocation
                cXML.WriteTag "Type", .ResType
                cXML.WriteTag "SupportsColoration", .ResSupportsColoration
                If .ResSupportsColoration Then
                    cXML.WriteTag "ColorLight", .ResColorLight
                    cXML.WriteTag "ColorDark", .ResColorDark
                End If
            End With
            
            cXML.CloseTag CStr(i + 1)
        Next i
        
        If (Not cXML.WriteXMLToFile(txtResourcePath.Text)) Then Debug.Print "WARNING!  Save to file failed!!"
    
    End If
    
End Sub

Private Sub csColorDark_ColorChanged()
    If (Not m_SuspendUpdates) Then
        SyncResourceAgainstCurrentUI
        m_SuspendUpdates = True
        btsBackcolor.ListIndex = 1
        m_SuspendUpdates = False
        UpdatePreview
    End If
End Sub

Private Sub csColorLight_ColorChanged()
    If (Not m_SuspendUpdates) Then
        SyncResourceAgainstCurrentUI
        m_SuspendUpdates = True
        btsBackcolor.ListIndex = 0
        m_SuspendUpdates = False
        UpdatePreview
    End If
End Sub

Private Sub Form_Load()
            
    btsResourceType.AddItem "image", 0
    btsResourceType.AddItem "other", 1
    btsResourceType.ListIndex = 0
    
    btsBackcolor.AddItem "light", 0
    btsBackcolor.AddItem "dark", 1
    If (g_Themer.GetCurrentThemeClass = PDTC_Dark) Then btsBackcolor.ListIndex = 1 Else btsBackcolor.ListIndex = 0
    
    Set m_FSO = New pdFSO
    
    'Load the last-edited resource file (if any)
    If g_UserPreferences.DoesValueExist("Themes", "LastResourceFile") Then
        txtResourcePath.Text = g_UserPreferences.GetPref_String("Themes", "LastResourceFile", "")
        LoadResourceFromFile
    Else
        txtResourcePath.Text = ""
        
        m_NumOfResources = 0
        ReDim m_Resources(0 To 15) As PD_Resource
        
        lstResources.ListIndex = -1
        m_LastResourceIndex = -1
        
    End If
    
    Interface.ApplyThemeAndTranslations Me
    
End Sub

Private Sub lstResources_Click()
    SyncResourceAgainstCurrentUI
    m_LastResourceIndex = lstResources.ListIndex
    SyncUIAgainstCurrentResource
End Sub

Private Sub txtResourceLocation_LostFocusAPI()
    SyncResourceAgainstCurrentUI
End Sub

Private Sub txtResourceName_LostFocusAPI()
    lstResources.UpdateItem lstResources.ListIndex, txtResourceName.Text
    lstResources.SetAutomaticRedraws True, True
    SyncResourceAgainstCurrentUI
End Sub

Private Sub LoadResourceFromFile()
    
    Dim cXML As pdXML: Set cXML = New pdXML
    If cXML.LoadXMLFile(txtResourcePath.Text) Then
        If cXML.IsPDDataType("pdResource") Then
        
            m_NumOfResources = cXML.GetUniqueTag_Long("ResourceCount", 0)
            
            If (m_NumOfResources > 0) Then
                
                ReDim m_Resources(0 To m_NumOfResources - 1) As PD_Resource
                
                lstResources.Clear
                
                Dim i As Long, tagPos As Long
                tagPos = 1
                
                For i = 0 To m_NumOfResources - 1
                    
                    tagPos = cXML.GetLocationOfTag(CStr(i + 1), tagPos)
                    If (tagPos > 0) Then
                        
                        With m_Resources(i)
                            .ResourceName = cXML.GetUniqueTag_String("Name", vbNullString, tagPos)
                            .ResFileLocation = cXML.GetUniqueTag_String("FileLocation", vbNullString, tagPos)
                            .ResType = cXML.GetUniqueTag_Long("Type", 0, tagPos)
                            .ResSupportsColoration = cXML.GetUniqueTag_Boolean("SupportsColoration", False, tagPos)
                            If .ResSupportsColoration Then
                                .ResColorLight = cXML.GetUniqueTag_Long("ColorLight", 0, tagPos)
                                .ResColorDark = cXML.GetUniqueTag_Long("ColorDark", 0, tagPos)
                            End If
                        End With
                        
                        lstResources.AddItem m_Resources(i).ResourceName
                        
                    End If
                    
                Next i
                
                m_LastResourceIndex = cXML.GetUniqueTag_Long("LastEditedResource")
                SyncUIAgainstCurrentResource
                
                lstResources.ListIndex = m_LastResourceIndex
                
            End If
        
        End If
    End If
    
End Sub

'Prior to changing the current resource index, this function can be called to update the last-selected resource against
' any UI changes the user may have entered.
Private Sub SyncResourceAgainstCurrentUI()

    If (m_LastResourceIndex >= 0) And (Not m_SuspendUpdates) Then
    
        With m_Resources(m_LastResourceIndex)
            .ResourceName = txtResourceName.Text
            .ResType = btsResourceType.ListIndex
            .ResFileLocation = txtResourceLocation.Text
            If (.ResType = PDRT_Image) Then .ResSupportsColoration = CBool(chkColoration.Value)
            If .ResSupportsColoration Then
                .ResColorLight = csColorLight.Color
                .ResColorDark = csColorDark.Color
            End If
        End With
    
    End If
    
End Sub

'Whenever the current resource index is changed (e.g. by clicking the left-hand list box), this function can be called
' to update all UI elements against the newly selected resource.
Private Sub SyncUIAgainstCurrentResource()
    
    If (m_LastResourceIndex >= 0) Then
        
        m_SuspendUpdates = True
        
        With m_Resources(m_LastResourceIndex)
            txtResourceName.Text = .ResourceName
            btsResourceType.ListIndex = .ResType
            txtResourceLocation.Text = .ResFileLocation
            If .ResSupportsColoration Then
                chkColoration.Value = vbChecked
                csColorLight.Color = .ResColorLight
                csColorDark.Color = .ResColorDark
            Else
                chkColoration.Value = vbUnchecked
            End If
            
                m_SuspendUpdates = False
            
            'Image resources get a live preview
            If (.ResType = PDRT_Image) Then UpdatePreview
            
        End With
    
    End If
    
End Sub

Private Sub UpdatePreview()
    
    On Error GoTo PreviewError
    
    If (Not m_SuspendUpdates) Then
    
        If (m_Resources(m_LastResourceIndex).ResType = PDRT_Image) Then
            
            Dim newColor As Long
            If (btsBackcolor.ListIndex = 0) Then
                Colors.GetColorFromString "#ffffff", newColor, ColorHex
            Else
                Colors.GetColorFromString "#313131", newColor, ColorHex
            End If
            picPreview.BackColor = newColor
            
            If Loading.QuickLoadImageToDIB(m_Resources(m_LastResourceIndex).ResFileLocation, m_PreviewDIBOriginal, False, False) Then
            
                'If coloration is supported, apply it now
                If m_Resources(m_LastResourceIndex).ResSupportsColoration Then
                    
                    If (m_PreviewDIB Is Nothing) Then Set m_PreviewDIB = New pdDIB
                    m_PreviewDIB.CreateFromExistingDIB m_PreviewDIBOriginal
                    
                    If (btsBackcolor.ListIndex = 0) Then
                        DIB_Support.ColorizeDIB m_PreviewDIB, csColorLight.Color
                    Else
                        DIB_Support.ColorizeDIB m_PreviewDIB, csColorDark.Color
                    End If
                    m_PreviewDIB.RenderToPictureBox picPreview, False, True, True
                    
                'If coloration is *not* supported, just render the preview image as-is
                Else
                    m_PreviewDIBOriginal.RenderToPictureBox picPreview, False, True, True
                End If
                
            End If
            
        End If
        
    End If
    
PreviewError:

End Sub
