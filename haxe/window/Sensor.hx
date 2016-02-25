package _internal.sfml.window;

import _internal.sfml.system.Vector3.Vector3f;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Sensor&")
extern class Sensor {
    @:native("sf::Sensor::isAvailable")     public static function isAvailable(type:Int):Bool;
    @:native("sf::Sensor::setEnabled")      public static function setEnabled(type:Int, enabled:Bool):Void;
    @:native("sf::Sensor::getValue")        public static function getValue(type:Int):Vector3f;
}