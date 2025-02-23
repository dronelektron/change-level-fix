void Detour_Create() {
    GameData gameData = new GameData(GAME_DATA);

    if (gameData == null) {
        SetFailState("Unable to open the '%s' game data", GAME_DATA);
    }

    ChangeLevel_Create(gameData);

    delete gameData;
}

static void ChangeLevel_Create(GameData gameData) {
    DynamicDetour detour = new DynamicDetour(Address_Null, CallConv_THISCALL, ReturnType_Void);

    detour.SetFromConf(gameData, SDKConf_Signature, SIGNATURE_CHANGE_LEVEL);
    detour.Enable(Hook_Pre, OnChangeLevel);
}

static MRESReturn OnChangeLevel() {
    return UseCase_HasLevelChangedRecently() ? MRES_Supercede : MRES_Ignored;
}
