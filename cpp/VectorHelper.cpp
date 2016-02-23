#include <hxcpp.h>
#include <vector>
#include "SFML/Audio.hpp"


//TODO: Get it working
namespace hxsfml
{
    
    class VectorHelper {
        public:
            static Array<String> getAvailableSoundDevices();
        
    };
    
    Array<String> VectorHelper::getAvailableSoundDevices()
    {
        std::vector<std::string> &devices = sf::SoundRecorder::getAvailableDevices();
        Array<String>* values = Array_obj<String>(&devices.size);
        
        for (std::string value : devices)
        {
            values->push(value.c_str());
        }
        
        return &values;
    }
    
}