package sfml.system;

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Clock&")
extern class Clock {
    @:native("sf::Clock")       public static function create():Clock;
    
    @:native("getElapsedTime")  public function getElapsedTime():Time;
    @:native("restart")         public function restart():Time;
}