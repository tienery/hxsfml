package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.system.Vector2.Vector2f;
import window.EventHelper;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.create(VideoMode.create(800, 600), "Test 02 - Shapes");
        
        var openSans:Font = Font.create();
        if (!openSans.loadFromFile("OpenSans-Regular.ttf"))
            trace("Error loading font.");
        
        while (window.isOpen())
        {
            var event = EventHelper.createEvent();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
            }
            
            window.clear(Color.red);
            
            var text:Text = Text.create("Hello, there!", openSans, 24);
            text.setColor(Color.blue);
            
            window.draw(text, RenderStates.DEFAULT);
            
            window.display();
        }
        
        return 0;
    }
    
}