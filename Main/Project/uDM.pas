unit uDM;

interface

uses
  Windows, System.SysUtils, System.Classes, OraCall, Data.DB, DBAccess, Ora,
  DALoader, StrUtils,
  OraLoader, MemDS, MemTableDataEh, DataDriverEh, MemTableEh, EhlibMTE,
  System.UITypes, System.Types, OraSmart;

type
  Tdm = class(TDataModule)
    oSession: TOraSession;
    oqGetLEName: TOraQuery;
    oqGetCFGValue: TOraQuery;
    oqGetPrivName: TOraQuery;
    oqEmployees: TOraQuery;
    oqEmployeesEMP_ID: TFloatField;
    oqEmployeesFULLNAME: TStringField;
    oqEmployeesCEX: TStringField;
    oqEmployeesTABN: TIntegerField;
    odsEmployees: TOraDataSource;
    mtEmployees: TMemTableEh;
    mtEmployeesEMP_ID: TFloatField;
    mtEmployeesFULLNAME: TStringField;
    mtEmployeesCEX: TStringField;
    mtEmployeesTABN: TIntegerField;
    dsdEmployees: TDataSetDriverEh;
    oqOrgTree: TOraQuery;
    oqOrgTreeBU: TStringField;
    oqOrgTreeDEPT_NAME: TStringField;
    oqOrgTreeCEX: TStringField;
    oqOrgTreeDEPT_CODE: TIntegerField;
    odsOrgTree: TOraDataSource;
    mtOrgTree: TMemTableEh;
    mtOrgTreeBU: TStringField;
    mtOrgTreeDEPT_NAME: TStringField;
    mtOrgTreeCEX: TStringField;
    mtOrgTreeDEPT_CODE: TIntegerField;
    dsdOrgTree: TDataSetDriverEh;
    odsDeptPeople: TOraDataSource;
    oqDeptPeople: TOraQuery;
    oqDeptPeopleFULLNAME: TStringField;
    oqDeptPeopleTABN: TIntegerField;
    oqDeptPeopleNUM_UNIT: TIntegerField;
    oqDeptPeopleEMP_ID: TFloatField;
    ospSendBufferedSlip: TOraStoredProc;
    oqOrgTreeBK: TOraQuery;
    odsOrgTreeBK: TOraDataSource;
    mtOrgTreeBK: TMemTableEh;
    dsdOrgTreeBK: TDataSetDriverEh;
    oqOrgTreeBKKODPODR: TIntegerField;
    oqOrgTreeBKPODR_TOP: TIntegerField;
    oqOrgTreeBKNAME_UNIT: TStringField;
    oqOrgTreeBKSHOP: TStringField;
    oqOrgTreeBKN_ORDER: TIntegerField;
    oqOrgTreeBKEMP_ID: TFloatField;
    oqOrgTreeBKMANAGER: TStringField;
    mtOrgTreeBKKODPODR: TIntegerField;
    mtOrgTreeBKPODR_TOP: TIntegerField;
    mtOrgTreeBKNAME_UNIT: TStringField;
    mtOrgTreeBKSHOP: TStringField;
    mtOrgTreeBKN_ORDER: TIntegerField;
    mtOrgTreeBKEMP_ID: TFloatField;
    mtOrgTreeBKMANAGER: TStringField;
    oqOrgTreeBKDEPUTY_NAME: TStringField;
    oqOrgTreeBKDEPUTY_ID: TFloatField;
    mtOrgTreeBKDEPUTY_NAME: TStringField;
    mtOrgTreeBKDEPUTY_ID: TFloatField;
    ospFillAllowedEmps: TOraStoredProc;
    oqUserID: TOraQuery;
    mtSlips: TMemTableEh;
    dsdSlips: TDataSetDriverEh;
    odsSlips: TOraDataSource;
    oSQLAddEmpToDelegates: TOraSQL;
    oSQLRemoveEmpFromDelegates: TOraSQL;
    oqEmployeesDEPT_CODE: TFloatField;
    mtEmployeesDEPT_CODE: TFloatField;
    oqOrgTreeBKHAVE_STAFF: TFloatField;
    mtOrgTreeBKHAVE_STAFF: TFloatField;
    ospSlips: TOraStoredProc;
    ospSendSlipsGroup: TOraStoredProc;
    ospRecordLogEvents: TOraStoredProc;
    ospFillDeptsWithStaffBelow: TOraStoredProc;
    oqIsManagerSlip: TOraQuery;
    oqEmployeesPERMISSION: TFloatField;
    mtEmployeesPERMISSION: TFloatField;
    oqDeptPeoplePERMISSION: TFloatField;
    oqOrgTreeBKACTIVE: TFloatField;
    mtOrgTreeBKACTIVE: TFloatField;
    oqOrgTreeBKMANAGER_PRM: TFloatField;
    oqOrgTreeBKDELEGATE_PRM: TFloatField;
    mtOrgTreeBKMANAGER_PRM: TFloatField;
    mtOrgTreeBKDELEGATE_PRM: TFloatField;
    mtSlipsPODR_TOP: TIntegerField;
    mtSlipsKODPODR: TIntegerField;
    mtSlipsSHOP: TFloatField;
    mtSlipsTABN: TFloatField;
    mtSlipsFIO: TStringField;
    mtSlipsNAME_UNIT: TStringField;
    mtSlipsLAST_MAILED: TDateTimeField;
    mtSlipsLAST_PRINTED: TDateTimeField;
    mtSlipsPROTECTED_EMP: TFloatField;
    mtSlipsEMP_ID: TFloatField;
    mtSlipsDATA_UVOL: TDateTimeField;
    mtSlipsSMTP: TStringField;
    mtSlipsMANAGER_ID: TFloatField;
    mtSlipsMANAGER_NAME: TStringField;
    mtSlipsDEPUTY_NAME: TStringField;
    mtSlipsDEPUTY_ID: TFloatField;
    ospSetCfgValue: TOraStoredProc;
    oqGetPINforMail: TOraQuery;
    ospBuffSlip: TOraStoredProc;
    ospFlushBuffSlips: TOraStoredProc;
    oqGetSlipReciever: TOraQuery;
    oSQLBuffSlip: TOraSQL;
    ospGetDates: TOraStoredProc;
    ospGetSlipStat: TOraStoredProc;
    ospGetSlipTab: TOraStoredProc;
    ospGetDatesGOD_MESR: TIntegerField;
    ospGetDatesPS_DATE: TDateTimeField;
    ospGetDatesMN: TStringField;
    ospGetSlipTabDAYS: TStringField;
    ospGetSlipTabHOURS: TStringField;
    ospGetSlipTabMESN: TStringField;
    ospGetSlipTabVOPL: TStringField;
    ospGetSlipTabPAY_DESCR: TStringField;
    ospGetSlipStatCOMPANY: TStringField;
    ospGetSlipStatFIO: TStringField;
    ospGetSlipStatTABN: TIntegerField;
    ospGetSlipStatSHOP: TStringField;
    ospGetSlipStatFIRM_ID: TFloatField;
    ospGetSlipStatNAME_UNIT: TStringField;
    ospGetSlipStatNAME_PROF: TStringField;
    ospGetSlipStatWAGE: TFloatField;
    ospGetSlipStatPL_DAYS: TIntegerField;
    ospGetSlipStatPL_HOURS: TIntegerField;
    ospGetSlipStatSUMMA_13: TFloatField;
    ospGetSlipStatSUMMA_30: TFloatField;
    ospGetSlipStatSUMMA_35: TFloatField;
    ospGetSlipStatPRIV_P: TFloatField;
    ospGetSlipStatTAX_13: TFloatField;
    ospGetSlipStatTAX_30: TFloatField;
    ospGetSlipStatTAX_35: TFloatField;
    ospGetSlipStatPRIV_CH: TFloatField;
    ospGetSlipStatTAG: TIntegerField;
    ospGetSlipStatSMONTH: TStringField;
    ospGetSlipStatSYEAR: TStringField;
    ospSlipsPODR_TOP: TIntegerField;
    ospSlipsKODPODR: TIntegerField;
    ospSlipsSHOP: TFloatField;
    ospSlipsTABN: TIntegerField;
    ospSlipsEMP_ID: TFloatField;
    ospSlipsFIO: TStringField;
    ospSlipsNAME_UNIT: TStringField;
    ospSlipsLAST_MAILED: TDateTimeField;
    ospSlipsLAST_PRINTED: TDateTimeField;
    ospSlipsPROTECTED_EMP: TIntegerField;
    ospSlipsDATA_UVOL: TDateTimeField;
    ospSlipsSMTP: TStringField;
    ospSlipsMANAGER_ID: TFloatField;
    ospSlipsMANAGER_NAME: TStringField;
    ospSlipsDEPUTY_NAME: TStringField;
    ospSlipsDEPUTY_ID: TFloatField;
    ospSlipsHAVEMAIL: TFloatField;
    mtSlipsHAVEMAIL: TFloatField;
    ospGetSlipTabPRC: TFloatField;
    ospGetSlipTabAMOUNT: TFloatField;
    ospGetMailsForGrouped: TOraStoredProc;
    oqSlipLog: TOraQuery;
    odsSlipLog: TOraDataSource;
    oqSlipLogACTION_DATE: TDateTimeField;
    oqSlipLogACTOR_NAME: TStringField;
    oqSlipLogACTION: TStringField;
    oqIsSlipSendable: TOraQuery;
    ospSlipsMAILS_COUNT: TFloatField;
    ospSlipsPRINT_COUNT: TFloatField;
    mtSlipsMAILS_COUNT: TFloatField;
    mtSlipsPRINT_COUNT: TFloatField;
    oqMgrHaveStaffToShow: TOraQuery;
    oqIsPrintingAllowedForMgr: TOraQuery;
    oqEmployeesPERS_MAIL: TStringField;
    mtEmployeesPERS_MAIL: TStringField;
    oqEmployeesHAVE_CORP_MAIL: TFloatField;
    mtEmployeesHAVE_CORP_MAIL: TFloatField;
    oqEmployeesZIPPED_ATTACH: TFloatField;
    ospSetPersMail: TOraStoredProc;
    mtEmployeesZIPPED_ATTACH: TFloatField;
    oqSlipLogDESTINATION: TStringField;
    ospCleanPersMails: TOraStoredProc;
    otDeniedDomains: TOraTable;
    odsDeniedDomains: TOraDataSource;
    ospSendBufferedSlips: TOraStoredProc;
    oqIsProdEnv: TOraQuery;
    ospSetSSCRespAlone: TOraStoredProc;
    ospGetSSCAdmins: TOraStoredProc;
    odsGetSSCAdmins: TOraDataSource;
    ospGetSSCAdminsLNOM: TIntegerField;
    ospGetSSCAdminsEMP_ID: TFloatField;
    ospGetSSCAdminsFIO: TStringField;
    ospGetSSCAdminsCEX: TStringField;
    ospGetSSCAdminsTABN: TIntegerField;
    ospGetSSCAdminsNAIMPOL: TStringField;
    ospGetSSCAdminsSELECTED: TFloatField;
    ospGetSSCforEmp: TOraStoredProc;
    procedure mtDatesAfterScroll(DataSet: TDataSet);
    procedure mtSlipsAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure otAppConfigAfterPost(DataSet: TDataSet);
    // procedure ospSlipsCalcFields(DataSet: TDataSet);
  private
    procedure GetAppVersion;
    function IsPrintingAllowedForMgr(const EmpID, GMR: integer): boolean;
  public
    function GetUserID(const uLNOM: integer): integer;
    function GetAppVersionStr: string;
    procedure AddEmployeeToDelegates(const EmpID, DeptCode: integer);
    procedure RemoveEmployeeFromDelegates(const EmpID, DeptCode: integer);
    function SendBufferedSlips: boolean;
    function SendBufferedSlip(const EmpID: integer): boolean;
    function SendSlipsGroup(const header, body: string;
      CompressIt: integer = 0): integer;
    function SlipIsSendable(const EmpID, PersonCase: integer): boolean;
    procedure saveGluedSlips(const xStream: TMemoryStream;
      const slipsdate: TDate; const reciever, notes: string);

    procedure LogEvents(const IDList: string;
      const ActionType, GMR: integer; const Dest: string); overload;
    procedure LogEvents(const SlipID, ActionType, GMR: integer; const Dest: string); overload;
    function GetPINForMail(const mail: string): string;
    function GetSlipReciever(const EmpID, PersonCase: integer): string;
    function GetMgrHaveStaffToShow(const EmpID: integer): integer;
    function IsProdEnvironment: boolean;
  end;

