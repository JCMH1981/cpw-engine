# Written by Juan Carlos Moreno, 2022-01-08
# Updated, 2022-01-10

sources = attacks.cpp board0x88.cpp book.cpp chronos.cpp com.cpp console_ui.cpp\
 CPW.cpp eval.cpp eval_init.cpp move.cpp movegen.cpp Quiescence.cpp\
 recognizer.cpp search.cpp see.cpp stdafx.cpp transposition.cpp util.cpp

CXXFLAGS = -Wall -Wextra -pedantic 
LDFLAGS = -static

cpw: $(sources)
	g++ -o cpw $(sources) $(CXXFLAGS) $(LDFLAGS)
	
.PHONY: clean
clean:
	rm cpw
