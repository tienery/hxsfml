package sfml.audio;

import sfml.audio.SoundBuffer.ConstSoundBuffer;
import sfml.audio.SoundBuffer.SoundBufferPtr;
import sfml.system.Time;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::Sound&")
extern class Sound extends SoundSource {
    @:native("sf::Sound")           public static function create():Sound;
    
    @:native("play")                public function play():Void;
    @:native("pause")               public function pause():Void;
    @:native("stop")                public function stop():Void;
    @:native("setBuffer")           public function setBuffer(buffer:ConstSoundBuffer):Void;
    @:native("setLoop")             public function setLoop(loop:Bool):Void;
    @:native("setPlayingOffset")    public function setPlayingOffset(time:Time):Void;
    @:native("getBuffer")           public function getBuffer():SoundBufferPtr;
    @:native("getLoop")             public function getLoop():Bool;
    @:native("getPlayingOffset")    public function getPlayingOffset():Time;
    @:native("getStatus")           public function getStatus():Int;
    @:native("resetBuffer")         public function resetBuffer():Void;
}