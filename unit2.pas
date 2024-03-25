unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn1: TButton;
    btnAC: TButton;
    btnClear: TButton;
    btnKali: TButton;
    btnBagi: TButton;
    btnKurang: TButton;
    btnTambah: TButton;
    btnHitung: TButton;
    btn0: TButton;
    btnKoma: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    edtHasil: TEdit;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnACClick(Sender: TObject);
    procedure btnBagiClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnHitungClick(Sender: TObject);
    procedure btnKaliClick(Sender: TObject);
    procedure btnKurangClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
  private

  public
   BilanganPertama, BilanganKedua, Hasil: Integer;
   Perintah: String
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btn0Click(Sender: TObject);
begin
  if edtHasil.Text = '0' then
    begin
     if TButton(Sender).Caption = ',' then
      edtHasil.Text:= '0'
     else
      edtHasil.Clear;
     end;

    edtHasil.Text := edtHasil.Text + TButton(Sender).Caption;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin

end;

procedure TForm1.btn2Click(Sender: TObject);
begin

end;

procedure TForm1.btn3Click(Sender: TObject);
begin

end;

procedure TForm1.btn4Click(Sender: TObject);
begin

end;

procedure TForm1.btn5Click(Sender: TObject);
begin

end;

procedure TForm1.btn6Click(Sender: TObject);
begin

end;

procedure TForm1.btn7Click(Sender: TObject);
begin

end;

procedure TForm1.btn8Click(Sender: TObject);
begin

end;

procedure TForm1.btn9Click(Sender: TObject);
begin

end;

procedure TForm1.btnBagiClick(Sender: TObject);
begin
  BilanganPertama:= StrToInt(edtHasil.Text);
  edtHasil.Clear;
  Perintah:='Bagi';
end;

procedure TForm1.btnKaliClick(Sender: TObject);
begin
  BilanganPertama:= StrToInt(edtHasil.Text);
  edtHasil.Clear;
  Perintah:='Kali';
end;

procedure TForm1.btnKurangClick(Sender: TObject);
begin
  BilanganPertama:= StrToInt(edtHasil.Text);
  edtHasil.Clear;
  Perintah:='Kurang';
end;

procedure TForm1.btnTambahClick(Sender: TObject);
begin
  BilanganPertama:= StrToInt(edtHasil.Text);
  edtHasil.Clear;
  Perintah:='Tambah';
end;

procedure TForm1.btnHitungClick(Sender: TObject);
begin
   if Perintah = 'Tambah' then
  begin
    BilanganKedua:= StrToInt(edtHasil.Text);
    Hasil := BilanganPertama + BilanganKedua;
    edtHasil.Text:= IntToStr(Hasil);
  end;
  if Perintah = 'Kurang' then
  begin
    BilanganKedua:= StrToInt(edtHasil.Text);
    Hasil:= BilanganPertama - BilanganKedua;
    edtHasil.Text:= IntToStr(Hasil);
  end;
  if Perintah = 'Kali' then
  begin
    BilanganKedua:= StrToInt(edtHasil.Text);
    Hasil:= BilanganPertama * BilanganKedua;
    edtHasil.Text:= IntToStr(Hasil);
  end;
  if Perintah = 'Bagi' then
  begin
    BilanganKedua:= StrToInt(edtHasil.Text);
    Hasil:= BilanganPertama div BilanganKedua;
    edtHasil.Text:= IntToStr(Hasil);
  end;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtHasil.Clear;
end;

procedure TForm1.btnACClick(Sender: TObject);
begin
  edtHasil.Text:='0';
end;
end.

