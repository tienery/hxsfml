package;

import sfml.graphics.*;
import sfml.window.*;
import window.EventHelper;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.createInstance(VideoMode.createInstance(800, 600), "Test 01 - Blank Window");
        
        while (window.isOpen())
        {
            var event = Event.createInstance();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
            }
            
            window.clear(Color.red);
            
            window.display();
        }
        
        return 0;
    }
    
}