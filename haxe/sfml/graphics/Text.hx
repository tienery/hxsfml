package sfml.graphics;

import cpp.ConstCharStar;
import sfml.graphics.Font.FontPtr;
import sfml.system.Vector2.Vector2fRaw;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Text&")
extern class Text extends Transformable implements Drawable {
    @:native("sf::Text")            public static function createInstance(string:ConstCharStar, font:Font, characterSize:UInt = 30):Text;
    @:native("setString")           public function setString(value:ConstCharStar):Void;
    @:native("setFont")             public function setFont(font:Font):Void;
    @:native("setCharacterSize")    public function setCharacterSize(size:UInt):Void;
    @:native("setStyle")            public function setStyle(style:UInt):Void;
    @:native("setColor")            public function setColor(color:Color):Void;
    @:native("getString")           public function getString():ConstCharStar;
    @:native("getFont")             public function getFont():FontPtr;
    @:native("getCharacterSize")    public function getCharacterSize():UInt;
    @:native("getStyle")            public function getStyle():UInt;
    @:native("getColor")            public function getColor():Color;
    @:native("findCharacterPos")    public function findCharacterPos(index:Int):Vector2fRaw;
    @:native("draw")                public function draw(target:RenderTarget, ?states:RenderStates):Void;
}