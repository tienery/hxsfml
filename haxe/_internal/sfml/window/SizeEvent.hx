package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::SizeEvent")
extern class SizeEvent {
    @:native("width")    public var width:UInt;
    @:native("height")   public var height:UInt;
}