package;

import sfml.window.*;
import window.EventHelper;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:Window = Window.create(VideoMode.create(800, 600), "Test 01 - Blank Window");
        
        while (window.isOpen())
        {
            var event = EventHelper.createEvent();
            while (window.pollEvent(event))
            {
                var result = EventHelper.getEventType(event);
                if (result == 1) {
                    window.close();
                }
            }
            
            window.display();
        }
        
        return 0;
    }
    
}