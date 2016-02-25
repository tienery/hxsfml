package audio;

import _internal.sfml.audio.SoundBuffer in SFMLSoundBuffer;
import _internal.sfml.audio.SoundBuffer.ConstSoundBuffer;
import system.Time;

class SoundBuffer {
    
    private var _ref:SFMLSoundBuffer;
    
    /**
    * Get the number of samples stored in the buffer.
    */
    public var sampleCount(get, null):UInt;
    
    /**
    * Get the sample rate of the sound.
    * 
    * The sample rate is the number of samples played per second. The higher, the better the 
    * quality (for example, 44100 samples/s is CD quality).
    */
    public var sampleRate(get, null):UInt;
    
    /**
    * Get the number of channels used by the sound.
    * 
    * If the sound is mono then the number of channels will be 1, 2 for stereo, etc.
    */
    public var channelCount(get, null):UInt;
    
    /**
    * Get the total duration of the sound.
    */
    public var duration(get, null):Time;
    
    /**
    * Storage for audio samples defining a sound.
    *
    * A sound buffer holds the data of a sound, which is an array of audio samples.
    *
    * A sample is a 16 bits signed integer that defines the amplitude of the sound at a given time. 
    * The sound is then reconstituted by playing these samples at a high rate (for example, 44100 samples 
    * per second is the standard rate used for playing CDs). In short, audio samples are like texture pixels, 
    * and a SoundBuffer is similar to a Texture.
    *
    * A sound buffer can be loaded from a file (see loadFromFile() for the complete list of supported formats), 
    * from memory, from a custom stream (see sf::InputStream) or directly from an array of samples. It can also 
    * be saved back to a file.
    *
    * Sound buffers alone are not very useful: they hold the audio data but cannot be played. To do so, you 
    * need to use the Sound class, which provides functions to play/pause/stop the sound as well as changing 
    * the way it is outputted (volume, pitch, 3D position, ...). This separation allows more flexibility and 
    * better performances: indeed a SoundBuffer is a heavy resource, and any operation on it is slow (often too 
    * slow for real-time applications). On the other side, a Sound is a lightweight object, which can use the 
    * audio data of a sound buffer and change the way it is played without actually modifying that data. Note that 
    * it is also possible to bind several Sound instances to the same SoundBuffer.
    *
    * It is important to note that the sf::Sound instance doesn't copy the buffer that it uses, it only keeps a 
    * reference to it. Thus, a SoundBuffer must not be destructed while it is used by a Sound (i.e. never write a 
    * function that uses a local sf::SoundBuffer instance for loading a sound).
    */
    public function new()
    {
        _ref = cast SFMLSoundBuffer.createInstance();
    }
    
    /**
    * Load the sound buffer from a file.
    */
    public function loadFromFile(filename:String):Bool
    {
        return castRef().loadFromFile(filename);
    }
    
    /**
    * Save the sound buffer to an audio file.
    */
    public function saveToFile(filename:String):Bool
    {
        return castRef().saveToFile(filename);
    }
    
    private function get_sampleCount():UInt
    {
        return castRef().getSampleCount();
    }
    
    private function get_sampleRate():UInt
    {
        return castRef().getSampleRate();
    }
    
    private function get_channelCount():UInt
    {
        return castRef().getChannelCount();
    }
    
    @:access(system.Time)
    private function get_duration():Time
    {
        var time = new Time();
        time._ref = castRef().getDuration();
        return time;
    }
    
    private function castRef():SFMLSoundBuffer return cast _ref;
}