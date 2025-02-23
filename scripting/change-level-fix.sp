#include <sourcemod>
#include <dhooks>

#include "change-level-fix/detour"
#include "change-level-fix/use-case"

#include "modules/detour.sp"
#include "modules/use-case.sp"

public Plugin myinfo = {
    name = "ChangeLevel fix",
    author = "Dron-elektron",
    description = "Blocks the second level change",
    version = "0.1.0",
    url = "https://github.com/dronelektron/change-level-fix"
};

public void OnPluginStart() {
    Detour_Create();
}

public void OnMapStart() {
    UseCase_ResetLastLevelChangeTime();
}
