/*
File: mapping.sqf
	Author: John Salamander/Twiikerz
	
	Description:
	Mapping of John Salamander/Twiikerz for the Server FantaLife using xcam. *work in progress*
*/
private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString];if((_dat select 4) == 0) then {_obj allowDammage false}; {_obj enableSimulation false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)}};

//Plage Agia 29/07/2015
_dat = ["plp_bo_BeachBar","[2831.423828,5957.748047,2.38419e-007]",37.6263,-100,0,0,[]];call _cString;
_dat = ["plp_bo_BarStool","[2828.213379,5961.0253906,0]",37.6263,-100,0,0,[]];call _cString;
_dat = ["plp_bo_BarStool","[2827.277344,5960.0908203,0]",37.6263,-100,0,0,[]];call _cString;
_dat = ["plp_bo_BarStool","[2826.553223,5958.837891,0]",37.6263,-100,0,0,[]];call _cString;
_dat = ["plp_bo_BarStool","[2825.797119,5957.858398,0]",37.6263,-100,0,0,[]];call _cString;
_dat = ["plp_bo_ChainOfLightsColoredShort","[2831.410156,5962.842285,1.01683]",164.078,-100,0,0,[]];call _cString;
_dat = ["plp_bo_CrateLaRosaStatic","[2831.850098,5961.953613,0]",181.187,-100,0,0,[]];call _cString;
_dat = ["plp_bo_InflatableMatressBlue","[2801.48877,5965.688965,0.988216]",258.838,-100,0,0,[]];call _cString;
_dat = ["plp_bo_InflatableMatressBlue","[2804.625488,5972.989746,1.01368]",149.432,-100,0,0,[]];call _cString;
_dat = ["plp_bo_InflatableMatressBlueStanding","[2837.632813,5961.616699,0.0757575]",204.419,-100,0,0,[]];call _cString;
_dat = ["plp_bo_InflatableMatressOrange","[2801.37207,5970.489746,0.96633]",204.419,-100,0,0,[]];call _cString;
_dat = ["plp_bo_InflatableMatressRed","[2798.0251465,5969.899414,1.04931]",204.419,-100,0,0,[]];call _cString;
_dat = ["plp_bo_LifebeltHanging","[2829.121338,5961.334473,0.236532]",302.841,-100,0,0,[]];call _cString;
_dat = ["plp_bo_ParasolRedStripes","[2818.84375,5958.974609,0]",302.841,-100,0,0,[]];call _cString;
_dat = ["plp_bo_ParasolWhite","[2822.259766,5962.824707,1.19209e-007]",302.841,-100,0,0,[]];call _cString;
_dat = ["plp_bo_ParasolBlueStripes","[2824.593506,5968.0961914,-1.19209e-007]",302.841,-100,0,0,[]];call _cString;
_dat = ["plp_bo_ParasolRedStripes","[2823.945801,5973.524902,1.19209e-007]",302.841,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SideTable","[2823.376465,5973.854004,0]",302.841,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SunChairRed","[2824.0505371,5974.808594,0]",104.33,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SideTable","[2823.952393,5968.415039,0]",104.33,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SideTable","[2821.525146,5963.441406,0]",128.447,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SideTable","[2818.165771,5959.523438,0]",128.447,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SunChairBlue","[2824.579102,5969.315918,-0.00168335]",107.929,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SunChairWhite","[2822.49707,5964.104004,0]",107.929,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SunChairRed","[2819.0285645,5960.208984,0]",152.121,-100,0,0,[]];call _cString;
_dat = ["plp_bo_Sunlounger","[2836.163086,5959.807617,-0.00505042]",131.287,-100,0,0,[]];call _cString;
_dat = ["plp_bo_Sunlounger","[2834.645264,5958.280762,0]",131.287,-100,0,0,[]];call _cString;
_dat = ["plp_bo_SideTable","[2835.661377,5958.72998,0]",131.287,-100,0,0,[]];call _cString;
_dat = ["plp_bo_RadioSixties","[2835.803955,5958.607422,0.311106]",131.287,-100,0,0,[]];call _cString;
_dat = ["plp_bo_WoodenTrashcan","[2834.828613,5962.952148,0]",112.916,-100,0,0,[]];call _cString;
_dat = ["plp_bo_LogoBarIlluminated","[2822.839111,5926.0883789,-0.12037]",330.744,-100,0,0,[]];call _cString;
_dat = ["plp_bo_LogoWikiIlluminated","[2835.612549,5956.157715,3.15909]",311.868,-100,0,0,[]];call _cString;
_dat = ["plp_bo_GlassCocktail","[2828.184326,5959.393555,1.20202]",311.868,-100,0,0,[]];call _cString;
_dat = ["plp_bo_GlassAperitif","[2827.415039,5958.363281,1.22589]",311.868,-100,0,0,[]];call _cString;

