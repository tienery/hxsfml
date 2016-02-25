package _internal.sfml.audio;

import cpp.ConstCharStar;
import _internal.sfml.system.Time;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::SoundBuffer&")
extern class SoundBuffer {
    @:native("sf::SoundBuffer")     public static function createInstance():ConstSoundBuffer;
    
    @:native("loadFromFile")        public function loadFromFile(filename:ConstCharStar):Bool;
    @:native("saveToFile")          public function saveToFile(filename:ConstCharStar):Bool;
    @:native("getSampleCount")      public function getSampleCount():UInt;
    @:native("getSampleRate")       public function getSampleRate():UInt;
    @:native("getChannelCount")     public function getChannelCount():UInt;
    @:native("getDuration")         public function getDuration():Time;
}

@:include("SFML/Audio.hpp")
@:structAccess
@:native("const sf::SoundBuffer&")
extern class ConstSoundBuffer extends SoundBuffer {
}

@:include("SFML/Audio.hpp")
@:native("const sf::SoundBuffer*")
extern class SoundBufferPtr extends SoundBuffer {
}