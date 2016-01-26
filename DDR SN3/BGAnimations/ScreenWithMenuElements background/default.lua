local t = Def.ActorFrame{
};
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:fov(120);
	end;
	Def.ActorFrame{
		LoadActor(THEME:GetPathB("ScreenLogo","background/back"))..{
			InitCommand=cmd(FullScreen;rainbow;effectperiod,100);
		};
	};
	Def.ActorFrame{
	InitCommand=cmd(Center;queuecommand,"Animate";blend,Blend.Add;;diffusealpha,0.6);
	AnimateCommand=cmd(spin;effectmagnitude,0,0,10);
		LoadActor(THEME:GetPathB("","ScreenLogo background/1"))..{
			InitCommand=cmd(y,-120;CenterX;zoomx,SCREEN_WIDTH;rotationx,75;fadetop,0.5;fadebottom,0.5);
			OnCommand=cmd(diffusealpha,0;blend,Blend.Add;;linear,2;diffusealpha,0.55;addy,SCREEN_HEIGHT;queuecommand,"Queue");
			QueueCommand=cmd(diffusealpha,0;addy,-SCREEN_HEIGHT;sleep,4;queuecommand,"On");
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/1"))..{
			InitCommand=cmd(y,120;CenterX;zoomx,SCREEN_WIDTH;rotationx,-75;fadetop,0.5;fadebottom,0.5);
			OnCommand=cmd(diffusealpha,0;blend,Blend.Add;;linear,2;diffusealpha,0.55;addy,-SCREEN_HEIGHT;queuecommand,"Queue");
			QueueCommand=cmd(diffusealpha,0;addy,SCREEN_HEIGHT;sleep,4;queuecommand,"On");
		};
	};
	Def.ActorFrame{
	InitCommand=cmd(Center;queuecommand,"Animate"zoom,2;blend,Blend.Add;;diffusealpha,0.6);
	AnimateCommand=cmd(spin;effectmagnitude,0,0,10);
		LoadActor(THEME:GetPathB("","ScreenLogo background/grid"))..{
			InitCommand=cmd(y,-120;rotationx,75;zoomx,2;diffusealpha,0.3;fadetop,0.5;fadebottom,0.5;queuecommand,"Animate");
			AnimateCommand=cmd(linear,2;addx,-60;linear,2;addx,60;queuecommand,"Animate");
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/grid"))..{
			InitCommand=cmd(y,-120;rotationx,75;zoomx,2;diffusealpha,0.3;fadetop,0.5;fadebottom,0.5;queuecommand,"Animate");
			AnimateCommand=cmd(linear,2;addx,75;linear,2;addx,-75;queuecommand,"Animate");
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/grid"))..{
			InitCommand=cmd(y,120;rotationx,-75;zoomx,2;diffusealpha,0.3;fadetop,0.5;fadebottom,0.5;queuecommand,"Animate");
			AnimateCommand=cmd(linear,2;addx,60;linear,2;addx,-60;queuecommand,"Animate");
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/grid"))..{
			InitCommand=cmd(y,120;rotationx,-75;zoomx,2;diffusealpha,0.3;fadetop,0.5;fadebottom,0.5;queuecommand,"Animate");
			AnimateCommand=cmd(linear,2;addx,-75;linear,2;addx,75;queuecommand,"Animate");
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/grid"))..{
			InitCommand=cmd(y,-120;rotationx,75;zoomx,2;diffusealpha,0.5;fadetop,0.5;fadebottom,0.5);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/grid"))..{
			InitCommand=cmd(y,120;rotationx,-75;zoomx,2;diffusealpha,0.5;fadetop,0.5;fadebottom,0.5);
		};
	};
	Def.ActorFrame{
	InitCommand=cmd(Center;queuecommand,"Animate";blend,Blend.Add;;diffusealpha,0.6);
	AnimateCommand=cmd(spin;effectmagnitude,-90,60,30);
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,1;zoom,0.2;rotationx,45);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,1;zoom,0.2;rotationx,90);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,1;zoom,0.2;rotationy,90);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,1;zoom,0.2;rotationy,45);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,0.2;zoom,0.5);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,0.2;zoom,0.5;rotationx,45);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,0.5;zoom,0.5;rotationx,90);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,0.5;zoom,0.5;rotationy,90);
		};
		LoadActor(THEME:GetPathB("","ScreenLogo background/tri"))..{
			InitCommand=cmd(diffusealpha,0.5;zoom,0.5;rotationy,45);
		};
	};
};

return t;