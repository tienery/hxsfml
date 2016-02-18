package sfml.window;

//TODO

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::JoystickMoveEvent")
extern class JoystickMoveEvent {
    @:native("joystickId")      public var joystickId:UInt;
}