var
  dm: Tdm;
  gUserPoln: integer;
  gUserID: integer; // EMP_ID
  gPrintingAllowed: boolean;
  gUserName: string;
  AppVerRecord: record major, minor, release, build: Word;
end;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }
uses main, Splash;
{$R *.dfm}

{ Tdm }
function Tdm.GetPINForMail(const mail: string): string;
begin
  oqGetPINforMail.close;
  oqGetPINforMail.paramByName('pMail').asstring := mail;
  oqGetPINforMail.Open;
  result := oqGetPINforMail.fields[0].asstring;
  oqGetPINforMail.close;
end;

function Tdm.GetUserID(const uLNOM: integer): integer;
begin
  oqUserID.paramByName('pLNOM').AsInteger := uLNOM;
  oqUserID.Open;
  result := oqUserID.FieldByName('emp_id').AsInteger;
  gUserName := oqUserID.FieldByName('login').asstring;
  oqUserID.close;
end;

procedure Tdm.LogEvents(const SlipID, ActionType, GMR: integer; const Dest: string);
begin
  LogEvents(IntToStr(SlipID), ActionType, GMR, Dest);
end;

procedure Tdm.LogEvents(const IDList: string; const ActionType, GMR: integer; const Dest: string);
begin
  dm.ospRecordLogEvents.paramByName('empids').AsString := IDList;
  dm.ospRecordLogEvents.paramByName('pgmr').AsInteger := GMR;
  dm.ospRecordLogEvents.paramByName('actiontype').AsInteger := ActionType;
  dm.ospRecordLogEvents.paramByName('dest').AsString := Dest;
  dm.ospRecordLogEvents.Execute;
