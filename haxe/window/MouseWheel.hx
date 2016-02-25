package _internal.sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class MouseWheel {
    public static var VERTICAL_WHEEL:Int    = untyped __cpp__("sf::Mouse::Wheel::VerticalWheel");
    public static var HORIZONTAL_WHEEL:Int  = untyped __cpp__("sf::Mouse::Wheel::HorizontalWheel");
}