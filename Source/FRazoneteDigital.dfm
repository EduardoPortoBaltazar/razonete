object frmRazoneteDigital: TfrmRazoneteDigital
  Left = 0
  Top = 0
  Caption = 'Razonete Digital'
  ClientHeight = 517
  ClientWidth = 1036
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 517
    ExplicitLeft = -8
    ExplicitTop = 256
    ExplicitHeight = 100
  end
  object pnl_geral: TPanel
    Left = 3
    Top = 0
    Width = 1033
    Height = 517
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object pnl_fundo_sistema: TPanel
      Left = 0
      Top = 0
      Width = 1033
      Height = 517
      Align = alClient
      ParentColor = True
      TabOrder = 0
      object lst_contas: TListBox
        Left = 1
        Top = 100
        Width = 162
        Height = 416
        Align = alLeft
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 1031
        Height = 99
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 464
          Height = 97
          Align = alLeft
          ExplicitHeight = 86
        end
        object Label1: TLabel
          Left = 166
          Top = 14
          Width = 87
          Height = 15
          Caption = 'C'#243'digo Contabil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 14
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 166
          Top = 51
          Width = 26
          Height = 15
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 330
          Top = 51
          Width = 23
          Height = 15
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 5
          Top = 51
          Width = 66
          Height = 15
          Caption = 'Lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10485760
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edt_conta_contabil: TEdit
          Left = 166
          Top = 27
          Width = 157
          Height = 23
          TabOrder = 1
        end
        object edt_conta_descricao: TEdit
          Left = 5
          Top = 27
          Width = 157
          Height = 23
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 709
          Top = 1
          Width = 321
          Height = 97
          Align = alRight
          TabOrder = 5
          object spb_incluir_lancamento: TSpeedButton
            Left = 153
            Top = 1
            Width = 152
            Height = 95
            Align = alLeft
            Caption = 'Lan'#231'amento'
            Flat = True
            Glyph.Data = {
              76020000424D760200000000000036000000280000000C0000000C0000000100
              20000000000040020000000000000000000000000000000000003B3B3BFFBCBC
              BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFBCBCBCFF3C3C3CFFBCBCBCFF212121FFB0B0B0FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5FF1F1F1FFFBBBBBBFFFFFFFFFFB5B5
              B5FF000000FFD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF0000
              00FFB1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF000000FFB1B1B1FFFFFF
              FFFFFFFFFFFFB5B5B5FF000000FFD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFB6B6B6FF1F1F1FFFBABABAFFC0C0C0FF1E1E1EFFB0B0B0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF1E1E
              1EFF202020FFBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFBFBFBFFF1E1E1EFF202020FFBEBEBEFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6FF1F1F1FFFBABA
              BAFFC0C0C0FF1E1E1EFFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDDDDDDFF000000FFB1B1B1FFFFFFFFFFFFFFFFFFB5B5B5FF000000FFD6D6
              D6FFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5FF000000FFD6D6D6FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFDDDDDDFF000000FFB1B1B1FFFFFFFFFFBCBCBCFF2121
              21FFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
              B5FF1F1F1FFFBBBBBBFF3B3B3BFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFF3B3B3BFF}
            Layout = blGlyphTop
            OnClick = spb_incluir_lancamentoClick
            ExplicitLeft = 1
            ExplicitHeight = 62
          end
          object spb_incluir_conta: TSpeedButton
            Left = 1
            Top = 1
            Width = 152
            Height = 95
            Align = alLeft
            Caption = 'Conta'
            Flat = True
            Glyph.Data = {
              76020000424D760200000000000036000000280000000C0000000C0000000100
              20000000000040020000000000000000000000000000000000003B3B3BFFBCBC
              BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFBCBCBCFF3C3C3CFFBCBCBCFF212121FFB0B0B0FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5FF1F1F1FFFBBBBBBFFFFFFFFFFB5B5
              B5FF000000FFD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF0000
              00FFB1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF000000FFB1B1B1FFFFFF
              FFFFFFFFFFFFB5B5B5FF000000FFD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFB6B6B6FF1F1F1FFFBABABAFFC0C0C0FF1E1E1EFFB0B0B0FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF1E1E
              1EFF202020FFBEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFBFBFBFFF1E1E1EFF202020FFBEBEBEFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6FF1F1F1FFFBABA
              BAFFC0C0C0FF1E1E1EFFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDDDDDDFF000000FFB1B1B1FFFFFFFFFFFFFFFFFFB5B5B5FF000000FFD6D6
              D6FFFFFFFFFFFFFFFFFFFFFFFFFFB5B5B5FF000000FFD6D6D6FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFDDDDDDFF000000FFB1B1B1FFFFFFFFFFBCBCBCFF2121
              21FFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
              B5FF1F1F1FFFBBBBBBFF3B3B3BFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFF3B3B3BFF}
            Layout = blGlyphTop
            OnClick = spb_incluir_contaClick
            ExplicitLeft = 9
            ExplicitTop = 2
            ExplicitHeight = 62
          end
        end
        object edt_valor: TEdit
          Left = 166
          Top = 65
          Width = 157
          Height = 23
          TabOrder = 3
        end
        object combo_tipoDC: TComboBox
          Left = 330
          Top = 65
          Width = 79
          Height = 23
          TabOrder = 4
          Text = 'D'
          Items.Strings = (
            'D'
            'C')
        end
        object edt_descricao_lancamento: TEdit
          Left = 5
          Top = 65
          Width = 155
          Height = 23
          TabOrder = 2
        end
      end
      object lst_lancamentos: TListBox
        Left = 163
        Top = 100
        Width = 303
        Height = 416
        Align = alLeft
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 2
      end
      object mmConta: TMemo
        Left = 472
        Top = 249
        Width = 543
        Height = 164
        Lines.Strings = (
          '')
        TabOrder = 3
      end
    end
  end
end
