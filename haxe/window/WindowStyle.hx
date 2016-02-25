package _internal.sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class WindowStyle {
    public static var NONE:UInt         = untyped __cpp__("sf::Style::None");
    public static var TITLEBAR:UInt     = untyped __cpp__("sf::Style::Titlebar");
    public static var RESIZE:UInt       = untyped __cpp__("sf::Style::Resize");
    public static var CLOSE:UInt        = untyped __cpp__("sf::Style::Close");
    public static var FULLSCREEN:UInt   = untyped __cpp__("sf::Style::Fullscreen");
    public static var DEFAULT:UInt      = untyped __cpp__("sf::Style::Default");
}