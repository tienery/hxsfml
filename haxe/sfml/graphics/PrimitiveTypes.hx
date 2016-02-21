package sfml.graphics;

@:headerCode('#include "SFML/Graphics.hpp"')
class PrimitiveTypes {
    public static var POINTS:Int            = untyped __cpp__("sf::Points");
    public static var LINES:Int             = untyped __cpp__("sf::Lines");
    public static var LINES_STRIP:Int       = untyped __cpp__("sf::LinesStrip");
    public static var TRIANGLES:Int         = untyped __cpp__("sf::Triangles");
    public static var TRIANGLES_STRIP:Int   = untyped __cpp__("sf::TrianglesStrip");
    public static var TRIANGLES_FAN:Int     = untyped __cpp__("sf::TrianglesFan");
    public static var QUADS:Int             = untyped __cpp__("sf::Quads");
}