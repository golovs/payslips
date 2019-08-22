object fMain: TfMain
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1083#1080#1089#1090#1082#1080
  ClientHeight = 576
  ClientWidth = 1139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1139
    576)
  PixelsPerInch = 96
  TextHeight = 13
  object pBottom: TPanel
    Left = 0
    Top = 546
    Width = 1139
    Height = 30
    Align = alBottom
    TabOrder = 0
    object bbClose: TBitBtn
      Left = 1024
      Top = 1
      Width = 114
      Height = 28
      Action = actQuit
      Align = alRight
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object pProgress: TPanel
      Left = 1
      Top = 1
      Width = 911
      Height = 28
      Align = alClient
      TabOrder = 1
      Visible = False
      DesignSize = (
        911
        28)
      object LNums: TLabel
        Left = 881
        Top = 8
        Width = 3
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 993
      end
      object prog: TProgressBar
        Left = 1
        Top = 1
        Width = 800
        Height = 26
        Align = alLeft
        Smooth = True
        MarqueeInterval = 1
        BarColor = clLime
        Step = 1
        TabOrder = 0
      end
    end
    object bHelpMe: TButton
      Left = 912
      Top = 1
      Width = 112
      Height = 28
      Action = actHelpMe
      Align = alRight
      Images = Images32
      TabOrder = 2
    end
  end
  object pcMain: TPageControl
    Left = 0
    Top = 0
    Width = 1139
    Height = 546
    ActivePage = tsControl
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = pcMainChange
    object tsPaySlips: TTabSheet
      Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1083#1080#1089#1090#1082#1080
      object pSlipsTop: TPanel
        Left = 0
        Top = 0
        Width = 1131
        Height = 32
        Align = alTop
        TabOrder = 0
        object pSlipsDates: TPanel
          Left = 1
          Top = 1
          Width = 224
          Height = 30
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object DBComboPSDates: TDBComboBoxEh
            Left = 97
            Top = 4
            Width = 111
            Height = 21
            ControlLabel.Width = 49
            ControlLabel.Height = 13
            ControlLabel.Caption = #1044#1072#1090#1072' '#1056#1051
            ControlLabel.Font.Charset = DEFAULT_CHARSET
            ControlLabel.Font.Color = clWindowText
            ControlLabel.Font.Height = -11
            ControlLabel.Font.Name = 'Tahoma'
            ControlLabel.Font.Style = [fsBold]
            ControlLabel.ParentFont = False
            ControlLabel.Visible = True
            ControlLabelLocation.Spacing = 10
            ControlLabelLocation.Position = lpLeftCenterEh
            DynProps = <>
            DropDownBox.AutoDrop = True
            EditButtons = <>
            LimitTextToListValues = True
            TabOrder = 0
            Visible = True
          end
        end
        object ToolBarTreeCollapseExpand: TToolBar
          Left = 225
          Top = 1
          Width = 104
          Height = 30
          Align = alLeft
          ButtonHeight = 33
          ButtonWidth = 8
          EdgeInner = esNone
          EdgeOuter = esNone
          List = True
          TabOrder = 1
          TabStop = True
          object chkSlipsTreeView: TCheckBox
            Left = 0
            Top = 0
            Width = 60
            Height = 33
            Align = alLeft
            Caption = #1044#1077#1088#1077#1074#1086
            TabOrder = 0
            OnClick = chkSlipsTreeViewClick
          end
        end
        object pShowHideSlip: TPanel
          Left = 880
          Top = 1
          Width = 250
          Height = 30
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object BitBtn3: TBitBtn
            Left = 0
            Top = 0
            Width = 120
            Height = 30
            Action = ShowSlip
            Align = alLeft
            Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1056#1051
            TabOrder = 0
          end
          object BitBtn4: TBitBtn
            Left = 130
            Top = 0
            Width = 120
            Height = 30
            Action = HideSlip
            Align = alRight
            Caption = #1057#1082#1088#1099#1090#1100' '#1056#1051
            TabOrder = 1
          end
        end
      end
      object pSlipsGrid: TPanel
        Left = 0
        Top = 32
        Width = 1131
        Height = 483
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 581
          Top = 1
          Height = 481
          Align = alRight
          Color = clGradientActiveCaption
          ParentColor = False
          Visible = False
          ExplicitLeft = 808
          ExplicitTop = 6
          ExplicitHeight = 432
        end
        object pSlipPreview: TPanel
          Left = 584
          Top = 1
          Width = 546
          Height = 481
          Align = alRight
          TabOrder = 0
          Visible = False
          object MainPreview: TFlexCelPreviewer
            Left = 1
            Top = 45
            Width = 544
            Height = 403
            HorzScrollBar.Range = 20
            HorzScrollBar.Tracking = True
            VertScrollBar.Position = 10
            VertScrollBar.Range = 413
            VertScrollBar.Tracking = True
            AutofitPreview = Width
            Zoom = 1.000000000000000000
            Align = alClient
            TabOrder = 0
            object pPrintMargins: TPanel
              Left = 84
              Top = -4
              Width = 289
              Height = 162
              TabOrder = 0
              Visible = False
              OnExit = pPrintMarginsExit
              object Label6: TLabel
                Left = 8
                Top = 9
                Width = 35
                Height = 13
                Hint = #1057#1086#1090#1099#1077' '#1076#1102#1081#1084#1086#1074
                Caption = '1/100 "'
                ParentShowHint = False
                ShowHint = True
              end
              object leLeft: TLabeledEdit
                Left = 19
                Top = 67
                Width = 49
                Height = 21
                EditLabel.Width = 31
                EditLabel.Height = 13
                EditLabel.Caption = #1051#1077#1074#1072#1103
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'Tahoma'
                EditLabel.Font.Style = []
                EditLabel.ParentFont = False
                NumbersOnly = True
                TabOrder = 0
                Text = '0'
                OnExit = leTopExit
              end
              object leBottom: TLabeledEdit
                Left = 99
                Top = 101
                Width = 49
                Height = 21
                EditLabel.Width = 30
                EditLabel.Height = 13
                EditLabel.Caption = #1057#1085#1080#1079#1091
                NumbersOnly = True
                TabOrder = 1
                Text = '0'
                OnExit = leTopExit
              end
              object leRight: TLabeledEdit
                Left = 172
                Top = 67
                Width = 49
                Height = 21
                EditLabel.Width = 37
                EditLabel.Height = 13
                EditLabel.Caption = #1055#1088#1072#1074#1072#1103
                NumbersOnly = True
                TabOrder = 2
                Text = '0'
                OnExit = leTopExit
              end
              object leScale: TLabeledEdit
                Left = 24
                Top = 125
                Width = 49
                Height = 21
                EditLabel.Width = 33
                EditLabel.Height = 13
                EditLabel.Caption = 'leScale'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'Tahoma'
                EditLabel.Font.Style = []
                EditLabel.ParentFont = False
                Enabled = False
                NumbersOnly = True
                TabOrder = 3
                Visible = False
              end
              object leTop: TLabeledEdit
                Left = 100
                Top = 40
                Width = 49
                Height = 21
                EditLabel.Width = 37
                EditLabel.Height = 13
                EditLabel.Caption = #1057#1074#1077#1088#1093#1091
                NumbersOnly = True
                TabOrder = 4
                Text = '0'
                OnExit = leTopExit
              end
              object UpDownTop: TUpDown
                Left = 149
                Top = 40
                Width = 16
                Height = 21
                TabOrder = 5
                OnChanging = UpDownLeftChanging
              end
              object UpDownRight: TUpDown
                Left = 221
                Top = 67
                Width = 16
                Height = 21
                TabOrder = 6
                OnChanging = UpDownLeftChanging
              end
              object UpDownBottom: TUpDown
                Left = 148
                Top = 101
                Width = 16
                Height = 21
                TabOrder = 7
                OnChanging = UpDownLeftChanging
              end
              object UpDownLeft: TUpDown
                Left = 68
                Top = 67
                Width = 16
                Height = 21
                TabOrder = 8
                OnChanging = UpDownLeftChanging
              end
            end
          end
          object FlowPanel1: TPanel
            Left = 1
            Top = 1
            Width = 544
            Height = 44
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            BevelOuter = bvNone
            ShowCaption = False
            TabOrder = 1
            object ToolBar4: TToolBar
              Left = 51
              Top = 0
              Width = 72
              Height = 44
              Align = alLeft
              AutoSize = True
              ButtonHeight = 44
              ButtonWidth = 36
              Images = ToolbarImages
              ShowCaptions = True
              TabOrder = 0
              Wrapable = False
              object ToolButtonZoom: TToolButton
                Left = 0
                Top = 0
                Action = ActionZoom
              end
              object ToolButtonMargins: TToolButton
                Left = 36
                Top = 0
                Action = ActionMargins
              end
            end
            object ToolBarAutofit: TToolBar
              Left = 0
              Top = 0
              Width = 51
              Height = 44
              Align = alLeft
              AutoSize = True
              ButtonHeight = 44
              ButtonWidth = 43
              Images = ToolbarImages
              ShowCaptions = True
              TabOrder = 1
              Wrapable = False
              object ToolButtonAutoFit: TToolButton
                Left = 0
                Top = 0
                Hint = #1040#1074#1090#1086#1074#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077
                Action = ActionAutofit
                DropdownMenu = AutofitMenu
                ParentShowHint = False
                ShowHint = True
              end
              object ToolButton6: TToolButton
                Left = 43
                Top = 0
                Width = 8
                Caption = 'ToolButton11'
                ImageIndex = 8
                Style = tbsSeparator
              end
            end
            object ToolBarPrint: TToolBar
              Left = 123
              Top = 0
              Width = 421
              Height = 44
              Align = alClient
              AutoSize = True
              ButtonHeight = 44
              ButtonWidth = 125
              EdgeInner = esNone
              EdgeOuter = esNone
              Images = ToolbarImages
              ShowCaptions = True
              TabOrder = 2
              Wrapable = False
              object ToolButton2: TToolButton
                Left = 0
                Top = 0
                Width = 20
                Caption = 'ToolButton2'
                ImageIndex = 0
                Style = tbsSeparator
              end
              object ToolButtonUseDefPrinter: TToolButton
                Left = 20
                Top = 0
                Caption = #1055#1088#1080#1085#1090#1077#1088' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
                ImageIndex = 9
                Style = tbsCheck
                OnClick = ToolButtonUseDefPrinterClick
              end
              object ToolButton3: TToolButton
                Left = 145
                Top = 0
                Width = 7
                Caption = 'ToolButton2'
                ImageIndex = 0
                Style = tbsSeparator
              end
              object ToolButtonPrint: TToolButton
                Tag = 1
                Left = 152
                Top = 0
                Action = PrintSlip
                AutoSize = True
                Grouped = True
                ImageIndex = 7
              end
            end
          end
          object pMoveInSelection: TPanel
            Left = 1
            Top = 448
            Width = 544
            Height = 32
            Align = alBottom
            BevelOuter = bvNone
            Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1089#1087#1080#1089#1082#1091
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
            object BitBtn1: TBitBtn
              Left = 0
              Top = 0
              Width = 150
              Height = 32
              Action = ActionGoDownSelection
              Align = alLeft
              Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object BitBtn2: TBitBtn
              Left = 394
              Top = 0
              Width = 150
              Height = 32
              Action = ActionGoUpSelection
              Align = alRight
              Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        object pSlipsGridTree: TPanel
          Left = 1
          Top = 1
          Width = 580
          Height = 481
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object gridSlipsTree: TDBGridEh
            Left = 0
            Top = 0
            Width = 580
            Height = 451
            Align = alClient
            AllowedOperations = []
            AllowedSelections = [gstRecordBookmarks, gstAll]
            ColumnDefValues.HighlightRequired = True
            ColumnDefValues.Title.TitleButton = True
            DataSource = dm.odsSlips
            DynProps = <>
            Flat = True
            HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbLastEh, nbRefreshEh]
            HorzScrollBar.ExtraPanel.Visible = True
            HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiNavigator]
            IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
            IndicatorTitle.ShowDropDownSign = True
            IndicatorTitle.TitleButton = True
            EmptyDataInfo.Active = True
            EmptyDataInfo.Font.Charset = DEFAULT_CHARSET
            EmptyDataInfo.Font.Color = clMaroon
            EmptyDataInfo.Font.Height = -11
            EmptyDataInfo.Font.Name = 'Tahoma'
            EmptyDataInfo.Font.Style = [fsBold]
            EmptyDataInfo.ParentFont = False
            EmptyDataInfo.Text = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
            PopupMenu = PopupTreeCollapseExpand
            RowDetailPanel.Active = True
            RowDetailPanel.Height = 200
            RowDetailPanel.ParentPopupMenu = False
            SortLocal = True
            STFilter.Local = True
            STFilter.Location = stflInTitleFilterEh
            STFilter.Visible = True
            TabOrder = 0
            TreeViewParams.ShowTreeLines = False
            OnDblClick = gridSlipsTreeDblClick
            OnDrawColumnCell = gridSlipsDrawColumnCell
            OnEnter = gridSlipsTreeEnter
            OnSelectionChanged = gridSlipsTreeSelectionChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SHOP'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #1062#1077#1093
                Width = 41
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NAME_UNIT'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                Width = 303
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MANAGER_NAME'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DEPUTY_NAME'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #1044#1077#1083#1077#1075#1072#1090
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
                Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TABN'
                Footers = <>
                Title.Caption = #1058#1072#1073'.'#8470
                Width = 49
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LAST_MAILED'
                Footers = <>
                Title.Caption = #1042#1099#1089#1083#1072#1085
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LAST_PRINTED'
                Footers = <>
                Title.Caption = #1053#1072#1087#1077#1095#1072#1090#1072#1085
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROTECTED_EMP'
                Footers = <>
                ImageList = img16Staff
                KeyList.Strings = (
                  'null'
                  'null'
                  '1')
                Title.Caption = 'PROTECTED'
                Visible = False
                Width = 82
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'HAVEMAIL'
                Footers = <>
                ImageList = Images16
                KeyList.Strings = (
                  '1'
                  '2')
                Title.Caption = 'Mail'
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object gridLog: TDBGridEh
                Left = 87
                Top = 0
                Width = 440
                Height = 198
                Align = alRight
                AllowedOperations = []
                DataSource = dm.odsSlipLog
                DynProps = <>
                Flat = True
                OddRowColor = clInfoBk
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                OnExit = gridLogExit
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ACTION_DATE'
                    Footers = <>
                    Title.Caption = #1044#1072#1090#1072
                    Width = 130
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ACTOR_NAME'
                    Footers = <>
                    Title.Caption = #1050#1090#1086
                    Width = 129
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ACTION'
                    Footers = <>
                    Title.Caption = #1063#1090#1086
                    Width = 53
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'DESTINATION'
                    Footers = <>
                    Title.Caption = #1050#1091#1076#1072
                    Width = 150
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 87
                Height = 198
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = #1048#1089#1090#1086#1088#1080#1103' '#1086#1087#1077#1088#1072#1094#1080#1081' ->     '
                Color = clWindow
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object pSendSlipToMail: TPanel
            Left = 0
            Top = 451
            Width = 580
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object bSend: TButton
              Left = 0
              Top = 0
              Width = 152
              Height = 30
              Align = alLeft
              Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1056#1051
              ImageIndex = 1
              Images = Images32
              Style = bsSplitButton
              TabOrder = 0
              OnClick = bSendDropDownClick
              OnDropDownClick = bSendDropDownClick
            end
          end
        end
      end
    end
    object tsControl: TTabSheet
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      ImageIndex = 3
      object pcControl: TPageControl
        Left = 0
        Top = 0
        Width = 1131
        Height = 515
        ActivePage = tsSSCAdmins
        Align = alClient
        TabOrder = 0
        OnChange = pcControlChange
        OnChanging = pcControlChanging
        object tsSendRules: TTabSheet
          Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1103' '#1088#1072#1089#1089#1099#1083#1082#1080
          ImageIndex = 2
          object SplitterStaff: TSplitter
            Left = 629
            Top = 0
            Width = 5
            Height = 487
            Align = alRight
            Color = clBackground
            ParentColor = False
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 455
          end
          object ehOrgTreeBK: TDBGridEh
            Left = 0
            Top = 0
            Width = 629
            Height = 487
            Align = alClient
            AllowedOperations = []
            AutoFitColWidths = True
            ColumnDefValues.Title.TitleButton = True
            ColumnDefValues.ToolTips = True
            DataGrouping.DefaultStateExpanded = True
            DataSource = dm.odsOrgTreeBK
            DynProps = <>
            Flat = True
            HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbLastEh, nbRefreshEh]
            HorzScrollBar.ExtraPanel.Visible = True
            HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh, gsbiNavigator]
            IndicatorTitle.ShowDropDownSign = True
            IndicatorTitle.TitleButton = True
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
            ParentShowHint = False
            PopupMenu = PopupTreeCollapseExpand
            ShowHint = True
            SortLocal = True
            STFilter.Local = True
            STFilter.Location = stflInTitleFilterEh
            STFilter.Visible = True
            TabOrder = 0
            TreeViewParams.GlyphStyle = tvgsExplorerThemedEh
            OnDrawColumnCell = ehOrgTreeBKDrawColumnCell
            OnEnter = gridSlipsTreeEnter
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NAME_UNIT'
                Footers = <>
                Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                Width = 502
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'HAVE_STAFF'
                Footers = <>
                ImageList = img16Staff
                KeyList.Strings = (
                  '1')
                ReadOnly = True
                Title.Caption = 'C'
                Title.Hint = #1042' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1080' '#1077#1089#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1080
                Title.ShowImageAndText = False
                Width = 23
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MANAGER'
                Footers = <>
                Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MANAGER_PRM'
                Footers = <>
                ImageList = img16Staff
                KeyList.Strings = (
                  'null'
                  '0'
                  '1'
                  '2')
                Title.Caption = #1044#1056
                Title.Hint = #1044#1086#1089#1090#1091#1087' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103
                Width = 27
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SHOP'
                Footers = <>
                Title.Caption = #1062#1077#1093
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'KODPODR'
                Footers = <>
                Title.Caption = #1050#1055
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DEPUTY_NAME'
                Footers = <>
                Title.Caption = #1044#1077#1083#1077#1075#1072#1090
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DELEGATE_PRM'
                Footers = <>
                ImageList = img16Staff
                KeyList.Strings = (
                  'null'
                  '0'
                  '1'
                  '2')
                Title.Caption = #1044#1044
                Title.Hint = #1044#1086#1089#1090#1091#1087' '#1076#1077#1083#1077#1075#1072#1090#1072
                Width = 28
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pStaffSelect: TPanel
            Left = 634
            Top = 0
            Width = 489
            Height = 487
            Align = alRight
            TabOrder = 1
            object pMid: TPanel
              Left = 1
              Top = 1
              Width = 40
              Height = 485
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object bEmpInclude: TButton
                Left = 3
                Top = 152
                Width = 33
                Height = 33
                Action = actEmpInclude
                Images = img32Staff
                TabOrder = 0
              end
              object bEmpExclude: TButton
                Left = 3
                Top = 191
                Width = 33
                Height = 33
                Action = actEmpExclude
                Images = img32Staff
                TabOrder = 1
              end
            end
            object pcViewKindStaff: TPageControl
              Left = 41
              Top = 1
              Width = 447
              Height = 485
              ActivePage = tsList
              Align = alClient
              Style = tsFlatButtons
              TabOrder = 1
              OnChange = pcViewKindStaffChange
              object tsTree: TTabSheet
                Caption = #1048#1077#1088#1072#1088#1093#1080#1103
                object ehOrgTree: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 439
                  Height = 454
                  Align = alClient
                  AutoFitColWidths = True
                  ColumnDefValues.Title.TitleButton = True
                  DataGrouping.Active = True
                  DataGrouping.GroupLevels = <
                    item
                      ColumnName = 'Column_1_BU'
                    end
                    item
                      ColumnName = 'Column_2_DEPT_NAME'
                    end>
                  DataGrouping.GroupPanelVisible = True
                  DataSource = dm.odsOrgTree
                  DynProps = <>
                  GridLineParams.VertEmptySpaceStyle = dessNonEh
                  IndicatorTitle.ShowDropDownSign = True
                  IndicatorTitle.TitleButton = True
                  OptionsEh = [dghFixed3D, dghResizeWholeRightPart, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
                  ParentShowHint = False
                  ReadOnly = True
                  RowDetailPanel.Active = True
                  RowDetailPanel.Height = 250
                  RowDetailPanel.VertSizing = True
                  ShowHint = True
                  SortLocal = True
                  STFilter.Local = True
                  STFilter.Location = stflInTitleFilterEh
                  STFilter.Visible = True
                  TabOrder = 0
                  OnSelectionChanged = ehOrgTreeSelectionChanged
                  OnRowDetailPanelShow = ehOrgTreeRowDetailPanelShow
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'CEX'
                      Footers = <>
                      Title.Caption = #1062#1077#1093
                      Width = 59
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'BU'
                      Footers = <>
                      Visible = False
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'DEPT_NAME'
                      Footers = <>
                      Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                      Visible = False
                      Width = 485
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'DEPT_CODE'
                      Footers = <>
                      Visible = False
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                    object ehDeptPeople: TDBGridEh
                      Left = 0
                      Top = 0
                      Width = 39
                      Height = 240
                      Align = alClient
                      AutoFitColWidths = True
                      DataSource = dm.odsDeptPeople
                      DynProps = <>
                      Flat = True
                      GridLineParams.VertEmptySpaceStyle = dessNonEh
                      HorzScrollBar.VisibleMode = sbNeverShowEh
                      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
                      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove]
                      TabOrder = 0
                      OnEnter = ehDeptPeopleEnter
                      Columns = <
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'TABN'
                          Footers = <>
                          Title.Caption = #1058#1072#1073'.'#8470
                          Width = 71
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'FULLNAME'
                          Footers = <>
                          Title.Caption = #1060#1048#1054
                          Width = 283
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'EMP_ID'
                          Footers = <>
                          Visible = False
                        end
                        item
                          CellButtons = <>
                          DynProps = <>
                          EditButtons = <>
                          FieldName = 'PERMISSION'
                          Footers = <>
                          ImageList = img16Staff
                          KeyList.Strings = (
                            'null'
                            '0'
                            '1'
                            '2')
                          Title.Caption = #1044#1086#1089#1090#1091#1087
                        end>
                      object RowDetailData: TRowDetailPanelControlEh
                      end
                    end
                  end
                end
              end
              object tsList: TTabSheet
                Caption = #1057#1087#1080#1089#1086#1082
                ImageIndex = 1
                object ehEmployees: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 439
                  Height = 454
                  Align = alClient
                  AllowedOperations = [alopUpdateEh]
                  ColumnDefValues.Title.TitleButton = True
                  ColumnDefValues.Title.ToolTips = True
                  DataSource = dm.odsEmployees
                  DynProps = <>
                  GridLineParams.VertEmptySpaceStyle = dessNonEh
                  HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbLastEh, nbRefreshEh]
                  HorzScrollBar.ExtraPanel.Visible = True
                  OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
                  SortLocal = True
                  STFilter.InstantApply = True
                  STFilter.Local = True
                  STFilter.Location = stflInTitleFilterEh
                  STFilter.Visible = True
                  TabOrder = 0
                  OnDrawColumnCell = ehEmployeesDrawColumnCell
                  OnEnter = ehDeptPeopleEnter
                  Columns = <
                    item
                      AutoFitColWidth = False
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'EMP_ID'
                      Footers = <>
                      Visible = False
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'CEX'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #1062#1077#1093
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'TABN'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #1058#1072#1073'.'#8470
                      Width = 50
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'FULLNAME'
                      Footers = <>
                      ReadOnly = True
                      Title.Caption = #1060#1048#1054
                      Width = 272
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'PERMISSION'
                      Footers = <>
                      ImageList = img16Staff
                      KeyList.Strings = (
                        'null'
                        '0'
                        '1'
                        '2')
                      ReadOnly = True
                      Title.Caption = #1044#1086#1089#1090#1091#1087
                      Width = 50
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      CellButtons = <>
                      DynProps = <>
                      EditButton.DefaultAction = False
                      EditButton.Style = ebsEllipsisEh
                      EditButton.Visible = True
                      EditButton.OnClick = ehEmployeesColumns5EditButtonClick
                      EditButtons = <>
                      FieldName = 'PERS_MAIL'
                      Footers = <>
                      Title.Caption = #1051#1080#1095#1085#1099#1081' '#1072#1076#1088#1077#1089' '#1101#1083'.'#1087#1086#1095#1090#1099
                      Width = 222
                      OnEditButtonClick = ehEmployeesColumns5EditButtonClick
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'ZIPPED_ATTACH'
                      Footers = <>
                      ImageList = Images16
                      KeyList.Strings = (
                        'null'
                        'null'
                        '1')
                      Title.Caption = 'ZIP'
                      Width = 50
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
          end
        end
        object tsPersMails: TTabSheet
          Caption = #1051#1080#1095#1085#1099#1077' '#1072#1076#1088#1077#1089#1072
          ImageIndex = 2
          object Panel5: TPanel
            Left = 818
            Top = 0
            Width = 305
            Height = 487
            Align = alRight
            Caption = 'Panel5'
            TabOrder = 0
            Visible = False
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 303
              Height = 31
              Align = alTop
              BevelOuter = bvNone
              Caption = #1041#1083#1086#1082#1080#1088#1091#1077#1084#1099#1077' '#1087#1086#1095#1090#1086#1074#1099#1077' '#1076#1086#1084#1077#1085#1099
              TabOrder = 0
            end
            object gridDeniedDomains: TDBGridEh
              Left = 1
              Top = 32
              Width = 303
              Height = 454
              Align = alClient
              AutoFitColWidths = True
              DataSource = dm.odsDeniedDomains
              DynProps = <>
              HorzScrollBar.ExtraPanel.NavigatorButtons = [nbInsertEh, nbDeleteEh, nbEditEh, nbPostEh, nbCancelEh, nbRefreshEh]
              HorzScrollBar.ExtraPanel.Visible = True
              EmptyDataInfo.Active = True
              TabOrder = 1
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object tsSSCAdmins: TTabSheet
          Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1099' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
          ImageIndex = 1
          object gridSSCRepAlone: TDBGridEh
            Left = 0
            Top = 41
            Width = 1123
            Height = 446
            Align = alClient
            DataSource = dm.odsGetSSCAdmins
            DynProps = <>
            HorzScrollBar.ExtraPanel.Visible = True
            HorzScrollBar.ExtraPanel.VisibleItems = [gsbiRecordsInfoEh]
            TabOrder = 0
            OnCellClick = gridSSCRepAloneCellClick
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LNOM'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'EMP_ID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'FIO'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CEX'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TABN'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NAIMPOL'
                Footers = <>
              end
              item
                CellButtons = <>
                Checkboxes = True
                DynProps = <>
                EditButtons = <>
                FieldName = 'SELECTED'
                Footers = <>
                KeyList.Strings = (
                  '1'
                  '0')
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pSSCAdminsInfo: TPanel
            Left = 0
            Top = 0
            Width = 1123
            Height = 41
            Align = alTop
            Caption = 
              #1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1076#1077#1089#1100' '#1086#1076#1085#1086#1075#1086' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072', '#1095#1100#1080' '#1082#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1073#1091#1076#1091 +
              #1090' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100#1089#1103' '#1074' '#1074' '#1056#1051' '#1076#1083#1103' '#1079#1072#1082#1088#1099#1090#1086#1081' '#1095#1072#1089#1090#1080' '#1073#1072#1079#1099
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
  end
  object PanelZoom: TPanel
    Left = 640
    Top = 111
    Width = 118
    Height = 162
    BevelOuter = bvNone
    ParentBackground = False
    ShowCaption = False
    TabOrder = 2
    TabStop = True
    Visible = False
    OnExit = PanelZoomExit
    object TrackBarZoom: TTrackBar
      Left = 0
      Top = 0
      Width = 32
      Height = 162
      Align = alLeft
      LineSize = 25
      Max = 150
      Min = 25
      Orientation = trVertical
      PageSize = 25
      Position = 100
      PositionToolTip = ptLeft
      ShowSelRange = False
      TabOrder = 0
      TickStyle = tsNone
      OnChange = TrackBarZoomChange
      OnEnter = TrackBarZoomEnter
    end
    object btn25: TButton
      Left = 38
      Top = 6
      Width = 75
      Height = 25
      Caption = '25%'
      TabOrder = 1
      OnClick = btn25Click
    end
    object btn50: TButton
      Left = 38
      Top = 37
      Width = 75
      Height = 25
      Caption = '50%'
      TabOrder = 2
      OnClick = btn50Click
    end
    object btn75: TButton
      Left = 38
      Top = 68
      Width = 75
      Height = 25
      Caption = '75%'
      TabOrder = 3
      OnClick = btn75Click
    end
    object btn100: TButton
      Left = 38
      Top = 99
      Width = 75
      Height = 25
      Caption = '100%'
      TabOrder = 4
      OnClick = btn100Click
    end
    object btn150: TButton
      Left = 38
      Top = 130
      Width = 75
      Height = 25
      Caption = '150%'
      TabOrder = 5
      OnClick = btn150Click
    end
  end
  object pSendChoices: TPanel
    Left = 144
    Top = 208
    Width = 232
    Height = 297
    Anchors = [akLeft, akBottom]
    BevelKind = bkFlat
    TabOrder = 3
    Visible = False
    OnEnter = pSendChoicesEnter
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 10
      Height = 261
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 11
      Top = 1
      Width = 216
      Height = 261
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object chkZIP: TCheckBox
        Left = 0
        Top = 221
        Width = 216
        Height = 30
        Align = alBottom
        Caption = 'ZIP '#1087#1077#1088#1077#1076' '#1086#1090#1087#1088#1072#1074#1082#1086#1081
        TabOrder = 0
        Visible = False
      end
      object rgPersonCase: TRadioGroup
        Left = 0
        Top = 0
        Width = 216
        Height = 131
        Align = alClient
        Caption = #1050#1086#1084#1091
        ItemIndex = 0
        Items.Strings = (
          #1057#1086#1090#1088#1091#1076#1085#1080#1082#1072#1084
          #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103#1084
          #1044#1077#1083#1077#1075#1072#1090#1072#1084)
        TabOrder = 1
        OnClick = rgPersonCaseClick
      end
      object chkCombineSlipsToOneFile: TCheckBox
        Left = 0
        Top = 161
        Width = 216
        Height = 30
        Align = alBottom
        Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1074' '#1086#1076#1080#1085' '#1092#1072#1081#1083
        Enabled = False
        TabOrder = 2
        OnClick = chkCombineSlipsToOneFileClick
      end
      object chkSlipsGrouping: TCheckBox
        Left = 0
        Top = 131
        Width = 216
        Height = 30
        Align = alBottom
        Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1076#1085#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
        TabOrder = 3
        OnClick = chkSlipsGroupingClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 251
        Width = 216
        Height = 10
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
      end
      object chkPageBreaks: TCheckBox
        Left = 0
        Top = 191
        Width = 216
        Height = 30
        Align = alBottom
        Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100' '#1087#1086#1089#1083#1077' '#1082#1072#1078#1076#1086#1075#1086
        Enabled = False
        TabOrder = 5
      end
    end
    object bSendSlips: TButton
      Left = 1
      Top = 262
      Width = 226
      Height = 30
      Action = SendSlip
      Align = alBottom
      Images = Images32
      TabOrder = 2
    end
  end
  object pEmpPersonalMail: TPanel
    Left = 88
    Top = 52
    Width = 332
    Height = 145
    TabOrder = 4
    Visible = False
    OnExit = bEmpMailCancelClick
    object bEmpMailCancel: TButton
      Left = 110
      Top = 112
      Width = 99
      Height = 28
      Caption = #1054#1090#1084#1077#1085#1072
      ImageIndex = 4
      Images = Images16
      TabOrder = 3
      OnClick = bEmpMailCancelClick
    end
    object bEmpMailApply: TButton
      Left = 224
      Top = 112
      Width = 99
      Height = 28
      Action = actEmpSetPersMail
      Images = img32Staff
      TabOrder = 4
    end
    object beEmpPerMail: TButtonedEdit
      Left = 16
      Top = 32
      Width = 305
      Height = 21
      Images = Images16
      RightButton.Hint = #1054#1095#1080#1089#1090#1082#1072' '#1087#1086#1083#1103
      RightButton.ImageIndex = 4
      RightButton.Visible = True
      TabOrder = 1
      OnRightButtonClick = beEmpPerMailRightButtonClick
    end
    object chkZippedAttach: TCheckBox
      Left = 16
      Top = 72
      Width = 177
      Height = 17
      Caption = #1040#1088#1093#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1080' '#1086#1090#1087#1088#1072#1074#1082#1077
      TabOrder = 2
    end
    object pEmpName: TPanel
      Left = 1
      Top = 1
      Width = 330
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pEmpName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object ALMain: TActionList
    Images = Images32
    Left = 1040
    Top = 8
    object ShowSlip: TAction
      Category = 'Operations'
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1056#1051
      ImageIndex = 2
      OnExecute = ShowSlipExecute
    end
    object HideSlip: TAction
      Category = 'Operations'
      Caption = #1057#1082#1088#1099#1090#1100' '#1056#1051
      Enabled = False
      ImageIndex = 3
      OnExecute = HideSlipExecute
    end
    object PrintSlip: TAction
      Category = 'Operations'
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100
      OnExecute = PrintSlipExecute
    end
    object SendSlip: TAction
      Category = 'Operations'
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1056#1051
      ImageIndex = 1
      OnExecute = SendSlipExecute
    end
    object actTreeCollapseAll: TAction
      Category = 'SlipsTree'
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077
      OnExecute = actTreeCollapseAllExecute
    end
    object actTreeExpandAll: TAction
      Category = 'SlipsTree'
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077
      OnExecute = actTreeExpandAllExecute
    end
    object actHelpMe: TAction
      Category = 'Operations'
      Caption = #1057#1087#1088#1072#1074#1082#1072
      ImageIndex = 0
      OnExecute = actHelpMeExecute
    end
    object actQuit: TAction
      Category = 'Operations'
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = actQuitExecute
    end
    object actGridAutoFit: TAction
      Category = 'SlipsTree'
      Caption = #1040#1074#1090#1086#1096#1080#1088#1080#1085#1072
      OnExecute = actGridAutoFitExecute
    end
  end
  object Images32: TImageList
    Height = 32
    Width = 32
    Left = 932
    Top = 368
    Bitmap = {
      494C010104001000040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE01F3F3F30CDEDEDE22DDDDDD23EBEB
      EB14F6F6F609FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01FDFD
      FD03FCFCFC06FBFBFB0AFAFAFA0DF8F8F811F6F6F617F6F6F617F6F6F617F3F3
      F31FF1F1F125F1F1F125F1F1F125F1F1F125F1F1F125F1F1F125F1F1F125F1F1
      F125F3F3F320F6F6F618F6F6F617F6F6F617F8F8F812FAFAFA0DFBFBFB0AFCFC
      FC06FDFDFD03FEFEFE0100000000000000000000000000000000FEFEFE01FDFD
      FD03FCFCFC06FBFBFB0AFAFAFA0DF8F8F811F6F6F617F6F6F617F6F6F617F3F3
      F31FF1F1F125F1F1F125F1F1F125F1F1F125F1F1F125F1F1F125F1F1F125F1F1
      F125F3F3F320F6F6F618F6F6F617F6F6F617F8F8F812FAFAFA0DFBFBFB0AFCFC
      FC06FDFDFD03FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC03CCCCCC3AC2C1C1D0A87575FE9F5E5EFEA47A
      7AE2A39494A5BDBDBD4DEDEDED12FDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002070A7001C6CA400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD05E7E7E741D4D4
      D476CBCBCB90C4C4C4A4C0C0C0AFBDBDBDB8B8B8B8C5B7B7B7C7B7B7B7C7B4B4
      B4D1B1B1B1D8B1B1B1D9B1B1B1D9B1B1B1D9B1B1B1D9B1B1B1D9B1B1B1D9B1B1
      B1D9B3B3B3D3B7B7B7C8B7B7B7C7B8B8B8C6BCBCBCBAC0C0C0B0C4C4C4A4CACA
      CA92D4D4D477E7E7E741FDFDFD050000000000000000FDFDFD05E7E7E741D4D4
      D476CBCBCB90C4C4C4A4C0C0C0AFBDBDBDB8B8B8B8C5B7B7B7C7B7B7B7C7B4B4
      B4D1B1B1B1D8B1B1B1D9B1B1B1D9B1B1B1D9B1B1B1D9B1B1B1D9B1B1B1D9B1B1
      B1D9B3B3B3D3B7B7B7C8B7B7B7C7B8B8B8C6BCBCBCBAC0C0C0B0C4C4C4A4CACA
      CA92D4D4D477E7E7E741FDFDFD05000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDDDDD22BCBCBCD0BE9C9CFF791F1FFE872E2EFEA04E
      4EFEBC7373FFD69C9CFEBAA4A4C6C0BFBF4CF8F8F80700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000347CAE00B8DFF900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD03EDEDED31DEDE
      DE5CD5D5D575CFCFCF85C9C9C997C8C8C89AC1C1C1ACBFBFBFB2BFBFBFB2BFBF
      BFB2BEBEBEB6B8B8B8C5B7B7B7C7B7B7B7C7B7B7B7C7B7B7B7C7B8B8B8C5BEBE
      BEB6BFBFBFB2BFBFBFB2BFBFBFB2C1C1C1ACC8C8C89AC9C9C997CFCFCF85D5D5
      D575DEDEDE5CEDEDED31FDFDFD030000000000000000FDFDFD03EDEDED31DEDE
      DE5CD5D5D575CFCFCF85C9C9C997C8C8C89AC1C1C1ACBFBFBFB2BFBFBFB2BFBF
      BFB2BEBEBEB6B8B8B8C5B7B7B7C7B7B7B7C7B7B7B7C7B7B7B7C7B8B8B8C5BEBE
      BEB6BFBFBFB2BFBFBFB2BFBFBFB2C1C1C1ACC8C8C89AC9C9C997CFCFCF85D5D5
      D575DEDEDE5CEDEDED31FDFDFD03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F609A1A1A16BE8E8E8FEC3A4A4FF883737FEA86767FEA859
      59FEC17A7AFFDEA0A0FEF3BCBCFEE0ACACFBAFA5A58BFBFBFB04000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000327AAE008ED0FE00A7D9FC004C91C30000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FEFEFE02FDFDFD04FCFCFC06FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFA
      FA0DF9F9F90FF7F7F716F6F6F617F6F6F617F6F6F617F6F6F617F7F7F716F9F9
      F90FFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0CFCFCFC07FCFCFC06FDFDFD04FEFE
      FE02FEFEFE01000000000000000000000000000000000000000000000000FEFE
      FE01FEFEFE02FDFDFD04FCFCFC06FCFCFC07FAFAFA0CFAFAFA0DFAFAFA0DFAFA
      FA0DF9F9F90FF7F7F716F6F6F617F6F6F617F6F6F617F6F6F617F7F7F716F9F9
      F90FFAFAFA0DFAFAFA0DFAFAFA0DFAFAFA0CFCFCFC07FCFCFC06FDFDFD04FEFE
      FE02FEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E6198E8E8EB5E0E0E0FEEDECECFF934D4DFFAC6E6EFFC28D
      8DFFC38484FFD08F8FFFDD9F9FFFD39292FFBE7676FFC5B7B78D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003079AD008ACEFE002DA7FD009CD4FD000B558800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E817A5A5A5E8C8C8C8FEEFEFEFFFECE8E8FEAC7474FEA762
      62FECB9B9BFFD09D9DFEC78787FEBA7171FEAA5C5CFFA05454FDECECEC300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D78AD0083CBFE00159DFD00159DFD007BC8FE0081BFEA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F10EB8B8B8FEC2C2C2FED8D8D8FFF1F1F1FEF2F2F2FEDCC9
      C9FEB47979FFB06D6DFEBF8686FEB77979FE9B4A4AFF842A2AFEE6E5E5760000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A58
      8F000B5E99003F83B40085CCFE00159DFD00159DFD00169EFD0068C0FE001C6C
      A400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE01C4C4C4EBC9C9C9FED3D3D3FFDFDFDFFEEFEFEFFEF4F4
      F4FEF4F4F4FFE8DDDDFEC79F9FFEAB6E6EFE9E5A5AFFC39E9EFEE8E8E8680000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A5388006EB3E30098D1FA0083CBFE0070C4FE0047B2
      FD0036ABFD00169EFD00159DFD00159DFD00159DFD00159DFD00159DFD0042B0
      FD0096D0F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFDFC03CCB4
      81A1AF8B3DF6E2D5BA5700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F6F013ECE2CD42E0CEAA72D4BB88A1D0B2
      78BBFBFAF50D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE76D0D0D0FFD9D9D9FFE3E3E3FFEEEEEEFDEEEA
      EAFEEDE6E6FEF6F6F6FEF6F6F6FFF6F6F6FFF7F7F7FFF3F3F3EBF6F6F6100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001267A20075BAEA0085CCFE0066BFFE004EB5FD0049B3FD003FAF
      FD0039ACFD002DA7FD001EA1FD00159DFD00159DFD00159DFD00159DFD00159D
      FD0034AAFD00458EC10000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFC03CDB47FA7B28B
      3AFFB08938FFAE8839FBE2D5BA57000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01F3EEE323E4D8
      BE53D7C39A82C9AE76B2BD9A53E2B7903FFEB99241FFBC9443FFBE9645FFC8A3
      56FEFBF9F50E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02B4B4B49EE0E0E0FEEAEAEAFEF4F4F4FDD8BF
      BFFE8C3434FFDFCECEFEECECECFEE9E9E9FEE3E3E3FFE7E7E764000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000012659F0091D1FD0072C4FE0068C0FE0064BEFE0057B9FE0053B7FE0049B3
      FD0044B1FD0039ACFD0031A9FD0022A3FD00159DFD00159DFD00159DFD00159D
      FD00159DFD0091CEFA002C79AF00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC03D0B681A7B68F3EFFB48D
      3CFFB28B3AFFB08938FFAE8839FBE2D5BA570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFAF808ECE4D434DCCEAE63CCB78893BEA163C3B08D40F1AE8837FFB18A
      39FFB38C3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE9645FFC09847FFD1B1
      6DDF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F1F10EACACAC53959595A7E8E8E8F9F8F8F8FED8BD
      BDFE964040FFDDC9C9FEE5E5E5FEDDDDDDFEE2E2E2B400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858A8800858A8800858A8800858A8800858A8800858A8800858A88005280
      9E0060ABE0007BC8FE0077C6FE006CC2FE0068C0FE005DBBFE0057B9FE004EB5
      FD0049B3FD003CAEFD0036ABFD002DA7FD001EA1FD00159DFD00159DFD00159D
      FD0047B2FD002473A90000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFDFC03D3B984A7BA9342FFB89140FFB68F
      3EFFB48D3CFFB28B3AFFB08938FFAE8839FBE2D5BA5700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F8F30EC2AB78A1B193
      4FD3A58130FBA6812FFFA88331FFAA8533FFAC8635FFAE8837FFB18A39FFB38C
      3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE9645FFC09847FFC29A49FFDDC3
      8FB0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D02F8A8A8A758383837CD6D6D6EAFAFAFAFEE5D2
      D2FEA45252FFD0ACACFEDFDFDFFEE2E2E2BDF5F5F51200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858A8800E3E3E300E8E9E800E5E5E500E5E5E500E5E5E500E5E5E50064A6
      D400BFE4FD008ACEFE0081CAFE0077C6FE0072C4FE0077C6FE0083CBFE0091D1
      FD0091D1FD0085CCFE0070C4FE0036ABFD0031A9FD001AA0FD00159DFD006EBA
      EE002173AB000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFDFC03D6BB87A7BF9746FFBD9544FFBA9342FFB891
      40FFB68F3EFFB48D3CFFB28B3AFFB08938FFAE8839FBE2D5BA57000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFBF907CFB87ECAA580
      2FFFA6812FFFA88331FFAA8533FFAC8635FFAE8837FFB18A39FFB38C3BFFB58E
      3DFFB7903FFFB99241FFBC9443FFBE9645FFC09847FFC29A49FFC59B4BFFE8D5
      AF81000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F909E4E4E44AE1E0E070DDD9D96FE3E2
      E24CF5F5F511F9F9F906AFAFAF508383837C8484847FFAFAFAFDFBFBFBFAF7F4
      F4FFB36868FFBC7878FFF2EEEE6E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858A8800E3E3E300E3E3E300F5F5F500E8E9E800E5E5E500E5E5E50089C0
      E700C0E3FC0096D3FE0085CCFE007BC8FE0083CBFE0083C7F60052A4DD002A7B
      B4002778B0004F8EBC0083CBFE003CAEFD0036ABFD002DA7FD0062BEFE001D6F
      A800C8DCEA000000000000000000000000000000000000000000000000000000
      000000000000FEFDFC03D9BE89A7C39A4AFFC19848FFBF9746FFBD9544FFBA93
      42FFB89140FFB68F3EFFB48D3CFFB28B3AFFB08938FFAE8839FBE2D5BA570000
      000000000000000000000000000000000000F5F2EA1900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFAF610DAC4
      8DCAA98433FFAA8533FFAC8635FFAE8837FFB18A39FFB38C3BFFB58E3DFFB790
      3FFFB99241FFBC9443FFBE9645FFC09847FFC29A49FFC59B4BFFCBA254FFF0E4
      CC52000000000000000000000000000000000000000000000000F8F8F807E4E4
      E41BD3D3D32CCDCDCD32B9B9B973E0D0D0EC914949FF6B0808FE660101FE6804
      04FE863737FAA68585B7918D8D8A8383837C8585858EF9F9F9FEF8F8F8FBFDFD
      FDFED09B9BFFC57F7FFED29B9BF2EFECEC440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858A8800E8E9E800E8E9E800D2D6D200E8E9E800F5F5F500E8E9E800BFDF
      F500C7E6FC00AADBFC009CD4FD0093CBF4002776AE00DDDFE100E1E1E100E1E1
      E100E1E1E100337EB30080CAFE0044B1FD0044B1FD005FA9DC002574AA00E1E1
      E100000000000000000000000000000000000000000000000000000000000000
      0000FEFDFC03DCC08CA7C99E4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD95
      44FFBA9342FFB89140FFB68F3EFFB48D3CFFB28B3AFFB08938FFAE8839FBE2D5
      BA57000000000000000000000000D5C49F73A17D2CFCF9F7F30E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFA
      F60EC5A967E0AC8635FFAE8837FFB18A39FFB38C3BFFB58E3DFFB7903FFFB992
      41FFBC9443FFBE9645FFC09847FFC29A49FFC59B4BFFC79D4DFFD1AA5DFFF8F3
      E8230000000000000000000000000000000000000000ECECEC13B8B8B8479696
      96698B8B8B74949494A7E9DCDCFE701111FE751919FF863535FE6D0C0CFE6501
      01FE660000FF6E0B0BFE832B2BFE8D6F6FCE85858594F4F4F4FEF0F0F0FDFEFE
      FEFEEBD1D1FFD29191FED79696FED9A0A0FBEFE6E676FEFEFE01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858A8800E8E9E800E8E9E800E8E9E800D8DBD800FCFCFC00FCFCFC00D6EB
      FA00CBE7FB00B3DEFC00ADDCFD002C79AF00B0C5D400E3E3E300E3E3E300E1E1
      E100E1E1E100337EB30080CAFE004EB5FD007BC8FE002D78AD00D0D7DD00E1E1
      E10000000000000000000000000000000000000000000000000000000000FEFE
      FD02DFC38FA7CDA252FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF97
      46FFBD9544FFBA9342FFB89140FFB68F3EFFB48D3CFFB28B3AFFB08938FFAE88
      39FBE2D5BA5700000000D6C6A173A4802EFEA27E2CFFE8E0CD3C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7C5
      9F7BAC8635FFAE8837FFB18A39FFB38C3BFFB58E3DFFB7903FFFB99241FFBC94
      43FFBE9645FFC09847FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFD5B067F2FEFE
      FE0100000000000000000000000000000000F3F3F30CB1B1B14E868686798383
      837C82828280E8E8E8F3A46868FE6D0B0BFE964F4FFF8E4343FE731616FE6501
      01FE660101FF721010FE802323FE8F3737FE9D7878DFE6E6E6F9E7E7E7FEF9F9
      F9FCFCF7F7FFDFA3A3FEE5AAAAFEE3A7A7FEDB9E9EFFECD2D2B9F4F4F4170000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858A8800EBEBEB00EBEBEB00E8E9E800E8E9E800E5E5E500AFBFC100E7F4
      FE00DBEFFE00CEE9FC008AC3EB00E5E5E500E5E5E500E5E5E500E5E5E500E1E1
      E100E1E1E100337EB3008ACEFE004B94C7004888B500E1E1E100E1E1E100E1E1
      E10000000000000000000000000000000000000000000000000000000000F5EC
      DA38D3A95AFFCFA454FFCDA252FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC198
      48FFBF9746FFBD9544FFBA9342FFB89140FFB68F3EFFB48D3CFFB28B3AFFB089
      38FFAE8839FBC8B07CA4A98432FEA78230FFA4802EFFD8C8A66B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6C49D7BAC86
      35FFAE8837FFB18A39FFB38C3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE96
      45FFC09847FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFDEC087C40000
      000000000000000000000000000000000000D5D5D52A8B8B8B748282827D8282
      827D8A8A8AA0FEFEFEFF7D2727FF802B2BFF9D5B5BFF944D4DFF701212FF6600
      00FF670202FF741212FF822626FF913A3AFFA04F4FFFDFCFCFFDE2E2E2FFECEC
      ECFCFFFFFFFFEEC0C0FFF3BCBCFFEFB7B7FFE3A7A7FFD59494FFD8A7A7E6EEEC
      EC3D000000000000000000000000000000000000000000000000000000000000
      0000858A8800EBEBEB00EBEBEB00EBEBEB00EBEBEB00E8E9E800C4DBEA00DDEB
      F300DDEFFB00BCDFF8005E9FCE00E1E1E100DDDDDD00D4D4D400CFCFCF00CBCB
      CB00CDCDCD00337EB3008CCDFB005993BB00E1E1E100E1E1E100E1E1E100E1E1
      E10000000000000000000000000000000000000000000000000000000000FDFC
      F909E3C78EC5D4AA5CFFCFA454FFCDA252FFCBA050FFC99E4EFFC69C4CFFC39A
      4AFFC19848FFBF9746FFBD9544FFBA9342FFB89140FFB68F3EFFB48D3CFFB28B
      3AFFB08938FFAD8736FFAB8534FFA98432FFA78230FFC8B2809A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6C49D7BAC8635FFAE88
      37FFB18A39FFB38C3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE9645FFC098
      47FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFE8D1A5960000
      000000000000000000000000000000000000C3C3C33C8484847B8383837C8383
      837C9A9A9ABAFEFEFEFE761B1BFE8A3B3BFEA36666FF944C4CFE660101FE6501
      01FE670202FF741313FE832626FE913A3AFEA04E4EFFCEA3A3FEDDDDDDFEDFDF
      DFFDFFFFFFFFF3CECEFEF6C0C0FEF1BABAFEE4A8A8FFD69595FEC78282FEC180
      80F9ECE5E55B0000000000000000000000000000000000000000000000000000
      0000858A8800EDEDED00EBEBEB00EBEBEB00EBEBEB00DFE7ED00F2F8FB00EEF6
      FB00DFEEF800B1CCDD00F2F2F200F2F2F200EFEFEF00EFEFEF00EFEFEF00E5E5
      E500A6A6A6000B629F007EA7C400E5E5E500E5E5E500E5E5E500E3E3E300E3E3
      E300000000000000000000000000000000000000000000000000000000000000
      0000FDFBF70DE4C88EC5D4AA5CFFCFA454FFCDA252FFCBA050FFC99E4EFFC69C
      4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA9342FFB89140FFB68F3EFFB48D
      3CFFB28B3AFFB08938FFAD8736FFAB8534FFA98432FFB99C5BC9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6C49D7BAC8635FFAE8837FFB18A
      39FFB38C3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE9645FFC09847FFC29A
      49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFD2A859FFEFE0C2670000
      000000000000000000000000000000000000CDCDCD32888888778383837C8383
      837CB0B0B0E1FEFEFEFE904747FE802C2CFEA97070FF843232FE650101FE6501
      01FE670101FF721111FE812424FE903838FE9E4B4BFFCDA0A0FED8D8D8FDD6D6
      D6FDFFFFFFFFEECBCBFEE9AFAFFEE6ACACFEDDA0A0FFD18F8FFEC37D7DFEB56A
      6AFEAE6565FCECE6E65400000000000000000000000000000000000000000000
      0000858A8800EDEDED00EDEDED00EDEDED00EBEBEB00F7F8FA00F8FAFC00DCE9
      F3008FB5D100F8F8F800F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F5F5
      F500F5F5F5007E9FB500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      000000000000FDFBF70DE4C88EC5D4AA5CFFCFA454FFCDA252FFCBA050FFC99E
      4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA9342FFB89140FFB68F
      3EFFB48D3CFFB28B3AFFB08938FFAD8736FFAB8534FFAC883AF5FDFDFC030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6C49D7BAC8635FFAE8837FFB18A39FFB38C
      3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE9645FFC09847FFC29A49FFC59B
      4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFD0A555FFD8B064FFF6EDDC380000
      000000000000000000000000000000000000EDEDED12A3A3A35C8383837C8181
      8182BFBFBFFDFEFEFEFECEAEAEFE680303FEA46868FF7D2727FE650101FE6501
      01FE660000FF6F0D0DFE7E2020FE8C3333FE9A4646FFDDC4C4FBB1B1B1E2D2D2
      D2FDFFFFFFFFE4B9B9FEDA9B9BFED99999FED39191FFC98484FEBD7474FEB063
      63FEA25151FFAC6969F2F2F1F121000000000000000000000000000000000000
      0000858A8800EFEFEF00EFEFEF00EFEFEF00EFEFEF00EDEDED00D8DADB00FCFC
      FC00F2F2F200EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00F5F5F500C8C8C800E8E9E800E8E9E800E5E5E500E5E5E500E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFBF70DE4C88EC5D4AA5CFFCFA454FFCDA252FFCBA0
      50FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA9342FFB891
      40FFB68F3EFFB48D3CFFB28B3AFFB08938FFAD8736FFAB8534FFF2ECDF270000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6C49D7BAC8635FFAE8837FFB18A39FFB38C3BFFB58E
      3DFFB7903FFFB99241FFBC9443FFBE9645FFC09847FFC29A49FFC59B4BFFC79D
      4DFFCA9F4FFFCCA151FFCEA353FFD0A555FFD2A757FFDAB267FDFDFBF80B0000
      000000000000000000000000000000000000FEFEFE01DCDCDC239D9D9D628080
      8089BABABAFFF1F1F1FFFEFEFEFF975353FF761A1AFF8A3C3CFF660000FF6600
      00FF660000FF6B0707FF791919FF8D3838FFCAA0A0FFBEBEBED8949494C7D6D6
      D6FEFEFEFEFFCF9494FFCB8888FFCA8686FFC68080FFBE7575FFB46868FFA858
      58FF9C4848FF8F3636FFDCC3C3A9000000000000000000000000000000000000
      0000858A8800EFEFEF00EFEFEF00EFEFEF00EFEFEF00DDDDDD00C2C2C200F2F2
      F200EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00F5F5F500CDCDCD00E8E9E800E8E9E800E8E9E800E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFBF70DE4C88EC5D4AA5CFFCFA454FFCDA2
      52FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA93
      42FFB89140FFB68F3EFFB48D3CFFB28B3AFFB08938FFAD8736FFE3D6BA560000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6C49D7BAC8635FFAE8837FFB18A39FFB38C3BFFB58E3DFFB790
      3FFFB99241FFBC9443FFBE9645FFC09847FFC29A49FFC59B4BFFC79D4DFFCA9F
      4FFFCCA151FFCEA353FFD0A555FFD2A757FFD5A959FFE1BE7DDA000000000000
      00000000000000000000000000000000000000000000FDFDFD02E1E1E11EA9A9
      A957BABABAF7D4D4D4FEFDFDFDFEF8F4F4FE8D4141FF6E0E0EFE650101FEBF95
      95FEF8F3F3FFF4EDEDFEF2E9E9FEFDFCFCFEE9E9E9F38585858E8C8C8CBFE5E5
      E5FEEDDBDBFFBA7171FEBD7474FEBC7373FEB96E6EFFB26666FEA95A5AFE9F4C
      4CFE943D3DFF882F2FFE984E4EFCF2F2F21B0000000000000000000000000000
      0000858A8800F2F2F200F2F2F200F2F2F200E3E3E300FCFCFC00F5F5F500F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00F5F5F500C8C8C800E8E9E800E8E9E800E8E9
      E800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFBF70DE4C88EC5D4AA5CFFCFA4
      54FFCDA252FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD95
      44FFBA9342FFB89140FFB68F3EFFB48D3CFFB28B3AFFB08938FFD4C096850000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6C49D7BAC8635FFAE8837FFB18A39FFB38C3BFFB58E3DFFB7903FFFB992
      41FFBC9443FFBE9645FFC09847FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFCCA1
      51FFCEA353FFD0A555FFD2A757FFD5A959FFD7AB5BFFE9CE9CAB000000000000
      000000000000000000000000000000000000000000000000000000000000F0F0
      F00FA9A9A9AAD1D1D1FEE7E7E7FEFEFEFEFEFBF8F8FFA46868FE660101FE8432
      32FEE3D1D1FEF7F7F7FEF4F4F4FEE9E9E9FE979797C58383837C9C9C9CC8F6F0
      F0FEB67474FFAC5E5EFEAE6161FEAE6060FEAB5C5CFFA55454FE9D4A4AFE943E
      3EFE8A3030FF8A3535FE751515FEE3E3E3600000000000000000000000000000
      0000858A8800F2F2F200F2F2F200EBEBEB00BEBEBE00F5F5F500F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200EFEFEF00EFEFEF00F2F2F200F5F5F500DFDFDF00E8E9E800E8E9
      E800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFBF70DE4C88EC5D4AA
      5CFFCFA454FFCDA252FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF97
      46FFBD9544FFBA9342FFB89140FFB68F3EFFB48D3CFFB28B3AFFC7AB72B40000
      000000000000000000000000000000000000000000000000000000000000EFE8
      D931B08B3BFFAE8837FFB18A39FFB38C3BFFB58E3DFFB7903FFFB99241FFBC94
      43FFBE9645FFC09847FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFCEA3
      53FFD9B46AFFE4C584EFD5A95AFFD7AB5BFFDAAE60FFEFDCB87C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB1DDADADAEEE1E1E1FEF1F1F1FEFEFEFEFFFEFEFEFED4B8B8FE7D27
      27FE670101FF8D4343FEB58C8CFECDBBBBFD9E9898C8A89E9ED2CBA9A9FCA155
      55FE9A4545FF9E4B4BFEA04D4DFE9F4C4CFE9C4949FF984242FE913A3AFE8930
      30FE8F3D3DFF904141FE6A0606FEDFDDDD810000000000000000000000000000
      0000858A8800F5F5F500F5F5F500FCFCFC00F8F8F800F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200B7B7B700EBEB
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFBF70DE4C8
      8EC5D4AA5CFFCFA454FFCDA252FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC198
      48FFBF9746FFBD9544FFBA9342FFB89140FFB68F3EFFB48D3CFFBA974FE30000
      000000000000000000000000000000000000000000000000000000000000F9F7
      F112CEB371E4B48F3FFFB38C3BFFB58E3DFFB7903FFFB99241FFBC9443FFBE96
      45FFC09847FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFD9B4
      6AFFEAD3A4A7FDFAF611ECD39FC5D9AE5FFFDFB66AFFF5E8D14D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EAEAEA45E8E8E8F8F2F2F2FFFBFBFBFFFDFDFDFFFDFDFDFFFAF8
      F8FFC09999FF7C2626FF660000FF670101FF6E0B0BFF771818FF802222FF862B
      2BFF8C3232FF8F3737FF913939FF903939FF8E3636FF8E3838FF964848FF9F59
      59FF9B5555FF893A3AFF6D0E0EFFDEDEDE7D0000000000000000000000000000
      0000858A8800F5F5F500CDCDCD00FAFAFA00F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200EFEFEF00EBEB
      EB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFA
      F60DDBB672E0D1A656FFCFA454FFCDA252FFCBA050FFC99E4EFFC69C4CFFC39A
      4AFFC19848FFBF9746FFBD9544FFBA9342FFB89140FFB68F3EFFB48D3CFFF9F6
      F013000000000000000000000000000000000000000000000000000000000000
      0000F5F0E526D4B978E4B89343FFB7903FFFB99241FFBC9443FFBE9645FFC098
      47FFC29A49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFD9B46AFFEAD3
      A3A7FEFEFD0300000000FDFCF80DEED6A2C5E5C178FFFBF6ED1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEEEEE44F9F9F9EEFBFBFBFFF4F4F4FEF0F0F0FEF2F2
      F2FEF1F1F1FFEEEEEEFEC8ACACFE935050FE6B0909FF6B0707FE731111FE8128
      28FE954848FFA56262FEA86868FEAC6F6FFEB27979FFB37C7CFEAC7272FEA465
      65FE995454FF751A1AFE8F5151FEDEDEDE560000000000000000000000000000
      0000868B8900DDDDDD00FCFCFC00F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F2F2F200D4D4
      D400EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECD6
      B07BD6A95AFFD3A858FFD1A656FFCFA454FFCDA252FFCBA050FFC99E4EFFC69C
      4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA9342FFB89140FFB68F3EFFEBE1
      CC42000000000000000000000000000000000000000000000000000000000000
      000000000000F6F0E526D6BB7AE4BD9647FFBC9443FFBE9645FFC09847FFC29A
      49FFC59B4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFD9B46AFFEAD3A3A7FEFE
      FD03000000000000000000000000FDFCF80DF3E2C17100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F221F8F8F8C3EFEFEFFEE8E8E8FEE1E1
      E1FEDFDFDFFFE2E2E2FEE4E4E4FEE2E2E2FEDAD5D5FFB59494FE925353FE761C
      1CFE6F0C0CFF751515FE842F2FFE8E4040FE934949FF914646FE893939FE7A22
      22FE690606FF762121FEC6BFBFF0F6F6F60E0000000000000000000000000000
      0000868B890000000000F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EED8B27BDAAD
      5EFFD8AB5CFFD6A95AFFD3A858FFD1A656FFCFA454FFCDA252FFCBA050FFC99E
      4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA9342FFB89140FFDFCD
      AA70000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1E626D8BC7DE4C19A4AFFC09847FFC29A49FFC59B
      4BFFC79D4DFFCA9F4FFFCCA151FFCEA353FFD9B46AFFEAD3A3A7FEFEFD030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01EBEBEB62E5E5E5E4DBDB
      DBFED4D4D4FFCDCDCDFECACACAFECDCDCDFED2D2D2FFD5D5D5FED3D3D3FED1D1
      D1FEBEAEAEFFA67F7FFE925858FE823838FE772222FF721818FE741D1DFE8238
      38FE9F7373FFC7C3C3FEE2E2E265000000000000000000000000000000000000
      0000858A8800858A8800858A8800858A8800858A8800858A8800858A8800858A
      8800858A8800858A8800858A8800858A8800858A8800858A8800858A8800858A
      8800858A8800858A8800858A8800858A8800858A8800858A8800858A8800858A
      8800858A88000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCF8F116E3BF77F6E4BF
      77FFE2BC73FFDBB163FFD6A95AFFD3A858FFD1A656FFCFA454FFCDA252FFCBA0
      50FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD9544FFBA9342FFD2BA
      879F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F1E626DBBE7FE4C59E4EFFC59B4BFFC79D
      4DFFCA9F4FFFCCA151FFCEA353FFD9B46AFFEAD3A3A7FEFEFD03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F9F908E3E3
      E369D6D6D6D5C8C8C8FFC0C0C0FFB9B9B9FFB2B2B2FFB0B0B0FFB5B5B5FFBDBD
      BDFFC7C7C7FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFC1C1C1FFC6C6C68400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFDFC05F9F2
      E42FF3E4C95FEFDBB38EEAD09BBEE2C07DEDDEBA71FFDCB76DFFD3AA5DFFCDA2
      52FFCBA050FFC99E4EFFC69C4CFFC39A4AFFC19848FFBF9746FFBD9544FFC7A7
      66CE000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F2E726DDC180E4CAA152FFCA9F
      4FFFCCA151FFCEA353FFD9B46AFFEAD3A3A7FEFEFD0300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3E3E33CD4D4D49AB9B9B9ECADADADFFA5A5A5FE9E9E9EFE9797
      97FE909090FF919191FE979797FD9B9B9BFE9D9D9DFF9B9B9BFE919191FE7F7F
      7FFEADADAD860000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF6ED1EF3E8D14EEFDDBA7EE9D1
      A1AEDFC182DDD8B56CFED5B268FFCBA456FFC39A4AFFC19848FFBF9746FFBE97
      49F8FDFDFC040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F2E726DFC383E4CEA5
      56FFCEA353FFD9B46AFFEAD3A3A7FEFEFD030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC04DBDBDB42C7C7C78BAEAEAECA9494
      94F98B8B8BFF838383FE7C7C7CFE757575FE6E6E6EFF676767FE757575E3C0C0
      C062000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFAF60FF5ECDA3EEFE1C26DE8D5A99DDDC288CDD3B26AF8D1B0
      67FDF9F6EF170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F3E726E3C5
      86E4E3C47EFFEAD3A3A7FEFEFD03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F9
      F907DEDEDE2ECBCBCB4EBFBFBF62BABABA67BFBFBF5BD7D7D734FDFDFD020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFDFC04FAF7
      F018000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF7
      F019F2E5CD53FEFEFD0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFE03FFFFFFFFFFC0000003C0000003
      FFFC00FFFFFFF9FF8000000180000001FFFC007FFFFFF9FF8000000180000001
      FFF8003FFFFFF87FE0000007E0000007FFF8003FFFFFF83FFFFFFFFFFFFFFFFF
      FFF8001FFFFFF81FFFFFFFFFFFFFFFFFFFF8001FFFFFE00FFFFFFFFFFFFFFFFF
      FFF8001FFFFC0007FFC3FFFFFFFFFE07FFFC001FFFF80003FF81FFFFFFFF8007
      FFFC003FFFF00001FF00FFFFFFF0000FFFFC007FF0000003FE007FFFFF80000F
      FFFC007FF0000007FC003FFFFF80000FFE0001FFF0000007F8001F7FFFC0000F
      C00000FFF000000FF0000E3FFFE0000F8000003FF000000FE000043FFFE0000F
      0000001FF000000FE000003FFFC0001F0000000FF000000FE000003FFF80001F
      00000007F000000FF000003FFF00001F00000003F000000FF800001FFE00001F
      00000001F000000FFC00001FFC00001F00000001F000000FFE00001FF800003F
      80000000F000000FFF00001FF000003FE0000000F000000FFF80001FE000003F
      F0000000F000000FFFC0001FE000003FF8000000F000000FFFE0000FF000043F
      FC000000F0000007FFE0000FF8000E7FFE000000F4000007FFC0000FFC001FFF
      FF000001F0000007FF80000FFE003FFFFFC00003FFFFFFFFFFC0000FFF007FFF
      FFF80007FFFFFFFFFFFF0007FF80FFFFFFFE000FFFFFFFFFFFFFF807FFC1FFFF
      FFFFE01FFFFFFFFFFFFFFFCFFFE3FFFF00000000000000000000000000000000
      000000000000}
  end
  object ALStaff: TActionList
    Images = img32Staff
    Left = 1096
    Top = 8
    object actEmpInclude: TAction
      ImageIndex = 0
      OnExecute = actEmpIncludeExecute
    end
    object actEmpExclude: TAction
      ImageIndex = 1
      OnExecute = actEmpExcludeExecute
    end
    object actEmpSetPersMail: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      ImageIndex = 2
      OnExecute = actEmpSetPersMailExecute
    end
    object actShowPersMailPane: TAction
      OnExecute = actShowPersMailPaneExecute
    end
  end
  object img32Staff: TImageList
    BlendColor = clDefault
    BkColor = clDefault
    Height = 32
    Width = 32
    Left = 864
    Top = 304
    Bitmap = {
      494C010103001000040020002000000000FFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000106030900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060501090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BB000000BC000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A26113A1FA83CE000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8831FE0261F
      0A3A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000B9
      000000BA000000B9000000BA0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007190B261D96
      37CF5AD571FF2ACD4CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDA02AFFDEC0
      79FF97761DCF1915072600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000B7000000B8
      000000B7000000B7000000B8000000B800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001EB83EF322C7
      41FF80E093FF2BCF50FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFA52BFFE8D3
      9CFFD1A943FFBA8E1FF300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5000000B6000000B5
      000000B6000000B6000000B5000000B6000000B6000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001DAE3CEB1FC53EFF40D05EFF4DD7
      6DFF53DA74FF2CD254FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2AB2CFFE3CC
      7EFFE4CE87FFE3CB82FFD3AE4AFFB28B20EB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B3000000B4000000B3000000B4
      000000B4000000B4000000B4000000B3000000B4000000B40000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001030105176B2A9E1EC53EFF23C742FF39D35CFF3DD4
      61FF40D865FF2BD455FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4AE2BFFE2C7
      6FFFE3CC7FFFE5CD85FFE2CA80FFDABA5FFF6F591A9C03030105000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000B1000000B1000000B1000000B1000000B1
      000000B1000000B1000000B1000000B1000000B1000000B1000000B100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001152207F1CC03AFF1DC43CFF25CB47FF27CE4CFF2AD252FF2ED4
      56FF2ED658FF2FD75BFF3ADA64FF41DB6AFF4FDE76FF57DF7BFF67E087FF6EE2
      8CFF7EE597FF84E59CFF94E7A7FF9CE9ADFFA8EBB7FFAEECBBFFB8EEC4FFB8ED
      C3FF1CC63BFF000000000000000000000000000000000000000000000000BF87
      19FFB87B17FFBA7C18FFBC8319FFBF871AFFC48F1DFFC6941FFFCA9D22FFCDA2
      23FFD2AA27FFD3AD28FFD7B22EFFD9B633FFDBBD41FFDCBE48FFDFC257FFE1C6
      61FFE3CB74FFE5CE7CFFE6D28BFFE8D493FFE9D49BFFDAB961FF5645137C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AF000000AF000000AF000000AF000000AF000000AF
      000000AF000000AF000000AF000000AF000000AF000000AF000000AF000000AF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000017852CC719BE35FF1CC13AFF1FC63FFF23CB46FF24CC4AFF27D14FFF2AD3
      52FF2BD556FF2ED75BFF38DB64FF40DC6AFF4FDF77FF58E07DFF68E389FF70E3
      8EFF7FE59AFF85E69EFF96E9A9FF9DE9B0FFAAEBB9FFAFECBDFFBAEEC5FFBAED
      C4FF1CC63BFF000000000000000000000000000000000000000000000000BF87
      19FFBA7E1CFFBB801DFFBF881CFFC08A1DFFC49320FFC79721FFCCA023FFCEA5
      25FFD3AC28FFD4B029FFD8B62FFFDAB933FFDCBE40FFDDBF46FFDEC356FFE0C5
      5EFFE3CA70FFE4CB77FFE6D086FFE7D290FFEAD79FFFEAD8A1FFD5B051FF8C6C
      19C4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AD000000AD000000AD000000AD000000AD000000AD
      0000000000000000000000AD000000AD000000AD000000AD000000AD000000AD
      000000AD00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000126F25AD18BA
      31FF19BD35FF1CC139FF1FC840FF1FC741FF1FC741FF1FC742FF22CC44FF23CE
      47FF25D24CFF28D451FF34D95DFF3BDB63FF4CDF72FF54E079FF65E388FF6FE3
      8FFF82E79DFF8BE7A2FF9AEAADFFA2EBB4FFB1EDBEFFB7EEC1FFC0F0CAFFC0EF
      CAFF1CC63BFF000000000000000000000000000000000000000000000000BF87
      19FFC08A2AFFC28C2AFFC49129FFC59429FFC99927FFCC9D28FFCEA427FFCFA8
      27FFD4AE2AFFD6AF29FFD8B62DFFD8B932FFDBBC3BFFDCBF41FFDDBF4BFFDDC1
      52FFDFC55EFFE2C866FFE3CC7AFFE6CF86FFEAD89FFFECDBA9FFEDDEB4FFEEDE
      B7FFCEA444FF745A14A800000000000000000000000000000000000000000000
      00000000000000AB000000AB000000AB000000AB000000AB000000AB00000000
      000000000000000000000000000000AB000000AB000000AB000000AB000000AB
      000000AB000000AB000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007250E3D2AC342FF18BD
      33FF1CC23AFF1DC53DFF1FC740FF1FC53FFF1DC53EFF1EC63DFF1FCA40FF20CD
      43FF22D148FF26D34CFF31D858FF38DC5FFF47DE6CFF50DF74FF63E286FF6CE5
      8EFF81E69DFF8BE8A2FF9DEAAFFFA5EBB7FFB4EEC0FFBAEFC6FFC4F1CDFFC4F0
      CCFF1CC53AFF000000000000000000000000000000000000000000000000BF87
      19FFC59133FFC59333FFC89731FFC89830FFCA9D2EFFCB9F2CFFCFA52AFFD1A7
      2AFFD4AD29FFD4AF2AFFD7B42BFFD7B82FFFDCBC39FFDBBE3DFFDCBD46FFDDBF
      4CFFDFC358FFE0C55FFFE3CB75FFE5CE82FFE9D79DFFEBDBA8FFEEDFB7FFEFE1
      BCFFEEDFB8FFD9B869FF251E0739000000000000000000000000000000000000
      000000A9000000A9000000A9000000A9000000A9000000A90000000000000000
      00000000000000000000000000000000000000A9000000A9000000A9000000A9
      000000A9000000A9000000A90000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E9338CA69E4
      8EFF3DE16BFF23D14BFF21CA44FF23CB47FF26D04FFF28D252FF2BD658FF2CD8
      5BFF2EDB60FF32DD66FF3FDF70FF46E276FF54E37FFF5CE385FF6DE490FF76E6
      97FF89E8A2FF93E9A9FFA5ECB7FFAEEDBEFFBCF0C7FFC2F0CCFFCBF2D3FFCBF1
      D2FF1CC53AFF000000000000000000000000000000000000000000000000BF87
      19FFCC9E47FFCC9F47FFCEA344FFCDA442FFD0A63CFFD0A738FFD3AB33FFD5AC
      30FFD7B42EFFD7B62FFFDCBC32FFDDC137FFE2C846FFE2CA4EFFE3CC5DFFE4CD
      67FFE6D078FFE7D282FFE9D693FFEAD89AFFEBDBA7FFECDDACFFF2E6C8FFF7F0
      E1FFEBDAA2FF977D22C6000000000000000000000000000000000000000000A7
      000000A7000000A7000000A7000000A7000000A7000000000000000000000000
      0000000000000000000000000000000000000000000000A7000000A7000000A7
      000000A7000000A7000000A7000000A700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001760
      288D88E9B0FF5EE588FF22CD47FF22CB46FF25D04DFF26D150FF2AD556FF2BD6
      58FF2DD95DFF31DB63FF3DDE6DFF44E072FF53E17DFF5CE283FF6CE48FFF77E5
      96FF8CE8A5FF95EAABFFA9EDBAFFB1EEC1FFC0F1CAFFC5F2CFFFCDF4D6FFCEF3
      D6FF1CC53AFF000000000000000000000000000000000000000000000000BF87
      19FFCEA451FFCFA550FFD0A84DFFD1A94BFFD2AB44FFD3AB40FFD3AD37FFD4AF
      34FFD6B32FFFD8B42EFFDABB31FFDBBF37FFE0C444FFE1C74BFFE3CA5BFFE3CB
      65FFE5CF75FFE7D180FFE8D590FFEAD698FFEBDBA6FFEDDEB2FFF8F1E2FFF2E6
      CCFF6150198700000000000000000000000000000000000000000000000000A5
      000000A5000000A5000000A5000000A500000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A5000000A5
      000000A5000000A5000000A5000000A5000000A5000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030D06151F9639CB9AECC2FF44E577FF26D04EFF24CE4CFF27D351FF29D4
      53FF2BD658FF2FD85DFF3ADC67FF41DD6CFF51DF79FF5BE081FF6EE48FFF7AE6
      97FF91E9A8FF9CEAB1FFB0EEBFFFB9F0C7FFC7F2D1FFCCF3D4FFD4F5DBFFD4F4
      DAFF1CC63BFF000000000000000000000000000000000000000000000000BF87
      19FFD4AE63FFD4AF63FFD6B160FFD5B25DFFD6B256FFD6B14FFFD5B142FFD5B1
      3DFFD6B335FFD7B431FFD8B832FFDABA35FFDDBF41FFDEC148FFE0C658FFE1C7
      60FFE4CC72FFE5CE7BFFE7D28BFFEAD89CFFF5ECD7FFF6EEDBFF9B7F23C80D0B
      0314000000000000000000000000000000000000000000000000000000000000
      000000A3000000A3000000A30000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000A3
      000000A3000000A3000000A3000000A3000000A3000000A30000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000028D252FC8FECBBFF33E46CFF2BD75BFF26D150FF28D3
      52FF2AD556FF2ED75BFF9BECB0FF9EEDB3FFA6EEBAFFACEFBEFFB7F1C6FFBCF2
      CAFFC9F4D4FFCEF4D8FFD9F6E0FFDDF8E3FFE4F9E8FFE6F9EAFFEAFAEDFFEAFA
      ECFF1CC63BFF000000000000000000000000000000000000000000000000BF87
      19FFEAD8B2FFEAD8B3FFEAD9B1FFEAD9B0FFEBD9ACFFEBD9A9FFEAD8A2FFEAD8
      9FFFEBD899FFEAD897FFEBD996FFECDA98FFEDDD9EFFEDDEA2FFDFC357FFE0C6
      5FFFE3CA71FFE4CD7AFFEBDAA4FFF3E8CAFFF2E7CAFFD5B62DFC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000A1000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A1000000A1000000A1000000A1000000A1000000A1000000A100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000411071A66E28EFFA0EDC5FF34E472FF2BD7
      5DFF27D351FF28D353FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3AD29FFDEC1
      5DFFE5D184FFEFE2B5FFF5ECD5FFE8D48BFF110E051900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000009E0000009F0000009F0000009F0000009F0000009F0000009F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018682B9327D050FD60E996FF35E6
      74FF28D252FF27D150FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2AA27FFDDC2
      60FFEFE1A8FFF2E6C8FFD3B02BFD6A581A910000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000009C0000009D0000009C0000009C0000009C0000009D
      0000009C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F993BCE5FDE
      84FF44E67DFF25CE4CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEA525FFECDC
      96FFE2CA75FF9B7D21CD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009A0000009B0000009B0000009B0000009A
      0000009B0000009A000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000196D
      2C998CE9B3FF24CD49FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDA124FFECDB
      AEFF6D591A980000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000098000000990000009800000099
      0000009800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006160A211D9738CE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A781ED11612
      0621000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000960000009700000096
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF000000000000000000FFFFFFFF00000000
      0000000000000000FFFFFFFF000000000000000000000000FFFFFFFF00000000
      0000000000000000FFFFFFFF000000000000000000000000FFFFFFFF00000000
      0000000000000000FFFFFFFF000000000000000000000000FFF3FFFF00000000
      0000000000000000FFE1FFFF000000000000000000000000FFC0FFFF00000000
      0000000000000000FF807FFF000000000000000000000000FF003FFF00000000
      0000000000000000FE001FFF000000000000000000000000FC000FFF00000000
      0000000000000000FC0C07FF000000000000000000000000F81E03FF00000000
      0000000000000000F03F01FF000000000000000000000000E07F80FF00000000
      0000000000000000E0FFC07F000000000000000000000000F1FFE03F00000000
      0000000000000000FBFFF01F000000000000000000000000FFFFF80F00000000
      0000000000000000FFFFFC07000000000000000000000000FFFFFE0300000000
      0000000000000000FFFFFF07000000000000000000000000FFFFFF8F00000000
      0000000000000000FFFFFFDF000000000000000000000000FFFFFFFF00000000
      0000000000000000FFFFFFFF000000000000000000000000FFFFFFFF00000000
      0000000000000000FFFFFFFF000000000000000000000000FFFFFFFF00000000
      0000000000000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object img16Staff: TImageList
    Left = 928
    Top = 304
    Bitmap = {
      494C010104001000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040701000B12060000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001013F000303500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001108050022190F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000111E060022450D002C591000356A1400356A1400316412002A50
      1300000000000000000000000000000000000000000000000000000000000000
      000001014C00000094000000BA000000C9000000D8000000D8000000D1000505
      A800000000000000000000000000000000000000000000000000000000000000
      0000070101003E2F1900695A32007B6D3F00897A4A008B7D4C00847646006A5F
      3A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000178F9F0084CCE6008ACEE9002F9AAA00000000000000
      000000000000000000000000000000000000000000000000000000000000060A
      020022450D00336613003E7A170044821900498A1B004B8C1C004B8C1C004B8C
      1C0047871A000000000000000000000000000000000000000000000000000000
      72000000BA000000D1000000E2000000E7000000F1000000F1000000F1000000
      F1000000EC000000000000000000000000000000000000000000000000001B0F
      08006758310086784800988B5800A2946000A99C6900AB9D6C00AB9D6C00AB9D
      6C00A49764000000000000000000000000000000000000000000000000000000
      00002194A30050C0FF0039B7FF0039B7FF0039B7FF0039B7FF003CBAFE005FB4
      CB00000000000000000000000000000000000000000000000000060A0200274F
      0E003A72160047871A004F931E0054982000569C2100569C2100569C2100599E
      2100599E21005DA1260000000000000000000000000000000000000072000000
      C2000000DD000000EC000001F7000100FB000100FB000100FB000100FB000100
      FB000100FB000505FC00000000000000000000000000000000001B0F08007162
      370093855200A6986600AFA37300B6A97B00B8AC7E00B7AB7C00B8AC7E00BAAD
      7F00BBAF8100BDB184000000000000000000000000000000000000000000319A
      AE0039B7FF0039B7FF003CBAFE0039B7FF0039B7FF0039B7FF0039B7FF0039B7
      FF008ACEE900000000000000000000000000000000000000000022450D003A72
      16004B8C1C00599E210061A6260061A6260061A6260061A626005DA223005EA4
      240066AA2C006EB034006B9C3D00000000000000000001014C000000BA000000
      DD000000F1000184F8000101FE000101FE000101FE000101FE000189FD000101
      FE000908FF001111FF002222D400000000000000000007010100675831009385
      5200A99C6900CDC4A400C0B48600C0B48600C0B48600C0B48600D2CAAB00BEB2
      8500C2B88E00C8BE9600ADA68900000000000000000000000000000000003CBA
      FE0045C3FC004ECCFB00535A5D00575757005A5A5A005454540060C3FA0039B7
      FF0039B7FF000A6F7F00000000000000000000000000111E0600336613004787
      1A00599E210061A6260061A6260061A6260061A6260061A6260061A6260064A9
      2A006DAF34007AB840008DC452000000000000000000000094000000D8000000
      EC000100FB00026FFD0001EEFC000101FE000114FF0001FAFC000126FE000908
      FF001111FF001D1DFF002B2BFF0000000000000000003E2F190086784800A698
      6600B8AC7E00C8BE9600FBFAF700C0B48600C0B48600FAF9F500CBC19C00C2B6
      8C00C7BD9400CDC4A100D5CEB1000000000000000000000000006DBDD5004ECC
      FB0062D9F9004B89940069E5F60069E5F6005FDCF70057D5F90046BDF00061AE
      DA0039B7FF00B3E3FD0000000000000000000000000024480E003E7A17004F93
      1E0061A6260061A6260061A6260061A6260061A6260061A6260063A7290068AA
      2E0071B1380080BB450092C7570000000000000000000000BA000000E2000001
      F7000101FE000101FE0002FEFC0002FEFC0002FEFC0002FEFC000908FF000C0C
      FF001615FF002121FF003434FF000000000000000000695A3200988B5800AFA3
      7300C0B48600C0B4860000000000000000000000000000000000C1B58800C3B7
      8C00C9BF9800CFC6A400D8D1B600000000000000000000000000ADE7FD005FDC
      F7006DE4F2007DEAF70082EBF70082EBF70076E9F60069E5F60057D5F90045C3
      FC0039B7FF005CC4FF000000000000000000040701002D5B110044821900569C
      210061A6260061A6260061A6260061A6260061A6260063A7290068AA2E006AAB
      330075B43D0084BE4C0099CB5F0093A8700001013F000000C9000000EC000100
      FB000101FE000101FE0002FEFC0002FEFC0002FEFC0006ECFC000C0CFF001111
      FF001D1DFF002B2BFF003939FF005B5BBD00110805007B6D3F00A2946000B7AB
      7C00C0B48600C0B48600F8F6F1000000000000000000FAF9F500C3B78C00C5BA
      9100C9BF9800D1C9A900DBD4BA00AFABA1000000000000000000A0E6FC006FE7
      F60082EBF70097EFF900A6F1FA009CEFF90091EEF90082EBF70063E0F70052D0
      FA003CBAFE0047BCFF0000000000000000000B120600356A1400498A1B00569C
      210061A6260061A6260061A6260061A6260063A7290068AA2E006AAB33006FAE
      39007AB742008EC55600AAD56E00A5B28200030350000000D8000000F1000100
      FB000132FE0002FEFC0002FEFC0002FEFC0005FDFC000DFEFC0015FCFC001926
      FF002424FF003434FF004C4CFF006C6CC00022190F00897A4A00A99C6900B8AC
      7E00C1B58800FCFCFA0000000000000000000000000000000000FCFCFA00C7BD
      9400CCC39F00D5CEB100E2DCC700B7B5AD000000000000000000C4F1F80076E9
      F60097EFF900B3F4FB0000000000BAF5FC00A1F0FA00000000006FE7F60057D5
      F90042C0FD0079CEFF00000000000000000000000000346813004B8C1C00569C
      210061A6260061A6260061A6260063A7290068AA2E006AAB33006FAE390072AF
      3E0083BC4D0098CA6000BDDE810000000000000000000000D8000000F1000136
      FA000189FD000189FD000189FD0005FDFC000DFEFC001391FE001793FE002098
      FD002B3EFF003E3EFF005C5CFF000000000000000000897A4A00A99C6900BAAD
      7F00E2DCC700E1DBC500E1DBC5000000000000000000E3DECB00E5DFCC00E6E1
      CF00D1C9A900DBD4BA00E9E4D4000000000000000000000000001C91A0007DEA
      F7009CEFF9009BC8CD0000000000C6F7FD00AAF2FA00000000006FE7F6005BD9
      F80045C3FC0079C5E000000000000000000000000000336613004B8C1C00569C
      21005DA2230061A6260063A7290068AA2E006AAB33006FAE390072AF3E007BB7
      47008EC55600A8D46F00DAEC9E0000000000000000000000D1000000F1000100
      FB000100FB000101FE000908FF000DF9FC0015D3FC001A19FF001D1DFF002727
      FF003434FF004C4CFF007A7AFF00000000000000000086784800AB9D6C00B8AC
      7E00BDB18400C0B48600C1B68A00F5F3EB00F8F6F100C6BB9300C7BD9400CCC3
      9F00D5CEB100E1DBC500F2EFE50000000000000000000000000000000000B3F4
      FB0097EFF900AEF3FB0000000000BAF5FC00A6F1FA00000000006FE7F60057D5
      F90056C7FD00000000000000000000000000000000002A5013004B8C1C00569C
      21005EA4240063A7290068AA2E006AAB33006FAE390072AF3E007BB747008CC3
      5500A0CF6700C9E48E00DBDCBE0000000000000000000505A8000000F1000100
      FB000101FE000908FF000C0CFF001389FD001945FE001D1DFF002727FF003434
      FF004545FF006A6AFF00A1A1DD0000000000000000006A5F3A00AB9D6C00B8AC
      7E00BEB28500C1B68A00C3B78C00D3CBAC00D5CEB000C7BD9400CCC39F00D4CC
      AE00DDD7C000ECE8DB00DDDDDC00000000000000000000000000000000000000
      0000A6F1FA009CEFF900A6F1FA00A1F0FA0091EEF9007DEAF70063E0F7005BD2
      FA000C788800000000000000000000000000000000000000000047871A005BA1
      220066AA2C006DAF340071B1380075B43D007AB7420083BC4D008EC55600A0CF
      6700C2E08700FDFED900000000000000000000000000000000000000EC000100
      FB000908FF001111FF001618FF001D22FF002424FF002B2BFF003434FF004545
      FF006464FF00B2B2FF0000000000000000000000000000000000A4976400BBAF
      8100C2B88E00C7BD9400C9BF9800CAC09A00CCC39F00D0C7A600D5CEB100DDD7
      C000EAE5D500FDFDFD0000000000000000000000000000000000000000000000
      000000000000AAE3EA0091EEF90087ECF8007DEAF7006FE7F600BCECF7000000
      0000000000000000000000000000000000000000000000000000000000005DA1
      26006EB034007AB8400080BB450084BE4C008EC5560098CA6000A8D46F00C9E4
      8E00FDFED9000000000000000000000000000000000000000000000000000505
      FC001111FF001A19FF002424FF002B2BFF003434FF003E3EFF004C4CFF006A6A
      FF00B2B2FF00000000000000000000000000000000000000000000000000BBB0
      8200C8BE9600CCC39F00CFC6A400D1C9A900D5CEB100DAD3B800E1DBC500ECE8
      DB00FDFDFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B9C3D0089C14D0096C9590099CB5F00AAD56E00BBDD8000DCEDA000DBDC
      BE00000000000000000000000000000000000000000000000000000000000000
      00002222D4002B2BFF003434FF003939FF004C4CFF005C5CFF007A7AFF00A1A1
      DD00000000000000000000000000000000000000000000000000000000000000
      0000ADA68900D4CCAE00D8D1B600DBD4BA00E2DCC700E8E3D200F2F0E700DCDC
      DB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008FA276009EAB820000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005B5BBD006969BE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AFABA100B5B2AA0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFE7FFE7FFE7FFFFFF00FF00FF00F
      FC3FE007E007E007F00FC003C003C003E007800180018001E003800180018001
      C0038001800183C1C003000000000180C0030000000003C0C003800180018181
      C003800180018001E007800180018001F007C003C003C003F81FE007E007E007
      FFFFF00FF00FF00FFFFFFE7FFE7FFE7F00000000000000000000000000000000
      000000000000}
  end
  object PopupTreeCollapseExpand: TPopupMenu
    Left = 440
    Top = 80
    object mnExpand: TMenuItem
      Action = actTreeExpandAll
    end
    object nmCollapse: TMenuItem
      Action = actTreeCollapseAll
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnAutoFit: TMenuItem
      Action = actGridAutoFit
      AutoCheck = True
    end
  end
  object PrintDialog: TPrintDialog
    Left = 640
    Top = 376
  end
  object ToolbarImages: TImageList
    ColorDepth = cd32Bit
    BlendColor = clFuchsia
    BkColor = clGreen
    AllocBy = 24
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 640
    Top = 192
    Bitmap = {
      494C01010C002400180018001800008000002110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000006000000100100003A2B19
      16A0100908730000000E00000002000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010000000600000011020101407F4C42EAC992
      7CFFB57968FF492C25C200000015000000010080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000000000
      00000000000000000000000000030000000E0100003D7D4D40E8D49F87FFEDBE
      A1FFEBB89AFFBF866FFF38221DAB000000020080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000000800000008000000080000000800000EBEB
      EA00EDEDED00F0F0EF00F1F1F100F2FFFF00F5F7F800F7F7F700F8F8F800F9F9
      F900FAFAFA00FBFBFB00FBFBFB00FCFCFC00FEFEFE00FDFDFD00FBFBFB00F1F2
      F200FFFCF80000800000008000000080000000800000FBFBFB00EFEFEF00F0F0
      F000F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F7F7F700F7F7
      F700F6F6F600F5F5F500F4F4F400F3F3F300F2F2F200F0F0F000EFEFEF000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000006000000040000
      0002000000010000000100000006010000327F4E3DE6D39E84FFEDBEA1FFE9AE
      8DFFEFBF9EFFF0C6A9FFAC705BFE0201011F00800000008000006A6C6C008488
      89008B90900092969800999FA0009EA3A5009CA1A200999E9F00979C9D009499
      9A00919697008F9395008C919100898E8F00868B8C0084888900818586007E83
      83007A7D7E00008000000080000000800000008000000080000000800000EBEB
      EA00EEEEED00F0F0EF00F1F1F100F3FFFF00F5F7F800F6F6F700F8F8F800FAFA
      FA00FAFAFA00FAFAFA00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FEFEFE00FBFB
      FB000080000000800000008000000080000000800000FBFBFB00EFEFEF00E4E1
      E000E5E2E100E6E3E100E6E3E100E6E3E100E7E4E200E7E4E200E7E4E200E7E4
      E200E7E4E200E6E3E100E6E3E100E6E3E100E5E2E100E9E7E600EFEFEF000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000000000000000000001000000040000000C0202021D000000110000
      0008000000040000000300000006764938DCD39D82FFEDBEA1FFE9AF8EFFEFBF
      9EFFFDDBC3FFE9C1A9FF9B624CF10000000F0080000000800000C9C9C900C6C8
      C800C4C6C600C3C5C600C3C3C300C0C2C300C0C0C100BDBFBF00BCBDBF00BCBD
      BD00BBBBBB00B8BABA00B7B9B900B6B8B800B6B6B600B3B5B500B2B4B400B1B3
      B300B1B1B100989A9A000080000000800000008000000080000000800000EBEB
      EA00EEEEED00F0F0EF00F1F1F100F2FFFF00F5F7F600F6F6F600F7F7F700F9F9
      F900F9F9F900FBFBFB00FBFBFB00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FEFE
      FE000080000000800000008000000080000000800000FBFBFB00F0F0F000DDD8
      D400DED9D500DFDAD600DFDAD600E0DBD700E0DBD700E0DBD700E0DBD700E0DB
      D700E0DBD700E0DBD700DFDAD600DFDAD600DED9D500DDD8D400B3865D00904A
      0800008000000080000000800000008000000000000000000000000000000000
      00000000000101010125131212812D2C2BC73E3B3BE84A4746FF403E3DE93331
      30C9151414830101012700000017936551F6CB9071FFEBB697FFEEBE9EFFFDDB
      C3FFECC5ACFFA86C51F60D090744000000000080000081828300DCDEDE00D7D9
      D900D5D7D800D4D6D600D2D4D400D0D2D300CED0D100CCCECE00CBCDCE00C9CB
      CC00C7C9CA00C5C7C800C4C6C600C2C4C400C0C2C300BEC0C100BCBDBF00BBBC
      BE00B9BBBC00B4B5B6000080000000800000008000000080000000800000EAEA
      E900EDEDED00EFEFEE00F1F1F000F2FFFF00F4F6F600F6F6F500F7F7F700F9F9
      F900FAFAFA00FAFAFA00FBFBFB00FCFCFC00FBFBFB00FCFCFC00FDFDFD00FDFD
      FD000080000000800000008000000080000000800000FBFBFB00F0F0F000D7CF
      C900B7B0AB00B8B1AC00B8B1AC00B9B2AD00D9D1CB00BAB4AE00BAB4AE00BAB4
      AE00C9C1BC00B9B2AD00D8D0CA00D8D0CA00D7CFC900AC7B5000DBB69700FBD1
      B400924B0A000080000000800000008000000000000000000000000000000000
      000919181794484544FC4A4746FF4A4746FF4A4746FF524F4EFB4A4746FF4B48
      46FF4A4746FF484544FC413D3CDBA6A19FFFB28166FFCD9472FFF2C8ACFFEFC8
      AEFFAF7354F80F0B084900000000000000000080000083838300DDDFDF00D7D9
      D900D6D8D800D4D6D600D2D4D400D0D2D300CED0D100CCCECE00CBCDCE00C9CB
      CC00C7C9CA00C6C8C800C4C6C600C2C4C400C0C2C300BEC0C100BCBDBF00BBBC
      BE00B9BBBC00BABCBC000080000000800000008000000080000000800000EAEA
      E900ECECEC00EEEEEE00F0F0EF00F1FFFF00F3F5F500F4F4F400F6F6F600F7F7
      F800F9F9F900FAFAFA00FBFBFB00FAFAFA00FBFBFB00FBFBFB00FDFDFD00FDFD
      FD000080000000800000008000000080000000800000FBFBFB00F0F0F000D0C6
      BE00D0C6BE00D0C7BF00D0C7BF00D1C8C000D2C9C100D2C9C100D2C9C100D2C9
      C100D2C9C100D1C8C000D0C7BF00D0C7BF00AB7A4D00D9B29100F6C8A700F6C8
      A700F6C9A900944D0B00008000000080000000000000000000000100001D3633
      32D84A4746FF4D4A49FC75726FE38A8886D0999794CBA9A6A3D0A5A4A0D39492
      8FD8777672E74D4A49FD4B4847FF595756FFCAC6C5FFBE8C70FFCD9572FFB578
      56F9120C094D0000000000000000000000000080000084848400DEE0E000CFD1
      D100BFBFBF00BCBEBE00BBBCBE00BABCBC00B8BABA00B6B8B800B5B7B800B4B5
      B600B2B4B400B1B3B300B0B2B200AEB0B000ADAEAF00ABACAD00AAABAC00AFB0
      B200B9BBBC00C0C0C1000080000000800000008000000080000000800000E9E9
      E800ECECEB00EDEDED00EFEFEF00F0FFFF00F2F4F400F3F3F300F5F5F500F6F6
      F700F8F8F800FAFAFA00FAFAFA00FBFBFB00FAFAFA00FCFCFC00FCFCFC00FCFC
      FC000080000000800000008000000080000000800000FBFBFB00F0F0F000F2F2
      F200F4F4F400F5F5F500F7F7F700F8F8F800F9F9F900FAFAFA00FBFBFB00FAFA
      FA00F9F9F900F8F8F800F7F7F700BB8E6300D8AD8B00F1C09B00F1C09B00F1C0
      9B00F1C09B00F1C29D00964F0C00008000000000000000000008363332D84A47
      46FF5E5B5AEF898783C98E8A81BF908B80C19E998FCAB1ACA3D5B9B5AEDAB1AD
      A6D59E9B95CA94918DD25E5B5AFD4B4847FF5D5A59FF55514ED62D1F17830C08
      0642000000000000000000000000000000000080000085868700DDDFDF00A0A0
      A000CFD1D100E1E1E200E1E1E200E1E1E200E1E1E200E1E1E200E1E1E200E1E1
      E200E1E1E200E1E1E200E1E1E200E1E1E200E1E1E200E1E1E200E1E1E200C0C0
      C100ABACAD00C6C6C7000080000000800000008000000080000000800000F577
      5F00F87A6200F8796200F87A6300F7826C00F9755D00F97C6400FA7D6400FB7D
      6500FB7E6500FC7E6600FC7F6700FC7F6700FD7F6700FD7F6700FD7F6700FD81
      6900FF8A710000800000008000000080000000800000FBFBFB00F1F1F100F2F2
      F200D0D0D000D1D1D100E5E5E500D4D4D400D5D5D500E8E8E800D6D6D600D6D6
      D600D5D5D500D4D4D400F7F7F700BF8A5B00D3A57C00C3844D00E2B79400ECB9
      9000C1834D00D1A37B00D2A57E00954B080000000000181717914A4746FF5D5B
      59EE8A8780BF8E877ABF8E8472BF918774C19F9586CAB7B1A6D9CDC9C1E5CBC7
      C0E4B7B2AAD99E9A92CAA8A6A1D9605D5CFE4B4847FF1F1C1A96000000030000
      0001000000000000000000000000000000000080000087878700DDDFDF00D3D5
      D500B8BABA00E6E8E800F4F5F600F4F5F600F4F5F600F4F5F600F4F5F600F4F5
      F600F4F5F600F4F5F600F4F5F600F4F5F600F4F5F600F4F5F600F4F5F600EBEC
      ED00ACAEAF00CDCDCD000080000000800000008000000080000000800000E7E7
      E600EAEAE900ECECEB00EEEEEC00EEFEFF00F1F3F200F2F2F100F3F3F300F5F5
      F400F6F6F600F7F7F700F8F8F800FAFAFA00FAFAFA00FAFAFA00FAFAFA00FBFB
      FB000080000000800000008000000080000000800000FBFBFB00F1F1F100F2F2
      F200F4F4F400F6F6F600F7F7F700F9F9F900FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FAFAFA00F9F9F900F7F7F700F6F6F600F4F4F400F2F2F200D19F7500E7B1
      85009B500C0000800000008000000080000001010123484544FB4C4947F88683
      7EC48E8675BF8E8269BF8E8166BF90846CC09C927FC8B6AFA2D8D6D2CBEAE1DE
      DAF0D4D0CAE9B7B2A9D99E9A92CA908D89CE4D4A49FD484544FC010101260000
      0001000000000000000000000000000000000080000088888900E4E6E600E3E5
      E500E8E9EA00E8E9EA00E7E8E900E6E8E800E7E7E700E4E6E600E4E6E600E3E5
      E500E2E4E400E1E3E300E1E1E200E0E1E100DFE0E100DEE0E000DFDFDF00D7D9
      D900C3C5C600D5D5D5000080000000800000008000000080000000800000E6E5
      E400E9E9E800EBEBEA00EDEDEB00EDFDFF00EFF1F100F0F0F000F2F2F200F3F3
      F300F5F5F400F6F6F600F7F7F700F8F8F800F9F9F900F9F9F900FAFAFA00FAFA
      FA000080000000800000008000000080000000800000FBFBFB00F1F1F100F3F3
      F300F4F4F400F6F6F600F8F8F800F9F9F900FBFBFB00FCFCFC00FDFDFD00FCFC
      FC00FBFBFB00F9F9F900F8F8F800F6F6F600F4F4F400F3F3F300CE9A6D00E2A9
      79009E520E000080000000800000008000001211117A4D4B49FF6E6C69E08E87
      79BF8E8166BF8E7E5DBF8E8062BF8E8166BF968A74C4ACA393D2CDC8BFE5E7E4
      E0F3E5E2DFF2D1CCC5E7B4AEA6D79E9B95CA777573EA4E4B4AFF181717830000
      0003000000000000000000000000000000000080000000800000FDFDFD00FCFC
      FC00FAFAFA00F0F0F000EEEEEE00EDEDED00ECECEC00ECECEC00ECEBEB00ECEB
      EB00ECEBEB00ECEBEB00ECEBEB00ECEBEB00ECEBEB00ECEBEB00EDEDED00F1F1
      F100F2F2F200C3C3C3000080000000800000008000000080000000800000E4E4
      E200E8E8E700EAEAE900ECECEB00ECFCFF00EEF1F100F0F0EF00F1F1F000F2F2
      F200F3F3F300F5F5F400F6F6F500F7F7F600F8F8F700F8F8F800F9F9F900FAFA
      FA000080000000800000008000000080000000800000FBFBFB00F1F1F100E1DD
      DA00E2DEDB00E2DEDB00E3DFDC00E4E0DD00E4E0DD00E5E1DE00E6E2DF00E5E1
      DE00E4E0DD00E4E0DD00E3DFDC00E2DEDB00E2DEDB00E2DEDB00CD956600DDA2
      6E00A05410000080000000800000008000002F2D2DBD555251FF7C7973CC8E84
      6CBF8E7E58BF8E7E58BF8E7E5CBF8E8062BF91846BC19C917CC8B6AEA0D8D1CC
      C4E7DCD8D3EDD4D0CAE9C0BBB2DEADA8A2D3989693D9555251FF3A3939C80000
      0008000000010000000000000000000000000080000000800000BABABA00FDFD
      FD00E8E8E8009C9C9C00A0A0A000A0A0A000A0A0A000A1A1A100A1A1A100A1A1
      A100A2A2A200A2A2A200A2A2A200A2A2A200A2A2A200A3A3A300A0A0A000ECEC
      EC00EEEEEE00008000000080000000800000008000000080000000800000E3E2
      E000E6E6E500E9E8E700EAEAE900EBFBFC00EDF0F000EFEFEE00F0F0EF00F1F1
      F000F2F2F200F3F3F200F4F4F400F5F5F500F6F6F600F6F6F600F8F8F700F8F8
      F8000080000000800000008000000080000000800000FBFBFB00F1F1F100DAD4
      CF009A9693009A9693009A9693009B979300DDD7D2009C9894009D9895009C98
      9400BCB7B3009B979300DCD6D100DBD5D000DBD5D000DAD4CF00CA915E00D89A
      6300A3561200008000000080000000800000555250F15D5A58FC837F76C38D81
      63BF8F7B50BF8E7C53BF8E7E58BF8E7E5CBF8E8062BF93866CC29D927EC9AFA7
      97D4BEB8ADDDC2BDB3DFB9B3A9DAAFAAA2D4A4A19ED15E5B5AFF504D4BE70000
      000B000000020000000000000000000000000080000000800000008000008888
      890088888900C6C6C700BBBBBB00AFAFAF00AFAFAF00AFAFAF00B0B0B000B0B0
      B000B0B0B000B1B1B100B1B1B100B1B1B100BFBFBF00C6C6C700999999008989
      890000800000008000000080000000800000008000000080000000800000E2E0
      DF00E5E5E400E7E7E600E9E8E700E9F9FB00ECEEEE00EDEDEC00EFEFEE00F0F0
      EF00F0F0F000F1F1F100F2F2F200F3F3F300F5F5F400F5F5F500F6F6F500F7F7
      F6000080000000800000008000000080000000800000FBFBFB00F1F1F100D3CB
      C400D4CCC400D4CCC400D5CDC500D6CEC600D6CEC600D7CFC700D8D0C800D7CF
      C700D6CEC600D6CEC600D5CDC500D4CCC400D4CCC400D3CBC400C98C5700D492
      5700A6591400008000000080000000800000696664FF575453D9858176C48A7D
      5CC08F7A4BBF8F7B4FBF8E7C53BF8E7E58BF8E7E5CBF8E8062BF91846BC1978C
      76C5A09685CBA59D8ECEA59D90CEA49D94CD9D9B96CB696564FF696564FF0000
      000E000000020000000000000000000000000080000000800000008000000080
      000000800000DDDDDD00D7D7D700C9C9C900C9C9C900CACACA00CACACA00CBCB
      CB00CBCBCB00CCCCCC00CCCCCC00CDCDCD00DDDDDD00E4E4E400A2A2A2000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE00E4E3E200E5E5E400E7E7E600E7F8F900EAEDED00ECECEB00EDEDEC00EEEE
      EE00EFEFEF00F0F0EF00F1F1F000F2F2F100F3F3F300F4F4F300F4F4F400F4F4
      F5000080000000800000008000000080000000800000FBFBFB00F1F1F100DFDA
      D600DFDAD600E1DCD800E2DDD900E3DEDA00E4DFDB00E5E0DC00E6E1DD00E5E0
      DC00E4DFDB00E3DEDA00E2DDD900E1DCD800DFDAD600EBE9E700C98E5800CF8B
      4C00A95B16000080000000800000008000005B5856E2726E6CFC807D74C1887B
      5AC38E7948BF8F7A4ABF8F7B4FBF8E7C53BF8E7E58BF8E7E5CBF8E8062BF9082
      69C091856EC1948976C3968C7AC4968F83C493918DC6736F6DFF5D5958E40000
      0003000000000000000000000000000000000080000000800000008000000080
      000000800000E6E6E600FAFAFA00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00A4A4A4000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE00E2E1E000E4E3E200E6E5E400E6F4F700E9EBEB00EBEAE900ECECEB00EDED
      EC00EEEEED00EFEFEE00EFEFEF00F1F1F000F1F1F000F2F2F200F3F3F200F3F3
      F3000080000000800000008000000080000000800000FBFBFB00F1F1F100F2F2
      F200F4F4F400F6F6F600F7F7F700F9F9F900FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FAFAFA00F9F9F900F7F7F700F6F6F600F4F4F400F2F2F200CC936100D9A4
      7500AC5D1900008000000080000000800000444240BD7D7977FF78756FC4867B
      5FC48A7646C08F7846BF8F7A4ABF8F7B4FBF8E7C53BF8E7E58BF8E7E5CBF8E80
      62BF8E8166BF8E826ABF908471C08F887EC0918E8ACF7C7876FF494645C30000
      0001000000000000000000000000000000000080000000800000008000000080
      000000800000E6E6E600F5F5F500E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300F5F5F500F9F9F900F9F9F900F9F9F900F8F8F800F9F9F900A4A4A4000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE00E3E2E100E2E2E100E4E3E200E4F4F500E7E9E900E9E9E800EAEAE900ECEC
      EB00EDEDEC00EDEDED00EEEEEE00EFEFEE00EFEFEF00F0F0EF00F1F1F000F2F2
      F1000080000000800000008000000080000000800000FBFBFB00F1F1F100F2F2
      F200ABABAB00ACACAC00D2D2D200AFAFAF00AFAFAF00D6D6D600B0B0B000B0B0
      B000AFAFAF00AFAFAF00F7F7F700F5F5F500F4F4F400F2F2F200CD956200DAAB
      7F00B0601B000080000000800000008000001D1C1B7885817EFF787571D5857E
      6CC486764FC38D7642C08F7846BF8F7A4ABF8F7B4FBF8E7C53BF8E7E58BF8E7E
      5CBF8E8062BF8E8166BF8E8471BF8D897FBF928E8BE4847E7CFF1F1F1E7E0000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000E5E5E500EFEFEF00DEDEDE00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00EFEFEF00F4F4F500A4A4A4000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE0032913300E3E1E100E2E2E100E2F2F300E5E7E700E7E7E600F4EDF300FAF2
      F900EBEBEA00ECECEB00ECECEC00EEEEED00EEEEED00EEEEEE00EFEFEE00EFEF
      EF000080000000800000008000000080000000800000FBFBFB00F0F0F000F2F2
      F200F4F4F400F5F5F500F7F7F700F8F8F800F9F9F900FAFAFA00FAFAFA00FAFA
      FA00F9F9F900F8F8F800F7F7F700F5F5F500F4F4F400F2F2F200CE976500DCB2
      8900B3621D0000800000008000000080000002020222837E7BFB807B79F67B77
      70C2857C61C486744AC38B7541C08F7846BF8F7A4ABF8F7B4FBF8E7C53BF8E7E
      58BF8E7E5DBF8E8168BF8D8577BF8C8984CA888381FD827E7BFB020202230000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000E4E4E400E9E9E900D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D7D7D700D7D7D700D7D7D700D7D7D700E8E8E800EEEEEE00A4A4A4000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE000083000038B75300E3E1E100E0F0F100E4E5E500E4E5E20012A32600FBEF
      FA00E9E9E800EAEAE900EBEBEA00ECECEB00EDEDEC00EDEDEC00EEEEEC00EEEE
      ED000080000000800000008000000080000000800000FBFBFB00F0F0F000E5E2
      E100E5E2E100E6E3E100E6E3E100E7E4E200E8E5E300E8E5E300E8E5E300E8E5
      E300E8E5E300E7E4E200E6E3E100E6E3E100E5E2E100EAE8E700CE976500DFBA
      9700B5641F00008000000080000000800000000000002927278D878280FF7E7A
      78E97D7A70C0857B61C486754EC4887344C28B7645C18D7849C08D794EC08A7A
      54C0897D5FC1877F6EC285827BC58B8684F386817EFF2C2B2A92000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000E3E3E300E2E2E200D2D2D200D2D2D200D2D2D200D2D2D200D2D2
      D200D2D2D200D2D2D200D2D2D200D2D2D200E2E2E200E9E9E900A4A4A4000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE000081000034B24A00E3E1E100E0F0F100E2E4E300E2E3E0000F9F1E00F9ED
      F700E7E7E600E8E8E700E9E9E800EAEAE900EBEBEA00ECECEB00ECECEB00ECEC
      EC000080000000800000008000000080000000800000FBFBFB00F0F0F000DDD8
      D400DED9D500DFDAD600DFDAD600E0DBD700E0DBD700E1DCD800E1DCD800E1DC
      D800E0DBD700E0DBD700DFDAD600DFDAD600DED9D500DDD8D400D0996800E3C3
      A500B866210000800000008000000080000000000000000000065D5958D38782
      80FF7F7C78EA7E7A72C4857E6AC4857A5DC4857858C4857858C485795BC4857C
      65C4857F6FC487847CCD8A8583F286817EFF555250CA00000008000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000E1E1E200E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E5E5E500A3A3A3000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE0032913300E3E1E100E3E2E100E0F0F100E2E4E300E3E2E100EEE7EC00F4EB
      F200E5E4E300E6E5E400E7E6E500E8E7E600E9E8E700E9E9E800EAEAE900EBEA
      E9000080000000800000008000000080000000800000FBFBFB00F0F0F000D6CE
      C800B7B0AB00B8B1AC00B8B1AC00B8B1AC00D9D1CB00B9B2AD00B9B2AD00B9B2
      AD00C9C1BC00B8B1AC00D8D0CA00D8D0CA00D7CFC900D6CEC800C7834800D099
      6600BB69230000800000008000000080000000000000000000000101011B4643
      42B7878280FF827D7BF87F7C78DA838078CC858075C4858175C4858076C48985
      7DD18B8884E786817FFE86817EFF555250CA0101011C00000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000D0D0D000E1E1E200E1E1E200E1E1E200E1E1E200E1E1E200E1E1
      E200E1E1E200E1E1E200E1E1E200E1E1E200E2E2E200E3E3E3009C9C9C000080
      000000800000008000000080000000800000008000000080000000800000E0DF
      DE00E3E2E100E3E2E100E3E2E100E0F0F100E2E4E300E3E2E100E3E2E100E3E2
      E100E3E2E100E4E3E200E5E4E300E6E5E400E7E6E500E7E7E600E7E7E600E8E8
      E7000080000000800000008000000080000000800000FBFBFB00EFEFEF00CEC5
      BD00D0C6BE00D0C6BE00D0C7BF00D0C7BF00D1C8C000D1C8C000D1C8C000D1C8
      C000D1C8C000D0C7BF00D0C7BF00D0C6BE00D0C6BE00D2CAC200EFEFEF000080
      0000008000000080000000800000008000000000000000000000000000000000
      000624232284797472F2878280FF878280FF85817FFD7A7573E885807DFD8682
      80FF868280FF7B7573F326252488000000070000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000008000000080000000800000FBFBFB00EFEFEF00F0F0
      F000F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F6F6F600F7F7F700F6F6
      F600F6F6F600F5F5F500F4F4F400F3F3F300F2F2F200F0F0F000EFEFEF000080
      0000008000000080000000800000008000000000000000000000000000000000
      000000000000000000131E1D1C794A4847BE5D5958D386817EFF5D5958D34C4A
      48C01E1E1D7A0000001500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF0036363600E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000009000000130000001700000018000000180000
      001800000018000000180000001800000018000000160000000E000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF003636360036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000021B0202
      0C3A000001110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000043403FAC938E8BFD95908DFF95908DFF95908DFF95908DFF9590
      8DFF95908DFF95908DFF95908DFF95908DFF938E8BFE3C3A39B80000000D0000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000008082F732626EAFF2626
      EAFF2121C7EB04041B5800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000837E7CF6F8F0ECFFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4
      F0FFFCF4F0FFFCF4F0FFFCF4F0FFFCF4F0FFFAF2EEFF898482FB0000001C0000
      0007000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000001C1CACDB1C1CACDB0404
      185217178FC72626E8FE03031247000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000030000
      000400000006777472F4F3EBE7FFF8F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0
      ECFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFF6EEEAFF7F7C7AFC000000330000
      0014000000070000000300000001000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100DDDCDA00DDDC
      DA00DDDCDA00DDDCDA00DDDCDA00DDDCDA00DDDCDA00DDDCDA00DDDCDA00DDDC
      DA00DDDCDA00DDDCDA00DDDCDA00DDDCDA00000000000A0A3E842626EAFF0C0C
      4C92000001111A1A9FD22121C7EB0000021C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000007000000100000
      00160000001A6E6A68F6ECE4E1FFF0E8E5FFA7A29FFFA7A29FFFA7A29FFFA7A2
      9FFFA7A29FFFA7A29FFFAAA5A2FFF2EAE7FFF0E9E5FF75716FFD0000004C0000
      00290000001A000000130000000B000000030000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000050C0C4A902626
      EAFF1B1BA6D70D0D4F942626EAFF161686C10000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008070748413E3DD95D5A58FE5D5A
      58FF5D5958FF696564FFDED6D2FFE5DDD9FFE5DDD9FFE5DDD9FFE5DDD9FFE5DD
      D9FFE5DDD9FFE5DDD9FFE5DDD9FFE5DDD9FFE3DCD8FF6B6765FF4D4B4AFF5855
      54FF5A5755FC393737D4010101450000000A1C1C1C551C1C1C551C1C1C551C1C
      1C551C1C1C551C1C1C554F4F4F8E626260AA0000000000000000000000000000
      0000000000000000000000000000000000004D4D4C970C0C0C391C1C1C551C1C
      1C551C1C1C551C1C1C551C1C1C551C1C1C55BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF0036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000303
      134A181897CD2626EAFF2626EAFF2626EAFF101064A700000004000000000000
      0000000000000000000000000000000000000000000000000004030311460E0E
      579C0F0F5CA004041D5A00000001000000004A4746DDACA9A8FFCDC9C8FFCFCB
      CAFFCFCBCAFF565352FF9A928EFF9F9792FF9F9792FF9F9792FF9F9792FF9F97
      92FF9F9792FF9F9792FF9F9792FF9F9792FF9F9792FF585654FFB9B5B4FFCBC8
      C7FFCBC8C7FFA4A1A0FF3D3B3AD50000000F626260AA626260AA626260AA6262
      60AA626260AA626260AA626260AADDDCDAFF626260AA626260AA626260AA6262
      60AA626260AA626260AA626260AA626260AADDDCDAFF626260AA626260AA6262
      60AA626260AA626260AA626260AA626260AABAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF0036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000101072E0C0C4A902626EAFF2626EAFF2323D4F30B0B42880202
      0C3B00000009000000000000000000000000040419542020C3E92626EAFF2222
      D0F11F1FC1E82626EAFF08082F7300000000686463FFCECBC9FFD5D1D0FFD7D3
      D2FFD7D3D2FF6D6B6AFF3F3E3DFF3D3B3AFF3D3B3AFF3D3B3AFF3D3B3AFF3D3B
      3AFF3D3B3AFF3D3B3AFF3D3B3AFF3D3B3AFF393736FF605E5DFFD0CCCAFFD7D3
      D1FFD5D1D0FFCECAC9FF656261FE000000140000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      0000000000000000000000000000000000006A6A69B100000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF0036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000002020C3B2626EAFF2626EAFF2626E4FC2626
      EAFF2525E2FB181897CD0D0D5196131374B42626EAFF181894CB040418520000
      00080000000C2121C9ED1D1DB1DE000000006E6A69FFD5D1D0FFDCD8D7FFDED9
      D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9
      D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9D8FFDED9
      D8FFDCD8D7FFD5D1D0FF6B6766FF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF003636360036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000E0E5A9E2525E0FA02020C3A0303
      16500A0A4086151580BD2626EAFF2626EAFF2626EAFF2626E8FE1C1CABDA1B1B
      A7D82626E4FC2626EAFF0B0B468C00000000736F6EFFDAD6D5FFE1DDDCFFE3DF
      DDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DF
      DDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFFE3DFDDFF2424
      ADFF1E1EADFFDAD6D5FF706C6BFF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF0036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000001172222D2F2101064A70000
      000000000000030311462626E6FD2121CBEE07072A6D0D0D4F94101064A71111
      6CAD0A0A3F85030312480000000100000000787574FFDFDBDAFFE6E2E1FFEAE5
      E5FFF2F0F0FFF6F5F5FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6
      F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF7F6F6FFF6F5F5FFF2F0EFFFE9E5
      E5FFE6E2E1FFDFDBDAFF767271FF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C488E2525E2FB0000
      021B000001141F1FC0E71A1AA2D40000000D0000000000000000000000000000
      0000000000000000000000000000000000007E7A7AFFE4E1E0FFECE8E7FFF5F3
      F3FFCDAE81FFB58540FFB5843EFFB5843EFFB5843EFFB5843EFFB5843EFFB584
      3EFFB5843EFFB5843EFFB5843EFFB5843EFFB5843EFFB58641FFD2B58DFFF4F2
      F2FFECE8E7FFE4E1E0FF7C7877FF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDDCDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000004222626E8FE0A0A
      3E8412126DAE2424DEF90101072F000000000000000000000000000000000000
      0000000000000000000000000000000000008A8685FFEDEBEAFFF5F2F2FFFAF7
      F6FFB8883EFFD7BF6AFFD2B964FFD2B964FFD2B964FFD2B964FFD2B964FFD2B9
      64FFD2B964FFD2B964FFD2B964FFD2B964FFD2B964FFD6BD69FFBB8D47FFFAF8
      F8FFF5F2F2FFEDEBEAFF878383FF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121270B12626
      EAFF2626EAFF0808307400000000000000000000000000000000000000000000
      000000000000000000000000000000000000969292FFF4F1F1FFFCF9F9FFFDFB
      FAFFBB8A3CFFDABD63FFC1953BFFC09339FFC09339FFC09339FFC09339FFC093
      39FFC09339FFC09339FFC09339FFC09339FFC2963DFFDABC63FFBD8E44FFFEFC
      FCFFFCF9F9FFF4F1F1FF948F8FFF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050523642626
      EAFF2626EAFF0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E9A9AFFF1EFEFFFE5E3E2FFFCFA
      F9FFBF8D3BFFEDD177FFE0B45AFFDFB258FFDFB258FFDFB258FFDFB258FFDFB2
      58FFDFB258FFDFB258FFDFB258FFDFB258FFE0B55BFFEBCF75FFC19142FFFDFB
      FBFFFBF8F8FFF3F0F0FF9C9898FF000000150000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      0000000000000000000000000000000000006A6A69B100000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000317178CC52626
      EAFF1A1A9CD00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9B9BFFE8E6E5FFAAAAAAFFF8F6
      F4FFC29139FFF9DF89FFF6CD79FFF5CC78FFF5CC78FFF5CC78FFF5CC78FFF5CC
      78FFF5CC78FFF5CC78FFF5CC78FFF5CC78FFF6CE7AFFF7DC86FFC39440FFF8F7
      F6FFF4F2F1FFECEAE9FF9C9898FF00000013626260AA626260AA626260AA6262
      60AA626260AA626260AA4D4D4C97DDDCDAFF626260AA626260AA626260AA6262
      60AA626260AA626260AA626260AA626260AADDDCDAFF4D4D4C97626260AA6262
      60AA626260AA626260AA626260AA626260AABAB5B100E8E3DF00B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF0036363600E8E3DF00E8E3DF0036363600E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF003636360036363600363636000000000000000000000000000000
      0000000000000000000000000000000000000000000004041A562626EAFF2626
      EAFF1D1DB0DD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9696FFE5E3E3FFC6C6C5FFF5F3
      F1FFC69437FFF7D97DFFF2C568FFF1C467FFF1C467FFF1C467FFF1C467FFF1C4
      67FFF1C467FFF1C467FFF1C467FFF1C467FFF2C669FFF5D77BFFC7973EFFF4F3
      F2FFEEECEBFFE7E5E4FF989494FF0000000D0000000000000000000000000000
      000000000000000000000C0C0C39626260AA1C1C1C551C1C1C551C1C1C551C1C
      1C551C1C1C551C1C1C551C1C1C551C1C1C554D4D4C9700000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF0036363600363636003636360036363600E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF0036363600E8E3DF00E8E3DF000000000000000000000000000000
      0000000000000000000000000000000000000000000017178DC61D1DAEDC0A0A
      3B812626E8FE0000000A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000767171E7D0CECDFFE5E4E3FFF0EE
      ECFFC99735FFF5D876FFF4D371FFF4D371FFF4D371FFF4D371FFF4D371FFF4D3
      71FFF4D371FFF4D371FFF4D371FFF4D371FFF4D371FFF3D573FFCA993CFFEDEC
      EBFFE7E5E4FFCAC7C6FF646161DA000000030000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00B2B2B200B2B2B200B2B2B200B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF0036363600E8E3DF00E8E3DF0036363600E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF003636360036363600363636000000000000000000000000000000
      000000000000000000000000000000000000000003212626EAFF08082F730404
      19542626EAFF01010A3700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0D0D4D6A6767E2888484FF9390
      8FFFC99735FFCB9833FFCB9833FFCB9833FFCB9833FFCB9833FFCB9833FFCB98
      33FFCB9833FFCB9833FFCB9833FFCB9833FFCB9833FFCB9833FFC59639FF8F8C
      8CFF868282FD605D5DD60A0A0A44000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00B2B2B200B2B2B200B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF00E8E3DF003636360036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF0036363600E8E3DF00E8E3DF000000000000000000000000000000
      000000000000000000000000000000000000000004242626EAFF050521600505
      1F5E2626EAFF07072B6E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000197928FF7F0EAE7FFF2EDEAFFF2EDEAFFF2EDEAFFF2EDEAFFF2ED
      EAFFF2EDEAFFF2EDEAFFF2EDEAFFF2EDEAFFF1ECE9FF9D9895FC0000001C0000
      0005000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00B2B2B200B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF00E8E3DF003636360036363600E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF003636360036363600363636000000000000000000000000000000
      000000000000000000000000000000000000000000081F1FC0E71A1AA0D31515
      7EBB2525E2FB0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000019C9693F7F7F2F0FFF9F4F2FFF9F4F2FFF9F4F2FFF9F4F2FFF9F4
      F2FFF9F4F2FFF9F4F2FFF9F4F2FFF9F4F2FFF8F3F1FFA09A98FB000000180000
      0004000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00B2B2B200E8E3DF00BAB5B100E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF000000000000000000000000000000
      00000000000000000000000000000000000000000000030313492626E4FC2626
      EAFF0E0E589D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A09B98F7FAF5F2FFFDF7F4FFFDF7F4FFFDF7F4FFFDF7F4FFFDF7
      F4FFFDF7F4FFFDF7F4FFFDF7F4FFFDF7F4FFFBF6F3FFA49F9CFB000000100000
      0003000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100E8E3DF00E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3DF00E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF00BAB5B100E8E3
      DF00E8E3DF00E8E3DF00E8E3DF00E8E3DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000003210202
      0F41000000040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A49E9CF7FBF6F3FFFEF8F5FFFEF8F5FFFEF8F5FFFEF8F5FFFEF8
      F5FFFEF8F5FFFEF8F5FFFEF8F5FFFEF8F5FFFDF7F4FFA8A29FFB000000070000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C55626260AA0000000000000000000000000000
      000000000000000000000000000000000000626260AA00000000000000000000
      000000000000000000000000000000000000BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5B100BAB5
      B100BAB5B100BAB5B100BAB5B100BAB5B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000504E4DABAEA8A7FDB1ABA9FFB1ABA9FFB1ABA9FFB1ABA9FFB1AB
      A9FFB1ABA9FFB1ABA9FFB1ABA9FFB1ABA9FFAFA9A7FE53514FB0000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000040000000C0000
      001200000013000000140000001400000014000000130000000F000000080000
      000200000000000000040000000C000000120000001300000014000000140000
      0014000000130000000F00000008000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003020225653C35C6AD6659FDB068
      5CFFB0685CFFB0685CFFB0685CFFB0685CFFA96459FB58342EC6010000340000
      000602010126653C34C6AD6659FDB0685CFFB0685CFFB0685CFFB0685CFFB068
      5CFFA96459FB58342EC601000034000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C4037C6D49A84FFEDBEA1FFEFC2
      A7FFEEBFA2FFEEBFA2FFEEBFA2FFEEC1A6FFEDBDA0FFD29881FF5F3930C90000
      000C693E36C7D49A84FFEDBEA1FFEEBFA2FFEEBFA2FFEEBFA2FFEEBFA2FFEEBF
      A2FFEDBDA0FFD29881FF5F3930C90000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B56D5BFDECB99CFFF2CCB7FFCEB7
      ACFFF2CEBBFFEBB193FFF1CFBDFFD6BEB1FFF0C6AFFFECB99BFFB56D5BFD0000
      0017B46D5AFDECB99BFFEEBEA4FFF0C6B0FFF0C6B0FFF0C6B0FFF0C6B0FFF0C6
      AFFFEEBDA3FFECB99BFFB56D5BFD000000120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040202286F433BD503020124000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030201246F433BD50402
      022800000000000000000000000000000000BD745EFFEDBDA1FFBBA69BFF2121
      21FFF4CFB4FFF2D3C4FFF4CFB4FF252424FFD4BBAEFFECB99BFFBD745EFF0000
      001CBC745EFFEEBFA4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CF
      B4FFC6B0A4FFEDBDA1FFBD745EFF000000150000000000000000000000000000
      000000000000000000000000000000000000000000000000000001010102638A
      749E62766A820000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000242424253EC37ADC35C073E334BB70E334B66DE334AD69E334A9
      66E334A465E3339B60E333955DE333905CE3328756E33B845BDC252525260000
      0000000000000000000000000000000000000000000000000000000000000000
      00094D2F29AFB77D6CFC0905043C000000000000000000000000000000000000
      000000000000000000000000000000000000000000000905043CB77D6CFC4D2F
      29AF00000009000000000000000000000000C1785EFFECBA9CFFECCEBDFFF4CF
      B4FF161616FFF4CFB4FF171717FFF4CFB4FFF0D0BDFFECB99AFFC1785EFF0000
      001CC0785EFFEFC5ABFFF4CFB4FF4B4A49FF4B4A49FF4B4A49FF4B4A49FF4B4A
      49FFF4CFB4FFEEC2A7FFC1785EFF000000150000000000000000000000000000
      00000000000000000000000000000000000000000000000000006481718E15B2
      5AFF0CA851FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A0B4ABA7DD0A0ECC2FFA6EBC5FFA6E8C4FFA6E4C1FFA6E1
      C0FFA6DFBFFFA5DABDFFA5D7BCFFA5D5BAFF138545FF488764CF0A0A0A0B0000
      0000000000000000000000000000000000000000000000000000000000032B1B
      1782C69179FDC99278FD0A06053E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A06053EC99278FDC691
      79FD2B1B1782000000030000000000000000C57C5FFFEDBE9EFFEEC3A4FFEDD8
      CAFFF4CFB4FF292929FFF4CFB4FFF4DECFFFEEC1A2FFEDBE9EFFC57C5FFF0000
      001CC47C5FFFEEC1A3FFF8E4D7FFFAEDE3FFFAEDE3FFFAEDE3FFFAEDE3FFFAED
      E3FFF7E3D6FFEEC0A2FFC57C5FFF000000150000000000000000000000000000
      00000000000000000000000000000000000000000000000000000CB657FFBFEA
      D2FFA8DFC0FF4B4F4D5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B1C5EE099FFFDFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFDFF368959E11919191A000000000000
      0000000000000000000000000000000000000000000000000000080504389D6A
      59EDE4AA8BFEC98E73FD0A07053E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A07053EC98E73FDE4AA
      8BFE9D6A59ED080504380000000000000000CA8160FFEFC2A4FFF3DBCAFFF4CF
      B4FF5D5D5DFFF4CFB4FF5D5D5DFFF4CFB4FFF6DCCAFFEFC1A3FFCA8160FF0000
      001CC9805FFFF1CBB2FFF4CFB4FF373534FF373534FF373534FF373534FF3735
      34FFF4CFB4FFF1CAB1FFCA8160FF000000150000000000000000000000000000
      000000000000000000000000000000000000313231331DBC63F3FFFFFFFFFFFF
      FFFFFFFFFFFF6DC394FF269556EC272727280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000434745490FC661FBA0E7C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF90CDACFF128D48F80000000000000000000000000000
      000000000000000000000000000000000000000000000201011E7D5043D7E0A8
      8BFEE8A482FFD1967CFEAD725EFEAD725EFEAD725EFE74493CD2000000000000
      0000000000000000000074493CD2AD725EFEAD725EFEAD725EFED1967CFEE8A4
      82FFE0A88BFE7D5043D70201011E00000000CE8560FFF0C7ADFFBBAEA5FF5353
      53FFF4CFB4FFF4CFB4FFF4CFB4FF505050FFCABCB1FFF0C5AAFFCE8560FF0000
      001ACE845FFFF1CAB1FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CF
      B4FFF4CFB4FFF1C9B0FFCE8560FF000000130000000000000000000000000000
      00000000000000000000000000001D1D1D1E33BD70E661D897FFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFDFCFF52B37CFF3A9261DE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000057635C670DC15DFEFFFFFFFFFFFF
      FFFFFFFFFFFFACDCC1FF099347FD4E5351580000000000000000000000000000
      0000000000000000000000000000000000000000000338241D92CD987EFCE6A8
      86FEE5A380FEE3AB8CFEDDA88BFEDDA78BFEDDA88BFEB87C66FC000000000000
      00000000000000000000B87C66FCDDA88BFEDDA78BFEDDA88BFEE3AB8CFEE5A3
      80FEE6A886FECD987EFC38241D9200000003CE865DFDEFC2A5FFF8DFCEFFC5B8
      AFFFF8E3D3FFF5D1B8FFF4E0D1FFC3B7ADFFF8DFCDFFEFC2A5FFCE865DFD0000
      000FCE865DFDEFC2A5FFF7D9C4FFF9DFCDFFF9DFCDFFF9DFCDFFF9DFCDFFF9DF
      CDFFF7D9C4FFEFC2A5FFCE865DFD0000000B0000000000000000000000000000
      000000000000000000000000000049B779D346D687FFF9FDFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5FAF7FF3BA469FF0B0B0B0C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006580718AD3F2E1FFFFFF
      FFFFFFFFFFFF0D9C4CFF5E6A6474000000000000000000000000000000000000
      0000000000000000000000000000000000001E140F69C28B70FBE6B190FEE5AC
      88FEE8AE8BFFE5AC88FEE5AC88FEE5AB88FEE5AD8AFEC0846BFE000000000000
      00000000000000000000C0846BFEE5AD8AFEE5AB88FEE5AC88FEE5AC88FEE8AE
      8BFFE5AC88FEE6B190FEC28B70FB1E140F697F5239C5E7B08DFFFBD9C0FFFDDE
      C8FFFDDCC4FFFDDCC4FFFDDCC5FFFDDFC9FFFBD8BFFFE6AE8BFF7A4F37C30000
      00017E5238C5E7B08DFFFBD8C0FFFDDCC4FFFDDCC4FFFDDCC4FFFDDCC4FFFDDC
      C4FFFBD8BFFFE6AE8BFF794F37C3000000010000000000000000000000000000
      000000000000000000006393799DCEF5DFFFEDFBF3FFEDFAF3FFEDF9F2FFEDF9
      F2FFEDF8F2FFEDF7F2FFEDF7F1FFEDF6F1FF138545FF627D6E9C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053A277C536BD
      71FF24B162FF0101010200000000000000000000000000000000000000000000
      00000000000000000000000000000000000091614DE2E3B192FEE6B591FEE6B4
      90FEE8B693FFE6B490FEE6B490FEE6B490FEE6B591FEC2876DFE000000000000
      00000000000000000000C2876DFEE6B591FEE6B490FEE6B490FEE6B490FEE8B6
      93FFE6B490FEE6B591FEE3B192FE91614DE203020122734A34BCCC845AF8D88D
      5FFFD88D5FFFD88D5FFFD88D5FFFD88D5FFFC88258F668442EB6020101200000
      000003020122734A34BCCC845AF8D88D5FFFD88D5FFFD88D5FFFD88D5FFFD88D
      5FFFC88258F668442EB602010120000000000000000000000000000000000000
      0000000000002E2F2E300ADB66FF09CF60FF08C85DFF08C159FF07B453FF07AD
      50FF06A64CFF059946FF059243FF058B40FF047B39FF047536FF303030320000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000141414153EA6
      6CDB529C73C50000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000996751E5ECBEA0FEEEBF9DFEEEBF
      9CFEEEBF9CFEEEBF9CFEEEBE9CFEEEBE9CFEEEBE9CFEC68C6FFE000000000000
      00000000000000000000C68C6FFEEEBE9CFEEEBE9CFEEEBE9CFEEEBF9CFEEEBF
      9CFEEEBF9CFEEEBF9DFEECBEA0FE996751E500000000000000040000000C0000
      001200000013000000140000001400000014000000130000000F000000080000
      000200000000000000040000000C000000120000001300000014000000140000
      0014000000130000000F00000008000000020000000000000000000000000000
      00000000000000000000252525262C2D2D2E2C2D2D2E2C2D2D2E2C2D2D2E2C2D
      2D2E2C2D2D2E2C2D2C2E2C2D2C2E2C2D2C2E2C2D2C2E26262627000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B0C050505060000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000023181270CF9C7EFCF1C6A6FEEFC1
      A1FEEFC1A1FEEFC1A1FEEFC1A0FEEFC1A0FEEFC1A0FEC88E71FE000000000000
      00000000000000000000C88E71FEEFC1A0FEEFC1A0FEEFC1A0FEEFC1A1FEEFC1
      A1FEEFC1A1FEF1C6A6FECF9C7EFC2318127003020225663D35C6AD6659FDB068
      5CFFB0685CFFB0685CFFB0685CFFB0685CFFA96459FB58342EC6010000340000
      000603020126653C34C6AD6659FDB0685CFFB0685CFFB0685CFFB0685CFFB068
      5CFFA96459FB58342EC601000034000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000006462E239CDDAF93FDEFC5
      A7FEF0C5A6FFEFC6A9FEECC3A8FEECC3A8FEECC2A8FEC58E6EFD000000000000
      00000000000000000000C58E6EFDECC2A8FEECC3A8FEECC3A8FEEFC6A9FEF0C5
      A6FFEFC5A7FEDDAF93FD462E239C000000066C4037C6D49A84FFEDBEA1FFEEBF
      A2FFF0C8AFFFF2D0BBFFF0C8AFFFEEBFA2FFEDBDA0FFD29881FF5F3930C90000
      000C683F36C6D49A84FFEDBEA1FFEEBFA2FFEEBFA2FFEEBFA2FFEEBFA2FFEEBF
      A2FFEDBDA0FFD29881FF5F3930C90000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000302012296684EE0ECC3
      A7FEEEC3A6FEDDAB8DFEC18465FEC18465FEC18566FE80563FD2000000000000
      0000000000000000000080563FD2C18566FEC18465FEC18465FEDDAB8DFEEEC3
      A6FEECC3A7FE96684EE00302012200000000B56D5BFDECB99BFFEAAD8DFFEAAF
      91FFF4CFB4FFF4CFB4FFF4CFB4FFEAAF91FFEAAE8EFFECB99BFFB56D5BFD0000
      0017B56D5BFDECB99BFFEAAD8DFFE9AA89FFE9AA89FFE9AA89FFE9AA89FFE9AA
      89FFEAAE8EFFECB99BFFB56D5BFD000000120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C080641B684
      66F0F1C8ACFFD9A585FE0C080640000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C080640D9A585FEF1C8
      ACFFB68466F00C0806410000000000000000BD745EFFECB597FFE9AB8CFFECB3
      97FFF4CFB4FF282828FFF4CFB4FFECB397FFE9AA8BFFECB597FFBD745EFF0000
      001CBD745EFFECB597FFE9A989FFEAAC8DFFEAAC8DFFEAAC8DFFEAAC8DFFEAAC
      8DFFE9A989FFECB597FFBD745EFF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043E2B
      1F91DBAC8DFDDBA887FE0B08053F000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B08053FDBA887FEDBAC
      8DFD3E2B1F91000000040000000000000000C1785EFFEEC3A9FFF4CFB4FFF4CF
      B4FFF4CFB4FF151515FFF4CFB4FFF4CFB4FFF4CFB4FFEEC2A7FFC1785EFF0000
      001CC1785EFFEDBCA0FFE2C7B8FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CF
      B4FFF4CFB4FFECBB9EFFC1785EFF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000C664430B8D29D7AFD0B07053E000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B07053ED29D7AFD6644
      30B80000000C000000000000000000000000C57C5FFFF2D1BBFFF4CFB4FF2929
      29FF292929FF292929FF292929FF292929FFF4CFB4FFF2CFB8FFC57C5FFF0000
      001CC57C5FFFF0C9B0FFF4CFB4FF383838FF383838FF383838FF383838FF3838
      38FFF4CFB4FFF0C7ACFFC57C5FFF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007050333966346E004030228000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004030228966346E00705
      033300000000000000000000000000000000CA8160FFF1CAB0FFF4CFB4FFF4CF
      B4FFF4CFB4FF616161FFF4CFB4FFF4CFB4FFF4CFB4FFF0C8ADFFCA8160FF0000
      001CCA8160FFF0C4A8FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CF
      B4FFF4CFB4FFEFC3A6FFCA8160FF000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE8560FFEFC1A4FFF0C8ACFFF2CF
      B7FFF4CFB4FF606060FFF4CFB4FFF2D0B7FFF0C7ABFFEFC1A4FFCE8560FF0000
      001ACE8560FFEFC1A4FFF0C7AAFFF1CBB0FFF1CBB0FFF1CBB0FFF1CBB0FFF1CB
      B0FFF0C6A9FFEFC1A4FFCE8560FF000000130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE865DFDEEC2A4FFF3CBAFFFF4CF
      B4FFF4CFB4FFF4CFB4FFF4CFB4FFF4CFB5FFF3CCB0FFEFC2A4FFCE865DFD0000
      000FCE865DFDEEC2A4FFF3CBAFFFF3CCB0FFF3CCB0FFF3CCB0FFF3CCB0FFF3CC
      B0FFF3CCB0FFEFC2A4FFCE865DFD0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F5239C5E7B08DFFFBD8C0FFFDDC
      C4FFFDE0CAFFFDE5D3FFFDE0CBFFFDDCC4FFFBD8BFFFE6AE8BFF7B5038C30000
      00017F5238C5E7B08DFFFBD8C0FFFDDCC4FFFDDCC4FFFDDCC4FFFDDCC4FFFDDC
      C4FFFBD8BFFFE6AE8BFF7B5038C3000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003020222764D36BCCC855AF8D88D
      5FFFD88D5FFFD88D5FFFD88D5FFFD88D5FFFC88359F66D4832B50302011F0000
      000003020122764D36BCCC855AF8D88D5FFFD88D5FFFD88D5FFFD88D5FFFD88D
      5FFFC88359F66D4832B50302011F00000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF000000FF
      FFFFFFFFFFFFFFFF000000FFFFFFE0000780001F000000C00007E0000F80001F
      000000C00003E0000F80000F000000800003E0000F800007000000800003E000
      0F800003000000800003E0000F800001000000800003E0000780000000000080
      0003E0000F800007000000800003E0000F800007000000C00003E0000F800007
      000000C00007E0000F800007000000E0000FE0000F800007000000F8001FE000
      0F800007000000F8001FE0000F800007000000F8001FE0000F800007000000F8
      001FE0000F800007000000F8001FE0000F800007000000F8001FE0000F800007
      000000F8001FE0000F800007000000F8001FE0000F80001F000000FFFFFFFFFF
      FF80001F000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000
      FFFFFFFFFFFF000000000000FFC7FFF8001F000000000000FFC7FFF8001F0000
      00000000FFC3FFFC003F000000000000FF00FFFE00FF000000000000FE00FFFF
      00FF000000000000FE007FFF81FF000000000000FC003FFFC3FF000000000000
      F8001FFFC7FF000000000000FC003FFFE7FF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000
      FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ALSlipPreview: TActionList
    Images = ToolbarImages
    Left = 640
    Top = 248
    object ActionAutofit: TAction
      Caption = '- '#1053#1077#1090' - '
      ImageIndex = 2
      OnExecute = ActionAutofitExecute
    end
    object ActionZoom: TAction
      Caption = '100%'
      ImageIndex = 8
      OnExecute = ActionZoomExecute
    end
    object ActionMargins: TAction
      Caption = #1055#1086#1083#1103
      ImageIndex = 4
      OnExecute = ActionMarginsExecute
    end
    object ActionGoDownSelection: TAction
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081
      ImageIndex = 0
      OnExecute = ActionGoDownSelectionExecute
    end
    object ActionGoUpSelection: TAction
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081
      ImageIndex = 1
      OnExecute = ActionGoUpSelectionExecute
    end
  end
  object AutofitMenu: TPopupMenu
    Left = 640
    Top = 312
    object NoAutofit1: TMenuItem
      Caption = '- '#1053#1077#1090' -'
      OnClick = NoAutofit1Click
    end
    object FittoWidth1: TMenuItem
      Caption = #1055#1086' '#1096#1080#1088#1080#1085#1077
      OnClick = FittoWidth1Click
    end
    object FittoHeight1: TMenuItem
      Caption = #1055#1086' '#1074#1099#1089#1086#1090#1077
      OnClick = FittoHeight1Click
    end
    object FittoPage1: TMenuItem
      Caption = #1055#1086' '#1089#1090#1088#1072#1085#1080#1094#1077
      OnClick = FittoPage1Click
    end
  end
  object Images16: TImageList
    Left = 864
    Top = 368
    Bitmap = {
      494C010105001000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      AF001313AF000000000000000000000000000000000000000000000000001313
      AF001313AF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001818B2003B3B
      C8003B3BC8001818B300000000000000000000000000000000001818B3003C3C
      C8003B3BC8001818B30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1DB5004545
      CD004141CC004646CD001D1DB50000000000000000001D1DB5004646CD004242
      CC004545CD001D1DB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002222
      B9005050D1004A4AD0005050D1002525BB002525BB005050D1004A4AD0005050
      D1002222B9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002929BB005959D6005252D4005B5BD7005B5BD7005353D4005959D6002929
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003030C0006565DB006363DB006363DB006565DB003030C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003636C4006E6EDF006A6ADF006A6ADF006E6EDF003737C4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003838C5007676E3006A6AE1007777E4007777E4006969E1007676E3003838
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      C7007E7EE6007171E4007F7FE6004040C9004040C9007F7FE6007272E4007E7E
      E6003C3CC8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004242C9008686
      E7007878E5008888E7004343C90000000000000000004343C9008888E7007979
      E5008787E7004242C90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004848CB008F8F
      E9009090E9004949CB00000000000000000000000000000000004949CB009090
      E9008F8FE9004848CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004C4C
      CC004D4DCC000000000000000000000000000000000000000000000000004E4E
      CD004E4ECC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F1FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F2FFFF00FD
      FFFF40FFFFFF0370F6FF1479F4FF1479F4FF0F6FF4FF4CF5FCFF00F8FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF000000000000000065C8FC006BD3
      FE006DDAFE0070DFFE0070DFFE0070DFFE0070DFFE006DDAFE006DDAFE006BD3
      FE0065C8FC0055B4EF00000000000000000000000000000000000000000055E5
      F9000EC9F40000B5E60000A1D300009ACD0000A1D60000A9DF0000BEEC001CE2
      FE0086E4EA00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4DFE3FFE6ABB0FFE6A6A1FFE5A5A3FFECB7A8FFFEF6ECFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00FFFFFF3990
      FAFF1500E7FFAB4DEEFF077EF5FF1479F4FF1284F5FF1C00EAFFBBE1F7FF00F5
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF0000000031AEFF0027B1FF002ABA
      FF002EC4FF0031CBFF0031CBFF0031CBFF0031CBFF002EC4FF002EC4FF002ABA
      FF0027B1FF0021A2FF003CA3F4000000000000000000000000000000000055E5
      F9000EC9F40000B5E600019FD1000398CB00009FD40000A9DF0000BEEC001CE2
      FE0086E4EA00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE4C5
      DBFFC43128FFBD1511FFBB0D01FFB90A00FFBC0C00FFE8814AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00FBFFFF58A8FCFF4800
      E7FF39F4FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF000000001F9DFF0024A9FF0027B1
      FF008DD9FF00CAEFFF00CAEFFF00CAEFFF00CAEFFF00CAEFFF00CAEFFF004CBC
      FF0024A9FF001F9DFF001990FF000000000000000000000000000000000055E5
      F9000EC9F40001B3E600019FD1000398CB00039CD00004A4DA0005BAE8001CE1
      FD0086E4EA00000000000000000000000000FFFFFFFFFFFFFFFFE3C0D7FFBE20
      22FFE27855FFFEF9EAFFFFFFFFFFFFFFFFFFF8F7FFFFEDBAAAFFFEF8F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F1FFFF3AFFFFFF0F00EEFFC1B7
      F5FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6FFFF00FFFFFF00FFFFFF00FF
      FFFF00F4FFFF00F2FFFF00F2FFFF00F2FFFF000000001C97FF001F9DFF0024A9
      FF0000000000000000000000000000000000000000000000000000000000D2EB
      FF001F9DFF001C97FF001689FF000000000000000000000000000000000055E5
      F9000EC9F40003B4E500019FD1000398CB00039ED30002A6DB0003BAE8001EE1
      FD0086E4EA00000000000000000000000000FFFFFFFFFFFFFFFFCF89AFFFCB1B
      09FFFFFFFFFFD4798DFFC93F32FFE77A66FFE1C7CCFFCA4849FFD14939FFF9D2
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F4FFFF53F3FFFF2100EAFF92FA
      FBFF20FFFFFF502EF2FF1100E7FF811DEAFF67FBFDFF3924F1FF1900E7FF9731
      ECFF36F8FDFF00F4FFFF00F2FFFF00F2FFFF000000001F90FE002496FF00289F
      FF0000000000000000000000000000000000000000000000000000000000D2EB
      FF001990FF001689FF001483FE000000000000000000000000000000000055E5
      F9000EC9F40000B5E600039ED0000396C9000299CD0004A4DA0005BAE8001CE1
      FD0086E4EA00000000000000000000000000FFFFFFFFFFFFFFFFC05684FFE261
      16FFEEE9FDFFC02C2FFFE38968FFD07485FFC41F10FFDF8265FFD07882FFC20E
      00FFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFF00F5FFFF3EE8FFFF4000E8FF95FF
      FDFF00B4FDFF4B00E8FFA1FFFFFF3EE4FFFF2306EDFF6D15E9FF42FFFFFF0877
      F9FF9B27E9FF41FFFFFF00F1FFFF00F2FFFF00000000268CFC003497FF00329D
      FF0000000000000000000000000000000000000000000000000000000000D0E7
      FF001689FF001483FE001178F8000000000000000000000000000000000055E5
      F9000DC9F20000B5E600019FD1000398CB0003A1D60006A6DB0003BCEA001FE0
      FC0084E2E800000000000000000000000000FFFFFFFFFFFFFFFFC36492FFE260
      12FFF0EAFDFFBA1F27FFFFFEC1FFFFFFFFFFC11B41FFF7C68EFFF4F5FFFFBF32
      46FFF5A581FFFFFFFFFFFFFFFFFFFFFFFFFF00F4FFFF4BF3FFFF3100EAFF97FF
      FCFF00B5FDFF811EE8FF32FFFFFF00FCFFFF1DDCFFFF6F09E8FF30FFFFFF7BFF
      FFFF1600EDFF92EAF9FF00F5FFFF00F2FFFF000000002C88FA003B97FF003B97
      FF0000000000000000000000000000000000000000000000000000000000D0E7
      FF00127DFF000F78FF000C6DF5000000000000000000000000000000000055E5
      F9000EC9F40001B3E400039ED0000395C600059ACD0006A3D60005BAE8001CE1
      FD0086E4EA00000000000000000000000000FFFFFFFFFFFFFFFFD79EBEFFC917
      0EFFFCFFFFFFC5435CFFE78967FFFFFFFFFFBD3663FFE67536FFFEFFFFFFC95F
      78FFE4845FFFFFFFFBFFFFFFFFFFFFFFFFFF00F1FFFF8DFFFFFF0A00EEFF80E6
      F9FF39EFFFFF2900E9FF9EFFFCFF00F3FFFF6CFFFFFF1B00ECFFA5F7FAFF00FF
      FFFF2634F2FFB3AAF4FF00FAFFFF00F2FFFF000000003983F6004691FF004B97
      FF00CDDDF2000000000000000000F8FBFE00F8FBFE0000000000000000007FAD
      E9000D72FF000B6CFF000862F1000000000000000000000000000000000055E5
      F90020C3ED002FA7D100328FB8002E7CA2002C7BA200308FB7002FA9CE002DD4
      F10084E2E800000000000000000000000000FFFFFFFFFFFFFFFFE8D1E2FFBD1E
      2AFFFFD9B2FFD695CAFFC42107FFC84A3FFFC21F20FFD43B01FFFFFFFFFFCA63
      7DFFDE7A54FFFFFFF7FFFFFFFFFFFFFFFFFF00F2FFFF00FFFFFF3D47F4FFED8D
      F1FF25FFFFFF312CF2FFB951EDFF3DFFFFFF5EC1FDFF0B00EAFF6FCAF7FF00FF
      FFFF3242F4FFF991F2FF00FDFFFF00F2FFFF000000004183F7005296FF005296
      FF005A9BFF00E7F0FF00C4DDFE0063A4FF0063A4FF0000000000A2C7FF0069A6
      FF006A9DFF000864FE000558F000000000000000000000000000000000000000
      0000C3C3C300000000000000000000000000000000000000000000000000D3D3
      D30000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFD590
      BAFFCA2A08FFFCDEC2FFE1B7D4FFEA8C85FFFFFFFFFFE597A1FFEBCBD1FFBE2A
      3BFFF3A87FFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F8FFFF71CCFFFF5806
      E8FF37FFFFFF05F8FFFF5534F1FF1700E7FF7C2BEBFF7375F7FFE965EEFF31FF
      FFFF1F26F2FFB3ACF4FF00FAFFFF00F2FFFF000000004783F9005794FF00629B
      FF00629BFF00E7F0FF00CBDDFF006EA5FF006EA5FF0000000000A9C5FF0077A8
      FF0076A3FF0076A3FF00014FF100000000000000000000000000000000000000
      0000C3C3C300000000000000000000000000000000000000000000000000D3D3
      D30000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFCFF
      FFFFBD3544FFC3230FFFE58A70FFE4A8A5FFE39C95FFDFA5A7FFC02929FFC41A
      00FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F1FFFF3FFFFFFF3832
      F3FFD660EDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF36EC
      FFFF1D00E9FF9AECFAFF00F5FFFF00F2FFFF00000000578DFC006697FF006A9D
      FF00709EFF008AB3EF0000000000C3D7FF00D3E1FF000000000076A2F6007DA7
      FF0083ABFF0083ABFF006190F600000000000000000000000000000000000000
      0000C1C1C100000000000000000000000000000000000000000000000000E0E0
      E00000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE7B9C9FFC8515AFFC93D32FFC94139FFC9332CFFE9A689FFFFFF
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F3FFFF1BFF
      FFFF3D1EEFFF922DEBFF67C2F8FF00FFFFFF00FFFFFF00FFFFFF089DF9FF1700
      ECFF9D82F0FF00FFFFFF00F2FFFF00F2FFFF00000000709EFF0076A3FF0076A3
      FF007DA7FF007DA7FF0078A3DD00E3EDFA00DEE9F700598EDD008AAFFF0091B4
      FF0091B4FF0091B4FF0091B4FF00000000000000000000000000000000000000
      0000C1C1C100969696000000000000000000000000000000000097979700CBCB
      CB0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF9F4FCFFF9EBE9FFF9EDECFFF9E6E6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F2FFFF00F3
      FFFF00FFFFFF049AF9FF5126F0FF2900E7FF2D00E8FF2300E8FF9835ECFF4EAB
      F6FF00FFFFFF00F2FFFF00F2FFFF00F2FFFF0000000083ABFF0083ABFF0083AB
      FF008AAFFF008AAFFF0091B4FF0091B4FF0099B9FF0099B9FF0099B9FF00A0BE
      FF00A0BEFF00A0BEFF00AFC9FF00000000000000000000000000000000000000
      000000000000A5A5A500000000000000000000000000000000006E6E6E000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00FCFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FB
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF0000000080A8EB0099B9FF0099B9
      FF0099B9FF0099B9FF00A0BEFF00A0BEFF00A5C1FF00A5C1FF00A9C5FF00AFC9
      FF00AFC9FF00BCD1FF0000000000000000000000000000000000000000000000
      00000000000000000000C5C5C5008F8F8F008F8F8F00AFAFAF00000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF00F2
      FFFF00F2FFFF00F2FFFF00F2FFFF00F2FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      E7E7000000000000C3C3000000000000C183000000000000E007000000000000
      F00F000000000000F81F000000000000F81F000000000000F00F000000000000
      E007000000000000C183000000000000C3C3000000000000E7E7000000000000
      FFFF000000000000FFFF00000000000000000000FFFFFFFF00000000C003E007
      000000008001E007000000008001E007000000008FE1E007000000008FE1E007
      000000008FE1E007000000008FE1E007000000008661E007000000008041F7EF
      000000008041F7EF000000008241F7EF000000008001F3CF000000008001FBDF
      000000008003FC3F00000000FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
