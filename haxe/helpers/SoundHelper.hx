package helpers;

import cpp.ConstCharStar;

@:include("SoundHelper.cpp")
@:native("hxsfml::SoundHelper")
extern class SoundHelper {
    @:native("hxsfml::SoundHelper::getAvailableDevices")      public static function getAvailableDevices():Array<String>;
    @:native("hxsfml::SoundHelper::getDefaultDevice")         public static function getDefaultDevice():ConstCharStar;
}