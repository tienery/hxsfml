package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.audio.*;
import helpers.VectorHelper;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.createInstance(VideoMode.createInstance(800, 600), "Test 06 - Sound Devices");

        //Eventually, this will work once I know how to implement it in C++
        var devices = VectorHelper.getAvailableSoundDevices();
        for (i in 0...devices.length)
            trace(devices[i]);
        
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