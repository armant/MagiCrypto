unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls;

type
  TFormMain = class(TForm)
    Image1: TImage;
    btnStart: TSpeedButton;
    btnAbout: TSpeedButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
  btnStart.Left := (ClientWidth - btnStart.Width) div 2;
  btnAbout.Left := (ClientWidth - btnAbout.Width) div 2;
end;

procedure TFormMain.btnStartClick(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TFormMain.btnAboutClick(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

end.
