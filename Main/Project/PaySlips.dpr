program PaySlips;

uses
  Windows,
  Vcl.Forms,
  System.SysUtils,
  Vcl.dialogs,
{$IFNDEF DEBUG}
  System.SyncObjs, // defines TMutex
{$ENDIF}
  main in 'main.pas' {fMain} ,
  shellExec in '..\..\..\..\Common\Delphi Components\Main\Common\shellExec.pas',
  ufrmLogin in
    '..\..\..\..\Common\Delphi Components\Main\Common\ufrmLogin.pas' {frmLogin} ,
  uDM in 'uDM.pas' {dm: TDataModule} ,
  Splash in '..\..\..\..\Common\Delphi Components\Main\Common\Splash.pas' {fSplash};

{$R *.res}
{$SETPEOPTFLAGS IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}

var
  AccessGranted: boolean = false;
{$IFNDEF DEBUG}
  AppMutex: TMutex = nil;
  MutexErr: Integer = 0;

procedure CheckSecondInstance;
begin
  AppMutex := TMutex.Create(nil, True, dm.GetAppVersionStr);
  MutexErr := GetLastError;
  if MutexErr <> ERROR_SUCCESS then
    ShowMessage('Приложение уже запущено.');
end;
{$ENDIF}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.Title := 'Рассылка расчетных листков';
{$IFNDEF DEBUG}
  CheckSecondInstance;
  try
    if MutexErr = ERROR_SUCCESS then
{$ENDIF}
    begin
      with TfrmLogin.Create(Application) do
      begin
        ProgramTitle := Application.Title;
        ProgramNum := AppVerRecord.major;
        ProgramVer := AppVerRecord.minor;
        FillEditsByAppParam;
        RegSession := dm.oSession;
        if not TryConnectAuto then
          Free
        else
        begin
          gUserID := dm.GetUserID(UserLNOM);
          gUserPoln := UserPoln;
          Free;
          if gUserPoln = 2 then
            case dm.GetMgrHaveStaffToShow(gUserID) of
              (-1): ShowMessage
                ('У вас нет в подчинении действующего персонала.');
              (-2): ShowMessage('Вам ничего не делегировано.' + slineBreak +
                'Обратитесь к своему куратору из ОЦО.');
            else
              AccessGranted := true;
            end
          else
            AccessGranted := true;
          if AccessGranted then
          begin
            Application.CreateForm(TfMain, fMain);
            Application.Run;
          end;
        end;
      end;
    end;
{$IFNDEF DEBUG}
  finally
    if Assigned(AppMutex) then
      AppMutex.Free;
  end;
{$ENDIF}

end.
