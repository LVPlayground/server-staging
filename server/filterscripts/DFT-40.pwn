#include <a_samp>
#include <core>
#include <float>


public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Party on DFT-40 LOADED");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	print("\n--------------------------------------");
	print(" PARTY IS OVER!");
	print("--------------------------------------\n");
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

function11C(arg0)
{
	new var0 = 0;
	new var1 = GetVehicleModel(arg0);
	switch(var1) {
		case 578:
			var0 = var1;
		default:
			var0 = 0;
	}
	return var0;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == 2)
	{
		new var0 = GetPlayerVehicleID(playerid);
		if(function11C(var0))
		{
			GameTextForPlayer(playerid, "Make this city jump!", 3000, 4);
			SendClientMessageToAll(0x00FF00FF, "Party DFT-40 is ready and in your town!");
			SetPVarInt(playerid, 1044, 1);
			SetPVarInt(playerid, 1072, CreateObject(2099, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1092, CreateObject(2111, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1112, CreateObject(2232, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1132, CreateObject(2232, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1152, CreateObject(18652, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1172, CreateObject(18669, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1192, CreateObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1212, CreateObject(18655, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1232, CreateObject(18653, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1252, CreateObject(18654, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1276, CreateObject(18652, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1300, CreateObject(2111, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1324, CreateObject(18102, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1348, CreateObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1372, CreateObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			SetPVarInt(playerid, 1396, CreateObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0));
			AttachObjectToVehicle(GetPVarInt(playerid, 1420), GetPlayerVehicleID(playerid), 2147483648, 1075188884, 3197066247, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1440), GetPlayerVehicleID(playerid), 0, 1046562667, 0, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1460), GetPlayerVehicleID(playerid), 1066317898, 1073574035, 1050085916, 1073783771, 897988541, 3282918634);
			AttachObjectToVehicle(GetPVarInt(playerid, 1480), GetPlayerVehicleID(playerid), 3214053204, 1073574035, 1050085916, 1073783771, 897988541, 3283972458);
			AttachObjectToVehicle(GetPVarInt(playerid, 1500), GetPlayerVehicleID(playerid), 3215017894, 3211159126, 3198240653, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1520), GetPlayerVehicleID(playerid), 1000593162, 3209984721, 3211494670, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1540), GetPlayerVehicleID(playerid), 1056964574, 1081648259, 1069086130, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1560), GetPlayerVehicleID(playerid), 0, 1075293742, 3208306999, 0, 3221267407, 1118888258);
			AttachObjectToVehicle(GetPVarInt(playerid, 1580), GetPlayerVehicleID(playerid), 3206797049, 1075293742, 3208306999, 0, 3221267407, 1118888258);
			AttachObjectToVehicle(GetPVarInt(playerid, 1600), GetPlayerVehicleID(playerid), 1063591592, 1075293742, 3208306999, 0, 3221267407, 1118888258);
			AttachObjectToVehicle(GetPVarInt(playerid, 1624), GetPlayerVehicleID(playerid), 1068121440, 3211159126, 3198240653, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1648), GetPlayerVehicleID(playerid), 0, 3220386594, 0, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1672), GetPlayerVehicleID(playerid), 3216234242, 1076013082, 1069316817, 1134122126, 1127606197, 3266330617);
			AttachObjectToVehicle(GetPVarInt(playerid, 1696), GetPlayerVehicleID(playerid), 2147483648, 3232319559, 3199347949, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1720), GetPlayerVehicleID(playerid), 2147483648, 3220134936, 1053676240, 0, 0, 0);
			AttachObjectToVehicle(GetPVarInt(playerid, 1744), GetPlayerVehicleID(playerid), 2147483648, 1049247055, 1053676240, 0, 0, 0);
		}
	}
	else
	{
		DestroyObject(GetPVarInt(playerid, 1768));
		DeletePVar(playerid, 1788);
		DestroyObject(GetPVarInt(playerid, 1816));
		DeletePVar(playerid, 1836);
		DestroyObject(GetPVarInt(playerid, 1864));
		DeletePVar(playerid, 1884);
		DestroyObject(GetPVarInt(playerid, 1912));
		DeletePVar(playerid, 1932);
		DestroyObject(GetPVarInt(playerid, 1960));
		DeletePVar(playerid, 1980);
		DestroyObject(GetPVarInt(playerid, 2008));
		DeletePVar(playerid, 2028);
		DestroyObject(GetPVarInt(playerid, 2056));
		DeletePVar(playerid, 2076);
		DestroyObject(GetPVarInt(playerid, 2104));
		DeletePVar(playerid, 2124);
		DestroyObject(GetPVarInt(playerid, 2152));
		DeletePVar(playerid, 2172);
		DestroyObject(GetPVarInt(playerid, 2200));
		DeletePVar(playerid, 2220);
		DestroyObject(GetPVarInt(playerid, 2248));
		DeletePVar(playerid, 2272);
		DestroyObject(GetPVarInt(playerid, 2300));
		DeletePVar(playerid, 2324);
		DestroyObject(GetPVarInt(playerid, 2352));
		DeletePVar(playerid, 2376);
		DestroyObject(GetPVarInt(playerid, 2404));
		DeletePVar(playerid, 2428);
		DestroyObject(GetPVarInt(playerid, 2456));
		DeletePVar(playerid, 2480);
		DestroyObject(GetPVarInt(playerid, 2508));
		DeletePVar(playerid, 2532);
		DestroyObject(GetPVarInt(playerid, 2560));
		DeletePVar(playerid, 2584);
	}
	return 0;
}

main()
{
	return 0;
}

