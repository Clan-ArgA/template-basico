/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params ["_colorTheme"];

//Realistic Color Correction theme
if (_colorTheme == 'Realista') then {
	"ColorCorrections" ppEffectEnable true;
	"ColorCorrections" ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]];
	"ColorCorrections" ppEffectCommit 0;
};


//Post Apocalyptic theme
if (_colorTheme == 'Apocalipsis') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 0.9, -0.002, [0.0, 0.0, 0.0, 0.0], [1.0, 0.6, 0.4, 0.6],  [0.199, 0.587, 0.114, 0.0]];  
	"colorCorrections" ppEffectCommit 0;
};


//Nightstalkers theme
if (_colorTheme == 'Nightstalkers') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 1.1, 0.0, [0.0, 0.0, 0.0, 0.0], [1.0,0.7, 0.6, 0.60], [0.200, 0.600, 0.100, 0.0]];
	"colorCorrections" ppEffectCommit 0;
};


//OFP Gamma theme
if (_colorTheme == 'OFP_Gamma') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 1.4, 0.6, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
	"colorCorrections" ppEffectCommit 1;  
};

//Golden autumn theme
if (_colorTheme == 'Otoño_Dorado') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
	"colorCorrections" ppEffectCommit 0; 
};

//Africa theme
if (_colorTheme == 'Africa') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
	"colorCorrections" ppEffectCommit 0;
};

//Afghan theme
if (_colorTheme == 'Afghan') then {
	"ColorCorrections" ppEffectEnable true;
	"ColorCorrections" ppEffectAdjust [0.9, 0.9, 0, [0, 0.1, 0.25, -0.14], [1, 1, 1, 1.26], [0.15, 0.09, 0.09, 0.0]];
	"ColorCorrections" ppEffectCommit 0;
};

//Middle East theme
if (_colorTheme == 'Medio_Oriente') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [0.9, 1, 0, [0.1, 0.1, 0.1, -0.1], [1, 1, 0.8, 0.528],  [1, 0.2, 0, 0]];
	"colorCorrections" ppEffectCommit 0;
};

//Real Is Brown theme
if (_colorTheme == 'Realidad_Marrón') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1,1,0,[0.1,0.2,0.3,-0.3],[1,1,1,0.5],[0.5,0.2,0,1]];
	"colorCorrections" ppEffectCommit 0;
};

//Gray Tone theme
if (_colorTheme == 'Escala_Grises') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1.0, 1.0, 0.0,[1.0, 1.0, 1.0, 0.0],[1.0, 1.0, 0.9, 0.35],[0.3,0.3,0.3,-0.1]];
	"colorCorrections" ppEffectCommit 0;
};

//Cold Tone theme
if (_colorTheme == 'Frío') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1.0, 1.0, 0.0,[0.2, 0.2, 1.0, 0.0],[0.4, 0.75, 1.0, 0.60],[0.5,0.3,1.0,-0.1]];
	"colorCorrections" ppEffectCommit 0;
};

//Winter Blue theme
if (_colorTheme == 'Invierno_Azul') then {
	"colorCorrections" ppEffectEnable true;
	"ColorCorrections" ppEffectAdjust [1.1, 1.3, 0.0, [0.5, 0.5, 0.1, -0.1], [0.4, 0.75, 1.0, 0.60], [0.5,0.3,1.0,-0.1]];
	"colorCorrections" ppEffectCommit 0;
};

//Winter White theme
if (_colorTheme == 'Invierno_Blanco') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.31, 0.31, 1.0, 0.1], [0.85, 0.85, 0.92, 0.48], [1 , 1, 1, 0.03]];
	"colorCorrections" ppEffectCommit 0;
};

//Mediterranean theme
if (_colorTheme == 'Mediterraneo') then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1.01, 1.18, -0.04, [1.0, 1.4, 0.8, -0.04], [0.55, 0.55, 0.72, 1.35],  [0.699, 1.787, 0.314, 20.03]];  
	"colorCorrections" ppEffectCommit 1;
};

// Post-soviet color correction (by JTS)
if (_colorTheme == 'Post_Soviético') then {
	"ColorCorrections" ppEffectEnable true;
	"ColorCorrections" ppEffectAdjust [0.88, 0.88, 0, [0.2, 0.29, 0.4, -0.22], [1, 1, 1, 1.3], [0.15, 0.09, 0.09, 0.0]];
	"ColorCorrections" ppEffectCommit 0;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/