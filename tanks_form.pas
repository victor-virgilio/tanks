unit tanks_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  Tfrmfield = class(TForm)
    imgestver1: TImage;
    imgestver3: TImage;
    imgbasecim: TImage;
    imgcancim: TImage;
    imgcanocim: TImage;
    tmrmovetank: TTimer;
    imgcandir: TImage;
    imgcanodir: TImage;
    imgcanbai: TImage;
    imgcanobai: TImage;
    imgcanesq: TImage;
    imgcanoesq: TImage;
    imgfirecim: TImage;
    imgfiredir: TImage;
    imgfirebai: TImage;
    imgfireesq: TImage;
    imgtiro: TImage;
    tmrmovetiro: TTimer;
    imgesthor3: TImage;
    imgesthor4: TImage;
    imgbasedir: TImage;
    tmrmovman: TTimer;
    imgmancim1: TImage;
    imgmancim2: TImage;
    imgsangue: TImage;
    tmrmorte: TTimer;
    imghid: TImage;
    tmrhidrante: TTimer;
    imgaguap: TImage;
    imgaguag: TImage;
    imgaguam: TImage;
    imgcarver: TImage;
    Image28: TImage;
    imgexpg: TImage;
    imgexpm: TImage;
    imgexpp: TImage;
    tmrexplosao: TTimer;
    imgexpcar5: TImage;
    imgexpcar3: TImage;
    imgexpcar1: TImage;
    imgexpcar6: TImage;
    imgexpcar4: TImage;
    imgexpcar2: TImage;
    imgcarroexp: TImage;
    tmrexpcar: TTimer;
    imgmissilcim1: TImage;
    imgmissilcim2: TImage;
    imgmissildir1: TImage;
    imgmissildir2: TImage;
    imgbasebai: TImage;
    imgbaseesq: TImage;
    imgmissilesq1: TImage;
    imgmissilesq2: TImage;
    imgmissilbai1: TImage;
    imgmissilbai2: TImage;
    tmrmovmissil: TTimer;
    Image1: TImage;
    Image6: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    procedure tmrmovetankTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tmrmovetiroTimer(Sender: TObject);
    procedure tmrmovmanTimer(Sender: TObject);
    procedure tmrmorteTimer(Sender: TObject);
    procedure tmrhidranteTimer(Sender: TObject);
    procedure tmrexplosaoTimer(Sender: TObject);
    procedure tmrexpcarTimer(Sender: TObject);
    procedure tmrmovmissilTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfield: Tfrmfield;

implementation

{$R *.dfm}
var
    icontexp,icont, imovtop, imovlef, imovetirotop, imovtirolef, iconthid,
    icontroletiro, imovmislef, imovmistop: integer;




procedure Tfrmfield.tmrmovetankTimer(Sender: TObject);
begin
{MOVER}
//ESTEIRAS
imgestver3.top := imgestver3.top + imovtop;
imgesthor3.top := imgesthor3.top + imovtop;
imgesthor4.top := imgesthor4.top + imovtop;
imgestver1.Top := imgestver1.Top + imovtop;
imgestver1.left := imgestver1.left + imovlef;
imgestver3.left := imgestver3.left + imovlef;
imgesthor3.left := imgesthor3.left + imovlef;
imgesthor4.left := imgesthor4.left + imovlef;
// FIM - ESTEIRAS



//BASES
imgbasedir.top := imgbasedir.top + imovtop;
imgbasecim.top := imgbasecim.top + imovtop;
imgbasebai.Top := imgbasebai.Top + imovtop;
imgbaseesq.Top := imgbaseesq.Top + imovtop;
imgbasedir.left := imgbasedir.left + imovlef;
imgbasecim.left := imgbasecim.left + imovlef;
imgbasebai.Left := imgbasebai.Left + imovlef;
imgbaseesq.Left := imgbaseesq.Left + imovlef;
//FIM - BASES



//CANHÕES
imgcancim.top := imgcancim.top + imovtop;
imgcandir.top := imgcandir.top + imovtop;
imgcanbai.top := imgcanbai.top + imovtop;
imgcanesq.top := imgcanesq.top + imovtop;
imgcancim.left := imgcancim.left + imovlef;
imgcandir.left := imgcandir.left + imovlef;
imgcanbai.left := imgcanbai.left + imovlef;
imgcanesq.left := imgcanesq.left + imovlef;
//FIM - CANHÕES



