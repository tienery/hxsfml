package audio;

import _internal.sfml.audio.SoundBufferRecorder in SFMLSoundRecorder;

class SoundBufferRecorder extends SoundRecorder {
    
	/**
	 * Get the sound buffer containing the captured audio data.
	 *
	 * The sound buffer is valid only after the capture has ended. This function provides 
	 * a read-only access to the internal sound buffer, but it can be copied if you need to 
	 * make any modification to it.
	 */
	public var buffer(get, null):SoundBuffer;
	
	/**
	 * Specialized SoundRecorder which stores the captured audio data into a sound buffer.
	 *
	 * SoundBufferRecorder allows to access a recorded sound through a SoundBuffer, so that 
	 * it can be played, saved to a file, etc.
	 *
	 * It has the same simple interface as its base class (start(), stop()) and adds a function 
	 * to retrieve the recorded sound buffer (getBuffer()).
	 *
	 * As usual, don't forget to call the isAvailable() function before using this class (see 
	 * SoundRecorder for more details about this).
	 */
	public function new()
	{
		_ref = cast SFMLSoundRecorder.createInstance();
	}
	
	@:access(SoundBuffer)
	private function get_buffer():SoundBuffer
	{
		var sb = new SoundBuffer();
		sb._ref = cast SFMLSoundRecorder.getBuffer();
		return sb;
	}
	
	
}