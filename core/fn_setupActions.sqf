/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
    case west:
	{
		//Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
		//entrer dans un vehicule meme verouill�
		life_actions = life_actions + [player addAction["Monter en conducteur",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']]; 
		life_actions = life_actions + [player addAction["Descendre",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
        // Prendre barri�re
		life_actions = life_actions + [player addAction["Prendre barri�re",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		//Bouchon oreille
		player addAction["Mettre les bouchons",{0.5 fadeSound 0.1; life_earplugs = true; },"",-9999999,false,false,"","!life_earplugs"];
		player addAction["Enlever les bouchons",{0.5 fadeSound 1; life_earplugs = false; },"",-9999999,false,false,"","life_earplugs"];
		};
  
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	    // take them organs
		life_actions = life_actions + [player addAction["Recuperer Organes",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Bouchon oreille
		player addAction["Mettre les bouchons",{0.5 fadeSound 0.1; life_earplugs = true; },"",-9999999,false,false,"","!life_earplugs"];
		player addAction["Enlever les bouchons",{0.5 fadeSound 1; life_earplugs = false; },"",-9999999,false,false,"","life_earplugs"];
        };
		
	case independent:
	{
		//Bouchon oreille
		player addAction["Mettre les bouchons",{0.5 fadeSound 0.1; life_earplugs = true; },"",-9999999,false,false,"","!life_earplugs"];
		player addAction["Enlever les bouchons",{0.5 fadeSound 1; life_earplugs = false; },"",-9999999,false,false,"","life_earplugs"];
		};
};