package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event&")
extern class Event {
    @:native("sf::Event")       public static function createInstance():Event;

    @:native("size")            public var size:SizeEvent;
    @:native("joystickButton")  public var joystickButton:JoystickButtonEvent;
    @:native("joystickConnect") public var joystickConnect:JoystickConnectEvent;
    @:native("joystickMove")    public var joystickMove:JoystickMoveEvent;
    @:native("type")            public var type:Int;
}