# PMod Type 4A UART to USB interface using SiLabs CP2104

This is a board compatible with 
[Digilent's PMod standard](https://www.silabs.com/Support%20Documents/TechnicalDocs/cp2104.pdf)
which allows you to interface a computer to FPGA via a USB UART.

It uses a 
[SiLabs CP2104](https://www.silabs.com/Support%20Documents/TechnicalDocs/cp2104.pdf)
for the USB to UART IC.

# Features

It has;

 * Plenty of LEDs so you can understand the status of the board easily,
 * Good silkscreen so you don't need the documentation,
 * Open Source Hardware,

## IO Level and Power

The device can either;
 a) Provide 3.3V power supply from the onboard regulator to the Pmod VCC,
 b) Use the Pmod VCC for the IO level standard,

This means it can be used with many voltage levels other than the standard 3V3
normally used by PMod devices. The CP2104 supports VIO levels down to 1.8V

## PMod Type 4A UART

This board follows the PMod Type 4A UART standard.

It should be a drop in replacement for the 
[PModUSBUART](https://store.digilentinc.com/pmodusbuart-usb-to-uart-interface/)
while adding support for the extra signals in the PMod Type 4A UART.

# Parts

## PCB Sizes

 * Jumpers are standard 2.54mm pin headers.
 * All capacitors are `0805`
 * All LEDs are `0603`
 * All resistors are `0402`

# License

It is available under a [CC-BY-SA 4.0 License](LICENSE), see [LICENSE](LICENSE)
file for full details.
