package sfml.system;

@:include("SFML/System.hpp")
@:structAccess
@:native("sf::Lock&")
extern class Lock {
    @:native("sf::Lock")    public static function create(mutex:Mutex):Lock;
}