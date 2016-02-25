package _internal.sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class EventType {
    /**
    * The window requested to be closed (no data).
    */
    public static var CLOSED:Int                = untyped __cpp__("sf::Event::Closed");
    /**
    * The window was resized (data in event.size).
    */
    public static var RESIZED:Int               = untyped __cpp__("sf::Event::Resized");
    /**
    * The window lost the focus (no data).
    */
    public static var LOST_FOCUS:Int            = untyped __cpp__("sf::Event::LostFocus");
    /**
    * The window gained the focus (no data).
    */
    public static var GAINED_FOCUS:Int          = untyped __cpp__("sf::Event::GainedFocus");
    /**
    * A character was entered (data in event.text).
    */
    public static var TEXT_ENTERED:Int          = untyped __cpp__("sf::Event::TextEntered");
    /**
    * A key was pressed (data in event.key)
    */
    public static var KEY_PRESSED:Int           = untyped __cpp__("sf::Event::KeyPressed");
    /**
    * A key was released (data in event.key)
    */
    public static var KEY_RELEASED:Int          = untyped __cpp__("sf::Event::KeyReleased");
    /**
    * The mouse wheel was scrolled (data in event.mouseWheelScroll)
    */
    public static var MOUSE_WHEEL_SCROLLED:Int  = untyped __cpp__("sf::Event::MouseWheelScrolled");
    /**
    * A mouse button was pressed (data in event.mouseButton)
    */
    public static var MOUSE_BUTTON_PRESSED:Int  = untyped __cpp__("sf::Event::MouseButtonPressed");
    /**
    * A mouse button was released (data in event.mouseButton)
    */
    public static var MOUSE_BUTTON_RELEASED:Int = untyped __cpp__("sf::Event::MouseButtonReleased");
    /**
    * The mouse cursor moved (data in event.mouseMove)
    */
    public static var MOUSE_MOVED:Int           = untyped __cpp__("sf::Event::MouseMoved");
    /**
    * The mouse cursor entered the area of the window (no data)
    */
    public static var MOUSE_ENTERED:Int         = untyped __cpp__("sf::Event::MouseEntered");
    /**
    * The mouse cursor left the area of the window (no data)
    */
    public static var MOUSE_LEFT:Int            = untyped __cpp__("sf::Event::MouseLeft");
    /**
    * A joystick button was pressed (data in event.joystickButton)
    */
    public static var JOYSTICK_BUTTON_PRESSED:Int = untyped __cpp__("sf::Event::JoystickButtonPressed");
    /**
    * A joystick button was released (data in event.joystickButton)
    */
    public static var JOYSTICK_BUTTON_RELEASED:Int = untyped __cpp__("sf::Event::JoystickButtonReleased");
    /**
    * The joystick moved along an axis (data in event.joystickMove)
    */
    public static var JOYSTICK_MOVED:Int        = untyped __cpp__("sf::Event::JoystickMoved");
    /**
    * A joystick was connected (data in event.joystickConnect)
    */
    public static var JOYSTICK_CONNECTED:Int    = untyped __cpp__("sf::Event::JoystickConnected");
    /**
    * A joystick was disconnected (data in event.joystickConnect)
    */
    public static var JOYSTICK_DISCONNECTED:Int = untyped __cpp__("sf::Event::JoystickDisconnected");
    /**
    * A touch event began (data in event.touch)
    */
    public static var TOUCH_BEGAN:Int           = untyped __cpp__("sf::Event::TouchBegan");
    /**
    * A touch moved (data in event.touch)
    */
    public static var TOUCH_MOVED:Int           = untyped __cpp__("sf::Event::TouchMoved");
    /**
    * A touch event ended (data in event.touch) 
    */
    public static var TOUCH_ENDED:Int           = untyped __cpp__("sf::Event::TouchEnded");
    /**
    * A sensor value changed (data in event.sensor)
    */
    public static var SENSOR_CHANGED:Int        = untyped __cpp__("sf::Event::SensorChanged");
    
}