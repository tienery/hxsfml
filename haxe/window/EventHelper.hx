package window;

import cpp.Int32;
import sfml.window.Event in SFMLEvent;

@:include("hx/sfml/Event.cpp")
extern class EventHelper {
    @:native("hx::sfml::Event::createEvent") public static function createEvent():SFMLEvent;
}