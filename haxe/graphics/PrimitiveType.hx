package _internal.sfml.graphics;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::PrimitiveType")
extern class PrimitiveType {
    @:native("sf::Points")          public static var POINTS:PrimitiveType;
    @:native("sf::Lines")           public static var LINES:PrimitiveType;
    @:native("sf::LinesStrip")      public static var LINES_STRIP:PrimitiveType;
    @:native("sf::Triangles")       public static var TRIANGLES:PrimitiveType;
    @:native("sf::TrianglesStrip")  public static var TRIANGLES_STRIP:PrimitiveType;
    @:native("sf::TrianglesFan")    public static var TRIANGLES_FAN:PrimitiveType;
    @:native("sf::Quads")           public static var QUADS:PrimitiveType;
}