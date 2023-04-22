{$FORM TForm3, Unit3.sfm}

uses
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ComCtrls;


procedure Button1Click(Sender: TObject);
var
UserName, UserEmail, UserCompany, UserLicenses:String;
a,b,c:String;
begin
a:=GetUUSPSERIALNUMBER;
LCD.Lines.Add(a);

InBox('Nazwa','Lejbelka',a);
LCD.Lines.Add(a);
InBOX('Druga nazwa','Napis',c);
LCD.Lines.Add(c);

 //procedure GetUserDetails( var Name, Email, Company, Licenses: String );
  GetUserDetails( UserName, UserEmail, UserCompany, UserLicenses );
    LCD.Lines.Add(UserName);
    LCD.Lines.Add(UserEmail);
    LCD.Lines.Add(UserCompany);
    LCD.Lines.Add(UserLicenses);

    StatusBar1.Panels.Items[0].Text:= a;
    StatusBar1.Panels.Items[1].Text:= UserName;
    StatusBar1.Panels.Items[2].Text:= UserEmail;
    StatusBar1.Panels.Items[3].Text:= UserCompany;
    StatusBar1.Panels.Items[4].Text:= UserLicenses;
end;

begin
end;
