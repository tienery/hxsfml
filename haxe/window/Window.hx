package window;

import _internal.sfml.window.ContextSettings in SFMLContextSettings;
import _internal.sfml.window.Window in SFMLWindow;
import system.Vector2i;
import system.Vector2u;

class Window {

    private var _ref:SFMLWindow;

    /**
     * Get the settings of the OpenGL context of the window.
     *
     * Note that these settings may be different from what was passed to the constructor or 
     * the create() function, if one or more settings were not supported. In this case, SFML 
     * chose the closest match.
     */
    public var settings(get, null):ContextSettings;
    
    /**
     * Get or set the position of the window on screen.
     * 
     * This property only works for top-level windows (i.e. it will be ignored for windows 
     * created from the handle of a child window/control).
     */
    public var position(get, set):Vector2i;
    
    /**
     * Get or set the size of the rendering region of the window. 
     */
    public var size(get, set):Vector2u;
    
    /**
     * Set the title of the window.
     */
    public var title(null, set):String;
    
    /**
     * Show or hide the window.
     *
     * The window is shown by default.
     */
    public var visible(null, set):Bool;
    
    /**
     * Enable or disable vertical synchronization.
     *
     * Activating vertical synchronization will limit the number of frames displayed 
     * to the refresh rate of the monitor. This can avoid some visual artifacts, and 
     * limit the framerate to a good value (but not constant across different computers).
     *
     * Vertical synchronization is disabled by default.
     */
    public var vsync(null, set):Bool;
    
    /**
     * Show or hide the mouse cursor.
     *
     * The mouse cursor is visible by default.
     */
    public var cursor(null, set):Bool;
    
    /**
     * Enable or disable automatic key-repeat.
     *
     * If key repeat is enabled, you will receive repeated KeyPressed events while keeping 
     * a key pressed. If it is disabled, you will only get a single event when the key is pressed.
     *
     * Key repeat is enabled by default.
     */
    public var keyRepeat(null, set):Bool;
    
    /**
     * Limit the framerate to a maximum fixed frequency. Use 0 to disable limit.
     *
     * If a limit is set, the window will use a small delay after each call to display() to ensure 
     * that the current frame lasted long enough to match the framerate limit. SFML will try to match 
     * the given limit as much as it can, but since it internally uses sf::sleep, whose precision 
     * depends on the underlying OS, the results may be a little unprecise as well (for example, you 
     * can get 65 FPS when requesting 60).
     */
    public var fps(null, set):UInt;
    
    /**
     * Change the joystick threshold.
     *
     * The joystick threshold is the value below which no JoystickMoved event will be generated.
     *
     * The threshold value is 0.1 by default.
     */
    public var joystickThreshold(null, set):Float;

    @:access(VideoMode)
    /**
     * Window that serves as a target for OpenGL rendering.
     *
     * Window is the main class of the Window module.
     *
     * It defines an OS window that is able to receive an OpenGL rendering.
     *
     * A Window can create its own new window, or be embedded into an already existing 
     * control using the create(handle) function. This can be useful for embedding an OpenGL 
     * rendering area into a view which is part of a bigger GUI with existing windows, controls, 
     * etc. It can also serve as embedding an OpenGL rendering area into a window created 
     * by another (probably richer) GUI library like Qt or wxWidgets.
     *
     * The Window class provides a simple interface for manipulating the window: move, resize, 
     * show/hide, control mouse cursor, etc. It also provides event handling through 
     * its pollEvent() and waitEvent() functions.
     * 
     * Note that OpenGL experts can pass their own parameters (antialiasing level, bits for 
     * the depth and stencil buffers, etc.) to the OpenGL context attached to the window, with 
     * the ContextSettings structure which is passed as an optional argument when creating the window.
     * 
     * @param	mode	Video mode to use (defines the width, height and depth of the rendering area of the window)
     * @param	name	Title of the window
     */
    public function new(mode:VideoMode, name:String)
    {
        _ref = SFMLWindow.createInstance(mode._ref, name);
    }

    @:access(VideoMode)
    @:access(ContextSettings)
    /**
     * Create (or recreate) the window.
     *
     * If the window was already created, it closes it first. If style contains WindowStyle.FULLSCREEN, 
     * then mode must be a valid video mode.
     *
     * The fourth parameter is an optional structure specifying advanced OpenGL context settings such as 
     * antialiasing, depth-buffer bits, etc.
     * 
     * @param	mode		Video mode to use (defines the width, height and depth of the rendering area of the window)
     * @param	name		Title of the window
     * @param	style		Window style, a bitwise OR combination of WindowStyle styles
     * @param	settings	Additional settings for the underlying OpenGL context
     */
    public function create(mode:VideoMode, name:String, style:UInt, ?settings:ContextSettings):Void
    {
        _ref.create(mode._ref, name, style, settings != null ? settings._ref : SFMLContextSettings.DEFAULT);
    }

