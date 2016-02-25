package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::MouseButtonEvent")
extern class MouseButtonEvent {
    @:native("button")      public var button:Int;
    @:native("x")           public var x:Int;
    @:native("y")           public var y:Int;
}