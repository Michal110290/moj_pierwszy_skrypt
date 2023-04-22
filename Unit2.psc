{$FORM TForm2, Unit2.sfm}

uses
  Classes, Graphics, uuprog, Controls, Forms, Dialogs, StdCtrls, Tools;

procedure Button1Click(Sender: TObject);
var
znak_1:String;
begin
 znak_1:= (GetWordHexEdit($1D,true));
 memo1.Lines.Add(Tel($03,8));
 memo1.Lines.Add(Tel($1d,12));

 memo1.Lines.Add(swapTel($03,8));
 memo1.Lines.Add(swapTel($1d,12));
end;

begin
end;
