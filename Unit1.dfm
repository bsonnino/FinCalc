object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Financial Calculator'
  ClientHeight = 292
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 349
    Height = 292
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Present Value'
      ImageIndex = 2
      object Label11: TLabel
        Left = 24
        Top = 188
        Width = 66
        Height = 13
        Caption = 'Present Value'
      end
      object Label13: TLabel
        Left = 24
        Top = 84
        Width = 65
        Height = 13
        Caption = 'Interest Rate'
      end
      object Label14: TLabel
        Left = 24
        Top = 33
        Width = 61
        Height = 13
        Caption = 'Future Value'
      end
      object Label15: TLabel
        Left = 24
        Top = 136
        Width = 46
        Height = 13
        Caption = '# Months'
      end
      object FvPresentValue: TEdit
        Left = 162
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = PresentValueChange
      end
      object IrPresentValue: TEdit
        Left = 162
        Top = 81
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = PresentValueChange
      end
      object PvPresentValue: TEdit
        Left = 162
        Top = 185
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object NpPresentValue: TEdit
        Left = 162
        Top = 133
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = PresentValueChange
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Future Value'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label9: TLabel
        Left = 24
        Top = 33
        Width = 66
        Height = 13
        Caption = 'Present Value'
      end
      object Label16: TLabel
        Left = 24
        Top = 136
        Width = 46
        Height = 13
        Caption = '# Months'
      end
      object Label12: TLabel
        Left = 24
        Top = 188
        Width = 61
        Height = 13
        Caption = 'Future Value'
      end
      object Label10: TLabel
        Left = 24
        Top = 84
        Width = 65
        Height = 13
        Caption = 'Interest Rate'
      end
      object PvFutureValue: TEdit
        Left = 161
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = FutureValueChange
      end
      object IrFutureValue: TEdit
        Left = 161
        Top = 81
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = FutureValueChange
      end
      object FvFutureValue: TEdit
        Left = 161
        Top = 185
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
      object NpFutureValue: TEdit
        Left = 161
        Top = 133
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = FutureValueChange
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Payments'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 24
        Top = 33
        Width = 66
        Height = 13
        Caption = 'Present Value'
      end
      object Label2: TLabel
        Left = 24
        Top = 84
        Width = 65
        Height = 13
        Caption = 'Interest Rate'
      end
      object Label3: TLabel
        Left = 24
        Top = 136
        Width = 58
        Height = 13
        Caption = '# Payments'
      end
      object Label4: TLabel
        Left = 24
        Top = 188
        Width = 42
        Height = 13
        Caption = 'Payment'
      end
      object PvPayment: TEdit
        Left = 160
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = PaymentChange
      end
      object IRPayment: TEdit
        Left = 160
        Top = 81
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = PaymentChange
      end
      object NpPayment: TEdit
        Left = 160
        Top = 133
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = PaymentChange
      end
      object PmtPayment: TEdit
        Left = 160
        Top = 185
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Return Rate'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 24
        Top = 33
        Width = 66
        Height = 13
        Caption = 'Present Value'
      end
      object Label6: TLabel
        Left = 24
        Top = 188
        Width = 65
        Height = 13
        Caption = 'Interest Rate'
      end
      object Label7: TLabel
        Left = 24
        Top = 136
        Width = 58
        Height = 13
        Caption = '# Payments'
      end
      object Label8: TLabel
        Left = 24
        Top = 84
        Width = 42
        Height = 13
        Caption = 'Payment'
      end
      object PvIRR: TEdit
        Left = 160
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = IRRChange
      end
      object PmtIRR: TEdit
        Left = 160
        Top = 81
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = IRRChange
      end
      object NpIRR: TEdit
        Left = 160
        Top = 133
        Width = 121
        Height = 21
        TabOrder = 2
        OnChange = IRRChange
      end
      object IRIRR: TEdit
        Left = 160
        Top = 185
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object WindowsStore1: TWindowsStore
    Left = 304
    Top = 32
  end
end
