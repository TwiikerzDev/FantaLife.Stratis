StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v4.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "mapping.sqf";
[] execVM "statusBar.sqf";
[] execVM "scripts\init_weather.sqf";

StartProgress = true;
