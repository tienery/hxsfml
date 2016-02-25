package _internal.sfml.graphics;

@:headerCode('#include "SFML/Graphics.hpp"')
class TextStyle {
    public static var REGULAR:Int        = untyped __cpp__("sf::Text::Style::Regular");
    public static var BOLD:Int           = untyped __cpp__("sf::Text::Style::Bold");
    public static var ITALIC:Int         = untyped __cpp__("sf::Text::Style::Italic");
    public static var UNDERLINED:Int     = untyped __cpp__("sf::Text::Style::Underlined");
    public static var STRIKE_THROUGH:Int = untyped __cpp__("sf::Text::Style::StrikeThrough");
}