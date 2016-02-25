package _internal.sfml.audio;

import sfml.system.Vector3.Vector3f;
import sfml.system.Vector3.Vector3fRaw;

extern class Listener {

    @:native("sf::Listener::setGlobalVolume")
    /**
    * Change the global volume of all the sounds and musics.
    * 
    * The volume is a number between 0 and 100; it is combined with the individual volume of each sound / music. 
    * The default value for the volume is 100 (maximum).
    */
    public static function setGlobalVolume(volume:Float):Void;
    
    @:native("sf::Listener::getGlobalVolume")
    /**
    * Get the current value of the global volume.
    */
    public static function getGlobalVolume():Float;
    
    @:native("sf::Listener::setPosition")
    @:overload(function(x:Float, y:Float, z:Float):Void {})
    @:native("sf::Listener::setPosition")
    /**
    * Set the position of the listener in the scene.
    *
    * The default listener's position is (0, 0, 0).
    */
    public static function setPosition(position:Vector3f):Void;
    
    @:native("sf::Listener::getPosition")
    /**
    * Get the current position of the listener in the scene. 
    */
    public static function getPosition():Vector3fRaw;
    
    @:native("sf::Listener::setDirection")
    @:overload(function(x:Float, y:Float, z:Float):Void {})
    @:native("sf::Listener::setDirection")
    /**
    * Set the forward vector of the listener in the scene.
    *
    * The direction (also called "at vector") is the vector pointing forward from the listener's perspective. 
    * Together with the up vector, it defines the 3D orientation of the listener in the scene. The direction 
    * vector doesn't have to be normalized. The default listener's direction is (0, 0, -1).
    */
    public static function setDirection(position:Vector3f):Void;
    
    @:native("sf::Listener::getDirection")
    /**
    * Get the current forward vector of the listener in the scene.
    */
    public static function getDirection():Vector3fRaw;
    
    @:native("sf::Listener::setUpVector")
    @:overload(function(x:Float, y:Float, z:Float):Void {})
    @:native("sf::Listener::setUpVector")
    /**
    * Set the upward vector of the listener in the scene.
    *
    * The up vector is the vector that points upward from the listener's perspective. Together with the 
    * direction, it defines the 3D orientation of the listener in the scene. The up vector doesn't have to be 
    * normalized. The default listener's up vector is (0, 1, 0). It is usually not necessary to change it, 
    * especially in 2D scenarios.
    */
    public static function setUpVector(position:Vector3f):Void;
    
    @:native("sf::Listener::getUpVector")
    /**
    * Get the current upward vector of the listener in the scene.
    */
    public static function getUpVector():Vector3fRaw;

}