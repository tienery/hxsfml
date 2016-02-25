package _internal.sfml.graphics;

import _internal.sfml.system.Vector2.Vector2f;
import _internal.sfml.graphics.Rect.FloatRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::CircleShape&")
extern class CircleShape extends Shape implements Drawable {
    @:native("sf::CircleShape")           public static function createInstance(radius:Float, ?pointCount:UInt = 30):CircleShape;
    
    @:native("setRadius")           public function setRadius(radius:Float):Void;
    @:native("getRadius")           public function getRadius():Float;
    @:native("draw")                override public function draw(target:RenderTarget, ?states:RenderStates):Void;
}