unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils, ShellAPI,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdActns, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ImgList, IniFiles, Vcl.Grids,
  Vcl.ComCtrls, System.Actions, Vcl.FlexCel.Core, FlexCel.XLSAdapter,
  FlexCel.Render, OraCall, Data.DB, DBAccess, Ora, DALoader, OraLoader,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, FlexCel.Preview, Math, Vcl.Mask, DBCtrlsEh,
  Vcl.DBCtrls, Vcl.Menus, Vcl.ToolWin, DateUtils, FlexCel.Report,
  System.ImageList;

type
  TfMain = class(TForm)
    pBottom: TPanel;
    bbClose: TBitBtn;
    ALMain: TActionList;
    ShowSlip: TAction;
    pProgress: TPanel;
    LNums: TLabel;
    prog: TProgressBar;
    pcMain: TPageControl;
    tsPaySlips: TTabSheet;
    MainPreview: TFlexCelPreviewer;
    tsSSCAdmins: TTabSheet;
    Images32: TImageList;
    PrintSlip: TAction;
    pSlipPreview: TPanel;
    SplitterStaff: TSplitter;
    pStaffSelect: TPanel;
    pMid: TPanel;
    bEmpInclude: TButton;
    bEmpExclude: TButton;
    pcViewKindStaff: TPageControl;
    tsTree: TTabSheet;
    ehOrgTree: TDBGridEh;
    ehDeptPeople: TDBGridEh;
    tsList: TTabSheet;
    ALStaff: TActionList;
    actEmpInclude: TAction;
    actEmpExclude: TAction;
    img32Staff: TImageList;
    img16Staff: TImageList;
    ehEmployees: TDBGridEh;
    SendSlip: TAction;
    bSend: TButton;
    chkZIP: TCheckBox;
    tsControl: TTabSheet;
    pcControl: TPageControl;
    tsSendRules: TTabSheet;
    ehOrgTreeBK: TDBGridEh;
    pSlipsTop: TPanel;
    pSendSlipToMail: TPanel;
    DBComboPSDates: TDBComboBoxEh;
    gridSlipsTree: TDBGridEh;
    chkSlipsTreeView: TCheckBox;
    pSlipsGrid: TPanel;
    actTreeCollapseAll: TAction;
    actTreeExpandAll: TAction;
    HideSlip: TAction;
    pSlipsDates: TPanel;
    ToolBarTreeCollapseExpand: TToolBar;
    PopupTreeCollapseExpand: TPopupMenu;
    mnExpand: TMenuItem;
    nmCollapse: TMenuItem;
    Splitter2: TSplitter;
    PrintDialog: TPrintDialog;
    ToolButtonUseDefPrinter: TToolButton;
    ToolButton2: TToolButton;
    ToolBarPrint: TToolBar;
    ToolButton3: TToolButton;
    ToolButtonPrint: TToolButton;
    ToolbarImages: TImageList;
    ALSlipPreview: TActionList;
    ActionAutofit: TAction;
    ActionZoom: TAction;
    FlowPanel1: TPanel;
    ToolBar4: TToolBar;
    ToolButtonZoom: TToolButton;
    ToolBarAutofit: TToolBar;
    ToolButtonAutoFit: TToolButton;
    ToolButton6: TToolButton;
    AutofitMenu: TPopupMenu;
    NoAutofit1: TMenuItem;
    FittoWidth1: TMenuItem;
    FittoHeight1: TMenuItem;
    FittoPage1: TMenuItem;
    pSlipsGridTree: TPanel;
    PanelZoom: TPanel;
    TrackBarZoom: TTrackBar;
    btn25: TButton;
    btn50: TButton;
    btn75: TButton;
    btn100: TButton;
    btn150: TButton;
    ToolButtonMargins: TToolButton;
    ActionMargins: TAction;
    pSendChoices: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    rgPersonCase: TRadioGroup;
    chkCombineSlipsToOneFile: TCheckBox;
    chkSlipsGrouping: TCheckBox;
    bSendSlips: TButton;
    Panel1: TPanel;
    chkPageBreaks: TCheckBox;
    actHelpMe: TAction;
    bHelpMe: TButton;
    gridSSCRepAlone: TDBGridEh;
    pPrintMargins: TPanel;
    Label6: TLabel;
    leLeft: TLabeledEdit;
    leRight: TLabeledEdit;
    leTop: TLabeledEdit;
    leBottom: TLabeledEdit;
    leScale: TLabeledEdit;
    UpDownTop: TUpDown;
    UpDownRight: TUpDown;
    UpDownBottom: TUpDown;
    UpDownLeft: TUpDown;
    actQuit: TAction;
    pMoveInSelection: TPanel;
    ActionGoDownSelection: TAction;
    ActionGoUpSelection: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pShowHideSlip: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    N1: TMenuItem;
    mnAutoFit: TMenuItem;
    actGridAutoFit: TAction;
    gridLog: TDBGridEh;
    Panel4: TPanel;
    tsPersMails: TTabSheet;
    Images16: TImageList;
    actEmpSetPersMail: TAction;
    actShowPersMailPane: TAction;
    pEmpPersonalMail: TPanel;
    bEmpMailCancel: TButton;
    bEmpMailApply: TButton;
    beEmpPerMail: TButtonedEdit;
    chkZippedAttach: TCheckBox;
    pEmpName: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    gridDeniedDomains: TDBGridEh;
    pSSCAdminsInfo: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ShowSlipExecute(Sender: TObject);
    procedure onEditValueChange(Sender: TObject);
    procedure PrintSlipExecute(Sender: TObject);
    procedure pcViewKindStaffChange(Sender: TObject);
    procedure ehOrgTreeRowDetailPanelShow(Sender: TCustomDBGridEh;
      var CanShow: Boolean);
    procedure ehOrgTreeSelectionChanged(Sender: TObject);
    procedure actEmpIncludeExecute(Sender: TObject);
    procedure actEmpExcludeExecute(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure SendSlipExecute(Sender: TObject);
    procedure gridSlipsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure pcControlChange(Sender: TObject);
    procedure DBComboPSDatesChange(Sender: TObject);
    procedure chkSlipsTreeViewClick(Sender: TObject);
    procedure actTreeCollapseAllExecute(Sender: TObject);
    procedure actTreeExpandAllExecute(Sender: TObject);
    procedure HideSlipExecute(Sender: TObject);
    procedure ehDeptPeopleEnter(Sender: TObject);
    procedure ActionAutofitExecute(Sender: TObject);
    procedure NoAutofit1Click(Sender: TObject);
    procedure FittoWidth1Click(Sender: TObject);
    procedure FittoHeight1Click(Sender: TObject);
    procedure FittoPage1Click(Sender: TObject);
    procedure ActionZoomExecute(Sender: TObject);
    procedure PanelZoomExit(Sender: TObject);
    procedure TrackBarZoomChange(Sender: TObject);
    procedure TrackBarZoomEnter(Sender: TObject);
    procedure btn100Click(Sender: TObject);
    procedure btn150Click(Sender: TObject);
    procedure btn25Click(Sender: TObject);
    procedure btn50Click(Sender: TObject);
    procedure btn75Click(Sender: TObject);
    procedure pSendChoicesExit(Sender: TObject);
    procedure bSendDropDownClick(Sender: TObject);
    procedure rgPersonCaseClick(Sender: TObject);
    procedure pSendChoicesEnter(Sender: TObject);
    procedure chkSlipsGroupingClick(Sender: TObject);
    procedure gridSlipsTreeSelectionChanged(Sender: TObject);
    procedure chkCombineSlipsToOneFileClick(Sender: TObject);
    procedure actHelpMeExecute(Sender: TObject);
    procedure ehOrgTreeBKDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ActionMarginsExecute(Sender: TObject);
    procedure pPrintMarginsExit(Sender: TObject);
    procedure UpDownLeftChanging(Sender: TObject; var AllowChange: Boolean);
    procedure leTopExit(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure ActionGoDownSelectionExecute(Sender: TObject);
    procedure ActionGoUpSelectionExecute(Sender: TObject);
    procedure gridSlipsTreeEnter(Sender: TObject);
    procedure actGridAutoFitExecute(Sender: TObject);
    procedure gridLogExit(Sender: TObject);
    procedure gridSlipsTreeDblClick(Sender: TObject);
    procedure pcControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure actEmpSetPersMailExecute(Sender: TObject);
    procedure actShowPersMailPaneExecute(Sender: TObject);
    procedure ehEmployeesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ehEmployeesColumns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure bEmpMailCancelClick(Sender: TObject);
    procedure beEmpPerMailRightButtonClick(Sender: TObject);
    procedure ToolButtonUseDefPrinterClick(Sender: TObject);
    procedure gridSSCRepAloneCellClick(Column: TColumnEh);
  private
    FChangedCmp: array of TComponent;
    FActiveStaffGrid, FActiveGrid: TDBGridEh;
    FChangingZoom, FIsProdEnvironment: Boolean;
    FHelpFile, FxTemplate: string;
    FRcvrDevTest: string;
    function ReadWriteCfgValue(const group, name: string;
      const pValue: string = ''; const mode: char = 'r'): string;
    function GetParamName(const inName: string): string;
    function GetPrivilegeName: string;
    procedure FillPSDatesCombo;
    procedure ApplyUserPermissions;
    procedure UpdateZoom;
    procedure UpdateAutofitText;
    procedure GetGluedSlip(const IDs: TArray<Integer>; pageBreaks: Boolean;
      var result: TMemoryStream); overload;
    procedure GetGluedSlip(const IDs: string; pageBreaks: Boolean;
      var result: TMemoryStream); overload;
    procedure PreviewScaleChange(Sender: TObject; scale: Integer);
    procedure SetPreviewMargins(const left, top, right, bottom: string);
    procedure BufferizeSlip(var xStream: TMemoryStream;
      const reciever, note, SlipFileName: string; const GMR, EmpID: Integer);
    procedure ProtectSlip(var xStream: TMemoryStream; const reciever: string);
    function GetAssociatorFor(comp: TLabeledEdit): TUpDown;
    function GetEmpIDs(const PersonCase: Integer = 0): TArray<Integer>;
    function GetIDsString(const IDs: TArray<Integer>): string;
    procedure GetSlip(const EmpID, GMR: Integer; var result: TMemoryStream);
    function IsBokkmarksEqual(A, B: TBookmark): Boolean;
    function IsFirstSelected: Boolean;
    function IsLastSelected: Boolean;
    procedure ApplySlipParams(var xls: TXlsFile);
    procedure OptimizeColWidths(grid: TDBGridEh);
    procedure AlignSlip(const templateRows: Integer; var xS: TMemoryStream);

  const
    cPrintSection = 'PRINT';
    cBlank = '';
    cEmpID = 'emp_id';
  public
    PrintInProgress: Boolean;
    vGMR: Integer;
    procedure RestoreAppParams;
  end;

var
  fMain: TfMain;

implementation

uses uDM, shellExec, Splash, printers;
{$R *.dfm}

procedure TfMain.actEmpExcludeExecute(Sender: TObject);
  procedure removeSingle();
  begin
    dm.RemoveEmployeeFromDelegates(dm.mtOrgTreeBK.FieldByName('deputy_id')
      .AsInteger, dm.mtOrgTreeBK.FieldByName('KODPODR').AsInteger)
  end;

var
  i, bm: Integer;
begin
  bm := dm.mtOrgTreeBK.FieldByName(cEmpID).AsInteger;
  if (dm.mtOrgTreeBK.FieldByName('deputy_name').AsString = '') then
    exit;
  if mrYes = MessageDlg('Убрать сотрудник' +
    ifthen(ehOrgTreeBK.SelectedRows.Count = 0, 'а', 'ов') + ' из списка?',
    mtConfirmation, [mbYes, mbNo], 0) then
  begin
    ehOrgTreeBK.SaveVertPos(cEmpID);
    if ehOrgTreeBK.SelectedRows.Count = 0 then
      removeSingle
    else
    begin
      for i := 0 to ehOrgTreeBK.SelectedRows.Count - 1 do
      begin
        ehOrgTreeBK.DataSource.DataSet.GotoBookmark
          (TBookmark(ehOrgTreeBK.SelectedRows[i]));
        removeSingle;
      end;
      ehOrgTreeBK.Selection.Clear;
    end;
    dm.mtOrgTreeBK.Refresh;
    dm.mtOrgTreeBK.Locate(cEmpID, bm, []);
    ehOrgTreeBK.RestoreVertPos(cEmpID);
  end;
end;

procedure TfMain.actEmpIncludeExecute(Sender: TObject);
  procedure AddSingle(const EmpID: Integer; const DeptCode: Integer = -1);
  begin
    dm.AddEmployeeToDelegates(EmpID, DeptCode);
  end;

var
  i, DeptCode, bm: Integer;
  someAdded: Boolean;
begin
  ehOrgTreeBK.SaveVertPos(cEmpID);
  someAdded := false;
  DeptCode := dm.mtOrgTreeBK.FieldByName('kodpodr').AsInteger;
  bm := dm.mtOrgTreeBK.FieldByName(cEmpID).AsInteger;
  if pcViewKindStaff.ActivePage = tsTree then
  begin
    if ehOrgTree.RowDetailPanel.Visible then
    begin
      if ehDeptPeople.SelectedRows.Count > 0 then
      begin // some records are selected
        for i := 0 to ehDeptPeople.SelectedRows.Count - 1 do
        begin
          ehDeptPeople.DataSource.DataSet.GotoBookmark
            (TBookmark(ehDeptPeople.SelectedRows[i]));
          AddSingle(dm.oqDeptPeople.FieldByName(cEmpID).AsInteger);
        end;
        ehDeptPeople.Selection.Clear;
      end
      else // only record is selected
        AddSingle(dm.oqDeptPeople.FieldByName(cEmpID).AsInteger, DeptCode);
      someAdded := true;
    end;
  end
  else // Flat view
  begin
    if ehEmployees.SelectedRows.Count > 0 then
    begin // some records are selected
      for i := 0 to ehEmployees.SelectedRows.Count - 1 do
      begin
        ehEmployees.DataSource.DataSet.GotoBookmark
          (TBookmark(ehEmployees.SelectedRows[i]));
        AddSingle(dm.mtEmployees.FieldByName(cEmpID).AsInteger);
      end;
      ehEmployees.Selection.Clear;
    end
    else // only record is selected
      AddSingle(dm.mtEmployees.FieldByName(cEmpID).AsInteger, DeptCode);
    someAdded := true;
  end;
  if someAdded then
    dm.mtOrgTreeBK.Refresh;
  if bm > 0 then
    dm.mtOrgTreeBK.Locate(cEmpID, bm, []);
  ehOrgTreeBK.RestoreVertPos(cEmpID);
end;

procedure TfMain.actEmpSetPersMailExecute(Sender: TObject);
var
  bm: Integer;
begin
  ehEmployees.SaveVertPos(cEmpID);
  bm := dm.mtEmployees.FieldByName(cEmpID).AsInteger;
  dm.ospSetPersMail.ParamByName('pEmpID').AsInteger := bm;
  dm.ospSetPersMail.ParamByName('pmail').AsString := beEmpPerMail.Text;
  dm.ospSetPersMail.ParamByName('pzip').AsInteger :=
    ifthen(chkZippedAttach.Checked, 1, 0);
  dm.ospSetPersMail.Execute;
  dm.mtEmployees.Refresh;
  dm.mtEmployees.Locate(cEmpID, bm, []);
  pEmpPersonalMail.Hide;
  ehEmployees.RestoreVertPos(cEmpID);
end;

procedure TfMain.OptimizeColWidths(grid: TDBGridEh);
var
  c: Integer;
  ds: TDataSet;
  vAfterScroll: TDataSetNotifyEvent;
begin
  if not grid.AutoFitColWidths then
  begin // make optimal columns widths
    ds := grid.DataSource.DataSet;
    vAfterScroll := ds.AfterScroll;
    grid.DataSource.DataSet.AfterScroll := nil;
    for c := 0 to grid.Columns.Count - 1 do
      if grid.Columns[c].Visible then
        grid.Columns[c].OptimizeWidth;
    ds.AfterScroll := vAfterScroll;
  end;
end;

procedure TfMain.actGridAutoFitExecute(Sender: TObject);
begin
  if not actGridAutoFit.Checked then
    OptimizeColWidths(FActiveGrid);
  FActiveGrid.AutoFitColWidths := actGridAutoFit.Checked;
end;

procedure TfMain.actHelpMeExecute(Sender: TObject);
begin
  if (not FileExists(FHelpFile)) or (FHelpFile = cBlank) then
    ShowMessage('Файл справки не существует:' + sLineBreak + FHelpFile)
  else
    ShellExecute(0, '', FHelpFile, '', '', SW_SHOWMAXIMIZED);
end;

procedure TfMain.ActionAutofitExecute(Sender: TObject);
var
  PopPoint: TPoint;
begin
  if not(Sender is TControl) then
    exit;
  PopPoint.X := (Sender as TControl).left;
  PopPoint.Y := (Sender as TControl).top + (Sender as TControl).Height;
  PopPoint := ClientToScreen(PopPoint);
  AutofitMenu.Popup(PopPoint.X, PopPoint.Y);
end;

function TfMain.IsBokkmarksEqual(A, B: TBookmark): Boolean;
var
  i: Integer;
begin
  result := true;
  For i := Low(A) To High(A) Do
  Begin
    result := A[i] = B[i];
    If Not result Then
      Break;
  End;
end;

function TfMain.IsFirstSelected(): Boolean;
begin
  result := IsBokkmarksEqual(TBookmark(gridSlipsTree.SelectedRows[0]),
    gridSlipsTree.DataSource.DataSet.GetBookmark);
end;

function TfMain.IsLastSelected(): Boolean;
begin
  result := IsBokkmarksEqual
    (TBookmark(gridSlipsTree.SelectedRows[gridSlipsTree.SelectedRows.Count - 1]
    ), gridSlipsTree.DataSource.DataSet.GetBookmark);
end;

procedure TfMain.ActionGoDownSelectionExecute(Sender: TObject);
begin
  repeat
    if IsLastSelected then
      Break;
    gridSlipsTree.DataSource.DataSet.Next;
  until gridSlipsTree.SelectedRows.CurrentRowSelected;
end;

procedure TfMain.ActionGoUpSelectionExecute(Sender: TObject);
begin
  repeat
    if IsFirstSelected then
      Break;
    gridSlipsTree.DataSource.DataSet.Prior;
  until gridSlipsTree.SelectedRows.CurrentRowSelected;
end;

procedure TfMain.ActionMarginsExecute(Sender: TObject);
begin
  if not pPrintMargins.Visible then
  begin
    pPrintMargins.Show;
    leTop.SetFocus;
  end
  else
    pPrintMargins.Hide;
end;

procedure TfMain.ActionZoomExecute(Sender: TObject);
var
  p: TPoint;
begin
  p.X := ToolButtonZoom.left;
  p.Y := ToolButtonZoom.top + ToolButtonZoom.Height;
  p := ToolButtonZoom.ClientToParent(p, fMain);
  PanelZoom.left := p.X;
  PanelZoom.top := p.Y;
  PanelZoom.Visible := true;
  PanelZoom.BringToFront;
  ActiveControl := TrackBarZoom;
end;

procedure TfMain.AlignSlip(const templateRows: Integer; var xS: TMemoryStream);
var
  r, X, colsCount: Integer;
  xf: TXlsFile;
begin
  xf := TXlsFile.Create(xS, false);
  try
    // number of footer lines to prevent repeating in first col
    X := templateRows - 4;
    xf.ActiveSheet := 1;
    colsCount := xf.ColCountInRow(1);
    r := xf.RowCount - templateRows;
    if r > 0 then
    begin
      xf.InsertAndCopyRange(TXlsCellRange.Create(X, 1, X, 1), X, 1, r,
        TFlxInsertMode.ShiftRangeDown);
      // cut empty tail
      xf.DeleteRange(TXlsCellRange.Create(xf.RowCount - r + 1, 1,
        xf.RowCount + 1, colsCount), TFlxInsertMode.ShiftRowDown);
    end;
    // add notes if any
    r := xf.GetRowCount(2); // assume 2nd sheet contain footer's notes
    X := xf.GetColCount(2);
    xf.InsertAndCopyRange(TXlsCellRange.Create(1, 1, r, X), xf.RowCount + 1, 1,
      1, TFlxInsertMode.ShiftRangeDown, TRangeCopyMode.All, xf, 2);
    xf.ActiveSheet := 2;
    xf.DeleteSheet(1);
    xf.SelectCell(1, 1, true);
    xf.Save(xS);
    xS.Position := 0;
  finally
    FreeAndNil(xf);
  end;
end;

procedure TfMain.GetSlip(const EmpID, GMR: Integer; var result: TMemoryStream);
var
  xf: TXlsFile;
  xS: TMemoryStream;
  Report: TFlexCelReport;
  templateRows: Integer;
begin
  dm.ospGetSlipStat.ParamByName('pEmpID').AsInteger := EmpID;
  dm.ospGetSlipStat.ParamByName('pGMR').AsInteger := GMR;
  dm.ospGetSlipTab.ParamByName('pEmpID').AsInteger := EmpID;
  dm.ospGetSlipTab.ParamByName('pGMR').AsInteger := GMR;
  dm.ospGetSSCforEmp.ParamByName('pEmpID').AsInteger := EmpID;
  dm.ospGetSSCforEmp.ParamByName('pDate').AsDateTime :=
    dm.ospGetDates.FieldByName('ps_date').AsDateTime;
  dm.ospGetSSCforEmp.ParamByName('pTag').AsInteger :=
    dm.mtSlips.FieldByName('protected_emp').AsInteger;
  xS := TMemoryStream.Create;
  xf := TXlsFile.Create;
  Report := TFlexCelReport.Create;
  try
    xf.Open(FxTemplate);
    ApplySlipParams(xf);
    xf.Save(xS);
    xS.Position := 0;
    Report.AddTable('tTab', dm.ospGetSlipTab);
    Report.AddTable('tStat', dm.ospGetSlipStat);
    Report.AddTable('tKeeper', dm.ospGetSSCforEmp);
    Report.Run(xS, result);
    result.Position := 0;
    templateRows := xf.RowCount;
    AlignSlip(templateRows, result);
  finally
    FreeAndNil(xS);
    FreeAndNil(xf);
    FreeAndNil(Report);
  end;
end;

function TfMain.GetEmpIDs(const PersonCase: Integer = 0): TArray<Integer>;
var
  i, k, EmpID: Integer;
begin
  SetLength(result, 0);
  k := gridSlipsTree.SelectedRows.Count;
  if k > 0 then
  begin
    dm.mtSlips.AfterScroll := nil;
    for i := 0 to k - 1 do
    begin
      try
        dm.mtSlips.GotoBookmark(TBookmark(gridSlipsTree.SelectedRows[i]));
        EmpID := dm.mtSlips.FieldByName(cEmpID).AsInteger;
        if dm.SlipIsSendable(EmpID, PersonCase) then
        begin
          SetLength(result, length(result) + 1);
          result[length(result) - 1] := EmpID;
        end;
      except
        ; // case when selected rows were filtered out
      end;
    end;
    dm.mtSlips.AfterScroll := dm.mtSlipsAfterScroll;
  end
  else
  begin // single slip
    EmpID := dm.mtSlips.FieldByName(cEmpID).AsInteger;
    if dm.SlipIsSendable(EmpID, PersonCase) then
    begin
      SetLength(result, 1);
      result[0] := EmpID;
    end;
  end;
end;

function TfMain.GetIDsString(const IDs: TArray<Integer>): string;
var
  i: Integer;
begin
  result := cBlank;
  for i := 0 to length(IDs) - 1 do
  begin
    result := result + ',' + IntToStr(IDs[i]);
  end;
end;

procedure TfMain.SendSlipExecute(Sender: TObject);
const
  cMessage = 'Ваша группа / отдел.' + sLineBreak +
    'Используйте свои паспортные данные (серия, номер без пробелов) для открытия файла.';
var
  i, msgCount, slipsCount, bm, PersonCase: Integer;
  IDs: TArray<Integer>;
  idList, finMessage, reciever: string;
  SlipsGrouping, SlipsCombining: Boolean;
  xStream: TMemoryStream;
begin
  // CompressIt := Math.ifthen(chkZIP.Checked, 1, 0);
  if (not FIsProdEnvironment) and (FRcvrDevTest = '') then
  begin
    ShowMessage('Не определен получатель сообщений для среды разработки / теста'
      + sLineBreak + 'Проверьте настройки параметров приложения.');
    exit;
  end
  else
    reciever := FRcvrDevTest;
  PersonCase := rgPersonCase.ItemIndex;
  SplashIt('Формирование списка для рассылки...');
  IDs := GetEmpIDs(PersonCase);
  SplashIt;
  Application.ProcessMessages;
  slipsCount := length(IDs);
  if slipsCount = 0 then
  begin
    ShowMessage('Нет подходящих РЛ для отсылки.');
    exit;
  end;
  idList := GetIDsString(IDs);
  msgCount := 0;
  bm := dm.mtSlips.FieldByName(cEmpID).AsInteger;
  gridSlipsTree.SaveVertPos(cEmpID);
  SlipsGrouping := chkSlipsGrouping.Enabled and chkSlipsGrouping.Checked and
    (slipsCount > 1);
  SlipsCombining := chkCombineSlipsToOneFile.Enabled and
    chkCombineSlipsToOneFile.Checked and (slipsCount > 1);
  dm.ospFlushBuffSlips.Execute;
  xStream := TMemoryStream.Create;
  if SlipsGrouping then
  begin
    SplashIt('Группирование и рассылка .... подождите');
    if not SlipsCombining then
    begin
      for i := 0 to length(IDs) - 1 do
      begin
        xStream.Clear;
        GetSlip(IDs[i], vGMR, xStream);
        BufferizeSlip(xStream, dm.GetSlipReciever(IDs[i], PersonCase), cMessage,
          cBlank, vGMR, IDs[i]);
      end;
    end
    else
    begin
      try
        dm.ospGetMailsForGrouped.ParamByName('pIDS').AsString := idList;
        dm.ospGetMailsForGrouped.ParamByName('PersonCase').AsInteger :=
          PersonCase;
        dm.ospGetMailsForGrouped.Execute;
        repeat
          xStream.Clear;
          GetGluedSlip(dm.ospGetMailsForGrouped.FieldByName('id_list').AsString,
            (chkPageBreaks.Checked and chkPageBreaks.Enabled), xStream);
          xStream.Position := 0;
          BufferizeSlip(xStream, dm.ospGetMailsForGrouped.FieldByName('email')
            .AsString, cMessage, 'group_payslips.xlsx', vGMR, 0);
          dm.ospGetMailsForGrouped.Next;
        until dm.ospGetMailsForGrouped.Eof;
      finally
        FreeAndNil(xStream);
      end;
    end;
    msgCount := dm.SendSlipsGroup('Расчетные листки за ' + DBComboPSDates.Text,
      cMessage);
    gridSlipsTree.SelectedRows.Clear;
    SplashIt();
  end
  else // send single slips
  begin
    prog.Max := slipsCount;
    prog.Position := 0;
    pProgress.Visible := true;
    for i := 0 to length(IDs) - 1 do
    begin
      xStream.Clear;
      GetSlip(IDs[i], vGMR, xStream);
      if FIsProdEnvironment then
        reciever := dm.GetSlipReciever(IDs[i], PersonCase);
      BufferizeSlip(xStream, reciever, cBlank, cBlank, vGMR, IDs[i]);
      while not dm.SendBufferedSlip(IDs[i]) do
        sleep(1000);
      prog.StepIt;
      LNums.Caption := 'Буферизация и отправка РЛ: ' + IntToStr(prog.Position) +
        ' / ' + IntToStr(length(IDs));
      prog.Width := LNums.left - 20;
      Application.ProcessMessages;
    end;
    gridSlipsTree.SelectedRows.Clear;
    pProgress.Hide;
  end;
  if slipsCount > 0 then
  begin
    if SlipsGrouping then
      dm.LogEvents(idList, 1, vGMR, 'Manager'); // 1 = send mail
    finMessage := ' РЛ отослан';
    if slipsCount > 1 then
      finMessage := IntToStr(slipsCount) + finMessage + 'o';
    if SlipsGrouping then
      finMessage := finMessage + ' в ' + IntToStr(msgCount) + ' сообщени' +
        ifthen(slipsCount > 1, 'ях', 'и');
    finMessage := finMessage + '.';
    ShowMessage(finMessage);
    dm.mtSlips.Refresh;
    // gridSlipsTree.OptimizeAllColsWidth();
  end
  else
    ShowMessage('Ничего не отослано.');
  gridSlipsTree.DataSource.DataSet.Locate(cEmpID, bm, []);
  gridSlipsTree.RestoreVertPos(cEmpID);
  if pSendChoices.Visible then
    pSendChoices.Hide;
  dm.ospFlushBuffSlips.Execute;
end;

procedure TfMain.actQuitExecute(Sender: TObject);
begin
{$IFNDEF DEBUG}
  if mrYes = MessageDlg('Выйти из приложения?', mtConfirmation, [mbNo, mbYes], 0)
  then
{$ENDIF} begin
    SplashIt('Закрытие...');
    dm.oSession.Close;
    Close;
  end;
end;

procedure TfMain.actShowPersMailPaneExecute(Sender: TObject);
var
  PopPoint: TPoint;
begin
  pEmpName.Caption := dm.mtEmployees.FieldByName('fullname').AsString;
  beEmpPerMail.Text := dm.mtEmployees.FieldByName('pers_mail').AsString;
  chkZippedAttach.Checked := (dm.mtEmployees.FieldByName('zipped_attach')
    .AsInteger = 1);
  PopPoint := mouse.CursorPos;
  pEmpPersonalMail.top := min(PopPoint.Y, fMain.top + fMain.Height -
    pEmpPersonalMail.Height - 30);
  pEmpPersonalMail.left := PopPoint.X - pEmpPersonalMail.Width;
  pEmpPersonalMail.Show;
  beEmpPerMail.SetFocus;
end;

procedure TfMain.actTreeCollapseAllExecute(Sender: TObject);
begin
  if pcMain.ActivePage = tsControl then
    dm.mtOrgTreeBK.TreeList.FullCollapse
  else
    dm.mtSlips.TreeList.FullCollapse;
end;

procedure TfMain.actTreeExpandAllExecute(Sender: TObject);
begin
  if pcMain.ActivePage = tsControl then
    dm.mtOrgTreeBK.TreeList.FullExpand
  else
    dm.mtSlips.TreeList.FullExpand;
end;

procedure TfMain.ApplyUserPermissions;
begin
  { 0 = Сотрудник ОЦО
    1 = Админ
    2 = Начальник / делегат
  }
  pSendSlipToMail.Visible := gUserPoln in [0, 1]; // SCC + Admin
  tsControl.TabVisible := gUserPoln in [0, 1]; // SCC + Admin
  tsSSCAdmins.TabVisible := gUserPoln = 1; // Admin
  tsPersMails.TabVisible := gUserPoln = 1; // Admin
end;

procedure TfMain.beEmpPerMailRightButtonClick(Sender: TObject);
begin
  beEmpPerMail.Text := cBlank;
end;

procedure TfMain.bEmpMailCancelClick(Sender: TObject);
begin
  pEmpPersonalMail.Hide;
end;

procedure TfMain.bSendDropDownClick(Sender: TObject);
begin
  if not pSendChoices.Visible then
  begin
    pSendChoices.Show;
    rgPersonCase.SetFocus;
  end
  else
  begin
    pSendChoices.Hide;
    gridSlipsTree.SetFocus;
  end;
end;

procedure TfMain.PreviewScaleChange(Sender: TObject; scale: Integer);
begin
  if pSlipPreview.Visible then
  begin
    MainPreview.Document.Workbook.PrintScale := scale;
    MainPreview.Document.Workbook.PrintToFit := scale = 100;
    MainPreview.InvalidatePreview;
  end;
  if Assigned(Sender) then
  begin
    ActionZoom.Caption := TButton(Sender).Caption;
    PanelZoom.Visible := false;
  end
  else
    ActionZoom.Caption := IntToStr(scale) + '%';
  TrackBarZoom.Position := scale;
  if leScale.Text <> IntToStr(scale) then
    leScale.Text := IntToStr(scale);
end;

procedure TfMain.btn100Click(Sender: TObject);
begin
  PreviewScaleChange(Sender, 100);
end;

procedure TfMain.btn150Click(Sender: TObject);
begin
  PreviewScaleChange(Sender, 150);
end;

procedure TfMain.btn25Click(Sender: TObject);
begin
  PreviewScaleChange(Sender, 25);
end;

procedure TfMain.btn50Click(Sender: TObject);
begin
  PreviewScaleChange(Sender, 50);
end;

procedure TfMain.btn75Click(Sender: TObject);
begin
  PreviewScaleChange(Sender, 75);
end;

procedure TfMain.chkCombineSlipsToOneFileClick(Sender: TObject);
begin
  chkPageBreaks.Enabled := chkCombineSlipsToOneFile.Checked;
end;

procedure TfMain.chkSlipsGroupingClick(Sender: TObject);
begin
  chkCombineSlipsToOneFile.Enabled := chkSlipsGrouping.Checked;
  chkPageBreaks.Enabled := chkCombineSlipsToOneFile.Checked and
    chkCombineSlipsToOneFile.Enabled;
end;

procedure TfMain.chkSlipsTreeViewClick(Sender: TObject);
begin
  dm.mtSlips.TreeList.Active := chkSlipsTreeView.Checked;
end;

procedure TfMain.DBComboPSDatesChange(Sender: TObject);
begin
  if not dm.ospGetDates.Active then
    dm.ospGetDates.Open;
  if not dm.ospGetDates.Locate('mn', DBComboPSDates.Text, []) then
    dm.ospGetDates.First;
  if not Assigned(dm.ospGetDates.AfterScroll) then
    dm.mtDatesAfterScroll(dm.ospGetDates);
  if pcMain.Visible then
    gridSlipsTree.SetFocus
  else if pSlipPreview.Parent = fMain then
    ShowSlipExecute(nil);
end;

procedure TfMain.ehDeptPeopleEnter(Sender: TObject);
begin
  FActiveStaffGrid := TDBGridEh(Sender);
end;

procedure TfMain.ehEmployeesColumns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  actShowPersMailPane.Execute;
end;

procedure TfMain.ehEmployeesDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if not(gdSelected in State) and TDBGridEh(Sender).DataSource.DataSet.Active
  then
  begin
    if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('have_corp_mail')
      .AsInteger = 1) and (Column.FieldName = 'PERS_MAIL') then
      TDBGridEh(Sender).Canvas.Brush.Color := clSkyBlue;
  end;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfMain.ehOrgTreeBKDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if not(gdSelected in State) and TDBGridEh(Sender).DataSource.DataSet.Active
  then
  begin
    if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('active').AsInteger = 0)
    then
      TDBGridEh(Sender).Canvas.Brush.Color := clSilver;
  end;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfMain.ehOrgTreeRowDetailPanelShow(Sender: TCustomDBGridEh;
  var CanShow: Boolean);
