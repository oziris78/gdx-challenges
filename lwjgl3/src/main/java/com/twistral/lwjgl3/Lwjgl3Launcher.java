package com.twistral.lwjgl3;

import com.badlogic.gdx.backends.lwjgl3.Lwjgl3Application;
import com.badlogic.gdx.backends.lwjgl3.Lwjgl3ApplicationConfiguration;
import com.twistral.conwaysgameoflife.ConwaysGameOfLifeMain;
import com.twistral.noise.NoiseMapMain;
import com.twistral.zexercises.skincomposer.SkinComposerTest;


public class Lwjgl3Launcher {


	public static void main(String[] args) {
		Lwjgl3ApplicationConfiguration config = new Lwjgl3ApplicationConfiguration();
		config.setWindowIcon("libgdx128.png", "libgdx64.png", "libgdx32.png", "libgdx16.png");
		config.setTitle("gdx-challenges");
		config.setWindowedMode(600, 600);

		config.useVsync(true);
		// Limits FPS to the refresh rate of the currently active monitor.
		config.setForegroundFPS(Lwjgl3ApplicationConfiguration.getDisplayMode().refreshRate);
		// If you remove the above line and set Vsync to false, you can get unlimited FPS, which can be
		// useful for testing performance, but can also be very stressful to some hardware.
		// You may also need to configure GPU drivers to fully disable Vsync; this can cause screen tearing.

		new Lwjgl3Application(new SkinComposerTest(), config);
	}


}