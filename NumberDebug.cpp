// Alternate debug configuration of Number for testing

#include "Minesweeper.h"
#include "Number.h"
#include <iostream>
#include <vector>

// Constructor calls tile constructor and assigns the value
Number::Number(sf::Vector2f pos, Minesweeper &game, int xBoardPos, int yBoardPos, int value)
    : Tile(pos, game, "textures/" + std::to_string(value) + ".png", xBoardPos, yBoardPos), value(value) {}

// No memory cleaning neccessary
Number::~Number() {}

// Extends behaviour of showTile()
void Number::showTile() {
    if (!flag && !shown) {
        // Keeps general behaviour
        Tile::showTile();
        // Shows neighbouring tiles if it has a value of 0.
        if (value == 0) {
            std::cout << "Show adjacent tiles" << std::endl;
            // std::vector<Tile*> adjacentTiles = game.getBoard()->getAdjacentTiles(xBoardPos, yBoardPos);
            // int length = adjacentTiles.size();
            // // std::cout << length << " length" << std::endl;
            // for (int i = 0; i < length; i++) {
            //     adjacentTiles.at(i)->showTile();
            // }
        }
        // Checks if game has been won
        if (std::cout << "Increment tiles" << std::endl) {
            // game.gameWin();
        }
    }
}