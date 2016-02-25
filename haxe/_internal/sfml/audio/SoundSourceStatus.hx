package _internal.sfml.audio;

@:headerCode('#include "SFML/Audio.hpp"')
class SoundSourceStatus {
    public static var STOPPED:Int           = untyped __cpp__("sf::SoundSource::Status::Stopped");
    public static var PAUSED:Int            = untyped __cpp__("sf::SoundSource::Status::Paused");
    public static var PLAYING:Int           = untyped __cpp__("sf::SoundSource::Status::Playing");
}