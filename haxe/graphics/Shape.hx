package _internal.sfml.graphics;

import _internal.sfml.system.Vector2.Vector2f;
import _internal.sfml.graphics.Rect.FloatRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Shape&")
extern class Shape extends Transformable implements Drawable {
    @:native("sf::Shape")           public static function createInstance():Shape;
    
    @:native("setFillColor")        public function setFillColor(color:Color):Void;
    @:native("setOutlineColor")     public function setOutlineColor(color:Color):Void;
    @:native("setOutlineThickness") public function setOutlineThickness(thickness:Float):Void;
    @:native("getFillColor")        public function getFillColor():Color;
    @:native("getOutlineColor")     public function getOutlineColor():Color;
    @:native("getOutlineThickness") public function getOutlineThickness():Float;
    @:native("getPointCount")       public function getPointCount():UInt;
    @:native("getPoint")            public function getPoint(index:UInt):Vector2f;
    @:native("getLocalBounds")      public function getLocalBounds():FloatRect;
    @:native("getGlobalBounds")     public function getGlobalBounds():FloatRect;
    @:native("draw")                public function draw(target:RenderTarget, ?states:RenderStates):Void;
}