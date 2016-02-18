package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::JoystickConnectEvent")
extern class JoystickConnectEvent {
    @:native("joystickId")      public var joystickId:UInt;
}