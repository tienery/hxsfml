package _internal.sfml.window;

@:include("SFML/Window.hpp")
@:native("sf::Keyboard")
extern class Keyboard {
    @:native("sf::Keyboard::isKeyPressed")              public static function isKeyPressed(key:Int):Bool;
    @:native("sf::Keyboard::setVirtualKeyboardVisible") public static function setVirtualKeyboardVisible(visible:Bool):Void;
}