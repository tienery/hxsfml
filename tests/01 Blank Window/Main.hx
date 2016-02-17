package;

import sfml.window.*;

@:buildXml('<include name="${haxelib:hxsfml}/../Build.xml" />')
class Main
{
    
    public static function main()
    {
        var window = Window.create(VideoMode.create(800, 600), "Test 01 - Blank Window");
        
        while (window.isOpen())
        {
            
            window.display();
        }
        
        return 0;
    }
    
}