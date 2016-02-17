package window;

import sfml.window.Event in SFMLEvent;

@:include("hx/sfml/Event.cpp")
@:native("hx::sfml::Event")
extern class Event {
    @:native("hx::sfml::Event::createEvent") public static function createEvent():SFMLEvent;
}