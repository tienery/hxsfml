#include <hxcpp.h>
#include <vector>
#include "SFML/Audio.hpp"

namespace hxsfml
{
    
    class SoundHelper {
        public:
            static Array< ::String > getAvailableDevices();
            const static char * getDefaultDevice();
        
    };
    
    Array< ::String > SoundHelper::getAvailableDevices()
    {
        std::vector<std::string> devices = sf::SoundRecorder::getAvailableDevices();
        Array< ::String > values = Array_obj< ::String >::__new();
        
        for (int i = 0; i < devices.size(); i++)
        {
            const char* n_v = devices[i].c_str();
            String v = n_v;
            values->push(v);
        }
        
        return values;
    }
    
    const char * SoundHelper::getDefaultDevice()
    {
        return sf::SoundRecorder::getDefaultDevice().c_str();
    }
    
}