package sfml.audio;

@:include("SFML/Audio.hpp")
@:structAccess
@:native("sf::SoundBufferRecorder&")
extern class SoundBufferRecorder extends SoundRecorder {
    @:native("getBuffer") public function getBuffer():SoundBuffer;
}