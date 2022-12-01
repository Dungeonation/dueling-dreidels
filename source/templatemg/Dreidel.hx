package templatemg;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.FlxG;

class Dreidel extends FlxSprite
{
    var momentum:Float = FlxG.random.int(-100, 100);
    var rotation = FlxG.random.int(-3, 3);
    var anglez = FlxG.random.int(0, 360);
    var spinspeed:Float = 30;
    public function new(x:Float = 0, y:Float = 0)
    {
        super(x, y);
        loadGraphic(Global.asset("assets/images/dreidelbase.png"), true, 33, 40);
        //drag.x = drag.y = 20;
        animation.add("spin", [0, 1], spinspeed, true);
        animation.play("spin");
    }
    function updateMovement()
        {
            anglez += rotation;
            if (momentum > 0) momentum -= 0.2;
            if (spinspeed > 0) spinspeed -= 0.2;
            velocity.set(momentum, 0);
            velocity.pivotDegrees(FlxPoint.weak(0, 0), anglez);
        }
        override function update(elapsed:Float)
            {
                updateMovement();
                super.update(elapsed);
            }
}