begin
  if not ehDeptPeople.DataSource.DataSet.Active then
    ehDeptPeople.DataSource.DataSet.Open;
  if ehDeptPeople.SelectedRows.Count > 0 then
    ehDeptPeople.Selection.Clear;
end;

procedure TfMain.ehOrgTreeSelectionChanged(Sender: TObject);
begin
  if ehOrgTree.RowDetailPanel.Visible then
    ehOrgTree.RowDetailPanel.Visible := false;
end;

function TfMain.GetParamName(const inName: string): string;
begin
  result := UpperCase(copy(inName, 3, length(inName)));
end;

procedure TfMain.FillPSDatesCombo;
begin
  try
    dm.ospGetDates.AfterScroll := nil;
    dm.mtSlips.AfterScroll := nil;
    DBComboPSDates.OnChange := nil;
    DBComboPSDates.Items.Clear;
    dm.ospGetDates.Execute;
    repeat
      DBComboPSDates.Items.Add(dm.ospGetDates.FieldByName('mn').AsString);
      dm.ospGetDates.Next;
    until dm.ospGetDates.Eof;
    DBComboPSDates.ItemIndex := 0;
  finally
    DBComboPSDatesChange(nil);
    DBComboPSDates.OnChange := DBComboPSDatesChange;
    dm.ospGetDates.AfterScroll := dm.mtDatesAfterScroll;
    dm.mtSlips.AfterScroll := dm.mtSlipsAfterScroll;
  end;
