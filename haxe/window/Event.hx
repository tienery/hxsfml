package window;

import sfml.window.Event in SFMLEvent;

@:include("hx/sfml/Event.cpp")
extern class Event {
    @:native("hx::sfml::Event::createEvent") public static function createEvent():SFMLEvent;
    @:native("hx::sfml::Event::getEventType") public static function getEventType(event:SFMLEvent):Int;
}