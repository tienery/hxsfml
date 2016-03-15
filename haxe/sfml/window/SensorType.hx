package sfml.window;

@:headerCode('#include "SFML/Window.hpp"')
class SensorType {
    public static var ACCELEROMETER:Int         = untyped __cpp__("sf::Sensor::Type::Accelerometer");
    public static var GYROSCOPE:Int             = untyped __cpp__("sf::Sensor::Type::Gyroscope");
    public static var MAGNETOMETER:Int          = untyped __cpp__("sf::Sensor::Type::Magnetometer");
    public static var GRAVITY:Int               = untyped __cpp__("sf::Sensor::Type::Gravity");
    public static var USERACCELERATION:Int      = untyped __cpp__("sf::Sensor::Type::UserAcceleration");
    public static var ORIENTATION:Int           = untyped __cpp__("sf::Sensor::Type::Orientation");
    public static var COUNT:Int                 = untyped __cpp__("sf::Sensor::Type::Count");
}