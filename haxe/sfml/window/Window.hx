package sfml.window;

import cpp.ConstCharStar;

@:include("SFML/Window.hpp")
@:unreflective
@:native("sf::Window*")
extern class Window {
    @:native("new sf::Window")      public static function create(mode:VideoMode, name:ConstCharStar):Window;
    @:native("close")               public function close():Void;
    @:native("isOpen")              public function isOpen():Bool;
    @:native("display")             public function display():Void;
    @:native("pollEvent")           public function pollEvent(event:Event):Bool;
}