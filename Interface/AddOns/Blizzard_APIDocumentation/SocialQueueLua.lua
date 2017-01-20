local SocialQueueLua =
{
	Name = "SocialQueue",
	Namespace = "C_SocialQueue",

	Functions =
	{
		{
			Name = "GetAllGroups",

			Arguments =
			{
				{ Name = "allowNonJoinable", Type = "bool", Nilable = false, Default = false },
				{ Name = "allowNonQueuedGroups", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "groupGUIDs", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetConfig",

			Returns =
			{
				{ Name = "config", Type = "SocialQueueConfig", Nilable = false },
			},
		},
		{
			Name = "GetGroupForPlayer",

			Arguments =
			{
				{ Name = "playerGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "isSoloQueueParty", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetGroupInfo",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "canJoin", Type = "bool", Nilable = false },
				{ Name = "numQueues", Type = "number", Nilable = false },
				{ Name = "needTank", Type = "bool", Nilable = false },
				{ Name = "needHealer", Type = "bool", Nilable = false },
				{ Name = "needDamage", Type = "bool", Nilable = false },
				{ Name = "isSoloQueueParty", Type = "bool", Nilable = false },
				{ Name = "leaderGUID", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetGroupMembers",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "groupMembers", Type = "table", InnerType = "string", Nilable = false },
			},
		},
		{
			Name = "GetGroupQueues",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "queues", Type = "table", InnerType = "SocialQueueGroupQueueInfo", Nilable = false },
			},
		},
		{
			Name = "RequestToJoin",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "applyAsTank", Type = "bool", Nilable = false, Default = false },
				{ Name = "applyAsHealer", Type = "bool", Nilable = false, Default = false },
				{ Name = "applyAsDamage", Type = "bool", Nilable = false, Default = false },
			},

			Returns =
			{
				{ Name = "requestSuccessful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SignalToastDisplayed",

			Arguments =
			{
				{ Name = "groupGUID", Type = "string", Nilable = false },
				{ Name = "priority", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
		{
			Name = "SocialQueueConfig",
			Fields =
			{
				{ Name = "TOASTS_DISABLED", Type = "bool", Nilable = false },
				{ Name = "TOAST_DURATION", Type = "number", Nilable = false },
				{ Name = "DELAY_DURATION", Type = "number", Nilable = false },
				{ Name = "QUEUE_MULTIPLIER", Type = "number", Nilable = false },
				{ Name = "PLAYER_MULTIPLIER", Type = "number", Nilable = false },
				{ Name = "PLAYER_FRIEND_VALUE", Type = "number", Nilable = false },
				{ Name = "PLAYER_GUILD_VALUE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_INITIAL_THRESHOLD", Type = "number", Nilable = false },
				{ Name = "THROTTLE_DECAY_TIME", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PRIORITY_SPIKE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_MIN_THRESHOLD", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PVP_PRIORITY_NORMAL", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PVP_PRIORITY_LOW", Type = "number", Nilable = false },
				{ Name = "THROTTLE_PVP_HONOR_THRESHOLD", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_PRIORITY_DEFAULT", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_PRIORITY_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_PRIORITY_BELOW", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_ILVL_SCALING_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_LFGLIST_ILVL_SCALING_BELOW", Type = "number", Nilable = false },
				{ Name = "THROTTLE_RF_PRIORITY_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_RF_ILVL_SCALING_ABOVE", Type = "number", Nilable = false },
				{ Name = "THROTTLE_DF_MAX_ITEM_LEVEL", Type = "number", Nilable = false },
				{ Name = "THROTTLE_DF_BEST_PRIORITY", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SocialQueueGroupQueueInfo",
			Fields =
			{
				{ Name = "clientID", Type = "number", Nilable = false },
				{ Name = "eligible", Type = "bool", Nilable = false },
				{ Name = "needTank", Type = "bool", Nilable = false },
				{ Name = "needHealer", Type = "bool", Nilable = false },
				{ Name = "needDamage", Type = "bool", Nilable = false },
				{ Name = "isAutoAccept", Type = "bool", Nilable = false },
				{ Name = "queueData", Type = "QueueSpecificInfo", Nilable = false },
			},
		},
	},
};

APIDocumentation:AddDocumentationTable(SocialQueueLua);