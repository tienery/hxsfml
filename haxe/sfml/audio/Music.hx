package sfml.audio;

import cpp.ConstCharStar;
import sfml.system.Time;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::Music&")
extern class Music extends SoundStream {
    @:native("sf::Music")       public static function createInstance():Music;
    
    @:native("openFromFile")    public function openFromFile(filename:ConstCharStar):Bool;
    @:native("getDuration")     public function getDuration():Time;
}