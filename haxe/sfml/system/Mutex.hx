package sfml.system;

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Mutex&")
extern class Mutex {
    @:native("sf::Mutex")       public static function createInstance():Mutex;
    
    @:native("lock")        public function lock():Void;
    @:native("unlock")      public function unlock():Void;
}