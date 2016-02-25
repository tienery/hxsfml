package _internal.sfml.graphics;

import _internal.sfml.system.Vector2.Vector2f;
import _internal.sfml.graphics.Rect.FloatRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::ConvexShape&")
extern class ConvexShape extends Shape implements Drawable {
    @:native("sf::ConvexShape")           public static function createInstance(pointCount:UInt):ConvexShape;
    
    @:native("setPointCount")           public function setPointCount(count:UInt):Void;
    @:native("setPoint")                public function setPoint(index:UInt, point:Vector2f):Void;
    @:native("draw")                    override public function draw(target:RenderTarget, ?states:RenderStates):Void;
}