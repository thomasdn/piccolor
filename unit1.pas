unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  TplScrColorPickerUnit, HSLColorPicker, mbDeskPickerButton, mbColorPreview,
  mbColorList, mbOfficeColorDialog, mbColorTree, mbColorPalette, HSLRingPicker,
  HexaColorPicker, HSColorPicker, SLColorPicker, CColorPicker, SLHColorPicker;

type

  { TForm1 }

  TForm1 = class(TForm)
    EditGreen: TEdit;
    EditBlue: TEdit;
    EditRed: TEdit;
    EditHex: TEdit;
    LabelHex: TLabel;
    LabelRed: TLabel;
    LabelBlue: TLabel;
    LabelGreen: TLabel;
    Panel3: TPanel;
    sc: TmbColorPreview;
    mbDeskPickerButton1: TmbDeskPickerButton;
    procedure Button1Click(Sender: TObject);

    procedure EditBlueChange(Sender: TObject);
    procedure EditBlueClick(Sender: TObject);
    procedure EditGreenClick(Sender: TObject);
    procedure EditHexClick(Sender: TObject);
    procedure EditRedClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mbDeskPickerButton1SelColorChange(Sender: TObject);
    procedure scColorChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.EditBlueChange(Sender: TObject);
begin

end;

procedure TForm1.EditBlueClick(Sender: TObject);
begin
  EditBlue.SelectAll;

end;

procedure TForm1.EditGreenClick(Sender: TObject);
begin
    EditGreen.SelectAll;

end;


procedure TForm1.EditHexClick(Sender: TObject);
begin
  EditHex.SelectAll;
end;


procedure TForm1.EditRedClick(Sender: TObject);
begin
    EditRed.SelectAll;

end;


procedure TForm1.FormCreate(Sender: TObject);
begin

end;


procedure TForm1.mbDeskPickerButton1SelColorChange(Sender: TObject);
begin
  sc.color := mbDeskPickerButton1.SelectedColor;
  //sc.selectedcolor:= mbDeskPickerButton1.SelectedColor;
end;

procedure TForm1.scColorChange(Sender: TObject);
begin

    EditRed.Text:=Red(sc.Color).ToString;
    EditGreen.Text:=Green(sc.Color).ToString;
    EditBlue.Text:=Blue(sc.Color).ToString;
    EditHex.Text:='#'+ColorToRGB(sc.Color).ToHexString(6);

end;

end.

