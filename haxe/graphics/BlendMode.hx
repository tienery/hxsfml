package _internal.sfml.graphics;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::BlendMode&")
extern class BlendMode {
    @:native("colorSrcFactor")      public var colorSrcFactor:Int;
    @:native("colorDstFactor")      public var colorDstFactor:Int;
    @:native("colorEquation")       public var colorEquation:Int;
    @:native("alphaSrcFactor")      public var alphaSrcFactor:Int;
    @:native("alphaDstFactor")      public var alphaDstFactor:Int;
    @:native("alphaEquation")       public var alphaEquation:Int;
}