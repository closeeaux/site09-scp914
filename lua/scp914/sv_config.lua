MG_SCP914 = MG_SCP914 or {} -- Dont touch

MsgC(Color(255, 187, 0), "[SCP914] ", Color(255, 255, 255), "Loading config...\n")

MG_SCP914.SCP914Out = {
	["guthscp_keycard_lvl_1"] = {
		["Rough"] = "guthscp_master_card",
		["Coarse"] =  "guthscp_master_card",
		["1:1"] = "guthscp_keycard_lvl_1",
		["Fine"] =  "guthscp_keycard_lvl_2",
		["Very Fine"] = "guthscp_keycard_lvl_3",
	},
	["guthscp_keycard_lvl_2"] = {
		["Rough"] = "guthscp_master_card",
		["Coarse"] =  "guthscp_keycard_lvl_1",
		["1:1"] = "guthscp_keycard_lvl_2",
		["Fine"] =  "guthscp_keycard_lvl_3",
		["Very Fine"] = "guthscp_keycard_lvl_4",
	},
	["guthscp_keycard_lvl_3"] = {
		["Rough"] = "guthscp_keycard_lvl_1",
		["Coarse"] =  "guthscp_keycard_lvl_2",
		["1:1"] = "guthscp_keycard_lvl_3",
		["Fine"] =  "guthscp_keycard_lvl_4",
		["Very Fine"] = "guthscp_keycard_lvl_5",
	},
	["guthscp_keycard_lvl_4"] = {
		["Rough"] = "guthscp_keycard_lvl_2",
		["Coarse"] =  "guthscp_keycard_lvl_3",
		["1:1"] = "guthscp_keycard_lvl_4",
		["Fine"] =  "guthscp_keycard_lvl_5",
		["Very Fine"] = "guthscp_master_card",
	},
	["guthscp_keycard_lvl_5"] = {
		["Rough"] = "guthscp_keycard_lvl_3",
		["Coarse"] =  "guthscp_keycard_lvl_4",
		["1:1"] = "guthscp_keycard_lvl_5",
		["Fine"] =  "guthscp_keycard_omni",
		["Very Fine"] = "guthscp_master_card",
	},
	["guthscp_keycard_omni"] = {
		["Rough"] = "guthscp_keycard_lvl_4",
		["Coarse"] =  "guthscp_keycard_lvl_5",
		["1:1"] = "guthscp_keycard_lvl_5",
		["Fine"] =  "guthscp_master_card",
		["Very Fine"] = "guthscp_master_card",
	},
}

MsgC(Color(255, 187, 0), "[SCP914] ", Color(255, 255, 255), "Config loaded!\n")