package _internal.sfml.graphics;

import _internal.sfml.system.Vector2.Vector2f;
import _internal.sfml.graphics.Rect.FloatRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::RectangleShape&")
extern class RectangleShape extends Shape implements Drawable {
    @:native("sf::RectangleShape")           public static function createInstance(size:Vector2f):RectangleShape;
    
    @:native("setSize")           public function setSize(size:Vector2f):Void;
    @:native("getSize")           public function getSize():Vector2f;
    @:native("draw")              override public function draw(target:RenderTarget, ?states:RenderStates):Void;
}