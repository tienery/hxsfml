package helpers;

@:include("VectorHelper.cpp")
@:native("hxsfml::VectorHelper")
extern class VectorHelper {
    @:native("hxsfml::VectorHelper::getAvailableSoundDevices")      public static function getAvailableSoundDevices():Array<String>;
}