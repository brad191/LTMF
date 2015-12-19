// F3 - Medical Systems Support initialisation
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RUN RELEVANT SCRIPTS, DEPENDING ON SYSTEM IN USE
// Each medical modification requires a different set of scripts to be used, and so we
// split into a separate script file for initialisation of each mod.

// Wait for parameter to be initialised
waitUntil{!isNil "f_var_medical"};


call
{
	// Check which system to use
	// If 0 do nothing (Default Arma Healing)

	// ACE3 Basic
	if (f_var_medical == 1) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			[] execVM "f\medical\ACE_basic_clientInit.sqf";
		};
	};
	// ACE3 Advanced
	if (f_var_medical == 2) exitWith
	{
		// If script is being run on a client
		if (hasInterface) then
		{
			[] execVM "f\medical\ACE_adv_clientInit.sqf";
		};
	};
};
