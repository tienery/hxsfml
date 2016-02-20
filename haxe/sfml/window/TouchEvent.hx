package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::TouchEvent")
extern class TouchEvent {
    @:native("finger")      public var finger:UInt;
    @:native("x")           public var x:Int;
    @:native("y")           public var y:Int;
}