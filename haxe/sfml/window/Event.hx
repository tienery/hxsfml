package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event&")
extern class Event {
    @:native("sf::Event")       public static function createInstance():Event;

    @:native("size")            public var size:SizeEvent;
    @:native("key")             public var key:KeyEvent;
    @:native("text")            public var text:TextEvent;
    @:native("mouseMove")       public var mouseMove:MouseMoveEvent;
    @:native("mouseButton")     public var mouseButton:MouseButtonEvent;
    @:native("mouseWheelScroll")public var mouseWheelScroll:MouseWheelScrollEvent;
    @:native("joystickButton")  public var joystickButton:JoystickButtonEvent;
    @:native("joystickConnect") public var joystickConnect:JoystickConnectEvent;
    @:native("joystickMove")    public var joystickMove:JoystickMoveEvent;
    @:native("touch")           public var touch:TouchEvent;
    @:native("sensor")          public var sensor:SensorEvent;
    @:native("type")            public var type:Int;
}