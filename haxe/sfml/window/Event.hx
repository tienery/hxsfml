package sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event")
extern class Event {
    @:native("size")    public var size:SizeEvent;
}