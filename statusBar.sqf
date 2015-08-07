waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

4 cutRsc ["osefStatusBar","PLAIN"]; 
//systemChat format["[GL v3.1.4] Loading game server info...", _rscLayer];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText
    format["Pas de TS | Fps: %2 | Police: %3 | Joueur: %4", _statusText, round diag_fps, 
    west countSide playableUnits, count playableUnits];
	}; 
};