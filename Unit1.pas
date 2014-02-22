unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TMagicKvadrat = array of array of Integer;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    SGChisla: TStringGrid;
    SGText: TStringGrid;
    Memo2: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    procedure VivodMas(A: TMagicKvadrat);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: TMagicKvadrat;
  sText, Shifr : String;

implementation

uses StrUtils, Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  n, i, j, i2, j2, Col: Integer;
  r: Real;
begin
  sText := Memo1.Lines.Text;
  sText := AnsiReplaceStr(sText, #13#10, ' ');
  n := Length(sText);
  if n = 0 then exit;
  //определяем размер квадрата
  r := SqrT(n);
  n := Trunc(SqrT(n));
  if r > n then
    n := Trunc(r) + 1;
  if not Odd(n) then
    Inc(n);

  a := nil;
  SetLength(a, n, n);
  //FillChar(a, SizeOf(a), 0);
  i := 0;
  j := n div 2;
  Col := 0;

  repeat
    Inc(Col);
    a[i, j] := Col;

    if i - 1 < 0 then
      i2 := n - 1
    else
      i2 := i - 1;

    if j + 1 >= n then
      j2 := 0
    else
      j2 := j + 1;

    if a[i2, j2] <> 0 then
      Inc(i)
    else begin
      i := i2;
      j := j2;
    end;
  until Col = n*n;

  VivodMas(a);
  Memo2.Lines.Clear;
  Memo2.Lines.Text := Shifr;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TForm1.VivodMas(A: TMagicKvadrat);
var
  i, j: Integer;
  c: String;
begin
  SGChisla.ColCount := Length(A);
  SGChisla.RowCount := Length(A);
  SGText.ColCount := Length(A);
  SGText.RowCount := Length(A);

  Shifr := '';
  for i := 0 to High(A) do
    for j := 0 to High(A) do begin
      SGChisla.Cells[j, i] := IntToStr(A[i, j]);

      if A[i, j] > Length(sText) then
        c := ' '
      else
        c := sText[A[i, j]];
      SGText.Cells[j, i] := c;
      Shifr := Shifr + c;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  n, i, j, i2, j2, Col: Integer;
  r: Real;
begin
  sText := Memo2.Lines.Text;
  n := Length(sText);
  if n = 0 then exit;
  //определяем размер квадрата
  r := SqrT(n);
  n := Trunc(SqrT(n));
  if r > n then
    n := Trunc(r) + 1;
  if not Odd(n) then
    Inc(n);

  //вывод
  SGText.ColCount := n;
  SGText.RowCount := n;
  SGChisla.ColCount := n;
  SGChisla.RowCount := n;

  Col := 1;
  for i := 0 to n - 1 do
    for j := 0 to n - 1 do begin
      SGText.Cells[j, i] := sText[Col];
      Inc(Col);
    end;

  a := nil;
  SetLength(a, n, n);
  //FillChar(a, SizeOf(a), 0);
  i := 0;
  j := n div 2;
  Col := 0;

  sText := '';
  repeat
    Inc(Col);
    a[i, j] := Col;
    sText := sText + SGText.Cells[j, i];
    SGChisla.Cells[j, i] := IntToStr(Col);

    if i - 1 < 0 then
      i2 := n - 1
    else
      i2 := i - 1;

    if j + 1 >= n then
      j2 := 0
    else
      j2 := j + 1;

    if a[i2, j2] <> 0 then
      Inc(i)
    else begin
      i := i2;
      j := j2;
    end;
  until Col = n*n;

  Memo1.Lines.Clear;
  Memo1.Lines.Text := sText;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

end.

