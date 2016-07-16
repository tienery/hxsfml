#include "SFML/Graphics.hpp"

namespace hxsfml {
    
    class Vertex {
        public:
            Vertex(PrimitiveType type, size_t count);
            void add(const Vector2f &thePosition, const Color &theColor, const Vector2f &theTexCoords);
            void clear();
            void draw(sf::RenderWindow &window);
            
        
        private:
            sf::VertexArray &vertices;
            PrimitiveType type;
            size_t count;
    }
    
    Vertex::Vertex(PrimitiveType type, size_t count)
    {
        this->type = type;
        this->count = count;
    }
    
    void Vertex::add(const Vector2f &thePosition, const Color &theColor, const Vector2f &theTexCoords)
    {
        vertices.append(sf::Vertex(thePosition, theColor, theTexCoords));
    }
    
    void Vertex::clear()
    {
        vertices.clear();
    }
    
    void Vertex::draw(sf::RenderWindow &window)
    {
        window.draw(vertices, count, type);
    }
    
}