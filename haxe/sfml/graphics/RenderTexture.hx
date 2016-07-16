package sfml.graphics;

import sfml.system.Vector2.Vector2uRaw;
import sfml.system.Vector2.Vector2i;
import sfml.system.Vector2.Vector2f;
import sfml.graphics.Rect.IntRect;
import sfml.graphics.RenderStates.RenderStatesConst;
import sfml.graphics.VertexArray.ConstVertexArray;

@:include("SFML/Graphics.hpp")
@:structAccess
@:native("sf::RenderTexture&")
extern class RenderTexture implements RenderTarget {
    @:native("sf::RenderTexture")       public static function create():RenderTexture;
    
    @:native("setSmooth")               public function setSmooth(smooth:Bool):Void;
    @:native("isSmooth")                public function isSmooth():Bool;
    @:native("setRepeated")             public function setRepeated(repeat:Bool):Void;
    @:native("isRepeated")              public function isRepeated():Bool;
    @:native("setActive")               public function setActive(active:Bool = true):Void;
    @:native("display")                 public function display():Void;
    @:native("getSize")                 public function getSize():Vector2uRaw;
    @:native("getTexture")              public function getTexture():Texture;
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
    @:native("pushGLStates")            public function pushGLStates():Void;
    @:native("popGLStates")             public function popGLStates():Void;
    @:native("resetGLStates")           public function resetGLStates():Void;
}