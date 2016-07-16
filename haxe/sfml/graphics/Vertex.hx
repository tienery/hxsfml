package sfml.graphics;

import sfml.system.Vector2.Vector2f;

@:include("VertexHelper.cpp")
@:native("Vertex*")
extern class Vertex {

    @:native("new Vertex")      public static function create(type:PrimitiveType, count:Int):Vertex; 
    
    @:native("add")             public function add(position:Vector2f, color:Color, texCoords:Vector2f):Void;
    @:native("clear")           public function clear():Void;
    @:native("draw")            public function draw(window:RenderWindow):Void;
    
}