package sfml.graphics;

import sfml.system.Vector2.Vector2i;
import sfml.system.Vector2.Vector2f;
import sfml.graphics.Rect.IntRect;
import sfml.graphics.RenderStates.RenderStatesConst;

interface RenderTarget {
    
    public function clear(color:Color):Void;
    public function setView(view:View):Void;
    public function getView():View;
    public function getDefaultView():View;
    public function getViewport(view:View):IntRect;
    public function mapPixelToCoords(point:Vector2i):Vector2f;
    public function mapPixelToCoordsFromView(point:Vector2i, view:View):Vector2i;
    public function mapCoordsToPixel(point:Vector2f):Vector2i;
    public function mapCoordsToPixelFromView(point:Vector2f, view:View):Vector2i;
    public function draw(drawable:Drawable, ?states:RenderStatesConst = RenderStates.DEFAULT):Void;
    public function drawVertices(vertices:VertexArray, vertexCount:Int, type:Int, ?states:RenderStatesConst = RenderStates.DEFAULT):Void;
    
}