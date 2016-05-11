local t = Def.ActorFrame{
	LoadActor("mid")..{
		InitCommand=cmd(CenterX);
	};
	Def.TextBanner{
		InitCommand = function(self) self:Load("TextBannerGameplay")
        	:x(SCREEN_CENTER_X-100):y(-8)
        	if GAMESTATE:GetCurrentSong() then
        		self:SetFromSong(GAMESTATE:GetCurrentSong())
        	end
        end;
        CurrentSongChangedMessageCommand = function(self)
        	self:SetFromSong(GAMESTATE:GetCurrentSong())
        end;
	};
};

if GAMESTATE:IsPlayerEnabled('PlayerNumber_P1') then
--P1 Score Frame
t[#t+1]=Def.ActorFrame{
	InitCommand=cmd(addy,2);
	Def.Quad{
		InitCommand=cmd(halign,0;x,SCREEN_LEFT;setsize,192,24;diffuse,color("#666666"));
	};
	Def.Quad{
		InitCommand=cmd(halign,0;x,SCREEN_LEFT;setsize,190,20;diffuse,color("0,0,0,1"));
	};
};
end;

if GAMESTATE:IsPlayerEnabled('PlayerNumber_P2') then
t[#t+1]=Def.ActorFrame{
	InitCommand=cmd(addy,2);
	Def.Quad{
		InitCommand=cmd(halign,1;x,SCREEN_RIGHT;setsize,192,24;diffuse,color("#666666"));
	};
	Def.Quad{
		InitCommand=cmd(halign,1;x,SCREEN_RIGHT;setsize,190,20;diffuse,color("0,0,0,1"));
	};
};
end;

return t;