//CANOS
imgcanocim.top := imgcanocim.top + imovtop;
imgcanodir.top := imgcanodir.top + imovtop;
imgcanobai.top := imgcanobai.top + imovtop;
imgcanoesq.top := imgcanoesq.top + imovtop;
imgcanocim.left := imgcanocim.left + imovlef;
imgcanodir.left := imgcanodir.left + imovlef;
imgcanobai.left := imgcanobai.left + imovlef;
imgcanoesq.left := imgcanoesq.left + imovlef;
//FIM - CANOS



//FOGO DOS CANHÕES
imgfirecim.top := imgfirecim.top + imovtop;
imgfirebai.top := imgfirebai.top + imovtop;
imgfiredir.top := imgfiredir.top + imovtop;
imgfireesq.top := imgfireesq.top + imovtop;
imgfirecim.Left := imgfirecim.Left + imovlef;
imgfiredir.Left := imgfiredir.Left + imovlef;
imgfirebai.Left := imgfirebai.Left + imovlef;
imgfireesq.Left := imgfireesq.Left + imovlef;
// FIM - FOGO DOS CANHÕES



//MISSEIS
imgmissilcim1.Top := imgmissilcim1.Top + imovtop;
imgmissilcim2.Top := imgmissilcim2.Top + imovtop;
imgmissildir1.Top := imgmissildir1.Top + imovtop;
imgmissildir2.Top := imgmissildir2.Top + imovtop;
imgmissilesq1.Top := imgmissilesq1.Top + imovtop;
imgmissilesq2.Top := imgmissilesq2.Top + imovtop;
imgmissilbai1.Top := imgmissilbai1.Top + imovtop;
imgmissilbai2.Top := imgmissilbai2.Top + imovtop;
imgmissilcim1.Left := imgmissilcim1.Left + imovlef;
imgmissilcim2.Left := imgmissilcim2.Left + imovlef;
imgmissildir1.Left := imgmissildir1.Left + imovlef;
imgmissildir2.Left := imgmissildir2.Left + imovlef;
imgmissilesq1.Left := imgmissilesq1.Left + imovlef;
imgmissilesq2.Left := imgmissilesq2.Left + imovlef;
imgmissilbai1.Left := imgmissilbai1.Left + imovlef;
imgmissilbai2.Left := imgmissilbai2.Left + imovlef;
//FIM - MISSEIS
{FIM - MOVER}





windows.Beep(50,10);



if tmrmovetiro.Enabled = false then
  imgtiro.Top := imgtiro.Top + imovtop
;

if tmrmovetiro.Enabled = false then
  imgtiro.left := imgtiro.left + imovlef
;




end;





procedure Tfrmfield.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if icontroletiro = 0 then
begin
if key = vk_up then
    begin
        if (imgbasedir.Visible = true) or (imgbaseesq.Visible = true) or (imgbasecim.Visible = true) then
            begin
                imgbasebai.Visible := false;
                imgbasecim.Visible := true;
                imgmissilcim1.Visible := true;
                imgmissilcim2.Visible := true;
                imovtop := -8;
                imovlef := 0;
            end
        else
            begin
                imgbasebai.Visible := true;
                imgbasecim.Visible := false;
                imgmissilbai1.Visible := true;
                imgmissilbai2.Visible := true;
                imovtop := -4;
                imovlef := 0;
            end
        ;
        imgmissildir1.Visible := false;
        imgmissildir2.Visible := false;
        imgmissilesq1.Visible := false;
        imgmissilesq2.Visible := false;
        imgbasedir.Visible := false;
        imgbaseesq.Visible := false;
        imgestver1.Visible := true;
        imgestver3.Visible := true;
        imgesthor3.Visible := false;
        imgesthor4.Visible := false;
        tmrmovetank.Enabled := true;
    end
;


