package _internal.sfml.graphics;

@:headerCode('#include "SFML/Graphics.hpp"')
class ShaderType {
    public static var VERTEX:Int        = untyped __cpp__("sf::Shader::Type::Vertex");
    public static var FRAGMENT:Int      = untyped __cpp__("sf::Shader::Type::Fragment");
}