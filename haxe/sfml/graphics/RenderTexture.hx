package sfml.graphics;

import sfml.system.Vector2.Vector2uRaw;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::RenderTexture&")
extern class RenderTexture extends RenderTarget {
    @:native("sf::RenderTexture")       public static function create():RenderTexture;
    
    @:native("create")                  public function create(width:UInt, height:UInt, depthBuffer:Bool = false):Void;
    @:native("setSmooth")               public function setSmooth(smooth:Bool):Void;
    @:native("isSmooth")                public function isSmooth():Bool;
    @:native("setRepeated")             public function setRepeated(repeat:Bool):Void;
    @:native("isRepeated")              public function isRepeated():Bool;
    @:native("setActive")               public function setActive(active:Bool = true):Void;
    @:native("display")                 public function display():Void;
    @:native("getSize")                 public function getSize():Vector2uRaw;
    @:native("getTexture")              public function getTexture():Texture;
}