if key = vk_down then
    begin
        if (imgbasedir.Visible = true) or (imgbaseesq.Visible = true) or (imgbasebai.Visible = true)then
            begin
                imgbasebai.Visible := true;
                imgbasecim.Visible := false;
                imgmissilbai1.Visible := true;
                imgmissilbai2.Visible := true;
                imovtop := +8;
                imovlef := 0;
            end
        else
            begin
                imgbasebai.Visible := false;
                imgbasecim.Visible := true;
                imgmissilcim1.Visible := true;
                imgmissilcim2.Visible := true;
                imovtop := +4;
                imovlef := 0;
            end
        ;
        imgmissildir1.Visible := false;
        imgmissildir2.Visible := false;
        imgmissilesq1.Visible := false;
        imgmissilesq2.Visible := false;
        imgbasedir.Visible := false;
        imgbaseesq.Visible := false;
        imgestver1.Visible := true;
        imgestver3.Visible := true;
        imgbasedir.Visible := false;
        imgesthor3.Visible := false;
        imgesthor4.Visible := false;
        tmrmovetank.Enabled := true;
    end
;

if key = vk_right then
    begin
        if (imgbasecim.Visible = true) or (imgbasebai.Visible = true) or (imgbasedir.Visible = true)then
            begin
                imgbasedir.Visible := true;
                imgbaseesq.Visible := false;
                imgmissildir1.Visible := true;
                imgmissildir2.Visible := true;
                imovtop := 0;
                imovlef := +8;
            end
        else
            begin
                imgbasedir.Visible := false;
                imgbaseesq.Visible := true;
                imgmissilesq1.Visible := true;
                imgmissilesq2.Visible := true;
                imovtop := 0;
                imovlef := +4;
            end
        ;
        imgmissilcim1.Visible := false;
        imgmissilcim2.Visible := false;
        imgmissilbai1.Visible := false;
        imgmissilbai2.Visible := false;
        imgbasecim.Visible := false;
        imgbasebai.Visible := false;
        imgestver1.Visible := false;
        imgestver3.Visible := false;
        imgesthor3.Visible := true;
        imgesthor4.Visible := true;
        tmrmovetank.Enabled := true;
    end
;

if key = vk_left then
    begin
        if (imgbasebai.Visible = true) or (imgbasecim.Visible = true) or (imgbaseesq.Visible = true) then
            begin
                imgbaseesq.Visible := true;
                imgbasedir.Visible := false;
                imgmissilesq1.Visible := true;
                imgmissilesq2.Visible := true;
                imovtop := 0;
                imovlef := -8;
            end
        else
            begin
                imgbasedir.Visible := true;
                imgbaseesq.Visible := false;
                imgmissildir1.Visible := true;
                imgmissildir2.Visible := true;
                imovtop := 0;
                imovlef := -4;
            end
        ;
        imgmissilcim1.Visible := false;
        imgmissilcim2.Visible := false;
        imgmissilbai1.Visible := false;
        imgmissilbai2.Visible := false;
        imgbasecim.Visible := false;
        imgbasebai.Visible := false;
        imgestver1.Visible := false;
        imgestver3.Visible := false;
        imgesthor3.Visible := true;
        imgesthor4.Visible := true;
        tmrmovetank.Enabled := true;
    end
;


if key = vk_space then
    begin
        if tmrmovetiro.Enabled <> true then
            if imgcandir.Visible = true then
                imgfiredir.Visible := true
            ;
        ;
        if tmrmovetiro.Enabled <> true then
            if imgcancim.Visible = true then
                imgfirecim.Visible := true
            ;
        ;

        if tmrmovetiro.Enabled <> true then
            if imgcanbai.Visible = true then
                imgfirebai.Visible := true
            ;
        ;
        if tmrmovetiro.Enabled <> true then
            if imgcanesq.Visible = true then
                imgfireesq.Visible := true
            ;
        ;
    end
;
end
else
    begin

    end
;

end;





procedure Tfrmfield.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_space then
    begin
        if imgfirecim.Visible = true then
            imgfirecim.Visible := false
        ;
        if imgfiredir.Visible = true then
            imgfiredir.Visible := false
        ;
        if imgfirebai.Visible = true then
            imgfirebai.Visible := false
        ;
        if imgfireesq.Visible = true then
            imgfireesq.Visible := false
        ;
    end
