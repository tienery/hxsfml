package sfml.audio;

import cpp.ConstCharStar;
import cpp.CastCharStar;
import haxe.ds.Vector;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::SoundRecorder&")
extern class SoundRecorder {
    @:native("start")           public function start(sampleRate:UInt):Bool;
    @:native("stop")            public function stop():Void;
    @:native("getSampleRate")   public function getSampleRate():UInt;
    @:native("setDevice")       public function setDevice(name:ConstCharStar):Bool;
    @:native("getDevice")       public function getDevice():ConstCharStar;
    
    @:native("sf::SoundRecorder::isAvailable")                  public static function isAvailable():Bool;
}