end;

procedure TfMain.FittoHeight1Click(Sender: TObject);
begin
  MainPreview.AutofitPreview := TAutofitPreview.Height;
  UpdateAutofitText;
end;

procedure TfMain.FittoPage1Click(Sender: TObject);
begin
  MainPreview.AutofitPreview := TAutofitPreview.Full;
  UpdateAutofitText;
end;

procedure TfMain.FittoWidth1Click(Sender: TObject);
begin
  MainPreview.AutofitPreview := TAutofitPreview.Width;
  UpdateAutofitText;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  // save app params
  for i := 0 to length(FChangedCmp) - 1 do
  begin
    ReadWriteCfgValue(cPrintSection,
      GetParamName(TComponent(FChangedCmp[i]).name),
      TLabeledEdit(FChangedCmp[i]).Text, 'w'); // write mode
  end;
end;

function TfMain.GetPrivilegeName: string;
begin
  dm.oqGetPrivName.ParamByName('appcode').AsInteger := AppVerRecord.major;
  dm.oqGetPrivName.ParamByName('rcode').AsInteger := gUserPoln;
  dm.oqGetPrivName.Open;
  result := dm.oqGetPrivName.Fields[0].AsString;
  dm.oqGetPrivName.Close;
end;

procedure TfMain.gridLogExit(Sender: TObject);
begin
  gridSlipsTree.RowDetailPanel.Visible := false;
  gridSlipsTree.RowDetailPanel.Active := false;
  dm.oqSlipLog.Close;
