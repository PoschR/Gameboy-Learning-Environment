//
// Created by robert on 15.03.17.
//

#include <iostream>
#include <gearboy.h>
#include <SFML/Graphics.hpp>

int main(int argc, char** argv)
{
    sf::RenderWindow window(sf::VideoMode(GAMEBOY_WIDTH,GAMEBOY_HEIGHT), "Gearboy SFML", sf::Style::Close | sf::Style::Titlebar);
    sf::Texture framebuffer;
    framebuffer.create(GAMEBOY_WIDTH,GAMEBOY_HEIGHT);
    sf::Uint8* screen_pixels = new sf::Uint8[GAMEBOY_WIDTH*GAMEBOY_HEIGHT*4];

    window.setFramerateLimit(60);

    GearboyCore gbCore;
    GB_Color* gbFrameBuffer = new GB_Color[GAMEBOY_WIDTH*GAMEBOY_HEIGHT];

    gbCore.Init();
    gbCore.LoadROM("roms/Donkey Kong.gb", true);
    gbCore.EnableSound(false);

    while(window.isOpen()) {
        sf::Event event;
        while(window.pollEvent(event))
        {
            if(event.type == sf::Event::Closed)
                window.close();
        }

        gbCore.RunToVBlank(gbFrameBuffer);

        for(int y=0; y<GAMEBOY_HEIGHT;y++) {
            for(int x=0; x<GAMEBOY_WIDTH; x++)
            {
                int index = y*GAMEBOY_WIDTH+x;
                int pix_index = 4 * index;


                screen_pixels[pix_index+0] = gbFrameBuffer[index].red;
                screen_pixels[pix_index+1] = gbFrameBuffer[index].green;
                screen_pixels[pix_index+2] = gbFrameBuffer[index].blue;
                screen_pixels[pix_index+3] = 255;
            }
        }
        framebuffer.update(screen_pixels);

        sf::Sprite fb_sprite(framebuffer);



        window.clear(sf::Color::Blue);
        window.draw(fb_sprite);

        window.display();
    }





    return 0;
}