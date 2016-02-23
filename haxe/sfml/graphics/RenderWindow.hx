package sfml.graphics;

import cpp.ConstCharStar;
import sfml.window.Window;
import sfml.window.VideoMode;
import sfml.system.Vector2.Vector2i;
import sfml.system.Vector2.Vector2f;
import sfml.graphics.Rect.IntRect;
import sfml.graphics.RenderStates.RenderStatesConst;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::RenderWindow&")
extern class RenderWindow extends Window implements RenderTarget {
    @:native("sf::RenderWindow")        public static function createInstance(mode:VideoMode, name:ConstCharStar):RenderWindow;
    @:native("clear")                   public function clear(color:Color):Void;
    @:native("setView")                 public function setView(view:View):Void;
    @:native("getView")                 public function getView():View;
    @:native("getDefaultView")          public function getDefaultView():View;
    @:native("getViewport")             public function getViewport(view:View):IntRect;
    @:native("mapPixelToCoords")        public function mapPixelToCoords(point:Vector2i):Vector2f;
    @:native("mapPixelToCoordsFromView")public function mapPixelToCoordsFromView(point:Vector2i, view:View):Vector2i;
    @:native("mapCoordsToPixel")        public function mapCoordsToPixel(point:Vector2f):Vector2i;
    @:native("mapCoordsToPixelFromView")public function mapCoordsToPixelFromView(point:Vector2f, view:View):Vector2i;
    @:native("draw")                    public function draw(drawable:Drawable, ?states:RenderStatesConst = RenderStates.DEFAULT):Void;
    @:native("draw")                    public function drawVertices(vertices:VertexArray, vertexCount:Int, 
                                                            type:PrimitiveType, ?states:RenderStatesConst = RenderStates.DEFAULT):Void;
}

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("const sf::RenderWindow&")
extern class ConstRenderWindow extends RenderWindow implements RenderTarget {
    @:native("clear")                   public function clear(color:Color):Void;
    @:native("setView")                 public function setView(view:View):Void;
    @:native("getView")                 public function getView():View;
    @:native("getDefaultView")          public function getDefaultView():View;
    @:native("getViewport")             public function getViewport(view:View):IntRect;
    @:native("mapPixelToCoords")        public function mapPixelToCoords(point:Vector2i):Vector2f;
    @:native("mapPixelToCoordsFromView")public function mapPixelToCoordsFromView(point:Vector2i, view:View):Vector2i;
    @:native("mapCoordsToPixel")        public function mapCoordsToPixel(point:Vector2f):Vector2i;
    @:native("mapCoordsToPixelFromView")public function mapCoordsToPixelFromView(point:Vector2f, view:View):Vector2i;
    @:native("draw")                    public function draw(drawable:Drawable, ?states:RenderStatesConst = RenderStates.DEFAULT):Void;
    @:native("draw")                    public function drawVertices(vertices:VertexArray, vertexCount:Int, 
                                                            type:PrimitiveType, ?states:RenderStatesConst = RenderStates.DEFAULT):Void;
}