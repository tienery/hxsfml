package sfml.system;

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Vector3&")
extern class Vector3<T> {
    @:native("x")   public var x:T;
    @:native("y")   public var y:T;
    @:native("z")   public var z:T;
}

@:include("SFML/System.hpp")
@:structAccess
@:native("const sf::Vector3f&")
extern class Vector3f extends Vector3<Float> {
    @:native("sf::Vector3f")    public static function createInstance(x:Float, y:Float, z:Float):Vector3f;
    @:native("sf::Vector3f")    public static function createEmpty():Vector3f;
}

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Vector3f")
extern class Vector3fRaw extends Vector3f {
}