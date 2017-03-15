//
// Created by robert on 15.03.17.
//

#include <iostream>
#include <gearboy.h>

int main(int argc, char** argv)
{
    GearboyCore gbCore;
    GB_Color* frameBuffer = new GB_Color[GAMEBOY_WIDTH*GAMEBOY_HEIGHT];

    gbCore.Init();
    gbCore.LoadROM("roms/Donkey Kong.gb", true);

    gbCore.RunToVBlank(frameBuffer);

    return 0;
}