#include "Number.h"
#include "Minesweeper.h"
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

        // Save board offset
        int **saveBoard = game.getBoard()->getSaveBoard();
        if (saveBoard[yBoardPos][xBoardPos] < 100)
            saveBoard[yBoardPos][xBoardPos] += 100;

        // Keeps general behaviour
        Tile::showTile();
        // Shows neighbouring tiles if it has a value of 0.
        if (value == 0) {
            std::vector<Tile *> adjacentTiles = game.getBoard()->getAdjacentTiles(xBoardPos, yBoardPos);
            int length = adjacentTiles.size();
            // std::cout << length << " length" << std::endl;
            for (int i = 0; i < length; i++) {
                adjacentTiles.at(i)->showTile();
            }
        }
        // Checks if game has been won
        if (game.getBoard()->incrementRevealedTiles()) {
            game.gameWin();
        }
    }
}