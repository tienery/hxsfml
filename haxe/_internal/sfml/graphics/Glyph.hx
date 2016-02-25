package _internal.sfml.graphics;

import _internal.sfml.graphics.Rect.FloatRect;
import _internal.sfml.graphics.Rect.IntRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::Glyph&")
extern class Glyph {
    @:native("advance")     public var advance:Float;
    @:native("bounds")      public var bounds:FloatRect;
    @:native("textureRect") public var textureRect:IntRect;
}