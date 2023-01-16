unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,share;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    AddressBook1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    OpenDialog1: TOpenDialog;
    procedure AddressBook1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
 unit3;

procedure TForm2.AddressBook1Click(Sender: TObject);

begin
      if OpenDialog1.execute then


              assignfile(id.f,OpenDialog1.FileName);
 form3.show;
 if form3.Visible  then
 begin

 if
  sender=form3.Button2 then

    begin


form3.memo1.Clear;
form3.memo2.Clear;
form3.memo3.Clear;
form3.memo4.Clear;
form3.memo5.Clear;
form3.edit1.Clear;
form3.edit2.Clear;
form3.edit3.Clear;
form3.edit4.Clear;
form3.edit5.Clear;
RESET(id.F);
while not eof(id.f) do
begin
readln(id.f,id.names,id.surname,id.company,id.title,id.email);
form3.memo1.Lines.Add(trim(id.names));
form3.memo2.Lines.Add(trim(id.surname));
form3.memo3.Lines.Add(trim(id.company));
form3.memo4.Lines.Add(trim(id.title));
form3.memo5.Lines.Add(trim(id.email));

end;
closefile(id.f);

end;
 end;
end;









procedure TForm2.Exit1Click(Sender: TObject);
begin
application.Terminate;
end;

end.
