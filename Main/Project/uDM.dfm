object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 570
  Width = 892
  object oSession: TOraSession
    Options.KeepDesignConnected = False
    Username = 'timesheets'
    Server = 'd733'
    Connected = True
    LoginPrompt = False
    Schema = 'timesheets'
    Left = 32
    Top = 19
    EncryptedPassword = '92FF9EFF8CFF8CFF96FF89FF9AFFCDFFCFFFCEFFC6FF9DFF8AFF98FFDBFF'
  end
  object oqGetLEName: TOraQuery
    Session = oSession
    SQL.Strings = (
      'select name, sname from HR_FIRM where ID = :LE_id')
    Left = 32
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LE_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object oqGetCFGValue: TOraQuery
    Session = oSession
    SQL.Strings = (
      '  SELECT cvalue'
      '    FROM app_config'
      '   WHERE     LOWER (cappname) = LOWER ( :exename)'
      '         AND LOWER (CGROUP) = LOWER ( :cgroup)'
      '         AND LOWER (CNAME) = LOWER ( :cname)'
      '         AND (LOWER (cuser_login) IN (LOWER ( :cUser), '#39'0'#39'))'
      'ORDER BY cuser_login')
    Left = 32
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'exename'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'cgroup'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'cname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'cUser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object oqGetPrivName: TOraQuery
    Session = oSession
    SQL.Strings = (
      
        'select komment from W_Spravpoln where kodpril = :appcode and kod' +
        'pol = :rcode')
    FetchAll = True
    Filtered = True
    Left = 32
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'appcode'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'rcode'
        ParamType = ptInput
        Value = nil
      end>
  end
  object oqEmployees: TOraQuery
    UpdatingTable = 'PAYSLIPS_PERS_MAIL'
    KeyFields = 'EMP_ID'
    SQLUpdate.Strings = (
      'UPDATE PAYSLIPS_PERS_MAIL'
      'SET'
      '  EMAIL = :EMAIL'
      'WHERE'
      '  EMP_ID = :Old_EMP_ID')
    Session = oSession
    SQL.Strings = (
      'SELECT k.emp_id,'
      '         ABS (num_unit) dept_code,'
      '         GET_FIO_BK (k.emp_id) FullName,'
      '         CEX,'
      '         TABN,'
      '         Get_User_App_Permission ( :code, lnom) permission,'
      '         PM.EMAIL pers_mail, PM.ZIPPED_ATTACH,'
      
        '         (CASE WHEN K.SMTP IS NULL THEN 0 ELSE 1 END) have_corp_' +
        'mail'
      
        '    FROM w_kadr k LEFT OUTER JOIN payslips_pers_mail pm ON PM.EM' +
        'P_ID = K.EMP_ID'
      '   WHERE data_uvol IS NULL'
      'ORDER BY Fullname, CEX')
    FetchRows = 100
    FetchAll = True
    Filtered = True
    Left = 216
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'code'
        ParamType = ptInput
        Value = nil
      end>
    object oqEmployeesEMP_ID: TFloatField
      FieldName = 'EMP_ID'
      ReadOnly = True
      Required = True
    end
    object oqEmployeesFULLNAME: TStringField
      FieldName = 'FULLNAME'
      ReadOnly = True
      Size = 4000
    end
    object oqEmployeesCEX: TStringField
      FieldName = 'CEX'
      ReadOnly = True
      Size = 4
    end
    object oqEmployeesTABN: TIntegerField
      FieldName = 'TABN'
      ReadOnly = True
    end
    object oqEmployeesDEPT_CODE: TFloatField
      FieldName = 'DEPT_CODE'
      ReadOnly = True
    end
    object oqEmployeesPERMISSION: TFloatField
      FieldName = 'PERMISSION'
      ReadOnly = True
    end
    object oqEmployeesPERS_MAIL: TStringField
      FieldName = 'PERS_MAIL'
      Size = 100
    end
    object oqEmployeesHAVE_CORP_MAIL: TFloatField
      FieldName = 'HAVE_CORP_MAIL'
    end
    object oqEmployeesZIPPED_ATTACH: TFloatField
      FieldName = 'ZIPPED_ATTACH'
    end
  end
  object odsEmployees: TOraDataSource
    AutoEdit = False
    DataSet = mtEmployees
    Left = 144
    Top = 272
  end
  object mtEmployees: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdEmployees
    Left = 144
    Top = 224
    object mtEmployeesEMP_ID: TFloatField
      FieldName = 'EMP_ID'
      Required = True
    end
    object mtEmployeesFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Size = 92
    end
    object mtEmployeesCEX: TStringField
      FieldName = 'CEX'
      Size = 4
    end
    object mtEmployeesTABN: TIntegerField
      FieldName = 'TABN'
    end
    object mtEmployeesDEPT_CODE: TFloatField
      FieldName = 'DEPT_CODE'
    end
    object mtEmployeesPERMISSION: TFloatField
      FieldName = 'PERMISSION'
    end
    object mtEmployeesPERS_MAIL: TStringField
      FieldName = 'PERS_MAIL'
      Size = 100
    end
    object mtEmployeesHAVE_CORP_MAIL: TFloatField
      FieldName = 'HAVE_CORP_MAIL'
    end
    object mtEmployeesZIPPED_ATTACH: TFloatField
      FieldName = 'ZIPPED_ATTACH'
    end
  end
  object dsdEmployees: TDataSetDriverEh
    ProviderDataSet = oqEmployees
    Left = 216
    Top = 224
  end
  object oqOrgTree: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT DISTINCT NAME_BUSINESS_UNIT BU,'
      '                  TRIM (NAME_UNIT) DEPT_NAME,'
      '                  CEX,'
      '                  NUM_UNIT DEPT_CODE'
      '    FROM w_kadr'
      
        '   WHERE DEPT IS NOT NULL AND data_uvol IS NULL --AND PHONE IS N' +
        'OT NULL            '
      'ORDER BY CEX,'
      '         BU,'
      '         TRIM (NAME_UNIT)')
    FetchRows = 100
    FetchAll = True
    Filtered = True
    Left = 216
    Top = 384
    object oqOrgTreeBU: TStringField
      FieldName = 'BU'
      Size = 100
    end
    object oqOrgTreeDEPT_NAME: TStringField
      FieldName = 'DEPT_NAME'
      Size = 225
    end
    object oqOrgTreeCEX: TStringField
      FieldName = 'CEX'
      Size = 4
    end
    object oqOrgTreeDEPT_CODE: TIntegerField
      FieldName = 'DEPT_CODE'
    end
  end
  object odsOrgTree: TOraDataSource
    AutoEdit = False
    DataSet = mtOrgTree
    Left = 152
    Top = 336
  end
  object mtOrgTree: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdOrgTree
    ReadOnly = True
    Left = 216
    Top = 336
    object mtOrgTreeBU: TStringField
      FieldName = 'BU'
      Size = 100
    end
    object mtOrgTreeDEPT_NAME: TStringField
      FieldName = 'DEPT_NAME'
      Size = 225
    end
    object mtOrgTreeCEX: TStringField
      FieldName = 'CEX'
      Size = 4
    end
    object mtOrgTreeDEPT_CODE: TIntegerField
      FieldName = 'DEPT_CODE'
    end
  end
  object dsdOrgTree: TDataSetDriverEh
    ProviderDataSet = oqOrgTree
    Left = 152
    Top = 384
  end
  object odsDeptPeople: TOraDataSource
    AutoEdit = False
    DataSet = oqDeptPeople
    Left = 288
    Top = 336
  end
  object oqDeptPeople: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT k.Fam || '#39' '#39' || k.name || '#39' '#39' || k.otch FullName,'
      '         K.TABN,'
      '         K.NUM_UNIT,'
      '         EMP_ID,'
      '         Get_User_App_Permission ( :code, lnom) permission'
      '    FROM w_kadr k'
      '   WHERE K.DATA_UVOL IS NULL'
      'ORDER BY k.fam, k.name, k.otch')
    MasterSource = odsOrgTree
    MasterFields = 'DEPT_CODE'
    DetailFields = 'NUM_UNIT'
    FetchRows = 100
    FetchAll = True
    ReadOnly = True
    Filtered = True
    Left = 288
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'DEPT_CODE'
        ParamType = ptInput
        Value = nil
      end>
    object oqDeptPeopleFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Size = 92
    end
    object oqDeptPeopleTABN: TIntegerField
      FieldName = 'TABN'
    end
    object oqDeptPeopleNUM_UNIT: TIntegerField
      FieldName = 'NUM_UNIT'
    end
    object oqDeptPeopleEMP_ID: TFloatField
      FieldName = 'EMP_ID'
      Required = True
    end
    object oqDeptPeoplePERMISSION: TFloatField
      FieldName = 'PERMISSION'
    end
  end
  object ospSendBufferedSlip: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.SEND_SINGLE_BUFFERED_SLIP'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.SEND_SINGLE_BUFFERED_SLIP(:PEMPID);'
      'end;')
    Left = 640
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PAYSLIPS2.SEND_SINGLE_BUFFERED_SLIP'
  end
  object oqOrgTreeBK: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT v.*,'
      '       Get_User_App_Permission ( :code, V.EMP_ID) manager_prm,'
      
        '       Get_User_App_Permission ( :code, V.DEPUTY_ID) delegate_pr' +
        'm'
      '  FROM VW_ORG_TREE v')
    FetchRows = 1000
    FetchAll = True
    Filtered = True
    Left = 80
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'code'
        ParamType = ptInput
        Value = nil
      end>
    object oqOrgTreeBKKODPODR: TIntegerField
      FieldName = 'KODPODR'
      Required = True
    end
    object oqOrgTreeBKPODR_TOP: TIntegerField
      FieldName = 'PODR_TOP'
    end
    object oqOrgTreeBKNAME_UNIT: TStringField
      FieldName = 'NAME_UNIT'
      Size = 225
    end
    object oqOrgTreeBKSHOP: TStringField
      FieldName = 'SHOP'
      Size = 3
    end
    object oqOrgTreeBKN_ORDER: TIntegerField
      FieldName = 'N_ORDER'
    end
    object oqOrgTreeBKEMP_ID: TFloatField
      FieldName = 'EMP_ID'
    end
    object oqOrgTreeBKMANAGER: TStringField
      FieldName = 'MANAGER'
      Size = 4000
    end
    object oqOrgTreeBKDEPUTY_NAME: TStringField
      FieldName = 'DEPUTY_NAME'
      Size = 4000
    end
    object oqOrgTreeBKDEPUTY_ID: TFloatField
      FieldName = 'DEPUTY_ID'
    end
    object oqOrgTreeBKHAVE_STAFF: TFloatField
      FieldName = 'HAVE_STAFF'
    end
    object oqOrgTreeBKACTIVE: TFloatField
      FieldName = 'ACTIVE'
    end
    object oqOrgTreeBKMANAGER_PRM: TFloatField
      FieldName = 'MANAGER_PRM'
    end
    object oqOrgTreeBKDELEGATE_PRM: TFloatField
      FieldName = 'DELEGATE_PRM'
    end
  end
  object odsOrgTreeBK: TOraDataSource
    AutoEdit = False
    DataSet = mtOrgTreeBK
    Left = 16
    Top = 336
  end
  object mtOrgTreeBK: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdOrgTreeBK
    ReadOnly = True
    SortOrder = 'name_unit'
    TreeList.Active = True
    TreeList.KeyFieldName = 'kodpodr'
    TreeList.RefParentFieldName = 'podr_top'
    TreeList.DefaultNodeExpanded = True
    TreeList.DefaultNodeHasChildren = True
    Left = 80
    Top = 336
    object mtOrgTreeBKKODPODR: TIntegerField
      DisplayWidth = 10
      FieldName = 'KODPODR'
      Required = True
    end
    object mtOrgTreeBKPODR_TOP: TIntegerField
      DisplayWidth = 10
      FieldName = 'PODR_TOP'
    end
    object mtOrgTreeBKNAME_UNIT: TStringField
      DisplayWidth = 163
      FieldName = 'NAME_UNIT'
      Size = 225
    end
    object mtOrgTreeBKSHOP: TStringField
      DisplayWidth = 3
      FieldName = 'SHOP'
      Size = 3
    end
    object mtOrgTreeBKN_ORDER: TIntegerField
      DisplayWidth = 10
      FieldName = 'N_ORDER'
    end
    object mtOrgTreeBKEMP_ID: TFloatField
      DisplayWidth = 10
      FieldName = 'EMP_ID'
    end
    object mtOrgTreeBKMANAGER: TStringField
      DisplayWidth = 4000
      FieldName = 'MANAGER'
      Size = 4000
    end
    object mtOrgTreeBKDEPUTY_NAME: TStringField
      FieldName = 'DEPUTY_NAME'
      Size = 4000
    end
    object mtOrgTreeBKDEPUTY_ID: TFloatField
      FieldName = 'DEPUTY_ID'
    end
    object mtOrgTreeBKHAVE_STAFF: TFloatField
      FieldName = 'HAVE_STAFF'
    end
    object mtOrgTreeBKACTIVE: TFloatField
      FieldName = 'ACTIVE'
    end
    object mtOrgTreeBKMANAGER_PRM: TFloatField
      FieldName = 'MANAGER_PRM'
    end
    object mtOrgTreeBKDELEGATE_PRM: TFloatField
      FieldName = 'DELEGATE_PRM'
    end
  end
  object dsdOrgTreeBK: TDataSetDriverEh
    ProviderDataSet = oqOrgTreeBK
    Left = 16
    Top = 384
  end
  object ospFillAllowedEmps: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.FILL_EMPS_ALLOWED'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.FILL_EMPS_ALLOWED(:FOREMPID, :SLIPDATE, :EMP_COUNT);'
      'end;')
    Left = 296
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FOREMPID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'SLIPDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'EMP_COUNT'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'PAYSLIPS2.FILL_EMPS_ALLOWED'
  end
  object oqUserID: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT emp_id, LOWER (login_us) login'
      '  FROM w_kadr'
      ' WHERE LNOM = :pLNOM')
    Left = 32
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pLNOM'
        ParamType = ptInput
        Value = nil
      end>
  end
  object mtSlips: TMemTableEh
    Filtered = True
    FetchAllOnOpen = True
    Params = <>
    DataDriver = dsdSlips
    ReadOnly = True
    TreeList.KeyFieldName = 'kodpodr'
    TreeList.RefParentFieldName = 'podr_top'
    TreeList.DefaultNodeExpanded = True
    Left = 192
    Top = 120
    object mtSlipsPODR_TOP: TIntegerField
      FieldName = 'PODR_TOP'
    end
    object mtSlipsKODPODR: TIntegerField
      FieldName = 'KODPODR'
    end
    object mtSlipsSHOP: TFloatField
      FieldName = 'SHOP'
    end
    object mtSlipsTABN: TFloatField
      FieldName = 'TABN'
    end
    object mtSlipsFIO: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
    object mtSlipsNAME_UNIT: TStringField
      FieldName = 'NAME_UNIT'
      Size = 225
    end
    object mtSlipsLAST_MAILED: TDateTimeField
      FieldName = 'LAST_MAILED'
    end
    object mtSlipsLAST_PRINTED: TDateTimeField
      FieldName = 'LAST_PRINTED'
    end
    object mtSlipsPROTECTED_EMP: TFloatField
      FieldName = 'PROTECTED_EMP'
    end
    object mtSlipsEMP_ID: TFloatField
      FieldName = 'EMP_ID'
    end
    object mtSlipsDATA_UVOL: TDateTimeField
      FieldName = 'DATA_UVOL'
    end
    object mtSlipsSMTP: TStringField
      FieldName = 'SMTP'
      Size = 45
    end
    object mtSlipsMANAGER_ID: TFloatField
      FieldName = 'MANAGER_ID'
    end
    object mtSlipsMANAGER_NAME: TStringField
      FieldName = 'MANAGER_NAME'
      Size = 4000
    end
    object mtSlipsDEPUTY_NAME: TStringField
      FieldName = 'DEPUTY_NAME'
      Size = 4000
    end
    object mtSlipsDEPUTY_ID: TFloatField
      FieldName = 'DEPUTY_ID'
    end
    object mtSlipsHAVEMAIL: TFloatField
      FieldName = 'HAVEMAIL'
    end
    object mtSlipsMAILS_COUNT: TFloatField
      FieldName = 'MAILS_COUNT'
    end
    object mtSlipsPRINT_COUNT: TFloatField
      FieldName = 'PRINT_COUNT'
    end
  end
  object dsdSlips: TDataSetDriverEh
    KeyFields = 'ID'
    ProviderDataSet = ospSlips
    Left = 256
    Top = 120
  end
  object odsSlips: TOraDataSource
    AutoEdit = False
    DataSet = mtSlips
    Left = 256
    Top = 72
  end
  object oSQLAddEmpToDelegates: TOraSQL
    Session = oSession
    AutoCommit = True
    SQL.Strings = (
      'insert into payslips_dept_resp (emp_id,kodpodr)'
      'values (:pEmpID, :pDeptCode)')
    Left = 464
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pEmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pDeptCode'
        Value = nil
      end>
  end
  object oSQLRemoveEmpFromDelegates: TOraSQL
    Session = oSession
    AutoCommit = True
    SQL.Strings = (
      'delete from payslips_dept_resp'
      'where emp_id=:pEmpID and kodpodr = abs(:pDeptCode)')
    Left = 464
    Top = 366
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pEmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pDeptCode'
        ParamType = ptInput
        Value = nil
      end>
  end
  object ospSlips: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_SLIPS_LIST'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.GET_SLIPS_LIST(:PGMR, :USERROLE, :RESULT);'
      'end;')
    FetchRows = 3000
    FetchAll = True
    Filtered = True
    Left = 192
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PGMR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'USERROLE'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_SLIPS_LIST'
    object ospSlipsPODR_TOP: TIntegerField
      FieldName = 'PODR_TOP'
    end
    object ospSlipsKODPODR: TIntegerField
      FieldName = 'KODPODR'
    end
    object ospSlipsSHOP: TFloatField
      FieldName = 'SHOP'
    end
    object ospSlipsTABN: TIntegerField
      FieldName = 'TABN'
    end
    object ospSlipsEMP_ID: TFloatField
      FieldName = 'EMP_ID'
    end
    object ospSlipsFIO: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
    object ospSlipsNAME_UNIT: TStringField
      FieldName = 'NAME_UNIT'
      Size = 225
    end
    object ospSlipsLAST_MAILED: TDateTimeField
      FieldName = 'LAST_MAILED'
    end
    object ospSlipsLAST_PRINTED: TDateTimeField
      FieldName = 'LAST_PRINTED'
    end
    object ospSlipsPROTECTED_EMP: TIntegerField
      FieldName = 'PROTECTED_EMP'
    end
    object ospSlipsDATA_UVOL: TDateTimeField
      FieldName = 'DATA_UVOL'
    end
    object ospSlipsSMTP: TStringField
      FieldName = 'SMTP'
      Size = 45
    end
    object ospSlipsMANAGER_ID: TFloatField
      FieldName = 'MANAGER_ID'
    end
    object ospSlipsMANAGER_NAME: TStringField
      FieldName = 'MANAGER_NAME'
      Size = 4000
    end
    object ospSlipsDEPUTY_NAME: TStringField
      FieldName = 'DEPUTY_NAME'
      Size = 4000
    end
    object ospSlipsDEPUTY_ID: TFloatField
      FieldName = 'DEPUTY_ID'
    end
    object ospSlipsHAVEMAIL: TFloatField
      FieldName = 'HAVEMAIL'
    end
    object ospSlipsMAILS_COUNT: TFloatField
      FieldName = 'MAILS_COUNT'
    end
    object ospSlipsPRINT_COUNT: TFloatField
      FieldName = 'PRINT_COUNT'
    end
  end
  object ospSendSlipsGroup: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.SEND_SLIPS_GROUPED'
    Session = oSession
    SQL.Strings = (
      'begin'
      
        '  PAYSLIPS2.SEND_SLIPS_GROUPED(:HEADER, :BODY, :COMPRESSIT, :MAI' +
        'LSBEENSENT);'
      'end;')
    Left = 632
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'HEADER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'BODY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'COMPRESSIT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'MAILSBEENSENT'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'PAYSLIPS2.SEND_SLIPS_GROUPED'
  end
  object ospRecordLogEvents: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.RECORD_LOG_EVENTS'
    Session = oSession
    SQL.Strings = (
      'begin'
      
        '  PAYSLIPS2.RECORD_LOG_EVENTS(:EMPIDS, :PGMR, :ACTIONTYPE, :DEST' +
        ');'
      'end;')
    Left = 696
    Top = 376
    ParamData = <
      item
        DataType = ftString
        Name = 'EMPIDS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PGMR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'ACTIONTYPE'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftString
        Name = 'DEST'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end>
    CommandStoredProcName = 'PAYSLIPS2.RECORD_LOG_EVENTS'
  end
  object ospFillDeptsWithStaffBelow: TOraStoredProc
    StoredProcName = 'FILL_DEPTS_WITH_STAFF_BELOW'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  FILL_DEPTS_WITH_STAFF_BELOW;'
      'end;')
    Left = 464
    Top = 264
    CommandStoredProcName = 'FILL_DEPTS_WITH_STAFF_BELOW'
  end
  object oqIsManagerSlip: TOraQuery
    Session = oSession
    SQL.Strings = (
      
        'select PAYSLIPS2.Is_Managerial_Slip(:EmpID, :EmpFrom) result fro' +
        'm dual')
    Left = 552
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'EmpFrom'
        ParamType = ptInput
        Value = nil
      end>
  end
  object ospSetCfgValue: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.SET_CONFIG_PARAM'
    Session = oSession
    SQL.Strings = (
      'begin'
      
        '  PAYSLIPS2.SET_CONFIG_PARAM(:PAPP, :PGROUP, :PNAME, :PUSER, :PV' +
        'ALUE);'
      'end;')
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'PAPP'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PGROUP'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PNAME'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PUSER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PVALUE'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PAYSLIPS2.SET_CONFIG_PARAM'
  end
  object oqGetPINforMail: TOraQuery
    Session = oSession
    SQL.Strings = (
      
        'select PAYSLIPS2.GET_EMP_PIN(PAYSLIPS2.GET_EMPID_BY_MAIL(:pMail)' +
        ') PIN from dual')
    Left = 552
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pMail'
        ParamType = ptInput
        Value = nil
      end>
  end
  object ospBuffSlip: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.BUFFER_SLIP'
    Session = oSession
    SQL.Strings = (
      'begin'
      
        '  PAYSLIPS2.BUFFER_SLIP(:PEMPID, :PSLIPDATA, :PSLIPDATE, :PSLIPR' +
        'ECIEVER, :PSLIPNOTE, :PSLIPFILENAME);'
      'end;')
    AutoCommit = False
    Options.RequiredFields = False
    Left = 664
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftOraBlob
        Name = 'PSLIPDATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftDateTime
        Name = 'PSLIPDATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PSLIPRECIEVER'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PSLIPNOTE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PSLIPFILENAME'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end>
    CommandStoredProcName = 'PAYSLIPS2.BUFFER_SLIP'
  end
  object ospFlushBuffSlips: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.FLUSH_BUFFERED_SLIPS'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.FLUSH_BUFFERED_SLIPS;'
      'end;')
    Left = 736
    Top = 256
    CommandStoredProcName = 'PAYSLIPS2.FLUSH_BUFFERED_SLIPS'
  end
  object oqGetSlipReciever: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT payslips2.get_emp_mail ( :pEmpID,'
      '                              :PersonCase)'
      '          reciever'
      '  FROM DUAL')
    Left = 728
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pEmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PersonCase'
        ParamType = ptInput
        Value = nil
      end>
  end
  object oSQLBuffSlip: TOraSQL
    Session = oSession
    AutoCommit = True
    SQL.Strings = (
      'INSERT INTO payslips_to_send (reciever,'
      '                              slip_id,'
      '                              slip_gmr,'
      '                              slips_note,'
      '                              slip_name,'
      '                              slips_data)'
      '     VALUES ( :SlipReciever,'
      '             :EmpID,'
      '             :SlipGMR,'
      '             :SlipNote,'
      '             :SlipFileName,'
      '             :pSlipData)')
    Left = 600
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'SlipReciever'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'EmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'SlipGMR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'SlipNote'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'SlipFileName'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBlob
        Name = 'pSlipData'
        ParamType = ptInput
        Value = ''
      end>
  end
  object ospGetDates: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_SLIPS_DATES'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.GET_SLIPS_DATES(:RESULT);'
      'end;')
    FetchRows = 100
    FetchAll = True
    Filtered = True
    Left = 112
    Top = 112
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_SLIPS_DATES'
    object ospGetDatesGOD_MESR: TIntegerField
      FieldName = 'GOD_MESR'
    end
    object ospGetDatesPS_DATE: TDateTimeField
      FieldName = 'PS_DATE'
    end
    object ospGetDatesMN: TStringField
      FieldName = 'MN'
      Size = 13
    end
  end
  object ospGetSlipStat: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_SLIP_STAT'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.GET_SLIP_STAT(:PEMPID, :PGMR, :RESULT);'
      'end;')
    Left = 448
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PGMR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_SLIP_STAT'
    object ospGetSlipStatCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 250
    end
    object ospGetSlipStatFIO: TStringField
      FieldName = 'FIO'
      Size = 4000
    end
    object ospGetSlipStatTABN: TIntegerField
      FieldName = 'TABN'
    end
    object ospGetSlipStatSHOP: TStringField
      FieldName = 'SHOP'
      Size = 4
    end
    object ospGetSlipStatFIRM_ID: TFloatField
      FieldName = 'FIRM_ID'
    end
    object ospGetSlipStatNAME_UNIT: TStringField
      FieldName = 'NAME_UNIT'
      Size = 225
    end
    object ospGetSlipStatNAME_PROF: TStringField
      FieldName = 'NAME_PROF'
      Size = 200
    end
    object ospGetSlipStatWAGE: TFloatField
      FieldName = 'WAGE'
    end
    object ospGetSlipStatPL_DAYS: TIntegerField
      FieldName = 'PL_DAYS'
    end
    object ospGetSlipStatPL_HOURS: TIntegerField
      FieldName = 'PL_HOURS'
    end
    object ospGetSlipStatSUMMA_13: TFloatField
      FieldName = 'SUMMA_13'
    end
    object ospGetSlipStatSUMMA_30: TFloatField
      FieldName = 'SUMMA_30'
    end
    object ospGetSlipStatSUMMA_35: TFloatField
      FieldName = 'SUMMA_35'
    end
    object ospGetSlipStatPRIV_P: TFloatField
      FieldName = 'PRIV_P'
    end
    object ospGetSlipStatTAX_13: TFloatField
      FieldName = 'TAX_13'
    end
    object ospGetSlipStatTAX_30: TFloatField
      FieldName = 'TAX_30'
    end
    object ospGetSlipStatTAX_35: TFloatField
      FieldName = 'TAX_35'
    end
    object ospGetSlipStatPRIV_CH: TFloatField
      FieldName = 'PRIV_CH'
    end
    object ospGetSlipStatTAG: TIntegerField
      FieldName = 'TAG'
    end
    object ospGetSlipStatSMONTH: TStringField
      FieldName = 'SMONTH'
      Size = 8
    end
    object ospGetSlipStatSYEAR: TStringField
      FieldName = 'SYEAR'
      Size = 7
    end
  end
  object ospGetSlipTab: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_SLIP_TAB'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.GET_SLIP_TAB(:PEMPID, :PGMR, :RESULT);'
      'end;')
    FetchRows = 100
    FetchAll = True
    Left = 448
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PGMR'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_SLIP_TAB'
    object ospGetSlipTabDAYS: TStringField
      FieldName = 'DAYS'
      Size = 40
    end
    object ospGetSlipTabHOURS: TStringField
      FieldName = 'HOURS'
      Size = 40
    end
    object ospGetSlipTabMESN: TStringField
      FieldName = 'MESN'
      Size = 40
    end
    object ospGetSlipTabVOPL: TStringField
      FieldName = 'VOPL'
      Size = 4
    end
    object ospGetSlipTabPAY_DESCR: TStringField
      FieldName = 'PAY_DESCR'
      Size = 100
    end
    object ospGetSlipTabPRC: TFloatField
      FieldName = 'PRC'
    end
    object ospGetSlipTabAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
  end
  object ospGetMailsForGrouped: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_MAILS_FOR_GROUPED_SLIPS'
    Session = oSession
    SQL.Strings = (
      'begin'
      
        '  PAYSLIPS2.GET_MAILS_FOR_GROUPED_SLIPS(:PIDS, :PERSONCASE, :RES' +
        'ULT);'
      'end;')
    Left = 632
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'PIDS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PERSONCASE'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_MAILS_FOR_GROUPED_SLIPS'
  end
  object oqSlipLog: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT action_date,'
      '         get_fio_bk ( (SELECT emp_id'
      '                         FROM w_kadr'
      '                        WHERE login_us = actor),'
      '                     1) actor_name,'
      
        '         CASE action_type WHEN 1 THEN '#39'Mailed'#39' ELSE '#39'Printed'#39' EN' +
        'D action, Destination'
      '    FROM payslips_log'
      '   WHERE emp_id = :EmpId AND god_mesr = :pgmr'
      '   AND action_type in (1,2) -- ignore others'
      'ORDER BY action_date DESC')
    Left = 352
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EmpId'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pgmr'
        ParamType = ptInput
        Value = nil
      end>
    object oqSlipLogACTION_DATE: TDateTimeField
      FieldName = 'ACTION_DATE'
      Required = True
    end
    object oqSlipLogACTOR_NAME: TStringField
      FieldName = 'ACTOR_NAME'
      Size = 4000
    end
    object oqSlipLogACTION: TStringField
      FieldName = 'ACTION'
      Size = 7
    end
    object oqSlipLogDESTINATION: TStringField
      FieldName = 'DESTINATION'
      Size = 100
    end
  end
  object odsSlipLog: TOraDataSource
    DataSet = oqSlipLog
    Left = 360
    Top = 128
  end
  object oqIsSlipSendable: TOraQuery
    Session = oSession
    SQL.Strings = (
      
        'select payslips2.Is_Allowed_to_send ( :EmpID, :PersonCase) allow' +
        'ed from dual')
    Left = 728
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PersonCase'
        ParamType = ptInput
        Value = nil
      end>
  end
  object oqMgrHaveStaffToShow: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT payslips2.Get_Mgr_Have_Staff_To_Show (:EmpID) FROM DUAL')
    Left = 192
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EmpID'
        ParamType = ptInput
        Value = nil
      end>
  end
  object oqIsPrintingAllowedForMgr: TOraQuery
    Session = oSession
    SQL.Strings = (
      
        'SELECT payslips2.Is_Printing_Allowed_For_Mgr(:EmpID, :GMR) resul' +
        't FROM DUAL')
    Left = 328
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EmpID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'GMR'
        ParamType = ptInput
        Value = nil
      end>
  end
  object ospSetPersMail: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.SET_EMP_PERSONAL_MAIL'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.SET_EMP_PERSONAL_MAIL(:PEMPID, :PMAIL, :PZIP);'
      'end;')
    Left = 368
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'PMAIL'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'PZIP'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end>
    CommandStoredProcName = 'PAYSLIPS2.SET_EMP_PERSONAL_MAIL'
  end
  object ospCleanPersMails: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.CLEANUP_PERS_MAILS'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.CLEANUP_PERS_MAILS;'
      'end;')
    Left = 288
    Top = 184
    CommandStoredProcName = 'PAYSLIPS2.CLEANUP_PERS_MAILS'
  end
  object otDeniedDomains: TOraTable
    TableName = 'PAYSLIPS_DENY_MAIL_DOMAINS'
    Session = oSession
    Left = 456
    Top = 192
  end
  object odsDeniedDomains: TOraDataSource
    DataSet = otDeniedDomains
    Left = 520
    Top = 208
  end
  object ospSendBufferedSlips: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.SEND_BUFFERED_SLIPS'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.SEND_BUFFERED_SLIPS;'
      'end;')
    Left = 736
    Top = 320
    CommandStoredProcName = 'PAYSLIPS2.SEND_BUFFERED_SLIPS'
  end
  object oqIsProdEnv: TOraQuery
    Session = oSession
    SQL.Strings = (
      'SELECT '
      
        '(CASE sprav.types.get_server_type WHEN '#39'PROD'#39' THEN 1 ELSE 0 END)' +
        ' '
      'FROM DUAL')
    Left = 112
    Top = 168
  end
  object ospSetSSCRespAlone: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.SET_SSC_RESP_ALONE'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.SET_SSC_RESP_ALONE(:PEMPID);'
      'end;')
    Left = 64
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'PAYSLIPS2.SET_SSC_RESP_ALONE'
  end
  object ospGetSSCAdmins: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_SSC_STAFF_ADMINS'
    Session = oSession
    SQL.Strings = (
      'begin'
      '  PAYSLIPS2.GET_SSC_STAFF_ADMINS(:PAPPID, :PPOLN, :RESULT);'
      'end;')
    Left = 184
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAPPID'
        ParamType = ptInput
        Value = 641
        HasDefault = True
      end
      item
        DataType = ftInteger
        Name = 'PPOLN'
        ParamType = ptInput
        Value = 1
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_SSC_STAFF_ADMINS'
    object ospGetSSCAdminsLNOM: TIntegerField
      DisplayWidth = 10
      FieldName = 'LNOM'
      ReadOnly = True
    end
    object ospGetSSCAdminsEMP_ID: TFloatField
      DisplayWidth = 10
      FieldName = 'EMP_ID'
      ReadOnly = True
    end
    object ospGetSSCAdminsFIO: TStringField
      DisplayWidth = 35
      FieldName = 'FIO'
      ReadOnly = True
      Size = 35
    end
    object ospGetSSCAdminsCEX: TStringField
      DisplayWidth = 4
      FieldName = 'CEX'
      ReadOnly = True
      Size = 4
    end
    object ospGetSSCAdminsTABN: TIntegerField
      DisplayWidth = 10
      FieldName = 'TABN'
      ReadOnly = True
    end
    object ospGetSSCAdminsNAIMPOL: TStringField
      DisplayWidth = 33
      FieldName = 'NAIMPOL'
      ReadOnly = True
      Size = 255
    end
    object ospGetSSCAdminsSELECTED: TFloatField
      DisplayWidth = 10
      FieldName = 'SELECTED'
    end
  end
  object odsGetSSCAdmins: TOraDataSource
    DataSet = ospGetSSCAdmins
    Left = 184
    Top = 496
  end
  object ospGetSSCforEmp: TOraStoredProc
    StoredProcName = 'PAYSLIPS2.GET_SSC_RESP_FOR_EMP'
    Session = oSession
    SQL.Strings = (
      'begin'
      
        '  PAYSLIPS2.GET_SSC_RESP_FOR_EMP(:PEMPID, :PDATE, :PTAG, :RESULT' +
        ');'
      'end;')
    Left = 448
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PEMPID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'PDATE'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftInteger
        Name = 'PTAG'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'PAYSLIPS2.GET_SSC_RESP_FOR_EMP'
  end
end
