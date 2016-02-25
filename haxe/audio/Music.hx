package audio;

import _internal.sfml.audio.Music in SFMLMusic;
import system.Time;

class Music extends SoundStream {
    
    /**
    * Get the total duration of the music.
    */
    public var duration(get, null):Time;
    
    /**
    * Streamed music played from an audio file.
    *
    * Musics are sounds that are streamed rather than completely loaded in memory.
    *
    * This is especially useful for compressed musics that usually take hundreds of MB when they 
    * are uncompressed: by streaming it instead of loading it entirely, you avoid saturating the memory 
    * and have almost no loading delay. This implies that the underlying resource (file, stream or memory 
    * buffer) must remain valid for the lifetime of the `sf::Music` object.
    *
    * Apart from that, a sf::Music has almost the same features as the `sf::SoundBuffer` / `sf::Sound` pair: 
    * you can play/pause/stop it, request its parameters (channels, sample rate), change the way it is 
    * played (pitch, volume, 3D position, ...), etc.
    *
    * As a sound stream, a music is played in its own thread in order not to block the rest of the program. 
    * This means that you can leave the music alone after calling play(), it will manage itself very well.
    */
    public function new()
    {
        super();
        
        _ref = cast SFMLMusic.createInstance();
    }
    
    /**
    * Open a music from an audio file.
    *
    * This function doesn't start playing the music (call play() to do so). See the documentation of `sf::InputSoundFile` 
    * for the list of supported formats.
    *
    * WARNING: Since the music is not loaded at once but rather streamed continuously, the file must remain accessible 
    * until the sf::Music object loads a new music or is destroyed.
    */
    public function openFromFile(filename:String):Bool
    {
        return castRef().openFromFile(filename);
    }
    
    @:access(system.Time)
    private function get_duration():Time
    {
        var time = new Time();
        time._ref = castRef().getDuration();
        
        return time;
    }
    
    private override function castRef():SFMLMusic return cast _ref;
}