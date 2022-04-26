ARDUINO_DIR= 	/usr/local/arduino
ARDUINO_MK_DIR= /usr/local/arduino-bsd-mk
#ARDUINO_LIBS=	/usr/local/arduino/hardware/arduino/avr/libraries/
AVRDUDE_PORT=	/dev/cuaU0
ARDUINO_BOARD= 	uno
SRCS=		lcd.c
TARGET=		lcd

include /usr/local/arduino-bsd-mk/bsd.arduino.mk
