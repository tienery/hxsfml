package _internal.sfml.system;

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Clock&")
extern class Clock {
    @:native("sf::Clock")       public static function createInstance():Clock;
    
    @:native("getElapsedTime")  public function getElapsedTime():Time;
    @:native("restart")         public function restart():Time;
}