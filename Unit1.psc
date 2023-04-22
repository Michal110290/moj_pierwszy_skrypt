{$FORM TForm1, Unit1.sfm}

uses
  Classes, Graphics, Controls, Forms, Dialogs, StdCtrls;

procedure Button1Click(Sender: TObject);
begin
  SetProgramModifiedOnly(true);
  LCD.Lines.Add('Start Read');
  ReadDevice;
  LCD.Lines.Add('Stop Read');
end;

procedure Button2Click(Sender: TObject);
begin
  VerifyDevice;
end;

procedure Button3Click(Sender: TObject);
begin
  LCD.Lines.Add('Program START');
  ProgramDevice;
  LCD.Lines.Add('Program END');
end;

procedure CheckBox1Click(Sender: TObject);
begin
  if ( CheckBox1.Checked = true ) then
    Begin
      LCD.Lines.Add('true');
      SetProgramModifiedOnly(CheckBox1.Checked);
    end;                                                                         
  else
  Begin
   LCD.Lines.Add('false');
   SetProgramModifiedOnly(CheckBox1.Checked);
  end;                             
end;

procedure Button4Click(Sender: TObject);
begin
  SetByteHexEdit($00,$AA);
    SetWordHexEdit($10,$AABB,true);
        SetDWordHexEdit($20,$AABBCCDD,false);
  RefreshHexEdit;
end;

begin
end;
