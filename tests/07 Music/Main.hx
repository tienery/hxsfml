package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.audio.*;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.createInstance(VideoMode.createInstance(800, 600), "Test 06 - Sound Devices");
        
        var sound = Sound.createInstance();
        if (!sound.loadFromFile("sound.wav"))
            trace("Error loading sound.");
        
        Listener.setPosition(0, 0, 0);
        
        while (window.isOpen())
        {
            var event = Event.createInstance();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
                
            }
            
            window.clear(Color.white);
            
            window.display();
        }
        
        return 0;
    }
    
}