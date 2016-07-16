package sfml.graphics;

import sfml.system.Vector2.Vector2i;
import sfml.system.Vector2.Vector2f;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::Rect")
extern class RectObj<T> {
    //Members
    @:native("contains")        public function contains(x:T, y:T):Bool;
    @:native("left")            public var left:T;
    @:native("top")             public var top:T;
    @:native("width")           public var width:T;
    @:native("height")          public var height:T;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::IntRect")
extern class IntRect extends RectObj<Int> {
    @:native("sf::IntRect")        @:overload(function():IntRect {})
    @:native("sf::IntRect")        @:overload(function(x:Int, y:Int, width:Int, height:Int):IntRect {})
    @:native("sf::IntRect")        public static function create(position:Vector2i, size:Vector2i):IntRect;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::IntRect&")
extern class ConstIntRectPtr extends IntRect {
    @:native("sf::IntRect")        @:overload(function():ConstIntRectPtr {})
    @:native("sf::IntRect")        @:overload(function(x:Int, y:Int, width:Int, height:Int):ConstIntRectPtr {})
    @:native("sf::IntRect")        public static function create(position:Vector2i, size:Vector2i):ConstIntRectPtr;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::FloatRect")
extern class FloatRect extends RectObj<Float> {
    @:native("sf::FloatRect")        @:overload(function():FloatRect {})
    @:native("sf::FloatRect")        @:overload(function(x:Float, y:Float, width:Float, height:Float):FloatRect {})
    @:native("sf::FloatRect")        public static function create(position:Vector2f, size:Vector2f):FloatRect;
}