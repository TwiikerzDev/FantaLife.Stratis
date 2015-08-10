#include <macro.h>

private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;


if(isNil "_vehicle") exitWith {hint "Il y a une erreur dans la sélection..."};

Price = switch(playerSide) do {
	case civilian: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"garageSell"),0)};
	case west: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"garageSell"),1)};
	case independent: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"garageSell"),2)};
	case east: {SEL(M_CONFIG(getArray,CONFIG_VEHICLES,_vehicle,"garageSell"),4)};
};

if(!(EQUAL(typeName _Price,typeName 0)) OR _Price < 1) then {_Price = 1000};
if(BANK < (LIFE_SETTINGS(getNumber,"price"))) exitWith {

		hint format[localize "STR_GNOTF_NotEnoughMoney",

[[_vid,_pid,_unit,_price],"TON_fnc_InsureCar",false,false] spawn life_fnc_MP;

hint "Votre véhicule est désormais assuré";

[((LIFE_SETTINGS(getNumber,"price"))-BANK)] call life_fnc_numberText];
closeDialog 0;