end;

procedure TfMain.gridSlipsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if not(gdSelected in State) and TDBGridEh(Sender).DataSource.DataSet.Active
  then
  begin
    if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('data_uvol').AsString
      <> '') then
      TDBGridEh(Sender).Canvas.Brush.Color := clSilver
    else if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('smtp')
      .AsString = '') then
      TDBGridEh(Sender).Canvas.Brush.Color := clYellow
    else if (TDBGridEh(Sender).DataSource.DataSet.FieldByName('protected_emp')
      .AsInteger = 1) then
      TDBGridEh(Sender).Canvas.Brush.Color := $00F6C7FE; // light pink
    if Column.FieldName = 'LAST_MAILED' then
      if TDBGridEh(Sender).DataSource.DataSet.FieldByName('mails_count')
        .AsInteger > 1 then
        TDBGridEh(Sender).Canvas.Brush.Color := clSkyBlue;
    if Column.FieldName = 'LAST_PRINTED' then
      if TDBGridEh(Sender).DataSource.DataSet.FieldByName('print_count')
        .AsInteger > 1 then
        TDBGridEh(Sender).Canvas.Brush.Color := clSkyBlue;
  end;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfMain.gridSlipsTreeDblClick(Sender: TObject);
  function GetGridOptimalWidth(const grid: TDBGridEh): Integer;
  var
    c: Integer;
  begin
    result := 40; // borders
    for c := 1 to grid.Columns.Count do
      result := result + grid.Columns[c - 1].Width;
  end;

