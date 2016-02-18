#include "SFML/Window.hpp"

namespace hx {
    
    namespace sfml {
        
        class Event {
            public:
                static sf::Event createEvent();
                static int getEventType(sf::Event &event);
                
        };
        
        sf::Event Event::createEvent()
        {
            sf::Event event;
            return event;
        }
        
        int Event::getEventType(sf::Event &event)
        {
            if (event.type == sf::Event::Closed)
                return 1;
            else if (event.type == sf::Event::Resized)
                return 2;
            else
                return 0;
        }
        
    } //sfml
    
} //hx