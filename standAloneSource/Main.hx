package;

import flixel.FlxG;
import flixel.FlxGame;

class Main extends openfl.display.Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(960, 540, BootState));
	}
}

class BootState extends flixel.FlxState
{
	override function create()
	{
		super.create();
		
		// Only needs to be called once
		Controls.init();
	}
	
	override function update(elapsed:Float)
	{
		super.update(elapsed);
		
		Global.switchState(new templatemg.states.MenuState());
	}
}