begin
  if gridSlipsTree.RowDetailPanel.Visible then
    gridLogExit(nil)
  else if (dm.mtSlips.FieldByName('last_mailed').AsString <> cBlank) or
    (dm.mtSlips.FieldByName('last_printed').AsString <> cBlank) then
  begin
    dm.oqSlipLog.Close;
    dm.oqSlipLog.ParamByName('EmpID').AsInteger :=
      dm.mtSlips.FieldByName(cEmpID).AsInteger;
    dm.oqSlipLog.ParamByName('pGMR').AsInteger :=
      dm.ospGetDates.FieldByName('god_mesr').AsInteger;
    dm.oqSlipLog.Open;
    if dm.oqSlipLog.RecordCount > 0 then
    begin
      gridSlipsTree.RowDetailPanel.Active := true;
      gridSlipsTree.RowDetailPanel.Visible := true;
      gridLog.OptimizeAllColsWidth();
      gridLog.Width := GetGridOptimalWidth(gridLog);
    end
    else
    begin
      gridSlipsTree.RowDetailPanel.Active := false;
      dm.oqSlipLog.Close;
    end;
  end;
end;

procedure TfMain.gridSlipsTreeEnter(Sender: TObject);
begin
  FActiveGrid := TDBGridEh(Sender);
  actGridAutoFit.Checked := FActiveGrid.AutoFitColWidths;
