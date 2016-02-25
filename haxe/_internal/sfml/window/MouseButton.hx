package _internal.sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class MouseButton {
    public static var LEFT:Int              = untyped __cpp__("sf::Mouse::Button::Left");
    public static var RIGHT:Int             = untyped __cpp__("sf::Mouse::Button::Right");
    public static var MIDDLE:Int            = untyped __cpp__("sf::Mouse::Button::Middle");
    public static var XBUTTON1:Int          = untyped __cpp__("sf::Mouse::Button::XButton1");
    public static var XBUTTON2:Int          = untyped __cpp__("sf::Mouse::Button::XButton2");
    public static var BUTTON_COUNT:Int      = untyped __cpp__("sf::Mouse::Button::ButtonCount");
}