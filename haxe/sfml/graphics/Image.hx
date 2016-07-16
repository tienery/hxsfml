package sfml.graphics;

import cpp.ConstCharStar;
import cpp.UInt8;
import sfml.system.Vector2.Vector2uRaw;
import sfml.graphics.Rect.ConstIntRectPtr;
import sfml.graphics.Color.ColorRaw;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::Image&")
extern class Image {
    @:native("sf::Image")           public static function create():Image;
    
    @:native("create")              public function create(width:UInt, height:UInt, color:Color):Void;
    @:native("loadFromFile")        public function loadFromFile(filename:ConstCharStar):Bool;
    @:native("saveToFile")          public function saveToFile(filename:ConstCharStar):Bool;
    @:native("getSize")             public function getSize():Vector2uRaw;
    @:native("createMaskFromColor") public function createMaskFromColor(color:Color, alpha:UInt8):Void;
    @:native("copy")                public function copy(image:Image, destX:UInt, destY:UInt, ?sourceRect:ConstIntRectPtr, ?applyAlpha:Bool = false):Void;
    @:native("setPixel")            public function setPixel(x:UInt, y:UInt, color:Color):Void;
    @:native("getPixel")            public function getPixel(x:UInt, y:UInt):ColorRaw;
    @:native("flipHorizontally")    public function flipHorizontally():Void;
    @:native("flipVertically")      public function flipVertically():Void;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Image")
extern class ImageRaw extends Image {
}