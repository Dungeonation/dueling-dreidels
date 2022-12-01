package templatemg.states;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;
import flixel.FlxSprite;

/** 
 * PlayState.hx is where Advent will start to access your game,
 * if you would like to add a menu to your game contact George!
**/
class PlayState extends FlxState
{
	//Initialize Variables Here
	var dreidel:Dreidel;
	//This is the Start function
	override function create()
	{
		var table = new FlxSprite(0,0,Global.asset("assets/images/table.png"));
		Global.screenCenter(table);
		add(table);
		var dreidel1 = new Dreidel(400, 200);
		add(dreidel1);
		var dreidel2 = new Dreidel(200, 200);
		add(dreidel2);
		super.create();
	}
	/** This is where your game updates each frame */
	override function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collision(dreidel1, dreidel2, dreidelHit);
	}
}