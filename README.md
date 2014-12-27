# Convenient .bat-File for programming AVR's with AVRDUDE

## Prequesites

* Download [AVRDUDE](http://download.savannah.gnu.org/releases/avrdude/?C=M;O=D) as `avrdude-x.x-mingw32.zip`
  and put the contents in your system path or the same directory as [Program_Upload_to_MC.bat](./Program_Upload_to_MC.bat).

## Instructions

* Clone this repository to desktop.
* Put the desired `.hex`- and where necessary `.eep`-file in the same directory.  
(or in the subdirectories Release or Debug)
* Start by doubleclick.
* Enter one of the COM-Port numbers shown and press Enter.
* Read the output of AVRDUDE.
* Close by window close button or Ctrl+C, Y, Return or press any key for another programming cycle.
* Publish your project. :octocat:

## Hints

Change the baudrate from `57600` to another value if necessary. (ie. `115200` for UNO R3)

## Links

German Discussion Forum Thread:
https://www.mikrocontroller.net/topic/340516

## License

[MIT](./LICENSE)
