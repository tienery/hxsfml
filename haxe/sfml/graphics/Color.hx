package sfml.graphics;

import cpp.UInt8;
import cpp.UInt32;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::Color&")
extern class Color {
    //Constructors
    @:native("sf::Color")       @:overload(function(r:UInt8, g:UInt8, b:UInt8, a:UInt8):Color {})
    @:native("sf::Color")       public static function create(color:UInt32):Color;
    
    //Members
    @:native("toInteger")       public function toInteger():UInt32;
    @:native("r")               public var r:UInt8;
    @:native("g")               public var g:UInt8;
    @:native("b")               public var b:UInt8;
    @:native("a")               public var a:UInt8;
    
    //Static members
    @:native("sf::Color::Black")    public static var black:Color;
    @:native("sf::Color::White")    public static var white:Color;
    @:native("sf::Color::Red")      public static var red:Color;
    @:native("sf::Color::Green")    public static var green:Color;
    @:native("sf::Color::Blue")     public static var blue:Color;
    @:native("sf::Color::Yellow")   public static var yellow:Color;
    @:native("sf::Color::Magenta")  public static var magenta:Color;
    @:native("sf::Color::Cyan")     public static var cyan:Color;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Color")
extern class ColorRaw extends Color {
}