#include <macro.h>
/*
	File: fn_garageLBChange.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private["_control","_index","_className","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_insurPrice","_insur"];
_control = SEL(_this,0);
_index = SEL(_this,1);

//Fetch some information.
_dataArr = CONTROL_DATAI(_control,_index);
_dataArr = call compile format["%1",_dataArr];
_className = SEL(_dataArr,0);
_insur = SEL(_dataArr, 2);

_vehicleColor = SEL(SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"textures"),SEL(_dataArr,1)),0);
if(isNil "_vehicleColor") then {_vehicleColor = "Default";};

_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

_retrievePrice = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"storageFee"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"storageFee"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"storageFee"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"storageFee"),4)};
};

_sellPrice = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"garageSell"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"garageSell"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"garageSell"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"garageSell"),4)};
};

_insurPrice = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"insurance"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"insurance"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"insurance"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_className,"insurance"),4)};
};

if(!(EQUAL(typeName _sellPrice,typeName 0)) OR _sellPrice < 1) then {_sellPrice = 1000};
if(!(EQUAL(typeName _retrievePrice,typeName 0)) OR _retrievePrice < 1) then {_retrievePrice = 1000};
if(!(EQUAL(typeName _insurPrice,typeName 0)) OR _assurPrice < 1) then {_insurPrice = 1000};

(CONTROL(2800,2803)) ctrlSetStructuredText parseText format[
	(localize "STR_Shop_Veh_UI_RetrievalP")+ " <t color='#8cff9b'>$%1</t><br/>
	" +(localize "STR_Shop_Veh_UI_SellP")+ " <t color='#8cff9b'>$%2</t><br/>
	" +(localize "STR_Shop_Veh_UI_Assur")+ " <t color='#8cff9b'>%9€</t><br/>
    " +(localize "STR_Shop_Veh_UI_AssurI")+ " %10<br/>
	" +(localize "STR_Shop_Veh_UI_Color")+ " %8<br/>
	" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>
	" +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>
	" +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>
	" +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>
	" +(localize "STR_Shop_Veh_UI_Fuel")+ " %7
	",
[_retrievePrice] call life_fnc_numberText,
[_sellPrice] call life_fnc_numberText,
SEL(_vehicleInfo,8),
SEL(_vehicleInfo,11),
SEL(_vehicleInfo,10),
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
SEL(_vehicleInfo,12),
_vehicleColor,
[_insurPrice] call life_fnc_numberText,
if(_insur == 1) then {"<t color='#8cff9b'>Assuré</t>"} else {"<t color='#FF0000'>Pas d'assurance</t>"},
SEL(_vehicleInfo,9)
];

if(_insur == 1) then {
ctrlShow [97480,False];
}else{
ctrlShow [97480,True];
};

ctrlShow [2805,true];
ctrlShow [2803,true];