package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::JoystickMoveEvent")
extern class JoystickMoveEvent {
    @:native("joystickId")      public var joystickId:UInt;
    @:native("axis")            public var axis:Int;
    @:native("position")        public var position:Float;
}