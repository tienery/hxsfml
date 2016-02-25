package _internal.sfml.graphics;

import _internal.sfml.system.Vector2.Vector2f;
import _internal.sfml.graphics.Rect.FloatRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::View&")
extern class View {
    //Constructors
    @:native("sf::View")        public static function createInstance():View;
    @:native("sf::View")        public static function createByRect(rect:FloatRect):View;
    
    //Members
    @:native("setCenter")       public function setCenter(x:Float, y:Float):Void;
    @:native("setSize")         public function setSize(width:Float, height:Float):Void;
    @:native("setRotation")     public function setRotation(angle:Float):Void;
    @:native("setViewport")     public function setViewport(viewport:FloatRect):Void;
    @:native("reset")           public function reset(rectangle:FloatRect):Void;
    @:native("getCenter")       public function getCenter():Vector2f;
    @:native("getSize")         public function getSize():Vector2f;
    @:native("getRotation")     public function getRotation():Float;
    @:native("getViewport")     public function getViewport():FloatRect;
    
    @:native("move")            public function move(offsetX:Float, offsetY:Float):Void;
    @:native("rotate")          public function rotate(angle:Float):Void;
    @:native("zoom")            public function zoom(factor:Float):Void;
}