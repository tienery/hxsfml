package;

import sfml.graphics.*;
import sfml.window.*;
import sfml.system.Vector2.Vector2f;
import sfml.graphics.Rect.ConstIntRectPtr;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.create(VideoMode.create(800, 600), "Test 05 - Events");
        
        while (window.isOpen())
        {
            var event = Event.create();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
                if (event.type == EventType.MOUSE_MOVED) {
                    var move = event.mouseMove;
                    trace(move.x, move.y);
                }
                if (event.type == EventType.MOUSE_BUTTON_PRESSED) {
                    var mouse = event.mouseButton;
                    trace(mouse.button);
                }
                if (event.type == EventType.TEXT_ENTERED) {
                    var code = event.text.unicode;
                    trace(String.fromCharCode(code));
                }
                if (event.type == EventType.KEY_PRESSED) {
                    var key = event.key;
                    trace(key.code);
                }
                
            }
            
            window.clear(Color.white);
            
            window.display();
        }
        
        return 0;
    }
    
}