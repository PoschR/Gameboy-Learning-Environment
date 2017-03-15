//
// Created by robert on 15.03.17.
//

#include <iostream>
#include <gearboy.h>
#include <SFML/Graphics.hpp>

Gameboy_Keys convertKeyToGb(const sf::Keyboard::Key& key);
bool isKeyGbValid(const sf::Keyboard::Key& key);

int main(int argc, char** argv)
{
    sf::RenderWindow window(sf::VideoMode(GAMEBOY_WIDTH,GAMEBOY_HEIGHT), "Gearboy SFML", sf::Style::Close | sf::Style::Titlebar);
    sf::Texture framebuffer;
    framebuffer.create(GAMEBOY_WIDTH,GAMEBOY_HEIGHT);
    sf::Uint8* screen_pixels = new sf::Uint8[GAMEBOY_WIDTH*GAMEBOY_HEIGHT*4];

    window.setFramerateLimit(60);

    GB_Color color_palette[4];

    color_palette[0] = {0xEF, 0xF3, 0xD5, 0xFF};
    color_palette[1] = {0xA3, 0xB6, 0x7A, 0xFF};
    color_palette[2] = {0x37, 0x61, 0x3B, 0xFF};
    color_palette[3] = {0x04, 0x1C, 0x16, 0xFF};

    GearboyCore gbCore;
    GB_Color* gbFrameBuffer = new GB_Color[GAMEBOY_WIDTH*GAMEBOY_HEIGHT];

    gbCore.Init();
    gbCore.LoadROM("roms/Pokemon - Yellow Version (UE).zip", false);
    //gbCore.EnableSound(false);
    gbCore.SetDMGPalette(color_palette[0], color_palette[1], color_palette[2],color_palette[3]);

    while(window.isOpen()) {
        sf::Event event;
        while(window.pollEvent(event))
        {
            if(event.type == sf::Event::Closed)
                window.close();
            if(event.type == sf::Event::KeyPressed)
                if(isKeyGbValid(event.key.code))
                    gbCore.KeyPressed(convertKeyToGb(event.key.code));
            if(event.type == sf::Event::KeyReleased)
                if(isKeyGbValid(event.key.code))
                    gbCore.KeyReleased(convertKeyToGb(event.key.code));
        }

        gbCore.RunToVBlank(gbFrameBuffer);

        framebuffer.update(reinterpret_cast<sf::Uint8*>(gbFrameBuffer));

        sf::Sprite fb_sprite(framebuffer);

        //window.clear(sf::Color::Blue);
        window.draw(fb_sprite);

        window.display();
    }




    return 0;
}

bool isKeyGbValid(const sf::Keyboard::Key& key){
    switch(key) {
        case sf::Keyboard::W:
            return true;
        case sf::Keyboard::S:
            return true;
        case sf::Keyboard::D:
            return true;
        case sf::Keyboard::A:
            return true;
        case sf::Keyboard::L:
            return true;
        case sf::Keyboard::K:
            return true;
        case sf::Keyboard::Return:
            return true;
        case sf::Keyboard::BackSpace:
            return true;
        default:
            return false;
    }
}

Gameboy_Keys convertKeyToGb(const sf::Keyboard::Key& key) {

    switch(key) {
        case sf::Keyboard::W:
            return Up_Key;
        case sf::Keyboard::S:
            return Down_Key;
        case sf::Keyboard::D:
            return Right_Key;
        case sf::Keyboard::A:
            return Left_Key;
        case sf::Keyboard::L:
            return A_Key;
        case sf::Keyboard::K:
            return B_Key;
        case sf::Keyboard::Return:
            return Start_Key;
        case sf::Keyboard::BackSpace:
            return Select_Key;
        default:
            throw std::runtime_error("Given key not mapped! Run isKeyGbValid beforehand!");
    }

}