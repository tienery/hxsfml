package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.system.Vector2.Vector2f;
import sfml.graphics.Rect.ConstIntRectPtr;

import window.EventHelper;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.create(VideoMode.create(800, 600), "Test 04 - Images");
        
        var haxeLogo:Texture = Texture.createInstance();
        if (!haxeLogo.loadFromFile("haxe-logo.png", ConstIntRectPtr.create()))
            trace("Error loading texture.");
        
        var sprite:Sprite = Sprite.create(haxeLogo);
        
        while (window.isOpen())
        {
            var event = EventHelper.createEvent();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
            }
            
            window.clear(Color.white);
            
            sprite.setPosition(Vector2f.create(200, 50));
            sprite.setRotation(45);
            
            window.draw(sprite, RenderStates.DEFAULT);
            
            window.display();
        }
        
        return 0;
    }
    
}