;


if key = vk_up then
    begin
        imovtop := 0;
        imovlef := 0;
        tmrmovetank.Enabled := false;
        if imgbasecim.Visible or imgbasebai.Visible then
            begin
                imgestver1.Visible := true;
                imgestver3.Visible := true;
            end
        else
            begin
                imgesthor3.Visible := true;
                imgesthor4.Visible := true;
            end
        ;
    end
;

if key = vk_down then
    begin
        imovtop := 0;
        imovlef := 0;
        tmrmovetank.Enabled := false;
        if imgbasecim.Visible or imgbasebai.Visible then
            begin
                imgestver1.Visible := true;
                imgestver3.Visible := true;
            end
        else
            begin
                imgesthor3.Visible := true;
                imgesthor4.Visible := true;
            end

        ;
    end
;

if key = vk_right then
    begin
        imovtop := 0;
        imovlef := 0;
        tmrmovetank.Enabled := false;
        if imgbasecim.Visible or imgbasebai.Visible then
            begin
                imgestver1.Visible := true;
                imgestver3.Visible := true;
            end
        else
            begin
                imgesthor3.Visible := true;
                imgesthor4.Visible := true;
            end
        ;
    end
;

if key = vk_left then
    begin
        imovtop := 0;
        imovlef := 0;
        tmrmovetank.Enabled := false;
        if imgbasecim.Visible or imgbasebai.Visible then
            begin
                imgestver1.Visible := true;
                imgestver3.Visible := true;
            end
        else
            begin
                imgesthor3.Visible := true;
                imgesthor4.Visible := true;
            end
        ;
    end
;


end;
{FIM - ROTINAS KEY UP DO TECLADO}









procedure Tfrmfield.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (key = 'a') or (key = 'A') then
    begin
        if imgcandir.Visible = true then
            key := #0
        else
            begin
                imgcancim.Visible := false;
                imgcanocim.Visible := false;
                imgcandir.Visible := false;
                imgcanodir.Visible := false;
                imgcanbai.Visible := false;
                imgcanobai.Visible := false;
                imgcanesq.Visible := true;
                imgcanoesq.Visible := true;
                if imgfirecim.Visible = true then
                    imgfirecim.Visible := false
                ;
                if imgfiredir.Visible = true then
                    imgfiredir.Visible := false
                ;
                if imgfirebai.Visible = true then
                    imgfirebai.Visible := false
                ;
                if imgfireesq.Visible = true then
                    imgfireesq.Visible := false
                ;
            end
       ;
    end
;


if (key = 'w') or (key = 'W') then
    begin
        if imgcanbai.Visible = true then
            key := #0
        else
            begin
                imgcancim.Visible := true;
                imgcanocim.Visible := true;
                imgcandir.Visible := false;
                imgcanodir.Visible := false;
                imgcanbai.Visible := false;
                imgcanobai.Visible := false;
                imgcanesq.Visible := false;
                imgcanoesq.Visible := false;
                if imgfirecim.Visible = true then
                    imgfirecim.Visible := false
                ;
                if imgfiredir.Visible = true then
                    imgfiredir.Visible := false
                ;
                if imgfirebai.Visible = true then
                    imgfirebai.Visible := false
                ;
                if imgfireesq.Visible = true then
                    imgfireesq.Visible := false
                ;
            end
       ;
    end
;


if (key = 'd') or (key = 'D') then
    begin
        if imgcanesq.Visible = true then
            key := #0
        else
            begin
                imgcancim.Visible := false;
                imgcanocim.Visible := false;
                imgcandir.Visible := true;
                imgcanodir.Visible := true;
                imgcanbai.Visible := false;
                imgcanobai.Visible := false;
                imgcanesq.Visible := false;
                imgcanoesq.Visible := false;
                if imgfirecim.Visible = true then
                    imgfirecim.Visible := false
                ;
                if imgfiredir.Visible = true then
                    imgfiredir.Visible := false
                ;
                if imgfirebai.Visible = true then
                    imgfirebai.Visible := false
                ;
                if imgfireesq.Visible = true then
                    imgfireesq.Visible := false
                ;
            end
        ;
    end
