package sfml.graphics;

import sfml.graphics.Rect.ConstIntRectPtr;
import sfml.graphics.Texture.TexturePtr;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Sprite&")
extern class Sprite extends Transformable implements Drawable {
    @:native("sf::Sprite")          @:overload(function(texture:Texture):Sprite {})
    @:native("sf::Sprite")          @:overload(function(texture:Texture, rect:ConstIntRectPtr):Sprite {})
    @:native("sf::Sprite")          public static function create():Sprite;
    
    @:native("setTexture")          public function setTexture(texture:Texture, resetRect:Bool = false):Void;
    @:native("setTextureRect")      public function setTextureRect(rect:ConstIntRectPtr):Void;
    @:native("setColor")            public function setColor(color:Color):Void;
    @:native("getTexture")          public function getTexture():TexturePtr;
    @:native("getTextureRect")      public function getTextureRect():ConstIntRectPtr;
    @:native("getColor")            public function getColor():Color;
    @:native("draw")                public function draw(target:RenderTarget, ?states:RenderStates):Void;
}