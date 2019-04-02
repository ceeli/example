CXXFLAGS = -std=c++14 --coverage -O0
LDFLAGS = --coverage

objects = library.o

hello_world: hello_world.o $(objects)
	$(CXX) -o hello_world $(CXXFLAGS) hello_world.o $(objects)

run_test.o: library.hpp catch.hpp
hello_world.o: library.hpp

.PHONY: clean
clean:
	rm -f hello_world run_test hello_world.o $(objects) run_test.o *.gcov *.gcda *.gcno

.PHONY: test
test: run_test.o $(objects)
	$(CXX) -o run_test $(CXXFLAGS) $(objects) run_test.o
	./run_test
	gcov library.cpp
