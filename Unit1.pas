unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.WindowsStore, Vcl.StdCtrls, Vcl.ComCtrls, Math;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    FvPresentValue: TEdit;
    IrPresentValue: TEdit;
    PvPresentValue: TEdit;
    NpPresentValue: TEdit;
    TabSheet4: TTabSheet;
    Label9: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    PvFutureValue: TEdit;
    IrFutureValue: TEdit;
    FvFutureValue: TEdit;
    NpFutureValue: TEdit;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PvPayment: TEdit;
    IRPayment: TEdit;
    NpPayment: TEdit;
    PmtPayment: TEdit;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PvIRR: TEdit;
    PmtIRR: TEdit;
    NpIRR: TEdit;
    IRIRR: TEdit;
    WindowsStore1: TWindowsStore;
    procedure PaymentChange(Sender: TObject);
    procedure PresentValueChange(Sender: TObject);
    procedure FutureValueChange(Sender: TObject);
    procedure IRRChange(Sender: TObject);
  private
    procedure CalculateFV;
    procedure CalculateIRR;
    procedure CalculatePV;
    procedure RecalcPayment;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalculatePV;
begin
  try
    var FutureValue := StrToFloat(FvPresentValue.Text);
    var InterestRate := StrToFloat(IrPresentValue.Text) / 100.0;
    var NumPeriods := StrToInt(NpPresentValue.Text);
    var PresentValue := FutureValue / Power((1 + InterestRate), NumPeriods);
    PvPresentValue.Text := FormatFloat('0.00', PresentValue);
  except
    On EConvertError do
      PvPresentValue.Text := '';
  end;
end;

procedure TForm1.CalculateFV;
begin
  try
    var PresentValue := StrToFloat(PvFutureValue.Text);
    var InterestRate := StrToFloat(IrFutureValue.Text) / 100.0;
    var NumPeriods := StrToInt(NpFutureValue.Text);
    var FutureValue := PresentValue * Power((1 + InterestRate), NumPeriods);
    FvFutureValue.Text := FormatFloat('0.00', FutureValue);
  except
    On EConvertError do
      FvFutureValue.Text := '';
  end;
end;

procedure TForm1.CalculateIRR;
begin
  try
    var NumPayments := StrToInt(NpIRR.Text);
    var PresentValue := StrToFloat(PvIRR.Text);
    var Payment := StrToFloat(PmtIRR.Text);
    var FoundRate := False;
    var MinRate := 0.0;
    var MaxRate := 1.0;
    if Payment * NumPayments < PresentValue then begin
      IRIRR.Text := 'Rate Less than 0';
      exit;
    end;
    if Payment * NumPayments = PresentValue then begin
      IRIRR.Text := '0.00';
      exit;
    end;
    if Payment > PresentValue then begin
      IRIRR.Text := 'Payment greater than Present Value';
      exit;
    end;
    while not FoundRate do begin
      var Rate := (MaxRate + MinRate) / 2.0;
      var SumPayments := 0.0;
      for var I := 1 to NumPayments do
        SumPayments := SumPayments + Payment / Power((1 + Rate), I);
      if Abs(SumPayments - PresentValue) > 0.01 then begin
        if PresentValue < SumPayments then begin
          MinRate := Rate;
        end
        else begin
          MaxRate := Rate;
        end;
      end
      else begin
        FoundRate := True;
        IRIRR.Text := FormatFloat('0.00', Rate * 100.0);
      end;
    end;
  except
    On EConvertError do
      IRIRR.Text := '';
  end;
end;

procedure TForm1.RecalcPayment;
begin
  try
    var PresentValue := StrToFloat(PvPayment.Text);
    var InterestRate := StrToFloat(IRPayment.Text) / 100.0;
    var NumPayments := StrToInt(NpPayment.Text);
    var Payment := (PresentValue * InterestRate) * Power((1 + InterestRate),
      NumPayments) / (Power((1 + InterestRate), NumPayments) - 1);
    PmtPayment.Text := FormatFloat('0.00', Payment);
  except
    On EConvertError do
      PmtPayment.Text := '';
  end;
end;

procedure TForm1.PaymentChange(Sender: TObject);
begin
  RecalcPayment();
end;

procedure TForm1.PresentValueChange(Sender: TObject);
begin
  CalculatePV();
end;

procedure TForm1.IRRChange(Sender: TObject);
begin
  CalculateIRR();
end;

procedure TForm1.FutureValueChange(Sender: TObject);
begin
  CalculateFV();
end;

end.