end;

procedure TfMain.gridSlipsTreeSelectionChanged(Sender: TObject);
begin
  if pSendChoices.Visible then
    rgPersonCaseClick(nil);
  if pSlipPreview.Visible then
  begin
    pMoveInSelection.Visible := (gridSlipsTree.SelectedRows.Count > 0);
  end;
  if gridSlipsTree.RowDetailPanel.Visible then
    gridLog.OnExit(nil);
end;

procedure TfMain.gridSSCRepAloneCellClick(Column: TColumnEh);
begin
  if Column.FieldName = 'SELECTED' then
  begin
    dm.ospSetSSCRespAlone.ParamByName('PEMPID').AsInteger :=
      dm.ospGetSSCAdmins.FieldByName('EMP_ID').AsInteger;
    dm.ospSetSSCRespAlone.Execute;
    dm.ospGetSSCAdmins.Refresh;
    gridSSCRepAlone.Refresh;
  end;
end;

procedure TfMain.HideSlipExecute(Sender: TObject);
begin
  pSlipPreview.Hide;
  Splitter2.Hide;
  ShowSlip.Enabled := true;
  HideSlip.Enabled := false;
end;

function TfMain.GetAssociatorFor(comp: TLabeledEdit): TUpDown;
var
  i: Integer;
begin
  result := nil;
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TUpDown then
      if TUpDown(Components[i]).Associate = comp then
      begin
        result := TUpDown(Components[i]);
        Break;
      end;
end;

procedure TfMain.leTopExit(Sender: TObject);
var
  Associator: TUpDown;
begin
  if TLabeledEdit(Sender).Text = cBlank then
  begin
    Associator := GetAssociatorFor(TLabeledEdit(Sender));
    if Assigned(Associator) then
      Associator.Position := 0
    else
      TLabeledEdit(Sender).Text := '0';
  end;
end;

procedure TfMain.FormShow(Sender: TObject);

var
  i: Integer;
begin
  ApplyUserPermissions;
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TLabeledEdit then
      // assume this type is only for params
      if TLabeledEdit(Components[i]).Parent = pPrintMargins then
      begin
        TLabeledEdit(Components[i]).Text := ReadWriteCfgValue(cPrintSection,
          GetParamName(TComponent(Components[i]).name), '');
        TLabeledEdit(Components[i]).OnChange := onEditValueChange;
      end;
  RestoreAppParams;
  SetLength(FChangedCmp, 0);
  pcMain.ActivePage := tsPaySlips;
  Caption := Application.Title;
  Caption := dm.GetAppVersionStr + ' / ' + Caption + ' [' + dm.oSession.Server +
    '] / ' + GetEnvironmentVariable('username') + ' / ' + GetPrivilegeName;
  FillPSDatesCombo;
  PrintInProgress := false;
{$IFDEF DEBUG}
  gridSlipsTree.OnDblClick := gridSlipsTreeDblClick;
{$ENDIF}
  // SplashIt('Очистка персональных эл.адресов уволенных...');
  dm.ospCleanPersMails.ExecProc;
  // SplashIt();
  GridsEh.GridDefaultDrawStyleEh.SelectionStyle := gsdsClassicEh;
end;

procedure TfMain.SetPreviewMargins(const left, top, right, bottom: string);
begin
  MainPreview.Document.Workbook.SetPrintMargins
    (TXlsMargins.Create(StrToFloat(left) / 100, StrToFloat(top) / 100,
    StrToFloat(right) / 100, StrToFloat(bottom) / 100, 0, 0));
  // zero header & footer ofsets
  MainPreview.InvalidatePreview;
end;

procedure TfMain.onEditValueChange(Sender: TObject);
var
  i: Integer;
begin
  if TLabeledEdit(Sender).Text = cBlank then
    exit; // field has been cleared, nothing to do
  if TControl(Sender).Parent = pPrintMargins then
    SetPreviewMargins(leLeft.Text, leTop.Text, leRight.Text, leBottom.Text);
  for i := 0 to length(FChangedCmp) - 1 do
    if FChangedCmp[i] = TComponent(Sender) then
      exit; // avoid to add the sames
  SetLength(FChangedCmp, length(FChangedCmp) + 1);
  FChangedCmp[length(FChangedCmp) - 1] := TComponent(Sender);
  TLabeledEdit(Sender).EditLabel.Font.Color := clRed;
end;

procedure TfMain.NoAutofit1Click(Sender: TObject);
begin
  MainPreview.AutofitPreview := TAutofitPreview.None;
  UpdateAutofitText;
end;

procedure TfMain.PanelZoomExit(Sender: TObject);
begin
  PanelZoom.Visible := false;
end;

procedure TfMain.pcControlChange(Sender: TObject);
begin
  if (pcControl.ActivePage = tsSendRules) then
  begin
    ehEmployees.Parent := tsList;
    ehEmployees.FieldColumns['pers_mail'].Visible := false;
    ehEmployees.FieldColumns['zipped_attach'].Visible := false;
    ehEmployees.FieldColumns['permission'].Visible := true;
    pStaffSelect.Parent := pcControl.ActivePage;
    SplitterStaff.Parent := pcControl.ActivePage;
    pcViewKindStaff.OnChange(nil);
    ehDeptPeople.Options := ehDeptPeople.Options - [dgMultiSelect];
    if not dm.mtOrgTreeBK.Active then
    begin
      dm.ospFillDeptsWithStaffBelow.Execute;
      dm.mtOrgTreeBK.Open;
    end;
  end
  else if pcControl.ActivePage = tsPersMails then
  begin
    ehEmployees.Parent := tsPersMails;
    ehEmployees.FieldColumns['pers_mail'].Visible := true;
    ehEmployees.FieldColumns['zipped_attach'].Visible := true;
    ehEmployees.FieldColumns['permission'].Visible := false;
    if not dm.otDeniedDomains.Active then
      dm.otDeniedDomains.Open;
  end
  else if pcControl.ActivePage = tsSSCAdmins then
    if not dm.ospGetSSCAdmins.Active then
    begin
      dm.ospGetSSCAdmins.ParamByName('PAPPID').AsInteger := AppVerRecord.major;
      dm.ospGetSSCAdmins.ParamByName('PPOLN').AsInteger := 1; // admin role
      dm.ospGetSSCAdmins.Open;
    end;
