package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::ContextSettings&")
extern class ContextSettings {
    @:native("sf::ContextSettings")         public static function createInstance():ContextSettings;
    @:native("depthBits")           public var depthBits:UInt;
    @:native("stencilBits")         public var stencilBits:UInt;
    @:native("antialiasingLevel")   public var antialiasingLevel:UInt;
    @:native("majorVersion")        public var majorVersion:UInt;
    @:native("minorVersion")        public var minorVersion:UInt;
    @:native("attributeFlags")      public var attributeFlags:UInt;
}

@:include("SFML/Window.hpp")
@:structAccess
@:native("const sf::ContextSettings&")
extern class ConstContextSettings extends ContextSettings {
}