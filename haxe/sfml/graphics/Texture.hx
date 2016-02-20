package sfml.graphics;

import cpp.ConstCharStar;
import sfml.graphics.Rect.ConstIntRectPtr;
import sfml.graphics.Image.ImageRaw;
import sfml.window.Window.ConstWindow;
import sfml.system.Vector2.Vector2uRaw;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Texture&")
extern class Texture {
    @:native("sf::Texture")         public static function createInstance():Texture;
    @:native("sf::Texture")         public static function createFromCopy(copy:Texture):Texture;
    
    @:native("create")              public function create(width:UInt, height:UInt):Bool;
    @:native("loadFromFile")        public function loadFromFile(filename:ConstCharStar, area:ConstIntRectPtr):Bool;
    @:native("loadFromImage")       public function loadFromImage(image:Image, area:ConstIntRectPtr):Bool;
    @:native("getSize")             public function getSize():Vector2uRaw;
    @:native("copyToImage")         public function copyToImage():ImageRaw;
    @:native("update")              public function updateFromImage(image:Image):Void;
    @:native("update")              public function updatePartFromImage(image:Image, x:UInt, y:UInt):Void;
    @:native("update")              public function updateFromWindow(window:ConstWindow):Void;
    @:native("update")              public function updatePartFromWindow(window:ConstWindow, x:UInt, y:UInt):Void;
    @:native("setSmooth")           public function setSmooth(smooth:Bool):Void;
    @:native("isSmooth")            public function isSmooth():Bool;
    @:native("setRepeated")         public function setRepeated(repeated:Bool):Void;
    @:native("isRepeated")          public function isRepeated():Bool;
}

@:include("SFML/Graphics.hpp")
@:native("const sf::Texture*")
extern class TexturePtr extends Texture {
}