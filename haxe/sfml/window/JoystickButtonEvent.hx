package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::JoystickButtonEvent")
extern class JoystickButtonEvent {
    @:native("joystickId")      public var joystickId:UInt;
    @:native("button")          public var button:UInt;
}