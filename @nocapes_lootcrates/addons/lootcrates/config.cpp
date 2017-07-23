class CfgPatches
{
	class YourTAG_ReplacementSet_With_AddonName
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.72;
		requiredAddons[] = {};
	};
};

class CfgFunctions
{
	class NOCLC
	{
		class scripts
		{
			file = "\noclc\scripts"
			class init {postInit = 1;};
		};
	};
};