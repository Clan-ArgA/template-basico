/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
params ["_dataArray"];

private _jsonResult = '{';

/*
[
    ["key1", "value1"],
    ["key2", "value2"],
    ["key3", [
                ["key31", "value31"],
                ["key32", "value32"],
                ["key33", "value33"]
            ] 
    ],
    ["key4", "value4"]
]
*/
["--------------------------------------------------------------------"] call MIV_fnc_log;
["Comienzo",_dataArray] call MIV_fnc_log;
{
    [_x] call MIV_fnc_log;
    _x params ["_key", "_data"];
    _comma = if (_forEachIndex > 0) then {','} else {''};
    if (typeName _data == "ARRAY") then {
        _jsonExtra = [_data] call MIV_fnc_create_jsonObject;
        _jsonResult = format['%1%2"%3":%4', _jsonResult, _comma, _key, _jsonExtra];
    } else {
        _jsonResult = format['%1%2"%3":"%4"', _jsonResult, _comma, _key,_data];
    };
    
} forEach _dataArray;
_jsonResult = format['%1}',_jsonResult];

 ["Final:",_jsonResult] call MIV_fnc_log;
 _jsonResult

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

/*/_data = 
[
    ["key1", "value1"],
    ["key2", "value2"],
    ["key3", [
                ["key31", "value31"],
                ["key32", "value32"],
                ["key33", "value33"]
            ]
    ],
    ["key4", "value4"]
];
//_data = [["key1", "value1"],["key2", "value2"]];

/*
{
"mode": "entrenamiento",
"pepe":{"algo":"mas","fff":"jjjj"}
},
*/
/*
[
    ["mission","Op. Template Basico"],
    ["date",""],
    ["time",""],
    ["mode","No Oficial"],
    ["weather",""],
    ["location",""],
    ["isCampaign",0],
    ["campaignName",""],
    ["briefing",[
                    ["situation",[""]],
                    ["storySituation",[""]],
                    ["intelligence",[""]],
                    ["objectives",["",""]],
                    ["loadout",["",""]],
                    ["enemyForces",["",""]]
                ]
    ],
    ["author","ArgA"],
    ["worldName","Stratis"]
]


[
    ["situation",[""]],
    ["storySituation",[""]],
    ["intelligence",[""]],
    ["objectives",["",""]],
    ["loadout",["",""]],
    ["enemyForces",["",""]]
]
*/