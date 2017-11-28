{
    "title": "OBC"
}

## On Board Computer (OBC) {#on-board-computer-obc .v1-center}

### Presentation

The On Board Computer, or OBC, is the brain of the satellite and has
different missions such as the coordination of all the actions, sending
orders to the different modules, the reception and storage of
information of the CubeSat, sending this information back to Earth via
the [TCS](ECE3SAT/wiki/tcs/index.html) error handling within the
CubeSat.

### Subsystem division

The OBC is divided into three subsystems which are Microcontroller,
Interfaces and Electronics.

![OBC schematic](/wiki/images/OBC_schematic.jpg)
OBC schematic

The Microcontroller is a processing unit of the OBC dedicated to the
Satellite Management (SM). Its has to manage the data from other modules
collected through the interface and to use it to give orders.

The interface subsystem is responsible for the communication with other
modules. It ensures a good connection with other systems of the
satellite and allows them to send information. It is also in charge of
collecting the power supplied by the [EPS](ECE3SAT/wiki/eps/index.html).
The microcontroller is in charge of the storing system data, operation
data, logs and measurements.

The electronics subsystem protects all the electronic components of the
OBC chip from radiation and magnetic fields. It also prevents
destructive noise on the signals processed within the OBC.

## State Of The Art OBC {#state-of-the-art-obc .v1-center}

The goal of the state of the art is to establish an inventory of the
existing technologies and to see their underlying potential of their
utilization in the project. .

### Compostion of the OBC

OBC is the brain of the CubeSat. It is based on a microcontroller
connected to the subsystems via a serial data bus and HW device. A real
time OS (RTOS) that manages all the software applications, starts the
microcontroller and provides the flight software CubeSat (FSW).

#### Hardware

To select the best microcontroller, we have to take care about many
things such as power consumption, temperature, operating voltage, I/O
and serial bus compatibility to avoid some issues

Microcontrollers are available from different manufacturers in variants
supporting 8-bit, 16-bit and 32-bit word length. 8-bit and 16-bit
architectures were favoured in CubeSat technology because many of the
embedded and real time applications at the time were not critically
dependant on memory, power or speed and the amount of data to handle was
sufficient.

With time, more products and applications started to require increased
processing capability. It became clear that a migration from 8 and
16-bit to 32-bit core architecture was necessary, although the
complexity remained an issue. This is why for the moment there is more
CubeSat's OBC developped with a microcontroller 16-bit.

#### Software

The software component controls the processor, its operation and control
functionality. A real-time operating system (RTOS) is a multitasking
operating system for real-time applications. RTOS such as: FreeRTOS
(Advantage: free, open source, lightweight, reliable, compatible with
MSP 430 microcontroller type). This is the OS used by the Liege
University students for their CubeSat Oufti.

### Architecture of the OBC

![Cubesat organization](/wiki/images/OBC.png)
Cubesat Organization

The OBC architecture is essentially based on the connectivity between
subsystems within the CubeSat. This simply means that the
microcontroller’s peripherals are configured according to the data flow
within the CubeSat’s computing scheme.

### Download the State Of the Art - OBC

[Onboard computer of the cubsat](/wiki/pdf/ON-BOARD-COMPUTER-OF-THE-CUBSAT_version_2.pdf)

### References

[Developpement d'un micro-ordinateur](http://space.epfl.ch/files/content/sites/space/files/Bulletin%20-%20D%C3%A9veloppement%20d'un%20micro-ordinateur...%20-%2003.10.2014)

[MSP430x1xx User's guide](http://www.ti.com/lit/ug/slau049f/slau049f.pdf)

[EFM32GG880 DATASHEET](https://www.silabs.com/documents/public/data-sheets/EFM32GG880.pdf)

[Development of an onboard computer (OBC) for a CubeSat](http://digitalknowledge.cput.ac.za/jspui/bitstream/11189/1307/1/Lumbwe_T_Final2013.pdf)

## Sizing OBC {#sizing-obc .v1-center}

Since the OBC is such as a computer, the components to size are
everything about calculation power and memories. The ROM, the RAM, the
OS, the microcontroller, but also the communication protocol have to be
size.

### Microcontroller

The microcontroller will run on 3.3 V to save power consumption and to
fit with other CubeSats experiments.

#### Processor

The number of bit of the processor will have an impact on the power
consumption and the efficiency for the calculation. A 8-bit processor
will consume less while a 32-bit processor will have a better
efficiency. Nevertheless, the new generation of 32-bit processor are low
power consumption and could be used in CubeSat's architecture.

#### RAM

The Random Access Memory (RAM) has to be able to keep working without
damage its data under radiation and high temperature. We chose to
implement the OBC and the ADCS on the same electronic card to save
space. For this, the RAM must meet the OBC and ADCS modules needs. We
consider all program data for the two modules will need no more than
4MB.

A static RAM, or SRAM, will be used on the board since it consume less
power.

#### ROM

The ROM used will be both flash memory and EEPROM. The Flash memory to
store programs and data and the EEPROM to hold the program that would be
launched if the OBC has to shut down due to energy/malfunction issues.

### Operating System

A big number of OS exists for embedded systems. But, for CubeSats, there
is only two different OS mainly use. FreeRTOS and Salvo.

### References

[OnBoard Computer for PicoSatellite](http://dtusat1.dtusat.dtu.dk/files/filedl.html?fileid=244)

Design and Development of an ADCS OBC for a CubeSat By Pieter Johannes
Botma

## Organization Chart OBC {#organization-chart-obc .v1-center}

There are three phases of algorithms:

-   The first algorithm is to control the detumbling phase following the
    separation from the launcher.

-   The second algorithm to charge battery.

-   The third algorithm for the mission mode with the
    paylaod deployment.

There are three loops, one for each algorithm. Each loop has a quick
main with a watchdog protection and a stack for CubeSat states to avoid
blocking calls.

### Charts

#### **Loop 1: Detumbling**

The detumbling phase following the separation from the launcher. After
an initialization, the OBC turns on the ADCS, then send an order to
stabilize the CubeSat. The OBC sends regulary an order to ask if the
detumbling phase is finished. When it is finished, an order is sent to
stop the detumbling and the next loop begins.

![Detumbling algorithm](/wiki/images/Loop_1.png)
Detumbling algorithm

#### **Loop 2: Charge battery**

To charge the battery, the OBC controls if the CubeSat is oriented
correctly. To do that, an orientation order is regulary sent until the
CubeSat is oriented correctly.

This loop is executed when the CubeSat is under sunlight.

![Charge battery algorithm](/wiki/images/Loop_2.png)
Charge battery algorithm

#### **Loop 3: Payload Deployment**

### Files

[Loop 1 Detumbling](/wiki/pdf/Loop_1_Detumbling.pdf)

[Loop 2 Charge battery](/wiki/pdf/Loop_2_Charge_battery.pdf)
