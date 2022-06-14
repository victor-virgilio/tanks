program Tanks;

uses
  Forms,
  tanks_form in 'tanks_form.pas' {frmfield};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmfield, frmfield);
  Application.Run;
end.
