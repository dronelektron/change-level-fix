static float g_lastLevelChangeTime;

void UseCase_ResetLastLevelChangeTime() {
    g_lastLevelChangeTime = 0.0;
}

bool UseCase_HasLevelChangedRecently() {
    float currentTime = GetGameTime();
    float secondsPassed = currentTime - g_lastLevelChangeTime;

    if (secondsPassed < CHANGE_LEVEL_DELAY) {
        return true;
    }

    g_lastLevelChangeTime = currentTime;

    return false;
}
