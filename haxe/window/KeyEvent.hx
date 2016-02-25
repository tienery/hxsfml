package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::KeyEvent")
extern class KeyEvent {
    @:native("code")        public var code:Int;
    @:native("alt")         public var alt:Bool;
    @:native("control")     public var control:Bool;
    @:native("shift")       public var shift:Bool;
    @:native("system")      public var system:Bool;
}