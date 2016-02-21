package;

//This test doesn't work yet, need to resolve VertexArray type mismatch with `drawVertices` function.
//Also, first time the compiler has complained about an enum not resolving to an integer,
//when it has done in the past.

import sfml.graphics.*;
import sfml.window.*;
import sfml.system.Vector2.Vector2f;
import sfml.graphics.VertexArray.ConstVertexArray;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window:RenderWindow = RenderWindow.createInstance(VideoMode.createInstance(800, 600), "Test 06 - Vertices");
        
        var vertices = VertexArray.createInstance(PrimitiveTypes.QUADS, 4);
        vertices.append(Vertex.createInstance(Vector2f.createInstance(0, 0), Color.red, Vector2f.createInstance(0, 0)));
        vertices.append(Vertex.createInstance(Vector2f.createInstance(0, 100), Color.red, Vector2f.createInstance(0, 10)));
        vertices.append(Vertex.createInstance(Vector2f.createInstance(100, 100), Color.red, Vector2f.createInstance(10, 10)));
        vertices.append(Vertex.createInstance(Vector2f.createInstance(100, 0), Color.red, Vector2f.createInstance(10, 0)));
        
        while (window.isOpen())
        {
            var event = Event.createInstance();
            while (window.pollEvent(event))
            {
                if (event.type == EventType.CLOSED) {
                    window.close();
                }
                
            }
            
            window.clear(Color.white);
            
            window.drawVertices(vertices, 4, PrimitiveTypes.QUADS, RenderStates.DEFAULT);
            
            window.display();
        }
        
        return 0;
    }
    
}