end;

function Tdm.GetAppVersionStr: string;
begin
  if AppVerRecord.major <= 0 then
    GetAppVersion;
  result := Format('%d.%d.%d.%d', [AppVerRecord.major, AppVerRecord.minor,
    AppVerRecord.release, AppVerRecord.build]);
end;

function Tdm.GetMgrHaveStaffToShow(const EmpID: integer): integer;
begin
  oqMgrHaveStaffToShow.Params[0].AsInteger := EmpID;
  oqMgrHaveStaffToShow.Open;
  result := oqMgrHaveStaffToShow.fields[0].AsInteger;
  oqMgrHaveStaffToShow.close;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  GetAppVersion;
  dm.oqDeptPeople.paramByName('code').AsInteger := AppVerRecord.major;
  dm.oqEmployees.paramByName('code').AsInteger := AppVerRecord.major;
  dm.oqOrgTreeBK.paramByName('code').AsInteger := AppVerRecord.major;
end;

procedure Tdm.GetAppVersion;
var
  Exe: string;
  Size, Handle: DWORD;
  Buffer: TBytes;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  Size := GetFileVersionInfoSize(PChar(Exe), Handle);
  if Size = 0 then
    RaiseLastOSError;
  SetLength(Buffer, Size);
  if not GetFileVersionInfo(PChar(Exe), Handle, Size, Buffer) then
    RaiseLastOSError;
  if not VerQueryValue(Buffer, '\', Pointer(FixedPtr), Size) then
    RaiseLastOSError;
  AppVerRecord.major := LongRec(FixedPtr.dwFileVersionMS).Hi;
  AppVerRecord.minor := LongRec(FixedPtr.dwFileVersionMS).Lo;
  AppVerRecord.release := LongRec(FixedPtr.dwFileVersionLS).Hi;
  AppVerRecord.build := LongRec(FixedPtr.dwFileVersionLS).Lo;
end;

procedure Tdm.mtDatesAfterScroll(DataSet: TDataSet);
begin
  if Assigned(fmain) then
    if fmain.gridSlipsTree.Showing then
    begin
      SplashIt('Подготовка данных, подождите...');
      if fmain.pSlipPreview.Visible then
        fmain.HideSlipExecute(nil);
      mtSlips.close;
      fmain.vGMR := ospGetDates.FieldByName('god_mesr').AsInteger;
      ospSlips.paramByName('userrole').AsInteger := gUserPoln;
      ospSlips.paramByName('pGMR').AsInteger := fmain.vGMR;
      mtSlips.Open;
      // fmain.gridSlipsTree.OptimizeAllColsWidth();
      SplashIt;
      gPrintingAllowed := IsPrintingAllowedForMgr(gUserID,fmain.vGMR);
    end;
end;

function Tdm.IsPrintingAllowedForMgr(const EmpID, GMR: integer): boolean;
begin
  result := true;
  if gUserPoln = 2 then
  begin
    oqIsPrintingAllowedForMgr.paramByName('empid').AsInteger := EmpID;
    oqIsPrintingAllowedForMgr.paramByName('gmr').AsInteger := GMR;
    oqIsPrintingAllowedForMgr.Open;
    result := (oqIsPrintingAllowedForMgr.FieldByName('result').AsInteger = 1);
    oqIsPrintingAllowedForMgr.Close;
  end;
end;

function Tdm.IsProdEnvironment: boolean;
begin
  oqIsProdEnv.Open;
  result := (oqIsProdEnv.Fields[0].AsInteger = 1);
  oqIsProdEnv.Close;
end;

procedure Tdm.mtSlipsAfterScroll(DataSet: TDataSet);
begin
  if fmain.pSlipPreview.Visible and (not fmain.PrintInProgress) then
    fmain.ShowSlipExecute(nil);
  if fmain.gridSlipsTree.RowDetailPanel.Active then
    fmain.gridLogExit(nil);
end;

procedure Tdm.otAppConfigAfterPost(DataSet: TDataSet);
begin
  fmain.RestoreAppParams;
end;

function Tdm.SendBufferedSlip(const EmpID: integer): boolean;
begin
  result := true;
  try
    ospSendBufferedSlip.ParamByName('pempid').AsInteger := EmpID;
    ospSendBufferedSlip.Execute;
  except
    result := false;
  end;
end;

function Tdm.SendBufferedSlips: boolean;
begin
  result := true;
  try
    ospSendBufferedSlips.Execute;
  except
    result := false;
  end;
end;

function Tdm.SendSlipsGroup(const header, body: string;
  CompressIt: integer = 0): integer;
begin
  ospSendSlipsGroup.paramByName('header').asstring := header;
  ospSendSlipsGroup.paramByName('body').asstring := body;
  ospSendSlipsGroup.paramByName('compressIt').AsInteger := CompressIt;
  try
    ospSendSlipsGroup.Execute;
    result := ospSendSlipsGroup.paramByName('mailsBeenSent').AsInteger;
  except
    result := 0;
  end;
end;

function Tdm.SlipIsSendable(const EmpID, PersonCase: integer): boolean;
begin
  dm.oqIsSlipSendable.paramByName('empID').AsInteger := EmpID;
  dm.oqIsSlipSendable.paramByName('PersonCase').AsInteger := PersonCase;
  dm.oqIsSlipSendable.Open;
  result := dm.oqIsSlipSendable.fields[0].AsInteger = 1;
  dm.oqIsSlipSendable.close;
end;

procedure Tdm.AddEmployeeToDelegates(const EmpID, DeptCode: integer);
begin
  oSQLAddEmpToDelegates.paramByName('pEmpID').AsInteger := EmpID;
  oSQLAddEmpToDelegates.paramByName('pDeptCode').AsInteger := DeptCode;
  oSQLAddEmpToDelegates.Execute;
end;

procedure Tdm.RemoveEmployeeFromDelegates(const EmpID, DeptCode: integer);
begin
  oSQLRemoveEmpFromDelegates.paramByName('pEmpID').AsInteger := EmpID;
  oSQLRemoveEmpFromDelegates.paramByName('pDeptCode').AsInteger := DeptCode;
  oSQLRemoveEmpFromDelegates.Execute;
end;

procedure Tdm.saveGluedSlips(const xStream: TMemoryStream;
  const slipsdate: TDate; const reciever, notes: string);
begin
  oSQLBuffSlip.paramByName('pDate').AsDate := slipsdate;
  oSQLBuffSlip.paramByName('pReciever').asstring := reciever;
  oSQLBuffSlip.paramByName('pNote').asstring := notes;
  oSQLBuffSlip.paramByName('pData').LoadFromStream(xStream, ftBlob);
  oSQLBuffSlip.Execute;
end;

function Tdm.GetSlipReciever(const EmpID, PersonCase: integer): string;
begin
  dm.oqGetSlipReciever.paramByName('pEmpID').AsInteger := EmpID;
  dm.oqGetSlipReciever.paramByName('PersonCase').AsInteger := PersonCase;
  dm.oqGetSlipReciever.Open;
  result := dm.oqGetSlipReciever.fields[0].asstring;
  dm.oqGetSlipReciever.close;
end;

end.
