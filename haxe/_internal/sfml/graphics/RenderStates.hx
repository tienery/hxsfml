package _internal.sfml.graphics;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::RenderStates&")
extern class RenderStates {
    //Constructors
    @:native("sf::RenderStates")        public static function createInstance(?blendMode:BlendMode):RenderStates;
    
    //Members
    @:native("blendMode")       public var blendMode:BlendMode;
    
    //Static members
    @:native("sf::RenderStates::Default")   public static var DEFAULT:RenderStatesConst;
}

@:include("SFML/Graphics.hpp")
@:native("const sf::RenderStates&")
extern class RenderStatesConst {
}
