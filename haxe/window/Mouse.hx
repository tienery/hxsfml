package _internal.sfml.window;

import _internal.sfml.system.Vector2.Vector2i;
import _internal.sfml.system.Vector2.Vector2iRaw;
import _internal.sfml.window.Window.ConstWindow;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Mouse&")
extern class Mouse {
    @:native("sf::Mouse::isButtonPressed")      public static function isButtonPressed(button:Int):Bool;
    @:native("sf::Mouse::getPosition")          public static function getDesktopPosition():Vector2iRaw;
    @:native("sf::Mouse::getPosition")          public static function getLocalPosition(relativeTo:ConstWindow):Vector2iRaw;
    @:native("sf::Mouse::setPosition")          public static function setDesktopPosition(position:Vector2i):Void;
    @:native("sf::Mouse::setPosition")          public static function setLocalPosition(position:Vector2i, relativeTo:ConstWindow):Void;
}