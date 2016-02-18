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
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
            }
            
            window.display();
        }
        
        return 0;
    }
    
}