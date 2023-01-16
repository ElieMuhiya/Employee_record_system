unit Unit3;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,share,unit2;


type
  TForm3 = class(TForm)
    Select_AddressBook: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edit1: TEdit;
    edit2: TEdit;
    edit3: TEdit;
    edit4: TEdit;
    edit5: TEdit;
    Add_to_AddressBook: TButton;
    search_in_the_AddressBook: TButton;
    clear_list: TButton;
    close: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    OpenDialog1: TOpenDialog;
    procedure closeClick(Sender: TObject);
    procedure Select_AddressBookClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure clear_listClick(Sender: TObject);
    procedure search_in_the_AddressBookClick(Sender: TObject);
    procedure Add_to_AddressBookClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;


var
  Form3: TForm3;

implementation




{$R *.dfm}





procedure TForm3.Add_to_AddressBookClick(Sender: TObject);
begin
if not fileexists(form2.OpenDialog1.FileName) then

if not fileexists(opendialog1.FileName) then
begin
  showmessage('please select a file.');
  select_addressbook.Focused;
  exit


end;

if (edit1.Text='') or (edit2.Text='') then
begin
showmessage(' Enter name or surname and do not forget to fill the email field.');
memo1.Clear;
memo2.Clear;
memo3.Clear;
memo4.Clear;
memo5.Clear;

end
else if
(edit5.Text='')  then
begin
   showmessage('you cannot leave the email field empty.');
end

else
begin
  if pos('@',edit5.Text)=0 then
  begin
    showmessage('Email field must contain @ symbol.');
    edit5.Focused;
    exit;

  end;

  append(id.f);
  writeln(id.f,edit1.Text+stringofchar(' ',15-length(trim(edit1.Text))),
           edit2.Text+stringofchar(' ',15-length(trim(edit2.Text))),
           edit3.Text+stringofchar(' ',20-length(trim(edit3.Text))),
           edit4.Text+stringofchar(' ',15-length(trim(edit4.Text))),
           edit5.Text+stringofchar(' ',40-length(trim(edit5.Text))));
            closefile(id.f);
            showmessage(trim(edit1.Text)+''+edit2.Text+''+edit3.Text+''+edit4.Text+''+edit5.Text+'added to the list.');
            edit1.Clear;
            edit2.Clear;
            edit3.Clear;
            edit4.Clear;
            edit5.Clear;
            memo1.Clear;
            memo2.Clear;
            memo3.Clear;
            memo4.Clear;
            memo5.Clear;


end;

end;

procedure TForm3.Button2Click(Sender: TObject);

begin
if not fileexists(form2.OpenDialog1.FileName) then
if not fileexists(opendialog1.FileName) then
begin
  showmessage('select a file!');
  Select_AddressBook.Focused;
  exit;

end ;

memo1.Clear;
memo2.Clear;
memo3.Clear;
memo4.Clear;
memo5.Clear;
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
RESET(id.F);
begin
while not eof(id.f) do
begin
readln(id.f,id.names,id.surname,id.company,id.title,id.email);
memo1.Lines.Add(trim(id.names));
memo2.Lines.Add(trim(id.surname));
memo3.Lines.Add(trim(id.company));
memo4.Lines.Add(trim(id.title));
memo5.Lines.Add(trim(id.email));

end;
end;



closefile(id.f);

end;

procedure TForm3.clear_listClick(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
memo3.Clear;
memo4.Clear;
memo5.Clear;
end;

procedure TForm3.closeClick(Sender: TObject);
begin
form3.Visible:=false;
end;

procedure TForm3.search_in_the_AddressBookClick(Sender: TObject);


begin
if not fileexists(form2.OpenDialog1.Filename) then

if not fileexists (opendialog1.FileName) then
begin


  showmessage('select a file.');
  select_addressbook.SetFocus;
  exit;

end ;

    if(edit1.Text='') and (edit2.Text='') then
    begin
      showmessage('Enter at least the name or surname');

    end ;



   memo1.Clear;
memo2.Clear;
memo3.Clear;
memo4.Clear;
memo5.Clear;

reset(id.f);
while not eof(id.f) do
begin
  readln(id.f,id.names,id.surname,id.company,id.title,id.email);
  if edit1.Text<>' ' then
  begin
    if edit2.text<>' ' then
     begin
    if edit3.Text<>' ' then

    begin

    if edit4.Text<>' ' then

    begin
     if edit5.Text<>' ' then

    begin



            if (uppercase(edit1.Text)=uppercase(trim(id.names))) or (uppercase(edit2.Text)=uppercase(trim(id.surname)))  then
              begin
                memo1.Lines.add(trim(id.names));
                memo2.Lines.Add(trim(id.surname));
                memo3.Lines.Add(trim(id.company));
                memo4.Lines.Add(trim(id.title));
                memo5.Lines.Add(trim(id.email));


              end;

          end

        end
        else
        begin
          showmessage('AT LEAST ONE FIELD HAS TO BE FILLED.');
          EXIT;
        end;
    END;
     end;
  end;
end;
    edit1.Clear;
    edit2.Clear;
    edit3.Clear;
    edit4.Clear;
    edit5.Clear;

    end;


procedure TForm3.Select_AddressBookClick(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
memo3.Clear;
memo4.Clear;
memo5.Clear;
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
if OpenDialog1.Execute  then

assignfile(id.f,OpenDialog1.FileName);






end;

end.
