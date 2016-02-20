package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::SensorEvent")
extern class SensorEvent {
    @:native("type")    public var type:Int;
    @:native("x")       public var x:Float;
    @:native("y")       public var y:Float;
    @:native("z")       public var z:Float;
}