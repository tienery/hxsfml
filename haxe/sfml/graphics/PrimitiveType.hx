package sfml.graphics;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::PrimitiveType")
extern class PrimitiveType {
    @:native("sf::Points")          public static var POINTS:PrimitiveType;
    @:native("sf::Lines")           public static var LINES:PrimitiveType;
    @:native("sf::LineStrip")       public static var LINE_STRIP:PrimitiveType;
    @:native("sf::Triangles")       public static var TRIANGLES:PrimitiveType;
    @:native("sf::TriangleStrip")   public static var TRIANGLE_STRIP:PrimitiveType;
    @:native("sf::TriangleFan")     public static var TRIANGLE_FAN:PrimitiveType;
    @:native("sf::Quads")           public static var QUADS:PrimitiveType;
}