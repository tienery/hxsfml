package sfml.graphics;

import sfml.graphics.Rect.FloatRect;
import sfml.graphics.Rect.IntRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::Glyph&")
extern class Glyph {
    @:native("advance")     public var advance:Float;
    @:native("bounds")      public var bounds:FloatRect;
    @:native("textureRect") public var textureRect:IntRect;
}