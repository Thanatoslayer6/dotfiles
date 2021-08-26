P=cpu_usage2
OBJECTS=
CFLAGS=-g -Wall -Werror -O2 -std=gnu11
LDLIBS=

$(P): $(OBJECTS)

config: 
	mkdir -p ${HOME}/.config/i3/scripts && \
	cp ./cpu_usage2 ${HOME}/.config/i3/scripts/

clean:
	rm -f ./cpu_usage2	

uninstall:
	rm ${HOME}/.config/i3/scripts/cpu_usage2
