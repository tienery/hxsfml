package sfml.graphics;

import sfml.system.Vector2.Vector2f;
import sfml.system.Vector2.Vector2fRaw;
import sfml.graphics.Color.ColorRaw;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Vertex&")
extern class Vertex {
    @:native("sf::Vertex")      public static function createInstance(?position:Vector2f, ?color:Color, texCoords:Vector2f):ConstVertex;
    
    @:native("position")    public var position:Vector2fRaw;
    @:native("color")       public var color:ColorRaw;
    @:native("texCoords")   public var texCoords:Vector2fRaw;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::Vertex&")
extern class ConstVertex extends Vertex {
}