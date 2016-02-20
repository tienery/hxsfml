package sfml.window;

@:include("SFML/Window.hpp")
@:native("sf::Joystick")
extern class Joystick {
    @:native("sf::Joystick::Count")             public static var count:Int;
    @:native("sf::Joystick::ButtonCount")       public static var buttonCount:Int;
    @:native("sf::Joystick::AxisCount")         public static var axisCount:Int;
    
    @:native("sf::Joystick::isConnected")       public static function isConnected(joystick:UInt):Bool;
    @:native("sf::Joystick::getButtonCount")    public static function getButtonCount(joystick:UInt):UInt;
    @:native("sf::Joystick::hasAxis")           public static function hasAxis(joystick:UInt, axis:Int):Bool;
    @:native("sf::Joystick::isButtonPressed")   public static function isButtonPressed(joystick:UInt, button:UInt):Bool;
    @:native("sf::Joystick::getAxisPosition")   public static function getAxisPosition(joystick:UInt, axis:Int):Float;
    @:native("sf::Joystick::getIdentification") public static function getIdentification(joystick:UInt):JoystickIdentification;
    @:native("sf::Joystick::update")            public static function update():Void;
}