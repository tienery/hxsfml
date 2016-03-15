package sfml.graphics;

import cpp.ConstCharStar;
import sfml.system.Vector2.Vector2f;
import sfml.system.Vector3.Vector3f;
import sfml.graphics.Color;
import sfml.graphics.Texture.ConstTexture;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Shader&")
extern class Shader {
    @:native("sf::Shader")          public static function createInstance():Shader;
    
    @:native("loadFromFile")        @:overload(function(filename:ConstCharStar, type:Int):Bool {})
    @:native("loadFromFile")        public function loadFromFile(vertexFilename:ConstCharStar, fragmentFilename:ConstCharStar):Bool;
    
    @:native("setParameter")        @:overload(function(name:ConstCharStar, x:Float):Void {})
    @:native("setParameter")        @:overload(function(name:ConstCharStar, x:Float, y:Float):Void {})
    @:native("setParameter")        @:overload(function(name:ConstCharStar, x:Float, y:Float, z:Float):Void {})
    @:native("setParameter")        @:overload(function(name:ConstCharStar, x:Float, y:Float, z:Float, w:Float):Void {})
    @:native("setParameter")        @:overload(function(name:ConstCharStar, vector:Vector2f):Void {})
    @:native("setParameter")        @:overload(function(name:ConstCharStar, vector:Vector3f):Void {})
    @:native("setParameter")        @:overload(function(name:ConstCharStar, color:Color):Void {})
    @:native("setParameter")        public function setParameter(name:ConstCharStar, texture:ConstTexture):Void;
}