;


if (key = 's') or (key = 'S') then
    begin
        if imgcancim.Visible = true then
            key := #0
        else
            begin
                imgcancim.Visible := false;
                imgcanocim.Visible := false;
                imgcandir.Visible := false;
                imgcanodir.Visible := false;
                imgcanbai.Visible := true;
                imgcanobai.Visible := true;
                imgcanesq.Visible := false;
                imgcanoesq.Visible := false;
                if imgfirecim.Visible = true then
                    imgfirecim.Visible := false
                ;
                if imgfiredir.Visible = true then
                    imgfiredir.Visible := false
                ;
                if imgfirebai.Visible = true then
                    imgfirebai.Visible := false
                ;
                if imgfireesq.Visible = true then
                    imgfireesq.Visible := false
                ;
            end
        ;
    end
;


if (key = 'm') or (key = 'M') then
    begin
        icontroletiro := 1;
        tmrmovmissil.Enabled := true;
    end
;

        if key = 'a' then
            begin
                imovmislef := -1;
                imovmistop := 0;
                imgmissilcim1.Visible := false;
                imgmissilbai1.Visible := false;
                imgmissildir1.Visible := false;
                imgmissilesq1.Visible := true;
            end
        ;

        if key = 'w' then
            begin
                imovmislef := 0;
                imovmistop := -1;
                imgmissilcim1.Visible := true;
                imgmissilbai1.Visible := false;
                imgmissildir1.Visible := false;
                imgmissilesq1.Visible := false;
            end
        ;

        if key = 'd' then
            begin
                imovmislef := 1;
                imovmistop := 0;
                imgmissilcim1.Visible := false;
                imgmissilbai1.Visible := false;
                imgmissildir1.Visible := true;
                imgmissilesq1.Visible := false;
            end
        ;
        if key = 's' then
            begin
                imovmislef := 0;
                imovmistop := 1;
                imgmissilcim1.Visible := false;
                imgmissilbai1.Visible := true;
                imgmissildir1.Visible := false;
                imgmissilesq1.Visible := false;
            end
        ;


if key = ' ' then
    begin
        if tmrmovetiro.Enabled = false then
            begin
                if imgcanodir.Visible = true then
                    begin
                        imgtiro.Left := imgcanodir.Left + imgcanodir.Width - 7;
                        imgtiro.Top := imgcanodir.Top;
                        imovetirotop := 0;
                        imovtirolef := 20;
                        imgtiro.Visible := true;
                        tmrmovetiro.Enabled := true;
                    end
                ;
                if imgcanobai.Visible = true then
                    begin
                        imgtiro.Left := imgcanobai.Left;
                        imgtiro.Top := imgcanodir.Top + imgcanobai.height - 7;
                        imovetirotop := 20;
                        imovtirolef := 0;
                        imgtiro.Visible := true;
                        tmrmovetiro.Enabled := true;
                    end
                ;
                if imgcanoesq.Visible = true then
                    begin
                        imgtiro.Left := imgcanoesq.Left - 7;
                        imgtiro.Top := imgcanoesq.Top;
                        imovetirotop := 0;
                        imovtirolef := -20;
                        imgtiro.Visible := true;
                        tmrmovetiro.Enabled := true;
                    end
                ;
                if imgcanocim.Visible = true then
                    begin
                        imgtiro.Left := imgcanocim.Left;
                        imgtiro.Top := imgcanocim.Top + imgcanodir.Height - 7;
                        imovetirotop := -20;
                        imovtirolef := 0;
                        imgtiro.Visible := true;
                        tmrmovetiro.Enabled := true;
                    end
                ;
            end
        ;
    end
;





end;





procedure Tfrmfield.tmrmovetiroTimer(Sender: TObject);
begin
imgtiro.Left := imgtiro.Left + imovtirolef;
imgtiro.Top := imgtiro.Top + imovetirotop;
imgexpp.Left := imgtiro.Left - 10;
imgexpm.Left := imgtiro.Left;
imgexpg.Left := imgtiro.Left - 70;
imgexpp.Top  := imgtiro.Top - 10;
imgexpm.Top  := imgtiro.Top;
imgexpg.Top  := imgtiro.Top - 70;
if ((imgtiro.Left >= frmfield.Width) or (imgtiro.Top <= 0) or (imgtiro.Left <= 0) or (imgtiro.Top >= frmfield.Height))then
    begin
        tmrmovetiro.Enabled := false;
        imgtiro.Top := imgesthor3.Top + 10;
        imgtiro.Left := imgesthor3.Left + 10;
    end
