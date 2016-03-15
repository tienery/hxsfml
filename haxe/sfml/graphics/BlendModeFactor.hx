package sfml.graphics;

@:headerCode('#include "SFML/Graphics.hpp"')
class BlendModeFactor {
    public static var ZERO:Int                  = untyped __cpp__("sf::BlendMode::Factor::Zero");
    public static var ONE:Int                   = untyped __cpp__("sf::BlendMode::Factor::One");
    public static var SRC_COLOR:Int             = untyped __cpp__("sf::BlendMode::Factor::SrcColor");
    public static var ONE_MINUS_SRC_COLOR:Int   = untyped __cpp__("sf::BlendMode::Factor::OneMinusSrcColor");
    public static var DST_COLOR:Int             = untyped __cpp__("sf::BlendMode::Factor::DstColor");
    public static var ONE_MINUS_DST_COLOR:Int   = untyped __cpp__("sf::BlendMode::Factor::OneMinusDstColor");
    public static var SRC_ALPHA:Int             = untyped __cpp__("sf::BlendMode::Factor::SrcAlpha");
    public static var ONE_MINUS_SRC_ALPHA:Int   = untyped __cpp__("sf::BlendMode::Factor::OneMinusSrcAlpha");
    public static var DST_ALPHA:Int             = untyped __cpp__("sf::BlendMode::Factor::DstAlpha");
    public static var ONE_MINUS_DST_ALPHA:Int   = untyped __cpp__("sf::BlendMode::Factor::OneMinusDstAlpha");
}