end;

procedure TfMain.pcControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if pcControl.ActivePage = tsControl then
    AllowChange := true;
end;

procedure TfMain.pcMainChange(Sender: TObject);
begin
  pSendSlipToMail.Visible := (pcMain.ActivePage = tsPaySlips) and
    pSendSlipToMail.Enabled;
  if pcMain.ActivePage = tsControl then
  begin
    pcControl.OnChange(nil);
    if pSendChoices.Visible then
      pSendChoices.Hide;
  end;
end;

procedure TfMain.pcViewKindStaffChange(Sender: TObject);
begin
  if pcViewKindStaff.ActivePage = tsList then
  begin
    dm.mtEmployees.Close;
    dm.oqEmployees.ParamByName('code').AsInteger := AppVerRecord.major;
    dm.oqEmployees.FilterSQL := ifthen(pcControl.ActivePage = tsSendRules,
      cBlank, 'PHONE IS NOT NULL');
    dm.mtEmployees.Open;
  end
  else
  begin
    dm.mtOrgTree.Close;
    dm.oqDeptPeople.FilterSQL := ifthen(pcControl.ActivePage = tsSendRules,
      cBlank, 'PHONE IS NOT NULL');
    dm.mtOrgTree.Open;
  end;
end;

procedure TfMain.pPrintMarginsExit(Sender: TObject);
begin
  pPrintMargins.Hide;
end;

procedure TfMain.ApplySlipParams(var xls: TXlsFile);
begin
  xls.PrintScale := TrackBarZoom.Position;
  xls.PrintGridLines := false;
  xls.PrintHeadings := false;
  xls.SetPrintMargins(TXlsMargins.Create(StrToFloat(leLeft.Text) / 100,
    StrToFloat(leTop.Text) / 100, StrToFloat(leRight.Text) / 100,
    StrToFloat(leBottom.Text) / 100, 0, 0)); // zero header & footer ofsets
end;

procedure TfMain.PrintSlipExecute(Sender: TObject);
  procedure printSingle(const n: Integer = 1; const cnt: Integer = 1);
  var
    xStream: TMemoryStream;
    xls: TXlsFile;
    doc: TFlexCelPrintDocument;
  begin
    SplashIt('Printing ' + IntToStr(n) + ' of ' + IntToStr(cnt));
    xStream := TMemoryStream.Create;
    // already positioned at the slip
    GetSlip(dm.mtSlips.FieldByName(cEmpID).AsInteger, vGMR, xStream);
    xls := TXlsFile.Create(xStream, false);
    try
      ApplySlipParams(xls);
      doc := TFlexCelPrintDocument.Create(xls);
      doc.BeginPrint;
      try
        doc.Print;
        dm.LogEvents(dm.mtSlips.FieldByName(cEmpID).AsInteger, 2, vGMR,
          printer.printers[printer.PrinterIndex]);
        // 2 = printing
      finally
        doc.EndPrint;
        FreeAndNil(doc);
      end;
    finally
      FreeAndNil(xls);
      FreeAndNil(xStream);
      SplashIt;
    end;
  end;

var
  i, sCount, bm: Integer;
begin
  if not gPrintingAllowed then
  begin
    ShowMessage('Операция печати недоступна до первичной рассылки РЛ ОЦО.');
    exit;
  end;
  if dm.mtSlips.Eof then
    exit;
  bm := dm.mtSlips.FieldByName(cEmpID).AsInteger;
  try
    PrintInProgress := true;
    gridSlipsTree.SaveVertPos(cEmpID);
    if not ToolButtonUseDefPrinter.Down then
      if not PrintDialog.Execute then
        exit;
    sCount := gridSlipsTree.SelectedRows.Count;
    if sCount = 0 then
      printSingle()
    else
    begin
      for i := 0 to sCount - 1 do
      begin
        gridSlipsTree.DataSource.DataSet.GotoBookmark
          (TBookmark(gridSlipsTree.SelectedRows[i]));
        printSingle(i + 1, sCount);
      end;
      gridSlipsTree.SelectedRows.Clear;
    end;
  finally
    dm.mtSlips.Refresh;
    // gridSlipsTree.OptimizeAllColsWidth();
    gridSlipsTree.DataSource.DataSet.Locate(cEmpID, bm, []);
    gridSlipsTree.RestoreVertPos(cEmpID);
    PrintInProgress := false;
  end;
end;

procedure TfMain.pSendChoicesEnter(Sender: TObject);
begin
  rgPersonCaseClick(Sender);
end;

procedure TfMain.pSendChoicesExit(Sender: TObject);
begin
  pSendChoices.Hide;
end;

procedure TfMain.ShowSlipExecute(Sender: TObject);
  function IsManagerialSlip(const EmpID, ForEmployeeID: Integer): Boolean;
  begin
    result := false;
    try
      dm.oqIsManagerSlip.ParamByName('EmpID').AsInteger := EmpID;
      dm.oqIsManagerSlip.ParamByName('EmpFrom').AsInteger := ForEmployeeID;
      dm.oqIsManagerSlip.Open;
      if dm.oqIsManagerSlip.Fields[0].AsInteger = 1 then // miss dept manager
        result := true;
    finally
      dm.oqIsManagerSlip.Close;
    end;
  end;

var
  xf: TXlsFile;
  ImgExport: TFlexCelImgExport;
  xStream: TMemoryStream;
  EmpID: Integer;
begin
  if not gPrintingAllowed then
  begin
    ShowMessage('Просмотр РЛ недоступен до первичной рассылки РЛ ОЦО.');
    exit;
  end;
  if dm.mtSlips.Eof then
    exit;
  pMoveInSelection.Visible := (gridSlipsTree.SelectedRows.Count > 0);
  EmpID := dm.mtSlips.FieldByName(cEmpID).AsInteger;
  if gUserPoln = 2 then // manager / delegate
    if IsManagerialSlip(EmpID, gUserID) then
      exit;
  xStream := TMemoryStream.Create;
  try
    dm.ospSlips.Locate(cEmpID, EmpID, []);
    GetSlip(EmpID, vGMR, xStream);
    xf := TXlsFile.Create(xStream, false);
    xf.PrintToFit := true;
    xf.PrintNumberOfHorizontalPages := 1;
    xf.PrintNumberOfVerticalPages := 0;
    ImgExport := TFlexCelImgExport.Create(xf, false);
    ImgExport.AllVisibleSheets := false;
    MainPreview.Document := ImgExport;
    xf.FormulaReferenceStyle := TReferenceStyle.R1C1;
    pSlipPreview.Show;
    Splitter2.Show;
    SetPreviewMargins(leLeft.Text, leTop.Text, leRight.Text, leBottom.Text);
    PreviewScaleChange(nil, TrackBarZoom.Position);
    ShowSlip.Enabled := false;
    HideSlip.Enabled := true;
  finally
    FreeAndNil(xStream);
  end;
end;

procedure TfMain.ToolButtonUseDefPrinterClick(Sender: TObject);
begin
  if ToolButtonUseDefPrinter.Down then
    ToolButtonUseDefPrinter.Caption := printer.printers[printer.PrinterIndex]
  else
    ToolButtonUseDefPrinter.Caption := 'Принтер по умолчанию';
end;

procedure TfMain.TrackBarZoomChange(Sender: TObject);
begin
  if (FChangingZoom) then
    exit; // avoid recursive calls.
  PreviewScaleChange(nil, TrackBarZoom.Position);
end;

procedure TfMain.TrackBarZoomEnter(Sender: TObject);
begin
  PanelZoom.SetFocus;
end;

procedure TfMain.UpdateZoom;
begin
  ActionZoom.Caption := IntToStr(round(MainPreview.Zoom * 100)) + '%';
  if MainPreview.AutofitPreview = TAutofitPreview.None then
    UpdateAutofitText;
  FChangingZoom := true;
  try
    TrackBarZoom.Position := round(MainPreview.Zoom * 100);
  finally
    FChangingZoom := false;
  end;
