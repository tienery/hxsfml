package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::VideoMode")
extern class VideoMode {
    @:native("sf::VideoMode")   public static function create(width:UInt, height:UInt, bitsPerPixel:UInt):VideoMode;
    @:native("width")           public var width:UInt;
    @:native("height")          public var height:UInt;
    @:native("bitsPerPixel")    public var bitsPerPixel:UInt;
    @:native("isValid")         public function isValid():Bool;
    
    @:native("sf::VideoMode::getDesktopMode")   public static function getDesktopMode():VideoMode;
}