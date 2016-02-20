package sfml.system;

import cpp.Int64;

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Time")
extern class Time {
    @:native("sf::Time")        public static function createInstance():TimePtr;
    
    @:native("asSeconds")       public function asSeconds():Float;
    @:native("asMilliseconds")  public function asMilliseconds():Int;
    @:native("asMicroseconds")  public function asMicroseconds():Int64;
}

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Time&")
extern class TimePtr extends Time {
}