package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::MouseMoveEvent")
extern class MouseMoveEvent {
    @:native("x")   public var x:Int;
    @:native("y")   public var y:Int;
}