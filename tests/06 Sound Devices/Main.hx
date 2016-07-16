package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.audio.*;
import helpers.SoundHelper;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.create(VideoMode.create(800, 600), "Test 06 - Sound Devices");
        
        var devices = SoundHelper.getAvailableDevices();
        
        for (i in 0...devices.length)
            trace(devices[i]);
        
        trace(SoundHelper.getDefaultDevice());
        
        while (window.isOpen())
        {
            var event = Event.create();
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