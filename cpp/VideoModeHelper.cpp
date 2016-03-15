#include <hxcpp.h>
#include "SFML/Window.hpp"
#include <stdio>

namespace hxsfml {
    
    class VideoModeHelper {
        public:
            static ::Array<sf::VideoMode> getFullscreenModes();
        
    }
    
    ::Array<sf::VideoMode> VideoModeHelper::getFullscreenModes()
    {
        std::vector<sf::VideoMode> modes = sf::VideoMode::getFullscreenModes();
        Array<sf::VideoMode> values = Array_obj<sf::VideoMode>::__new();
        
        for (int i = 0; i < modes.size(); i++)
        {
            const char* n_v = modes[i].c_str();
            String v = n_v;
            values->push(v);
        }
        
        return values;
    }
    
}