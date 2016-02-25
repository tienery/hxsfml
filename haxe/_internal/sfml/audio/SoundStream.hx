package _internal.sfml.audio;

import _internal.sfml.system.Time;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::SoundStream&")
extern class SoundStream extends SoundSource {
    @:native("play")                public function play():Void;
    @:native("pause")               public function pause():Void;
    @:native("stop")                public function stop():Void;
    @:native("getChannelCount")     public function getChannelCount():UInt;
    @:native("getSampleRate")       public function getSampleRate():UInt;
    @:native("setLoop")             public function setLoop(loop:Bool):Void;
    @:native("setPlayingOffset")    public function setPlayingOffset(time:Time):Void;
    @:native("getLoop")             public function getLoop():Bool;
    @:native("getPlayingOffset")    public function getPlayingOffset():Time;
    @:native("getStatus")           public function getStatus():Int;
}