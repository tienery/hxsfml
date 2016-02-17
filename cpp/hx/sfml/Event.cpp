#include "SFML/Window.hpp"

namespace hx {
    
    namespace sfml {
        
        class Event {
            public:
                static sf::Event createEvent();
        };
        
        sf::Event Event::createEvent() {
            sf::Event event;
            return event;
        }
        
    }
    
}