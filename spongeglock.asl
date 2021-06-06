state("SpongeGlock SquarePants", "x64")
{
    	ulong activeScene : "UnityPlayer.dll", 0x180A4E8, 0x48;
    	ulong loadingScene : "UnityPlayer.dll", 0x180A4E8, 0x28, 0x0;
	int currObj : "mono-2.0-bdwgc.dll", 0x4990c0, 0x10, 0x1D0, 0x8, 0x4E0, 0x3F8, 0xD0, 0x8, 0x60, 0x8;
	bool inGame : "mono-2.0-bdwgc.dll", 0x49E92A;
}

start
{
	return !old.inGame && current.inGame;
}


isLoading
{
    return current.activeScene != current.loadingScene;
}


split
{
  if (current.currObj > old.currObj) return true;
}

//Autosplitter by Loomeh