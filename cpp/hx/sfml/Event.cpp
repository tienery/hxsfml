#include "SFML/Window.hpp"

namespace hx {
    
    namespace sfml {
        
        class Event {
            public:
                static sf::Event createEvent();
                static int getEventType(sf::Event &event);
        };
        
        sf::Event Event::createEvent() {
            sf::Event event;
            return event;
        }
        
        int Event::getEventType(sf::Event &event) {
            switch (event.type)
            {
                case sf::Event::Closed:
                    return 0;
                default:
                    return -1;
            }
        }
        
    } //sfml
    
} //hx