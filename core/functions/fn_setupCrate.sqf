/*
	Author: Poseidon
	
	Description: Sets up a crate for arsenal with restricted gear
*/
private["_crate"];
_crate = _this param [0,objNull,[objNull]];

waitUntil{!isNull _crate};

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;

_backpacks = [
	"B_AssaultPack_blk",
	"B_AssaultPack_cbr",
	"B_AssaultPack_dgtl",
	"B_AssaultPack_rgr",
	"B_AssaultPack_ocamo",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_sgg",
	"B_Carryall_cbr",
	"B_Carryall_ocamo",
	"B_Carryall_khk",
	"B_Carryall_mcamo",
	"B_Carryall_oli",
	"B_Carryall_oucamo",
	"B_FieldPack_blk",
	"B_FieldPack_cbr",
	"B_FieldPack_ocamo",
	"B_FieldPack_khk",
	"B_FieldPack_oli",
	"B_FieldPack_oucamo",
	"B_Kitbag_cbr",
	"B_Kitbag_rgr",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_Parachute",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_ocamo",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_oli",
	"B_AssaultPack_Kerry"
];

_uniforms = [
	"U_B_CombatUniform_mcam_tshirt",
	"U_B_CombatUniform_mcam",
	"U_I_G_resistanceLeader_F",
	"U_I_CombatUniform",
	"U_I_OfficerUniform",
	"U_I_CombatUniform_shortsleeve",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_Competitor",
	"U_B_CTRG_1",
	"U_B_CTRG_3",
	"U_B_CTRG_2",
	"U_C_Driver_1_black",
	"U_C_Driver_1_blue",
	"U_C_Driver_2",
	"U_C_Driver_1",
	"U_C_Driver_1_green",
	"U_C_Driver_1_orange",
	"U_C_Driver_1_red",
	"U_C_Driver_3",
	"U_C_Driver_4",
	"U_C_Driver_1_white",
	"U_C_Driver_1_yellow",
	"U_I_FullGhillie_ard",
	"U_B_FullGhillie_ard",
	"U_I_FullGhillie_lsh",
	"U_B_FullGhillie_lsh",
	"U_I_FullGhillie_sard",
	"U_B_FullGhillie_sard",
	"U_I_GhillieSuit",
	"U_B_GhillieSuit",
	"U_BG_Guerrilla_6_1",
	"U_BG_Guerilla1_1",
	"U_BG_Guerilla2_2",
	"U_BG_Guerilla2_1",
	"U_BG_Guerilla2_3",
	"U_BG_Guerilla3_1",
	"U_BG_leader",
	"U_I_HeliPilotCoveralls",
	"U_B_HeliPilotCoveralls",
	"U_C_HunterBody_grn",
	"U_OrestesBody",
	"U_C_Journalist",
	"U_Marshal",
	"U_O_OfficerUniform_ocamo",
	"U_I_pilotCoveralls",
	"U_B_PilotCoveralls",
	"U_Rangemaster",
	"U_O_SpecopsUniform_ocamo",
	"U_B_CombatUniform_mcam_vest",
	"U_C_Scientist",
	"U_B_survival_uniform",
	"U_I_Protagonist_VR",
	"U_B_Protagonist_VR",
	"U_O_Protagonist_VR",
	"U_I_Wetsuit",
	"U_B_Wetsuit",
	"U_C_WorkerCoveralls",
	"U_C_Poor_1",
	"U_I_G_Story_Protagonist_F",
	"U_B_CombatUniform_mcam_worn"
];

_weapons = [
	"arifle_MX_SW_pointer_F",
	"hgun_P07_F",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"srifle_DMR_03_F",
	"srifle_DMR_03_multicam_F",
	"srifle_DMR_03_khaki_F",
	"srifle_DMR_03_tan_F",
	"srifle_DMR_03_woodland_F",
	"srifle_DMR_06_camo_F",
	"srifle_DMR_06_olive_F",
	"srifle_EBR_F",
	"arifle_Mk20_plain_F",
	"arifle_Mk20_F",
	"LMG_Mk200_F",
	"arifle_Mk20C_plain_F",
	"arifle_Mk20C_F",
	"arifle_MX_F",
	"arifle_MX_Black_F",
	"arifle_MX_SW_F",
	"arifle_MX_SW_Black_F",
	"arifle_MXC_F",
	"arifle_MXC_Black_F",
	"arifle_MXM_F",
	"arifle_MXM_Black_F",
	"hgun_PDW2000_F",
	"srifle_DMR_01_F",
	"arifle_SDAR_F",
	"SMG_02_F",
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"SMG_01_F",
	"hgun_Pistol_heavy_01_F",
	"hgun_ACPC2_F",
	"hgun_Rook40_F",
	"hgun_Pistol_Signal_F",
	"hgun_Pistol_heavy_02_F"
];

