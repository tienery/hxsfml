package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Event::TextEvent")
extern class TextEvent {
    @:native("unicode")     public var unicode:UInt;
}