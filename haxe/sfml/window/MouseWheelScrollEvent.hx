package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::MouseWheelScrollEvent")
extern class MouseWheelScrollEvent {
    @:native("wheel")       public var wheel:MouseWheel;
    @:native("delta")       public var delta:Float;
    @:native("x")           public var x:Int;
    @:native("y")           public var y:Int;
}