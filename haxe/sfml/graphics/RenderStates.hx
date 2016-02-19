package sfml.graphics;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::RenderStates&")
extern class RenderStates {
    //Constructors
    @:native("sf::RenderStates")        public static function create(?blendMode:BlendMode):RenderStates;
    
    //Members
    @:native("blendMode")       public var blendMode:BlendMode;
    
    //Static members
    @:native("sf::RenderStates::Default")   public static var DEFAULT:RenderStates;
}