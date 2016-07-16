package;

import sfml.graphics.*;
import sfml.window.*;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.create(VideoMode.create(800, 600, 32), "Test 01 - Blank Window");
        
        while (window.isOpen())
        {
            var event = Event.create();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
            }
            
            window.clear(Color.create(255, 0, 0, 255));
            
            window.display();
        }
        
        return 0;
    }
    
}