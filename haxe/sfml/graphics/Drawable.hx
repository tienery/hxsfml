package sfml.graphics;

interface Drawable {
    public function draw(target:RenderTarget, ?states:RenderStates):Void;
}