_attachments = [
	"acc_pointer_IR",
	"optic_ACO_grn",
	"optic_Aco",
	"optic_ACO_grn_smg",
	"optic_Aco_smg",
	"optic_Arco",
	"optic_Holosight",
	"optic_Holosight_smg",
	"optic_MRCO",
	"optic_Hamr",
	"acc_flashlight",
	"optic_MRD",
	"optic_Yorris",
	"muzzle_snds_H",
	"muzzle_snds_L",
	"muzzle_snds_M",
	"muzzle_snds_B",
	"muzzle_snds_H_MG",
	"muzzle_snds_H_SW",
	"muzzle_snds_acp",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",
	"muzzle_snds_338_sand",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"bipod_01_F_snd",
	"bipod_01_F_blk",
	"bipod_01_F_mtp",
	"bipod_02_F_blk",
	"bipod_02_F_tan",
	"bipod_02_F_hex",
	"bipod_03_F_blk",
	"bipod_03_F_oli"
];

_vests = [
	"V_Press_F",
	"V_PlateCarrier_Kerry",
	"V_I_G_resistanceLeader_F",
	"V_TacVest_blk_POLICE",
	"V_TacVest_oli",
	"V_TacVest_khk",
	"V_TacVest_camo",
	"V_TacVest_brn",
	"V_TacVest_blk",
	"V_BandollierB_oli",
	"V_BandollierB_khk",
	"V_BandollierB_rgr",
	"V_BandollierB_cbr",
	"V_BandollierB_blk",
	"V_RebreatherB",
	"V_RebreatherIR",
	"V_RebreatherIA",
	"V_TacVestIR_blk",
	"V_Rangemaster_belt",
	"V_HarnessO_gry",
	"V_HarnessO_brn",
	"V_HarnessOGL_gry",
	"V_HarnessOGL_brn",
	"V_PlateCarrierIA2_dgtl",
	"V_PlateCarrierIA1_dgtl",
	"V_PlateCarrierIAGL_oli",
	"V_PlateCarrierIAGL_dgtl",
	"V_PlateCarrierL_CTRG",
	"V_Chestrig_oli",
	"V_Chestrig_khk",
	"V_Chestrig_rgr",
	"V_Chestrig_blk",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier2_blk",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier1_blk",
	"V_PlateCarrierGL_mtp",
	"V_PlateCarrierGL_rgr",
	"V_PlateCarrierGL_blk"
];

_goggles = [
	"G_Aviator",
	"G_Balaclava_blk",
	"G_Balaclava_combat",
	"G_Balaclava_lowprofile",
	"G_Balaclava_oli",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_blk",
	"G_Bandanna_khk",
	"G_Bandanna_oli",
	"G_Bandanna_shades",
	"G_Bandanna_sport",
	"G_Bandanna_tan",
	"G_Combat",
	"G_Diving",
	"G_I_Diving",
	"G_O_Diving",
	"G_B_Diving",
	"G_Lady_Blue",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Sport_Red",
	"G_Sport_Blackyellow",
	"G_Sport_BlackWhite",
	"G_Sport_Checkered",
	"G_Sport_Blackred",
	"G_Sport_Greenblack",
	"G_Squares_Tinted",
	"G_Squares",
	"G_Tactical_Clear",
	"G_Tactical_Black",
	"G_Spectacles_Tinted",
	"G_Goggles_VR"
];

