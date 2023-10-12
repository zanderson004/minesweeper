#ifndef BOARD_H
#define BOARD_H

#include "Tile.h"
#include "Mine.h"
#include "Number.h"

using namespace sf;

class Board {
    private:
        //2D array containing the numbers / mines (tiles)
        Tile ** *tiles;
        int xSize;
        int ySize;
        int firstSafeX;
        int firstSafeY;
        bool swappedTiles = false;
        int totalMines;
        int revealedTiles = 0;
    public:
        Board(int width, int height, int mines);
        bool incrementRevealedTiles();
        void swapTiles(int x, int y);
        void revealMines(Tile* tile);
        std::vector<Tile *> getAdjacentTiles(int x, int y);
        int getRevealedTiles();
        ~Board();
};

#endif