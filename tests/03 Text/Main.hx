package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.system.Vector2.Vector2f;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.createInstance(VideoMode.createInstance(800, 600), "Test 03 - Text");
        
        var openSans:Font = Font.createInstance();
        if (!openSans.loadFromFile("OpenSans-Regular.ttf"))
            trace("Error loading font.");
        
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
            
            var text:Text = Text.createInstance("Hello, there!", openSans, 24);
            text.setColor(Color.blue);
            
            window.draw(text, RenderStates.DEFAULT);
            
            window.display();
        }
        
        return 0;
    }
    
}