//Rochers, Arche, Poteaux elc, Eoliennes 30/07/2015
_dat = ["xcam_sharpRock_wallV","[2402.502197,5869.998535,9.53674e-007]",154.672,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallH","[2415.361084,5847.805664,33.0409]",154.672,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallV","[2420.460205,5818.234375,-24.1936]",154.672,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallH","[2436.964355,5799.296387,-9.00326]",154.672,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallH","[2449.132568,5802.201172,-14.9872]",154.672,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallH","[2442.079834,5876.550781,0]",83.3964,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallH","[2460.121582,5833.967773,-15.3197]",86.3004,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3480.968506,4960.664063,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3470.0244141,4938.233887,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3459.0803223,4915.803711,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3447.33374,4930.097168,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3458.277832,4952.527344,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3440.75,4946.388184,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3451.694092,4968.818359,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_wpp_Turbine_V2_F","[3473.349609,4976.0395508,0]",116.009,-100,0,0,[]];call _cString;
_dat = ["Land_spp_Tower_F","[2261.574707,5986.789551,0]",162.6,-100,0,0,[]];call _cString;
_dat = ["xcam_sharpRock_wallH","[2438.953125,5796.400879,6.05636]",154.672,-100,0,0,[]];call _cString;

//Mapping des procces, vendeurs pas fini 30/07/2015 21H29
_dat = ["Land_HBarrier_5_F","[4588.630371,5286.566895,-0.163585]",60.7323,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4592.0351563,5282.0117188,-0.163585]",44.7601,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4598.00537109,5279.490234,-0.163585]",17.8662,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4603.213379,5277.796875,-0.163589]",17.8662,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4608.196289,5276.171875,-0.163585]",17.8662,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4613.0922852,5274.651855,-0.163585]",17.8662,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4618.00488281,5274.413086,-0.163585]",-11.5656,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4622.290039,5276.838379,-0.163589]",308.434,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4624.935059,5281.126953,-0.163585]",-66.5656,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4629.554199,5291.78418,-0.163589]",293.434,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4631.765137,5296.800781,-0.163589]",293.434,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4631.794434,5302.230957,-0.163589]",254.482,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4626.818848,5309.666504,-0.163589]",214.141,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4622.134766,5312.702637,-0.163589]",214.141,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4617.0253906,5315.265137,-0.163589]",202.462,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4611.734375,5316.874512,-0.163589]",191.729,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4606.163086,5318.0180664,-0.163589]",191.729,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4600.774414,5317.812012,-0.163589]",161.931,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_5_F","[4596.912598,5315.111328,-0.163589]",120.265,-100,0,0,[]];call _cString;
_dat = ["Land_GH_MainBuilding_entry_F","[4625.643066,5286.897461,-1.78452]",120.265,-100,0,0,[]];call _cString;
_dat = ["Land_GH_Stairs_F","[4615.57373,5302.237305,0.403183]",118.56,-100,0,0,[]];call _cString;
_dat = ["Land_PowerGenerator_F","[4611.850586,5290.0981445,0]",30.4289,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4608.467285,5297.699219,2.64813]",305.517,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4607.625488,5296.441895,2.64813]",298.32,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4609.718262,5300.065918,2.64813]",298.32,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4610.443359,5301.411133,2.64814]",298.32,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4606.490723,5294.260742,2.64815]",298.32,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4605.634277,5292.874023,2.64813]",298.32,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4613.888184,5291.37207,0]",122.436,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4613.888184,5291.37207,1.47119]",122.436,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4613.888184,5291.37207,2.35391]",122.436,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4616.11377,5294.899902,8.9407e-008]",121.552,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4616.11377,5294.899902,1.47119]",121.552,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4616.11377,5294.899902,2.35391]",121.552,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4615.313965,5293.597656,2.35391]",121.552,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[4614.51416,5292.29541,2.35391]",121.552,-100,0,0,[]];call _cString;
_dat = ["xcam_Cargo_Patrol_V1_F","[4627.30127,5301.670898,0]",260.567,-100,0,0,[]];call _cString;
_dat = ["xcam_Cargo_Patrol_V1_F","[4593.601074,5286.977539,0]",50.4411,-100,0,0,[]];call _cString;
_dat = ["xcam_HBarrierWall6_F","[4595.196289,5309.958496,0]",304.014,-100,0,0,[]];call _cString;
_dat = ["xcam_HelipadSquare_F","[4601.82373,5301.0541992,0]",302.815,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4605.970703,5287.850098,-0.137207]",210.327,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4607.718262,5290.914551,-0.117844]",29.0017,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4615.17334,5303.47998,-0.1633]",31.1484,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4613.348145,5300.453613,-0.0462952]",211.212,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4616.341797,5292.318848,-1.06061]",120.694,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4608.919434,5301.561523,0]",-418.864,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4606.770996,5297.855957,0]",-419.685,-100,0,0,[]];call _cString;
_dat = ["xcam_Obstacle_Pass_F","[4604.708984,5294.324707,0]",300.883,-100,0,0,[]];call _cString;
_dat = ["xcam_Target_Oval_F","[4614.734375,5293.173828,2.46577]",301.01,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5205.793457,5013.854492,0.0412445]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5209.356934,5015.727539,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5212.92041,5017.600586,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5216.483887,5019.473633,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5220.0473633,5021.34668,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5223.61084,5023.219727,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5227.174316,5025.0927734,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5230.737793,5026.96582,0.0412458]",152.273,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5234.361816,5028.755371,0.0412458]",154.293,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5237.989258,5030.501465,0.0412458]",154.293,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5240.457031,5029.504395,0.0412458]",251.389,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5241.741699,5025.688965,0.0412458]",251.389,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5242.955078,5021.871582,0.0412458]",252.462,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5244.167969,5018.0332031,0.0412458]",252.462,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5245.380859,5014.194824,0.0412458]",251.578,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5246.652832,5010.375488,0.0412458]",251.578,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5247.287109,5008.501465,0.0412458]",252.778,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5246.0864258,5005.598633,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5242.484863,5003.799805,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5238.841309,5002.11084,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5235.239746,5000.312012,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5231.638184,4998.513184,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5228.0786133,4996.604492,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5224.477051,4994.805664,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5220.875488,4993.00683594,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5217.273926,4991.208008,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5213.672363,4989.40918,0.0412458]",333.46,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5210.0571289,4987.540527,0.0412458]",332.323,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5206.492188,4985.67041,0.0412458]",332.323,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5202.927246,4983.800293,0.0412458]",332.323,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5199.308594,4982.0175781,0.0412458]",333.333,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5195.710938,4980.210938,0.0412458]",333.333,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5192.113281,4978.404297,0.0412458]",333.333,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5188.523438,4976.578125,0.0412458]",332.828,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5184.941895,4974.739746,0.0412458]",332.828,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5182.278809,4973.23584,0.0412458]",332.828,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5179.552734,4974.0268555,0.0412458]",418.561,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5177.453125,4977.461426,0.0412458]",419.887,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5175.591309,4980.989258,0.0412458]",425.632,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5173.896484,4984.631348,0.0412458]",424.369,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5172.120605,4988.224609,0.0412458]",423.485,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5170.323242,4991.82666,0.0412458]",423.485,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5169.452148,4993.612305,0.0412458]",423.485,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5170.289063,4996.279785,0.0412458]",514.015,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5173.907715,4998.043457,0.0412458]",514.015,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5177.462891,4999.836426,0.0412458]",512.942,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5181.0478516,5001.66748,0.0412458]",512.942,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5184.632813,5003.498535,0.0412458]",512.942,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5188.217773,5005.32959,0.0412458]",512.942,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5191.802734,5007.160645,0.0412458]",512.942,-100,0,0,[]];call _cString;
_dat = ["Land_Wall_Tin_4","[5194.10791,5008.212402,0.0412445]",157.614,-100,0,0,[]];call _cString;
_dat = ["Land_ReservoirTank_Rust_F","[5236.573242,5025.0512695,0]",158.182,-100,0,0,[]];call _cString;
_dat = ["Land_Shed_Big_F","[5228.0605469,5011.198242,0]",153.574,-100,0,0,[]];call _cString;
_dat = ["Land_Tank_rust_F","[5241.299316,5019.817383,0]",71.7555,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5236.501953,5003.390137,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5235.151367,5006.0419922,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5233.800781,5008.693848,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5232.449707,5011.345703,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5227.187012,5005.324707,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5228.538086,5002.672852,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5229.88916,5000.0209961,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5228.548828,5002.658203,2.62517]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5233.819824,5008.690918,2.62517]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5235.170898,5006.0390625,2.62517]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_grey_F","[5236.521973,5003.387207,2.62517]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo10_grey_F","[5226.522461,5008.383789,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo10_grey_F","[5231.288086,5000.733398,2.64417]",153.005,-100,0,0,[]];call _cString;
_dat = ["CargoNet_01_barrels_F","[5224.0737305,5006.447266,0]",153.005,-100,0,0,[]];call _cString;
_dat = ["xcam_cmp_Shed_F","[5191.636719,4988.993164,0]",59.5207,-100,0,0,[]];call _cString;
_dat = ["xcam_dp_transformer_F","[5213.956055,4995.0717773,-0.111115]",332.589,-100,0,0,[]];call _cString;
_dat = ["xcam_FuelStation_Build_F","[5224.641602,5012.864258,0]",61.6671,-100,0,0,[]];call _cString;
_dat = ["xcam_SolarPanel_3_F","[5188.485352,4981.164551,-0.000841752]",-26.9314,-100,0,0,[]];call _cString;
_dat = ["xcam_SolarPanel_3_F","[5182.0268555,4977.883301,-0.000841752]",-26.9314,-100,0,0,[]];call _cString;
_dat = ["xcam_SolarPanel_3_F","[5180.527344,4980.835449,-0.000841752]",-26.9314,-100,0,0,[]];call _cString;
_dat = ["xcam_SolarPanel_3_F","[5179.027832,4983.787598,-0.000839233]",333.069,-100,0,0,[]];call _cString;
_dat = ["xcam_SolarPanel_3_F","[5185.486328,4987.0688477,-0.000841752]",-26.9314,-100,0,0,[]];call _cString;
_dat = ["xcam_SolarPanel_3_F","[5186.98584,4984.116699,-0.000839233]",333.069,-100,0,0,[]];call _cString;
_dat = ["xcam_spp_Transformer_F","[5195.640137,4982.919434,0]",59.1545,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5171.0712891,4995.216309,-2.86102e-006]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5171.644043,4993.702637,0]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5172.977539,4994.383789,0]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5173.689453,4992.990234,-2.86102e-006]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5172.355957,4992.309082,-2.86102e-006]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5173.0678711,4990.915527,0]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5174.401367,4991.59668,-2.86102e-006]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5175.734863,4992.277832,0]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5172.967285,4990.98877,0.890781]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5172.255371,4992.382324,0.890781]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5171.543457,4993.775879,0.890778]",65,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5173.779785,4989.521973,-2.86102e-006]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Pallets_stack_F","[5172.920898,4991.00195313,1.78993]",62.9423,-100,0,0,[]];call _cString;
_dat = ["xcam_Tank_rust_F","[5177.469238,4997.844238,0]",154.293,-100,0,0,[]];call _cString;
_dat = ["xcam_Tank_rust_F","[5182.962402,5000.48877,0]",154.293,-100,0,0,[]];call _cString;
_dat = ["Land_Mil_WiredFence_Gate_F","[5200.226074,5010.854492,0]",334.116,-100,0,0,[]];call _cString;
_dat = ["xcam_Pipes_large_F","[5220.360352,4994.756348,4.57764e-005]",340.3,-100,0,0,[]];call _cString;
_dat = ["xcam_b_FicusC1s_F","[5251.87207,5018.863281,-0.0129089]",320.958,-100,0,0,[]];call _cString;
_dat = ["Land_ReservoirTank_Rust_F","[5243.130371,5008.635254,0]",158.182,-100,0,0,[]];call _cString;
_dat = ["xcam_dp_mainFactory_F","[4994.611328,5918.67041,0]",145.48,-100,0,0,[]];call _cString;
_dat = ["xcam_dp_smallTank_F","[4965.015625,5901.674805,0]",-214.52,-100,0,0,[]];call _cString;
_dat = ["xcam_dp_smallTank_F","[4969.474121,5895.192383,0]",145.48,-100,0,0,[]];call _cString;
_dat = ["xcam_Factory_Conv1_Main_F","[5011.919434,5919.683105,6.52548]",55.1388,-100,0,0,[]];call _cString;
_dat = ["xcam_Factory_Main_F","[5023.916016,5944.133789,0.436874]",144.975,-100,0,0,[]];call _cString;

