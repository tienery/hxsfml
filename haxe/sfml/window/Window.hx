package sfml.window;

import cpp.ConstCharStar;

@:include("SFML/Window.hpp")
@:unreflective
@:native("sf::Window*")
extern class Window {
    @:native("new sf::Window")          public static function create(mode:VideoMode, name:ConstCharStar):Window;
    @:native("close")                   public function close():Void;
    @:native("isOpen")                  public function isOpen():Bool;
    @:native("display")                 public function display():Void;
    @:native("pollEvent")               public function pollEvent(event:Event):Bool;
    @:native("waitEvent")               public function waitEvent(event:Event):Bool;
    @:native("setVerticalSyncEnabled")  public function setVerticalSyncEnabled(enable:Bool):Void;
    @:native("setMouseCursorVisible")   public function setMouseCursorVisible(enable:Bool):Void;
    @:native("setKeyRepeatEnabled")     public function setKeyRepeatEnabled(enable:Bool):Void;
    @:native("setFramerateLimit")       public function setFramerateLimit(limit:UInt):Void;
    @:native("setJoystickThreshold")    public function setJoystickThreshold(threshold:Float):Void;
    @:native("setActive")               public function setActive(active:Bool = true):Bool;
    @:native("requestFocus")            public function requestFocus():Void;
    @:native("hasFocus")                public function hasFocus():Bool;
}