package sfml.audio;

import sfml.system.Vector3.Vector3f;
import sfml.system.Vector3.Vector3fRaw;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::SoundSource&")
extern class SoundSource {
    @:native("setPitch")                public function setPitch(pitch:Float):Void;
    @:native("setVolume")               public function setVolume(volume:Float):Void;
    @:native("setPosition")             public function setPosition(position:Vector3f):Void;
    @:native("setRelativeToListener")   public function setRelativeToListener(relative:Bool):Void;
    @:native("setMinDistance")          public function setMinDistance(distance:Float):Void;
    @:native("setAttenuation")          public function setAttenuation(attenuation:Float):Void;
    @:native("getPitch")                public function getPitch():Float;
    @:native("getVolume")               public function getVolume():Float;
    @:native("getPosition")             public function getPosition():Vector3fRaw;
    @:native("isRelativeToListener")    public function isRelativeToListener():Bool;
    @:native("getMinDistance")          public function getMinDistance():Float;
    @:native("getAttenuation")          public function getAttenuation():Float;
}