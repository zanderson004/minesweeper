all:
	make compile
	make run

# sudo spctl --master-disable and sudo spctl --master-enable may be necessary
mac:
	make compile_mac
	make run

compile: main.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ main.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o game.out

compile_mac: main.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ main.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o game.out -Wl,-rpath,/usr/local/lib

run:
	./game.out

Minesweeper.o: Minesweeper.cpp
	g++ -c Minesweeper.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Minesweeper.o

Entity.o: Entity.cpp
	g++ -c Entity.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Entity.o

Tile.o: Tile.cpp
	g++ -c Tile.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Tile.o

Mine.o: Mine.cpp
	g++ -c Mine.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Mine.o

Number.o: Number.cpp
	g++ -c Number.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Number.o

Board.o: Board.cpp
	g++ -c Board.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Board.o

Timer.o: Timer.cpp
	g++ -c Timer.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o Timer.o

NewGameButton.o: NewGameButton.cpp
	g++ -c NewGameButton.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o NewGameButton.o

SaveButton.o: SaveButton.cpp
	g++ -c SaveButton.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o SaveButton.o

LoadButton.o: LoadButton.cpp
	g++ -c LoadButton.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o LoadButton.o

EntityTestMac: EntityTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ EntityTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

EntityTest: EntityTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ EntityTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

TileTestMac: TileTest.cpp Minesweeper.o Entity.o TileDebug.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ TileTest.cpp Minesweeper.o Entity.o TileDebug.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

TileTest: TileTest.cpp Minesweeper.o Entity.o TileDebug.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ TileTest.cpp Minesweeper.o Entity.o TileDebug.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

TileDebug.o: TileDebug.cpp
	g++ -c TileDebug.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o TileDebug.o

NumberTestMac: NumberTest.cpp Minesweeper.o Entity.o Tile.o Mine.o NumberDebug.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ NumberTest.cpp Minesweeper.o Entity.o Tile.o Mine.o NumberDebug.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

NumberTest: NumberTest.cpp Minesweeper.o Entity.o Tile.o Mine.o NumberDebug.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ NumberTest.cpp Minesweeper.o Entity.o Tile.o Mine.o NumberDebug.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

NumberDebug.o: NumberDebug.cpp
	g++ -c NumberDebug.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o NumberDebug.o

MineTestMac: MineTest.cpp Minesweeper.o Entity.o Tile.o MineDebug.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ MineTest.cpp Minesweeper.o Entity.o Tile.o MineDebug.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

MineTest: MineTest.cpp Minesweeper.o Entity.o Tile.o MineDebug.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ MineTest.cpp Minesweeper.o Entity.o Tile.o MineDebug.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

MineDebug.o: MineDebug.cpp
	g++ -c MineDebug.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o MineDebug.o

TimerTestMac: TimerTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ TimerTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

TimerTest: TimerTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ TimerTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

SaveButtonTestMac: SaveButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ SaveButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

SaveButtonTest: SaveButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ SaveButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

LoadButtonTestMac: LoadButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ LoadButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

LoadButtonTest: LoadButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ LoadButtonTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

BoardTest: BoardTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ BoardTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

BoardTestMac: BoardTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ BoardTest.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o Board.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out -Wl,-rpath,/usr/local/lib
	./test.out

BoardDebug: main.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o BoardDebug.o Timer.o NewGameButton.o SaveButton.o LoadButton.o
	g++ main.cpp Minesweeper.o Entity.o Tile.o Mine.o Number.o BoardDebug.o Timer.o NewGameButton.o SaveButton.o LoadButton.o -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o test.out
	./test.out

BoardDebug.o: BoardDebug.cpp
	g++ -c BoardDebug.cpp -lsfml-graphics -lsfml-window -lsfml-system -Wall -std=c++17 -o BoardDebug.o

clean:
	rm -f *.out
	rm -f *.o
	rm -f progress.csv