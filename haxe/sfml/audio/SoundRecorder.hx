package sfml.audio;

import cpp.ConstCharStar;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::SoundRecorder&")
extern class SoundRecorder {
    @:native("start")           public function start(sampleRate:UInt):Bool;
    @:native("stop")            public function stop():Void;
    @:native("getSampleRate")   public function getSampleRate():UInt;
    @:native("setDevice")       public function setDevice(name:ConstCharStar):Bool;
    @:native("getDevice")       public function getDevice():ConstCharStar;
    
    @:native("hxsfml::VectorHelper::getAvailableSoundDevices")  public static function getAvailableDevices():Array<String>;
    @:native("sf::SoundRecorder::getDefaultDevice")             public static function getDefaultDevice():String;
    @:native("sf::SoundRecorder::isAvailable")                  public static function isAvailable():Bool;
}