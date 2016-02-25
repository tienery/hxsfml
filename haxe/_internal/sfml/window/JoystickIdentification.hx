package _internal.sfml.window;

import cpp.CastCharStar;

@:include("SFML/Window.hpp")
@:native("sf::Joystick::Identification")
extern class JoystickIdentification {
    @:native("name")        public var name:CastCharStar;
    @:native("vendorId")    public var vendorId:UInt;
    @:native("productId")   public var productId:UInt;
}