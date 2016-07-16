package sfml.graphics;

import sfml.system.Vector2.Vector2f;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Transformable&")
extern class Transformable {
    @:native("sf::Transformable")       public static function create():Transformable;
    
    @:native("setPosition")         public function setPosition(position:Vector2f):Void;
    @:native("setRotation")         public function setRotation(angle:Float):Void;
    @:native("setScale")            public function setScale(factors:Vector2f):Void;
    @:native("setOrigin")           public function setOrigin(origin:Vector2f):Void;
    @:native("getPosition")         public function getPosition():Vector2f;
    @:native("getRotation")         public function getRotation():Float;
    @:native("getScale")            public function getScale():Vector2f;
    @:native("getOrigin")           public function getOrigin():Vector2f;
}