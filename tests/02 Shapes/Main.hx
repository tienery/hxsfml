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
            
            var circle = CircleShape.create(50, 30);
            circle.setFillColor(Color.green);
            circle.setPosition(Vector2f.create(50, 50));
            
            var rect = RectangleShape.create(Vector2f.create(100, 100));
            rect.setFillColor(Color.blue);
            rect.setPosition(Vector2f.create(150, 50));
            
            var polygon = ConvexShape.create(3);
            polygon.setPoint(0, Vector2f.create(0, 0));
            polygon.setPoint(1, Vector2f.create(0, 10));
            polygon.setPoint(2, Vector2f.create(25, 5));
            polygon.setOutlineColor(Color.cyan);
            polygon.setOutlineThickness(5);
            polygon.setPosition(Vector2f.create(10, 20));
            
            window.draw(circle, RenderStates.DEFAULT);
            window.draw(rect, RenderStates.DEFAULT);
            window.draw(polygon, RenderStates.DEFAULT);
            
            window.display();
        }
        
        return 0;
    }
    
}