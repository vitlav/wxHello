
CXXFLAGS=$(shell wx-config --cflags) -g
LDFLAGS=$(shell wx-config --libs)

wxHello: wxHello.o
	g++ $^ ${LDFLAGS} -o $@

wxHello.o: wxHello.cpp
	g++ ${CXXFLAGS} $^ -c -o $@

clean:
	rm -f wxHello.o wxHello
