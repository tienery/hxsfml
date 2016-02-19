package sfml.graphics;

import cpp.ConstCharStar;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Font::Info")
extern class FontInfo {
    @:native("family")  public var family:ConstCharStar;
}