_headgear = [
	"H_HelmetB_grass",
	"H_HelmetSpecO_blk",
	"H_HelmetSpecO_ocamo",
	"H_Bandanna_blu",
	"H_Bandanna_gry",
	"H_Bandanna_cbr",
	"H_Bandanna_khk_hs",
	"H_Bandanna_khk",
	"H_Bandanna_mcamo",
	"H_Bandanna_sgg",
	"H_Bandanna_sand",
	"H_Bandanna_surfer",
	"H_Bandanna_surfer_blk",
	"H_Bandanna_surfer_grn",
	"H_Bandanna_camo",
	"H_Watchcap_blk",
	"H_Watchcap_cbr",
	"H_Watchcap_camo",
	"H_Watchcap_khk",
	"H_Beret_blk",
	"H_Beret_02",
	"H_Beret_Colonel",
	"H_Booniehat_khk_hs",
	"H_Booniehat_khk",
	"H_Booniehat_mcamo",
	"H_Booniehat_oli",
	"H_Booniehat_tan",
	"H_Booniehat_dgtl",
	"H_Cap_grn_BI",
	"H_Cap_blk",
	"H_Cap_blu",
	"H_Cap_blk_CMMG",
	"H_Cap_grn",
	"H_Cap_blk_ION",
	"H_Cap_oli",
	"H_Cap_oli_hs",
	"H_Cap_press",
	"H_Cap_red",
	"H_Cap_surfer",
	"H_Cap_police",
	"H_Cap_tan",
	"H_Cap_khaki_specops_UK",
	"H_Cap_usblack",
	"H_Cap_tan_specops_US",
	"H_Cap_blk_Raven",
	"H_Cap_brn_SPECOPS",
	"H_HelmetB",
	"H_HelmetB_black",
	"H_HelmetB_camo",
	"H_HelmetB_desert",
	"H_HelmetB_sand",
	"H_HelmetB_snakeskin",
	"H_HelmetCrew_O",
	"H_HelmetCrew_I",
	"H_HelmetCrew_B",
	"H_HelmetLeaderO_ocamo",
	"H_HelmetLeaderO_oucamo",
	"H_HelmetSpecB",
	"H_HelmetSpecB_blk",
	"H_HelmetSpecB_paint2",
	"H_HelmetSpecB_paint1",
	"H_HelmetSpecB_sand",
	"H_HelmetSpecB_snakeskin",
	"H_Hat_blue",
	"H_Hat_brown",
	"H_Hat_camo",
	"H_Hat_checker",
	"H_Hat_grey",
	"H_Hat_tan",
	"H_HelmetB_light",
	"H_HelmetB_light_black",
	"H_HelmetB_light_desert",
	"H_HelmetB_light_grass",
	"H_HelmetB_light_sand",
	"H_HelmetB_light_snakeskin",
	"H_Cap_marshal",
	"H_MilCap_blue",
	"H_MilCap_gry",
	"H_MilCap_ocamo",
	"H_MilCap_mcamo",
	"H_MilCap_dgtl",
	"H_HelmetIA",
	"H_HelmetO_ocamo",
	"H_HelmetO_oucamo",
	"H_RacingHelmet_1_black_F",
	"H_RacingHelmet_1_blue_F",
	"H_RacingHelmet_2_F",
	"H_RacingHelmet_1_F",
	"H_RacingHelmet_1_green_F",
	"H_RacingHelmet_1_orange_F",
	"H_RacingHelmet_1_red_F",
	"H_RacingHelmet_3_F",
	"H_RacingHelmet_4_F",
	"H_RacingHelmet_1_white_F",
	"H_RacingHelmet_1_yellow_F",
	"H_Cap_headphones",
	"H_Shemag_olive",
	"H_Shemag_olive_hs",
	"H_ShemagOpen_tan",
	"H_ShemagOpen_khk",
	"H_StrawHat",
	"H_StrawHat_dark"
];

_magazines = [
	"100Rnd_65x39_caseless_mag",
	"16Rnd_9x21_Mag",
	"30Rnd_65x39_caseless_green",
	"20Rnd_762x51_Mag",
	"30Rnd_556x45_Stanag",
	"200Rnd_65x39_cased_Box",
	"30Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	"30Rnd_9x21_Mag",
	"10Rnd_762x54_Mag",
	"20Rnd_556x45_UW_mag",
	"150Rnd_762x54_Box",
	"30Rnd_45ACP_Mag_SMG_01",
	"11Rnd_45ACP_Mag",
	"9Rnd_45ACP_Mag",
	"6Rnd_GreenSignal_F",
	"6Rnd_45ACP_Cylinder",
	"6Rnd_RedSignal_F",
	"30Rnd_65x39_caseless_mag_Tracer",
	"30Rnd_556x45_Stanag_green",
	"30Rnd_556x45_Stanag_red",
	"30Rnd_556x45_Stanag_Tracer_Yellow",
	"30Rnd_556x45_Stanag_Tracer_Green",
	"30Rnd_556x45_Stanag_Tracer_Red",
	"16Rnd_9x21_red_Mag",
	"16Rnd_9x21_green_Mag",
	"16Rnd_9x21_yellow_Mag",
	"30Rnd_9x21_Red_Mag",
	"30Rnd_9x21_Yellow_Mag",
	"30Rnd_9x21_Green_Mag",
	"30Rnd_65x39_caseless_green_mag_Tracer",
	"200Rnd_65x39_cased_Box_Tracer"
];

[_crate,_backpacks,true,true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,_headgear + _goggles + _uniforms + _vests + _attachments + ["ItemGPS","Rangefinder","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP","ToolKit","Medikit","ItemWatch","ItemMap","ItemCompass","ItemRadio"],true,true] call BIS_fnc_addVirtualItemCargo;
[_crate,_magazines,true,true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,_weapons + ["Rangefinder","Binocular","NVGoggles","NVGoggles_OPFOR","NVGoggles_INDEP"],true,true] call BIS_fnc_addVirtualWeaponCargo;