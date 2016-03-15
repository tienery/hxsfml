package sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class JoystickAxis {
    public static var X:Int     = untyped __cpp__("sf::Joystick::Axis::X");
    public static var Y:Int     = untyped __cpp__("sf::Joystick::Axis::Y");
    public static var Z:Int     = untyped __cpp__("sf::Joystick::Axis::Z");
    public static var R:Int     = untyped __cpp__("sf::Joystick::Axis::R");
    public static var U:Int     = untyped __cpp__("sf::Joystick::Axis::U");
    public static var V:Int     = untyped __cpp__("sf::Joystick::Axis::V");
    public static var POVX:Int  = untyped __cpp__("sf::Joystick::Axis::PovX");
    public static var POVY:Int  = untyped __cpp__("sf::Joystick::Axis::PovY");
}