//Mapping shops place Agia 31.07.2015 15H09
_dat = ["Land_City_8m_F","[2916.134521,6086.25,-0.254209]",-235.884,-100,1,0,[]];call _cString;
_dat = ["Land_City_8m_F","[2919.788086,6092.290527,-0.254209]",119.053,-100,1,0,[]];call _cString;
_dat = ["Land_City_8m_F","[2924.395752,6097.320313,0]",144.053,-100,1,0,[]];call _cString;
_dat = ["Land_City_4m_F","[2928.650879,6100.31543,0]",326.313,-100,1,0,[]];call _cString;
_dat = ["Land_City_8m_F","[2932.996338,6099.0834961,0]",215.303,-100,1,0,[]];call _cString;
_dat = ["Land_City_8m_F","[2938.698975,6095.0454102,0]",215.303,-100,1,0,[]];call _cString;
_dat = ["Land_City_4m_F","[2942.952148,6092.484375,-0.627104]",212.462,-100,1,0,[]];call _cString;
_dat = ["Land_City_4m_F","[2911.187256,6078.456055,0.319866]",121.338,-100,1,0,[]];call _cString;
_dat = ["Land_City_4m_F","[2906.491943,6070.395996,0.955387]",293.548,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2909.774658,6076.0888672,0]",-59.3182,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2908.844238,6074.90918,0]",-59.3182,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2908.249512,6073.917969,0]",-59.3182,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2907.675293,6072.960938,0]",300.682,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2908.989502,6066.748047,0.397306]",207.942,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2915.0283203,6063.322266,0.397306]",-149.091,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2921.00805664,6059.742188,0.397306]",210.593,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2927.00732422,6056.195313,0.397306]",-149.407,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2933.0065918,6052.648438,0.397306]",210.909,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2938.986328,6049.0683594,0.397306]",-149.091,-100,1,0,[]];call _cString;
_dat = ["xcam_City_8m_F","[2945.0512695,6045.520508,0.397306]",211.225,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2949.740723,6044.92627,0.227273]",306.932,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2947.270752,6044.181152,0.388889]",31.4016,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2951.204834,6047.090332,0]",31.4016,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2952.00195313,6048.0678711,0]",40.8082,-100,1,0,[]];call _cString;
_dat = ["xcam_RedWhitePole_F","[2952.805664,6048.922363,0]",45.7955,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2967.196777,6056.522949,-0.674242]",353.775,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2974.250732,6061.248535,0]",115.051,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2975.659912,6064.617676,0]",111.642,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2976.958496,6067.890137,0]",111.011,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2978.188232,6071.224609,-0.630978]",111.011,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2971.585205,6077.57959,-0.723906]",24.9247,-100,1,0,[]];call _cString;
_dat = ["xcam_City_4m_F","[2968.392334,6079.0634766,-0.723906]",24.9247,-100,1,0,[]];call _cString;
_dat = ["xcam_SignT_InfoRestaurant","[2906.940186,6071.896484,0.330808]",114.129,-100,1,0,[]];call _cString;
_dat = ["xcam_SignT_InfoRefreshments","[2910.219727,6077.254395,0]",120.947,-100,1,0,[]];call _cString;
_dat = ["xcam_SignT_WarningRamp","[2843.556396,6090.942383,2.38419e-007]",287.298,-100,1,0,[]];call _cString;
_dat = ["xcam_Metal_rack_F","[2956.471191,6061.397949,0.54]",119.949,-100,1,0,[]];call _cString;
_dat = ["xcam_Metal_rack_F","[2955.368164,6059.483887,0.54]",119.949,-100,1,0,[]];call _cString;
_dat = ["Land_WaterCooler_01_new_F","[2954.105469,6067.907227,0.457071]",120.896,-100,1,0,[]];call _cString;
_dat = ["xcam_FireExtinguisher_F","[2957.260498,6062.900391,0.462121]",302.083,-100,1,0,[]];call _cString;
_dat = ["xcam_Bench_02_F","[2924.900879,6058.605957,0.477273]",209.002,-100,1,0,[]];call _cString;
_dat = ["xcam_Bench_02_F","[2934.556641,6053.0151367,0.499158]",211.653,-100,1,0,[]];call _cString;
_dat = ["xcam_Wreck_Car_F","[2927.112793,6079.227051,1.17593]",29.356,-100,1,0,[]];call _cString;
_dat = ["xcam_Shovel_F","[2927.934326,6075.772461,2.04209]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_DuctTape_F","[2926.942139,6074.294434,1.68434]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_DuctTape_F","[2927.339111,6074.396973,1.68434]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_DuctTape_F","[2927.0976563,6074.0249023,1.67054]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_DuctTape_F","[2927.270996,6074.272949,1.67054]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_DuctTape_F","[2927.314941,6074.326172,1.73956]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_ButaneTorch_F","[2926.595947,6073.171875,2.01347]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_ButaneTorch_F","[2926.65625,6073.275391,2.01347]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_ButaneTorch_F","[2926.716553,6073.378906,2.01347]",30.1767,-100,1,0,[]];call _cString;
_dat = ["xcam_ButaneTorch_F","[2926.457764,6073.203613,2.01347]",52.5884,-100,1,0,[]];call _cString;
_dat = ["xcam_WaterCooler_01_F","[2932.270996,6081.272949,1.1431]",26.5151,-100,1,0,[]];call _cString;
_dat = ["xcam_VRGoggles_01_F","[2926.527588,6073.465332,2.01431]",143.497,-100,1,0,[]];call _cString;
_dat = ["xcam_CarBattery_02_F","[2926.79541,6073.678711,1.67593]",143.497,-100,1,0,[]];call _cString;
_dat = ["xcam_CarBattery_02_F","[2926.620361,6073.317383,1.67593]",143.497,-100,1,0,[]];call _cString;
_dat = ["xcam_CarBattery_01_F","[2926.605957,6073.374512,1.35859]",143.497,-100,1,0,[]];call _cString;
_dat = ["xcam_CarBattery_01_F","[2927.0585938,6074.203613,1.35859]",143.497,-100,1,0,[]];call _cString;
_dat = ["xcam_Trophy_01_gold_F","[2927.36084,6074.549805,2.01599]",119.76,-100,1,0,[]];call _cString;
_dat = ["xcam_Trophy_01_bronze_F","[2927.20752,6074.35498,2.01263]",119.76,-100,1,0,[]];call _cString;
_dat = ["xcam_Trophy_01_bronze_F","[2927.0429688,6074.124512,2.00926]",119.76,-100,1,0,[]];call _cString;
_dat = ["xcam_KartTyre_01_x4_F","[2928.419434,6076.585938,1.21633]",254.987,-100,1,0,[]];call _cString;
_dat = ["xcam_KartTyre_01_x4_F","[2928.645996,6077.0395508,1.21633]",113.194,-100,1,0,[]];call _cString;
_dat = ["xcam_KartStand_01_F","[2923.00415039,6076.00830078,1.06734]",30.1137,-100,1,0,[]];call _cString;
_dat = ["xcam_Wrench_F","[2926.932617,6073.633789,2.01347]",30.1137,-100,1,0,[]];call _cString;
_dat = ["xcam_Screwdriver_V2_F","[2926.653076,6073.786133,2.03114]",257.98,-100,1,0,[]];call _cString;
_dat = ["xcam_Saw_F","[2927.598877,6075.103027,2.02694]",257.98,-100,1,0,[]];call _cString;
_dat = ["xcam_Axe_fire_F","[2927.870605,6075.710449,1.67088]",299.773,-100,1,0,[]];call _cString;