;
end;

procedure Tfrmfield.tmrmovmanTimer(Sender: TObject);
begin
imgcarver.Top := imgcarver.Top + 7;
imgexpcar1.Top := imgexpcar1.Top + 7;
imgexpcar2.Top := imgexpcar2.Top + 7;
imgexpcar3.Top := imgexpcar3.Top + 7;
imgexpcar4.Top := imgexpcar4.Top + 7;
imgexpcar5.Top := imgexpcar5.Top + 7;
imgexpcar6.Top := imgexpcar6.Top + 7;
imgcarroexp.Top := imgcarroexp.Top + 7;

if imgmancim1.Top <= 0 then
    begin
        imgmancim1.Top := frmfield.Height + imgmancim1.Height;
        imgmancim2.Top := frmfield.Height + imgmancim2.Height;
        imgsangue.Top := frmfield.Height + imgsangue.Height;
    end
;

imgmancim1.Top := imgmancim1.Top -5;
imgmancim2.Top := imgmancim2.Top -5;
imgsangue.Top := imgsangue.Top - 5;

if icont mod 2 = 0 then
    begin
        imgmancim1.Visible := true;
        imgmancim2.Visible := false;
    end
else
    begin
        imgmancim1.Visible := false;
        imgmancim2.Visible := true;
    end
;
icont := icont + 1;
end;


procedure Tfrmfield.tmrmorteTimer(Sender: TObject);
var
    r: trect;
begin
if ((imgbasedir.Visible = true) and(intersectrect(r, imgbasedir.BoundsRect, imgmancim1.BoundsRect))) then
    begin
        if tmrmovman.Enabled = true then
            begin
                tmrmovman.Enabled := false;
                imgmancim1.Visible := false;
                imgmancim2.Visible := false;
                imgsangue.Visible := true;
                imgtiro.Left := imgesthor3.Left + 7;
                imgtiro.Top := imgesthor3.Top + 7;
                tmrmovetiro.Enabled := false;
                windows.Beep(2000,50);
            end
        ;
    end
;
if ((intersectrect(r, imgtiro.BoundsRect, imgmancim1.BoundsRect))) then
    begin
        if tmrmovman.Enabled = true then
            begin
                tmrexplosao.Enabled := true;
                tmrmovman.Enabled := false;
                imgmancim1.Visible := false;
                imgmancim2.Visible := false;
                imgsangue.Visible := true;
                imgtiro.Left := imgesthor3.Left + 7;
                imgtiro.Top := imgesthor3.Top + 7;
                tmrmovetiro.Enabled := false;
                windows.Beep(2000,50);
            end
        ;
    end
;

if ((intersectrect(r, imgtiro.BoundsRect, imghid.BoundsRect))) then
    begin
        tmrexplosao.Enabled := true;
        tmrhidrante.Enabled := true;
        imgtiro.Left := imgesthor3.Left + 7;
        imgtiro.Top := imgesthor3.Top + 7;
        tmrmovetiro.Enabled := false;
    end
;

if ((intersectrect(r, imgtiro.BoundsRect, imgcarver.BoundsRect))) then
    begin
        tmrexpcar.Enabled := true;
    end
;
end;

procedure Tfrmfield.tmrhidranteTimer(Sender: TObject);
begin
if iconthid = 0 then
    begin
        imgaguap.Visible := true;
        imgaguam.Visible := false;
        imgaguaG.Visible := false;
        iconthid := iconthid + 10;
        exit;
    end
;

if iconthid = 10 then
    begin
        imgaguap.Visible := false;
        imgaguam.Visible := true;
        imgaguaG.Visible := false;
        iconthid := iconthid + 10;
        exit;
    end
;