    /**
     * Close the window and destroy all the attached resources.
     *
     * After calling this function, the Window instance remains valid and you can call create() to 
     * recreate the window. All other functions such as pollEvent() or display() will still work 
     * (i.e. you don't have to test isOpen() every time), and will have no effect on closed windows.
     */
    public function close():Void
    {
        _ref.close();
    }

    /**
     * Tell whether or not the window is open.
     *
     * This function returns whether or not the window exists. Note that a hidden window (setVisible(false)) 
     * is open (therefore this function would return true).
     * 
     * @return	True if the window is open, false if it has been closed
     */
    public function isOpen():Bool
    {
        return _ref.isOpen();
    }

    private function get_settings():ContextSettings
    {
        var settings = new ContextSettings();
        settings._ref = _ref.getSettings();
        return settings;
    }

    /**
     * Display on screen what has been rendered to the window so far.
     *
     * This function is typically called after all OpenGL rendering has been done for the 
     * current frame, in order to show it on screen.
     */
    public function display():Void
    {
        _ref.display();
    }

    @:access(Event)
    /**
     * Pop the event on top of the event queue, if any, and return it.
     * 
     * This function is not blocking: if there's no pending event then it will return false 
     * and leave event unmodified. Note that more than one event may be present in the event queue, 
     * thus you should always call this function in a loop to make sure that you process every 
     * pending event.
     * 
     * @param	event		`Event` to be returned
     * @return	True if an event was returned, or false if the event queue was empty
     */
    public function pollEvent(event:Event):Bool
    {
        return _ref.pollEvent(event._ref);
    }

    @:access(Event)
    /**
     * Wait for an event and return it.
     *
     * This function is blocking: if there's no pending event then it will wait until an event is 
     * received. After this function returns (and no error occurred), the event object is always valid 
     * and filled properly. This function is typically used when you have a thread that is dedicated to 
     * events handling: you want to make this thread sleep as long as no new event is received.
     * 
     * @param	event	`Event` to be returned
     * @return	False if any error occurred
     */
    public function waitEvent(event:Event):Bool
    {
        return _ref.waitEvent(event._ref);
    }
    
    /**
     * Activate or deactivate the window as the current target for OpenGL rendering.
     * 
     * A window is active only on the current thread, if you want to make it active on another thread 
     * you have to deactivate it on the previous thread first if it was active. Only one window can be 
     * active on a thread at a time, thus the window previously active (if any) automatically gets 
     * deactivated. This is not to be confused with requestFocus().
     * 
     * @param active    True to activate, false to deactivate
     * @return          True if operation was successful, false otherwise
     */
    public function setActive(active:Bool = true):Bool
    {
        return _ref.setActive(active);
    }
    
    /**
     * Request the current window to be made the active foreground window.
     *
     * At any given time, only one window may have the input focus to receive input events such as 
     * keystrokes or mouse events. If a window requests focus, it only hints to the operating system, 
     * that it would like to be focused. The operating system is free to deny the request. This is 
     * not to be confused with setActive().
     */
    public function requestFocus():Void
    {
        _ref.requestFocus();
    }
    
    /**
     * Check whether the window has the input focus.
     *
     * At any given time, only one window may have the input focus to receive input events such as 
     * keystrokes or most mouse events.
     * 
     * @return  True if window has focus, false otherwise
     */
    public function hasFocus():Bool
    {
        return _ref.hasFocus();
    }
    
    

    private function get_position():Vector2i
    {
        var v2i = _ref.getPosition();
        var v2 = new Vector2i(v2i.x, v2i.y);
        return v2;
    }
    
    @:access(system.Vector2i)
    private function set_position(position:Vector2i):Void
    {
        _ref.setPosition(position._ref);
    }
    
    private function get_size():Vector2u
    {
        var v2u = _ref.getSize();
        var v2 = new Vector2u(v2u.x, v2u.y);
        return v2;
    }
    
    @:access(system.Vector2u)
    private function set_size(size:Vector2u):Void
    {
        _ref.setSize(size._ref);
    }
    
    private function set_title(name:String):Void
    {
        _ref.setTitle(name);
    }
    
    private function set_visible(visible:Bool):Void
    {
        _ref.setVisible(visible);
    }
    
    private function set_vsync(enable:Bool):Void
    {
        _ref.setVerticalSyncEnabled(enable);
    }
    
    private function set_cursor(enable:Bool):Void
    {
        _ref.setMouseCursorVisible(enable);
    }
    
    private function set_keyRepeat(enable:Bool):Void
    {
        _ref.setKeyRepeatEnabled(enable);
    }
    
    private function set_fps(limit:UInt):Void
    {
        _ref.setFramerateLimit(limit);
    }
    
    private function set_joystickThreshold(threshold:Float):Void
    {
        _ref.setJoystickThreshold(threshold);
    }
}