end;

procedure TfMain.UpDownLeftChanging(Sender: TObject; var AllowChange: Boolean);
var
  Associate: TLabeledEdit;
  pos: Integer;
begin
  if not Assigned(TUpDown(Sender).Associate) then
  begin
    if TUpDown(Sender) = UpDownLeft then
      Associate := leLeft
    else if TUpDown(Sender) = UpDownTop then
      Associate := leTop
    else if TUpDown(Sender) = UpDownRight then
      Associate := leRight
    else if TUpDown(Sender) = UpDownBottom then
      Associate := leBottom;
    if TUpDown(Sender).Position <> StrToInt(Associate.Text) then
    begin
      pos := StrToInt(Associate.Text);
      TUpDown(Sender).Associate := Associate;
      TUpDown(Sender).Position := pos;
    end;
  end;
  AllowChange := true;
end;

procedure TfMain.UpdateAutofitText;
begin
  case MainPreview.AutofitPreview of
    TAutofitPreview.None:
      ActionAutofit.Caption := NoAutofit1.Caption;
    TAutofitPreview.Width:
      ActionAutofit.Caption := FittoWidth1.Caption;
    TAutofitPreview.Height:
      ActionAutofit.Caption := FittoHeight1.Caption;
    TAutofitPreview.Full:
      ActionAutofit.Caption := FittoPage1.Caption;
  end;
end;

function TfMain.ReadWriteCfgValue(const group, name: string;
  const pValue: string = ''; const mode: char = 'r'): string;
begin
  result := pValue;
  try
    if not dm.oSession.Connected then
      dm.oSession.Connect;
    if mode = 'r' then
    begin
      if dm.oqGetCFGValue.Active then
        dm.oqGetCFGValue.Close;
      dm.oqGetCFGValue.ParamByName('exename').AsString :=
        ExtractFileName(Application.ExeName);
      dm.oqGetCFGValue.ParamByName('cgroup').AsString := UpperCase(group);
      dm.oqGetCFGValue.ParamByName('cname').AsString := UpperCase(name);
      dm.oqGetCFGValue.ParamByName('cUser').AsString := gUserName;
      dm.oqGetCFGValue.Open;
      if dm.oqGetCFGValue.RecordCount > 0 then
        result := dm.oqGetCFGValue.Fields[0].AsString;
    end
    else
    begin
      dm.ospSetCfgValue.ParamByName('pApp').AsString :=
        ExtractFileName(Application.ExeName);
      dm.ospSetCfgValue.ParamByName('pgroup').AsString := UpperCase(group);
      dm.ospSetCfgValue.ParamByName('pname').AsString := UpperCase(name);
      dm.ospSetCfgValue.ParamByName('pUser').AsString := gUserName;
      dm.ospSetCfgValue.ParamByName('pvalue').AsString := pValue;
      dm.ospSetCfgValue.ExecSQL;
    end;
  finally
    dm.oqGetCFGValue.Close;
    dm.ospSetCfgValue.Close;
  end;
end;

procedure TfMain.RestoreAppParams;
begin
  TrackBarZoom.Position := StrToInt(ReadWriteCfgValue('PRINT', 'SCALE', '100'));
  FHelpFile := ReadWriteCfgValue('HELPFILE', IntToStr(gUserPoln), '');
{$IFDEF DEBUG}
  FxTemplate := ReadWriteCfgValue('FILE', 'SLIP_TEMPLATE', '');
  FRcvrDevTest := ReadWriteCfgValue('MAIL', 'DEVRECIEVER', '');
{$ELSE}
  FxTemplate := dm.oSession.ExecProc('TYPES.GET_PATH_FILE',
    [AppVerRecord.major, 1]);
  FRcvrDevTest := ReadWriteCfgValue('Mail', 'TESTRECIEVER', '');
{$ENDIF}
  if not FileExists(FxTemplate) then
    ShowMessage('Не найден шаблон РЛ:' + sLineBreak + FxTemplate + sLineBreak +
      'Проверьте настройки приложения!');
  FIsProdEnvironment := dm.IsProdEnvironment;
end;

procedure TfMain.rgPersonCaseClick(Sender: TObject);
begin
  chkSlipsGrouping.Enabled := (rgPersonCase.ItemIndex > 0) and
    (gridSlipsTree.SelectedRows.Count > 1);
  chkCombineSlipsToOneFile.Enabled := chkSlipsGrouping.Enabled and
    chkSlipsGrouping.Checked;
end;

procedure TfMain.GetGluedSlip(const IDs: TArray<Integer>; pageBreaks: Boolean;
  var result: TMemoryStream);
var
  xStream: TMemoryStream;
  xFileIn, xFileOut: TXlsFile;
  i, colsCount: Integer;
begin
  xFileOut := TXlsFile.Create(false);
  xStream := TMemoryStream.Create;
  try
    xFileOut.Open(FxTemplate);
    xFileOut.ActiveSheet := 1;
    colsCount := xFileOut.ColCountInRow(1);
    xFileOut.ActiveSheet := 2;
    xFileOut.DeleteSheet(1);
    xFileOut.ClearSheet;
    for i := 0 to length(IDs) - 1 do
    begin
      xStream.Clear;
      GetSlip(IDs[i], vGMR, xStream);
      xFileIn := TXlsFile.Create(xStream, false);
      try
        xFileOut.InsertAndCopyRange(TXlsCellRange.Create(1, 1, xFileIn.RowCount,
          colsCount), xFileOut.RowCount + 2, 1, 1,
          TFlxInsertMode.ShiftRangeDown, TRangeCopyMode.All, xFileIn, 1);
        if pageBreaks then
          xFileOut.InsertHPageBreak(xFileOut.RowCount);
      finally
        xFileOut.CopyColFormats(xFileIn, 1, 1, 1, colsCount);
        FreeAndNil(xFileIn);
      end;
    end;
  finally
    xFileOut.SelectCell(1, 1, true);
    ApplySlipParams(xFileOut);
    xFileOut.Save(result);
    FreeAndNil(xFileOut);
    result.Position := 0;
  end;
end;

procedure TfMain.GetGluedSlip(const IDs: string; pageBreaks: Boolean;
  var result: TMemoryStream);
var
  ts: TStringList;
  i: Integer;
  iArray: TArray<Integer>;
begin
  ts := TStringList.Create;
  ts.Delimiter := ',';
  ts.DelimitedText := IDs;
  for i := 0 to ts.Count - 1 do
    if ts[i] <> cBlank then
    begin
      SetLength(iArray, length(iArray) + 1);
      iArray[length(iArray) - 1] := StrToInt(ts[i]);
    end;
  GetGluedSlip(iArray, pageBreaks, result);
  FreeAndNil(ts);
end;

procedure TfMain.ProtectSlip(var xStream: TMemoryStream;
  const reciever: string);
var
  book: TExcelFile;
begin
  book := TXlsFile.Create(xStream, false);
  book.Protection.OpenPassword := ifthen(reciever = cBlank, cBlank,
    dm.GetPINForMail(reciever));
  xStream.Clear;
  book.Save(xStream);
  xStream.Position := 0;
  FreeAndNil(book);
end;

procedure TfMain.BufferizeSlip(var xStream: TMemoryStream;
  const reciever, note, SlipFileName: string; const GMR, EmpID: Integer);
begin
  ProtectSlip(xStream, reciever);
  dm.oSQLBuffSlip.ParamByName('SlipReciever').AsString := reciever;
  dm.oSQLBuffSlip.ParamByName('SlipGMR').AsInteger := GMR;
  dm.oSQLBuffSlip.ParamByName('EmpID').AsInteger := EmpID;
  dm.oSQLBuffSlip.ParamByName('SlipNote').AsString := note;
  dm.oSQLBuffSlip.ParamByName('SlipFileName').AsString := SlipFileName;
  dm.oSQLBuffSlip.ParamByName('pSlipData').LoadFromStream(xStream, ftBlob);
  dm.oSQLBuffSlip.Execute;
end;

end.