if iconthid = 20 then
    begin
        imgaguap.Visible := false;
        imgaguam.Visible := false;
        imgaguaG.Visible := true;
        iconthid := 0;
        exit
    end
;

end;

procedure Tfrmfield.tmrexplosaoTimer(Sender: TObject);
begin
    if icontexp = 0 then
        begin
            imgexpp.Visible := true;
            imgexpm.Visible := false;
            imgexpg.Visible := false;
        end
    ;
    if icontexp = 10 then
        begin
            imgexpp.Visible := false;
            imgexpm.Visible := true;
            imgexpg.Visible := false;
        end
    ;
    if icontexp = 20 then
        begin
            imgexpp.Visible := false;
            imgexpm.Visible := false;
            imgexpg.Visible := true;
        end
    ;
    if icontexp = 30 then
        begin
            imgexpp.Visible := false;
            imgexpm.Visible := true;
            imgexpg.Visible := false;
        end
    ;
    if icontexp = 40 then
        begin
            imgexpp.Visible := true;
            imgexpm.Visible := false;
            imgexpg.Visible := false;
        end
    ;
    if icontexp = 50 then
        begin
            imgexpp.Visible := false;
            imgexpm.Visible := false;
            imgexpg.Visible := false;
            icontexp := 0;
            tmrexplosao.Enabled := false;
        end
    ;
            icontexp := icontexp +10;

end;


procedure Tfrmfield.tmrexpcarTimer(Sender: TObject);
begin
if icontexp = 0 then
  begin
    imgexpcar1.Visible := true;
    imgexpcar2.Visible := false;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := false;
    imgexpcar5.Visible := false;
    imgexpcar6.Visible := false;
  end
;

if icontexp = 10 then
  begin
    imgexpcar1.Visible := false;
    imgexpcar2.Visible := true;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := false;
    imgexpcar5.Visible := false;
    imgexpcar6.Visible := false;
  end
;

if icontexp = 20 then
  begin
    imgexpcar1.Visible := false;
    imgexpcar2.Visible := false;
    imgexpcar3.Visible := true;
    imgexpcar4.Visible := true;
    imgexpcar5.Visible := false;
    imgexpcar6.Visible := false;
  end
;

if icontexp = 30 then
  begin
    imgexpcar1.Visible := false;
    imgexpcar2.Visible := true;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := false;
    imgexpcar5.Visible := true;
    imgexpcar6.Visible := false;
  end
;

if icontexp = 40 then
  begin
    imgexpcar1.Visible := true;
    imgexpcar2.Visible := false;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := false;
    imgexpcar5.Visible := false;
    imgexpcar6.Visible := true;
  end
;

if icontexp = 50 then
  begin
    imgexpcar1.Visible := false;
    imgexpcar2.Visible := false;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := false;
    imgexpcar5.Visible := true;
    imgexpcar6.Visible := false;
  end
;

if icontexp = 60 then
  begin
    imgexpcar1.Visible := false;
    imgexpcar2.Visible := false;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := true;
    imgexpcar5.Visible := false;
    imgexpcar6.Visible := false;
  end
;

if icontexp = 70 then
  begin
    imgexpcar1.Visible := false;
    imgexpcar2.Visible := false;
    imgexpcar3.Visible := false;
    imgexpcar4.Visible := false;
    imgexpcar5.Visible := false;
    imgexpcar6.Visible := false;
    tmrexpcar.Enabled := false;
    imgcarroexp.Visible := true;
    imgcarver.Visible := false;
    icontexp := 0;
  end
;

icontexp := icontexp + 10;
end;



procedure Tfrmfield.tmrmovmissilTimer(Sender: TObject);
begin
imgmissildir1.Left := imgmissildir1.Left + (imovmislef * 30);
imgmissildir1.Top := imgmissildir1.Top + (imovmistop * 30);

imgmissilcim1.Top := imgmissildir1.Top;
imgmissilesq1.Top := imgmissildir1.Top;
imgmissilbai1.Top := imgmissildir1.Top;
imgmissilcim1.Left := imgmissildir1.Left;
imgmissilesq1.Left := imgmissildir1.Left;
imgmissilbai1.Left := imgmissildir1.Left;
end;

end.
