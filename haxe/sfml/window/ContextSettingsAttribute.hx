package sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class ContextSettingsAttribute {
    public static var DEFAULT:Int       = untyped __cpp__("sf::ContextSettings::Attribute::Default");
    public static var CORE:Int          = untyped __cpp__("sf::ContextSettings::Attribute::Core");
    public static var DEBUG:Int         = untyped __cpp__("sf::ContextSettings::Attribute::Debug");
}