local counter = 0;
local t = Def.ActorFrame{
};
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:fov(120);
		self:diffusecolor(color("#14FE00"));
		self:zoomx(1.5);
	end;
	Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenLogo","background/back.png"))..{
			InitCommand=cmd(Center;diffusealpha,0.8);
		};
		LoadActor(THEME:GetPathB("ScreenLogo","background/fog.png"))..{
			InitCommand=cmd(diffusealpha,0.5;Center;blend,Blend.Add;;fadetop,0.3;fadebottom,0.3);
		};
	};
	Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenLogo","background/grid"))..{
			InitCommand=cmd(valign,1;Center;FullScreen;rotationx,120;zoom,0.6);
		};
	};
	Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenLogo","background/grid"))..{
			InitCommand=cmd(valign,0;Center;FullScreen;rotationx,240;zoom,0.6);
		};
	};
};

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:zoom(1);
	end;
	Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenLogo","background/radar"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-1;y,SCREEN_CENTER_Y-8);
			OnCommand=cmd(zoom,0;diffusealpha,1;sleep,0.5;linear,0.5;zoom,5;rotationz,120;diffusealpha,0;effectperiod,2;)
		};
		LoadActor(THEME:GetPathB("ScreenLogo","background/ddrsn_logo.png"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-1;y,SCREEN_CENTER_Y-8;zoom,0.9;);
		};
		Def.Quad{
			InitCommand=cmd(FullScreen;diffuse,color("0,0,0,0.6"));
		};
		LoadActor("left_panel")..{
			InitCommand=cmd(x,SCREEN_LEFT+47;y,SCREEN_CENTER_Y);
			OnCommand=cmd(addx,-94;decelerate,0.2;addx,94);
		};
		LoadActor("image")..{
			InitCommand=cmd(x,SCREEN_LEFT+182;y,SCREEN_CENTER_Y-40);
			OnCommand=cmd(zoom,0.2;linear,0.4;zoom,1.3;linear,0.2;zoom,1);
		};
		Def.Quad{
			InitCommand=cmd(blend,Blend.Add;;x,SCREEN_LEFT+182;y,SCREEN_CENTER_Y-40;scaletoclipped,296,216);
			OnCommand=cmd(zoom,0.2;diffusealpha,0;linear,0.4;zoom,1.3;diffusealpha,1;linear,0.2;zoom,1;diffusealpha,0);
		};
		LoadActor("home_dialog")..{
			InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-85);
			OnCommand=cmd(zoomy,0;sleep,0.1;accelerate,0.3;zoomy,1);
		};
	};
};

return t;