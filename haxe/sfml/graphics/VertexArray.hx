package sfml.graphics;

//TODO: Doesn't work yet. Need to resolve it at some point.

import sfml.graphics.Vertex.ConstVertex;
import sfml.graphics.Rect.FloatRect;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::VertexArray&")
extern class VertexArray implements Drawable {
    @:native("sf::VertexArray")         public static function createInstance(type:Int, count:Int):VertexArray;
    @:native("sf::VertexArray")         public static function createEmpty():VertexArray;
    
    @:native("getVertexCount")          public function getVertexCount():Int;
    @:native("clear")                   public function clear():Void;
    @:native("resize")                  public function resize(count:Int):Void;
    @:native("append")                  public function append(vertex:ConstVertex):Void;
    @:native("setPrimitiveType")        public function setPrimitiveType(type:Int):Void;
    @:native("getPrimitiveType")        public function getPrimitiveType():Int;
    @:native("getBounds")               public function getBounds():FloatRect;
    @:native("draw")                    public function draw(target:RenderTarget, ?states:RenderStates):Void;
}

@:include("SFML/Graphics.hpp")
@:native("const sf::Vertex *")
extern class ConstVertexArray {
}