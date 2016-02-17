package;

import sfml.window.*;
import window.Event in NativeEvent;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window = Window.create(VideoMode.create(800, 600), "Test 01 - Blank Window");
        
        while (window.isOpen())
        {
            var event = NativeEvent.createEvent();
            if (window.pollEvent(event))
            {
                if (NativeEvent.getEventType(event) == 0) {
                    window.close();
                }
            }
            
            window.display();
        }
        
        return 0;
    }
    
}