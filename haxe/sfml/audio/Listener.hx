package sfml.audio;

import sfml.system.Vector3.Vector3f;
import sfml.system.Vector3.Vector3fRaw;

extern class Listener {

    @:native("sf::Listener::setGlobalVolume")
    public static function setGlobalVolume(volume:Float):Void;
    
    @:native("sf::Listener::getGlobalVolume")
    public static function getGlobalVolume():Float;
    
    @:native("sf::Listener::setPosition")
    @:overload(function(x:Float, y:Float, z:Float):Void {})
    @:native("sf::Listener::setPosition")
    public static function setPosition(position:Vector3f):Void;
    
    @:native("sf::Listener::getPosition")
    public static function getPosition():Vector3fRaw;
    
    @:native("sf::Listener::setDirection")
    @:overload(function(x:Float, y:Float, z:Float):Void {})
    @:native("sf::Listener::setDirection")
    public static function setDirection(position:Vector3f):Void;
    
    @:native("sf::Listener::getDirection")
    public static function getDirection():Vector3fRaw;
    
    @:native("sf::Listener::setUpVector")
    @:overload(function(x:Float, y:Float, z:Float):Void {})
    @:native("sf::Listener::setUpVector")
    public static function setUpVector(position:Vector3f):Void;
    
    @:native("sf::Listener::getUpVector")
    public static function getUpVector():Vector3fRaw;

}