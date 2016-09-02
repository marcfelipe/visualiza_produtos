object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 471
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 49
    Caption = '&Conectar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 88
    Width = 129
    Height = 49
    Caption = '&Pesquisa Item'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 152
    Width = 641
    Height = 217
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 143
    Top = 44
    Width = 250
    Height = 21
    TabOrder = 3
    Text = '192.168.1.190/3050:C:\syspdv\syspdv_srv - Copia.FDB'
  end
  object Edit2: TEdit
    Left = 152
    Top = 116
    Width = 201
    Height = 21
    TabOrder = 4
    OnEnter = Edit2Enter
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 576
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 512
    Top = 64
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\syspdv\syspdv_srv - Copia.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 600
    Top = 8
  end
  object IBTable1: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PRODUTO'
    UniDirectional = False
    Left = 512
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'select produto.procod,procodaux,prodes,prodesrdz,trbid,seccod,pr' +
        'oprcvdavar,'
      'prounid,proncm'
      'from produto'
      'join produtoaux on produtoaux.procod=produto.procod'
      'where produto.procod =:procodPesquisa'
      'or procodaux = :procodPesquisa')
    Left = 552
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodPesquisa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'procodPesquisa'
        ParamType = ptUnknown
      end>
    object IBQuery1PROCOD: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PROCOD'
      Origin = '"PRODUTO"."PROCOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object IBQuery1PROCODAUX: TIBStringField
      DisplayLabel = 'C'#243'digo Auxiliar'
      FieldName = 'PROCODAUX'
      Origin = '"PRODUTOAUX"."PROCODAUX"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
    end
    object IBQuery1PRODES: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'PRODES'
      Origin = '"PRODUTO"."PRODES"'
      Size = 80
    end
    object IBQuery1PRODESRDZ: TIBStringField
      DisplayLabel = 'Descri'#231#227'o Reduzida'
      FieldName = 'PRODESRDZ'
      Origin = '"PRODUTO"."PRODESRDZ"'
    end
    object IBQuery1TRBID: TIBStringField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldName = 'TRBID'
      Origin = '"PRODUTO"."TRBID"'
      FixedChar = True
      Size = 3
    end
    object IBQuery1SECCOD: TIBStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'SECCOD'
      Origin = '"PRODUTO"."SECCOD"'
      FixedChar = True
      Size = 2
    end
    object IBQuery1PROPRCVDAVAR: TIBBCDField
      DisplayLabel = 'Pre'#231'o de venda'
      FieldName = 'PROPRCVDAVAR'
      Origin = '"PRODUTO"."PROPRCVDAVAR"'
      Precision = 18
      Size = 2
    end
    object IBQuery1PROUNID: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PROUNID'
      Origin = '"PRODUTO"."PROUNID"'
      FixedChar = True
      Size = 3
    end
    object IBQuery1PRONCM: TIBStringField
      DisplayLabel = 'NCM'
      FieldName = 'PRONCM'
      Origin = '"PRODUTO"."PRONCM"'
      Size = 8
    end
  end
end
