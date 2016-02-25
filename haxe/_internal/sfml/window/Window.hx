package _internal.sfml.window;

import cpp.ConstCharStar;
import _internal.sfml.system.Vector2.Vector2iRaw;
import _internal.sfml.system.Vector2.Vector2i;
import _internal.sfml.system.Vector2.Vector2uRaw;
import _internal.sfml.system.Vector2.Vector2u;
import _internal.sfml.window.ContextSettings.ConstContextSettings;

@:include("SFML/Window.hpp")
@:structAccess
@:native("sf::Window&")
extern class Window {
    @:native("sf::Window")              public static function createInstance(mode:VideoMode, name:ConstCharStar):Window;
    @:native("create")                  public function create(mode:VideoMode, name:ConstCharStar, style:UInt, ?settings:ConstContextSettings):Void;
    @:native("close")                   public function close():Void;
    @:native("isOpen")                  public function isOpen():Bool;
    @:native("getSettings")             public function getSettings():ContextSettings;
    @:native("display")                 public function display():Void;
    @:native("pollEvent")               public function pollEvent(event:Event):Bool;
    @:native("waitEvent")               public function waitEvent(event:Event):Bool;
    @:native("getPosition")             public function getPosition():Vector2iRaw;
    @:native("setPosition")             public function setPosition(position:Vector2i):Void;
    @:native("getSize")                 public function getSize():Vector2uRaw;
    @:native("setSize")                 public function setSize(size:Vector2u):Void;
    @:native("setTitle")                public function setTitle(name:ConstCharStar):Void;
    @:native("setVisible")              public function setVisible(visible:Bool):Void;
    @:native("setVerticalSyncEnabled")  public function setVerticalSyncEnabled(enable:Bool):Void;
    @:native("setMouseCursorVisible")   public function setMouseCursorVisible(enable:Bool):Void;
    @:native("setKeyRepeatEnabled")     public function setKeyRepeatEnabled(enable:Bool):Void;
    @:native("setFramerateLimit")       public function setFramerateLimit(limit:UInt):Void;
    @:native("setJoystickThreshold")    public function setJoystickThreshold(threshold:Float):Void;
    @:native("setActive")               public function setActive(active:Bool = true):Bool;
    @:native("requestFocus")            public function requestFocus():Void;
    @:native("hasFocus")                public function hasFocus():Bool;
}

@:include("SFML/Window.hpp")
@:structAccess
@:native("const sf::Window&")
extern class ConstWindow extends Window {
}