package helpers;

import sfml.window.VideoMode;

@:include("VideoModeHelper.cpp")
@:native("hxsfml::VideoModeHelper")
extern class VideoModeHelper {
    @:native("hxsfml::VideoModeHelper::getFullscreenModes")     public static function getFullscreenModes():Array<VideoMode>;
}