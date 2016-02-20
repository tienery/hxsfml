package sfml.graphics;

import cpp.ConstCharStar;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Font&")
extern class Font {
    @:native("sf::Font")                public static function createInstance():Font;
    @:native("loadFromFile")            public function loadFromFile(filename:ConstCharStar):Bool;
    @:native("getInfo")                 public function getInfo():FontInfo;
    @:native("getGlyph")                public function getGlyph(codePoint:UInt, characterSize:UInt, bold:Bool):Glyph;
    @:native("getKerning")              public function getKerning(first:UInt, second:UInt, characterSize:UInt):Float;
    @:native("getLineSpacing")          public function getLineSpacing(characterSize:UInt):Float;
    @:native("getUnderlinePosition")    public function getUnderlinePosition(characterSize:UInt):Float;
    @:native("getUnderlineThickness")   public function getUnderlineThickness(characterSize:UInt):Float;
}

@:include("SFML/Graphics.hpp")
@:native("const sf::Font*")
extern class FontPtr extends Font {
}