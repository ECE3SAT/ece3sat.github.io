{
    "title": "ADCS: Attitude Determination And Control System",
    "image": "https://media.giphy.com/media/3osBL1WVO9SflVB5Pa/giphy.gif",
    "image_legend": "From Giphy"
}


## Attitude Determination And Control System (ADCS)

The ADCS is divided into 4 modules. It is important to note that the
ADCS system is currently based on a preliminary design and is subject to
changes. The objectives of each module are depicted in the following
list:

- The SENS is composed of a set of sensors. This set will have to
    harvest data in order to get information about the CubeSat position.
- The ACT are the CubeSat attitude actuators. ACT will have to adapt
    the CubeSat’s attitude according to the mission needs.
- The ADCS controller (CTRL) objectives are to collect data from
    sensors and to process it to get reliable positioning information.
    Then the ADCS will send orders to ACT in order to correct/modify the
    CubeSat’s attitude if [OBC]({{< relref "CubesatModules/obc.md" >}}) and
    [EPS]({{< relref "CubesatModules/eps.md" >}}) subsystems allow it.
- The Interface (INT) module has for objective to ensure good
    connection with other systems of the satellite and to send data to
    the other systems.

{{<
    image_pop_up_legend
    "/images/ADCS_subsystem.png"
    "Figure 1: ADCS Subsystems"
    "Figure 1: ADCS Subsystems"
>}}

### Sensors System (SENS)

ADCS Sensors system will be composed of absolute sensors to get constant
access to the attitude relative to an external frame. And relative
sensors to get access to the current attitude relative to the previous
one.

### Actuators System (ACT)

The actuators goal is to position the CubeSat in the target attitude by
rotation it around 3 axes: Yaw / Pitch / Roll. So the Actuators System
will be placed to have control over the 3 axes (X, Y, Z).

### Controller (CTRL)

The ADCS Controller will calculate the attitude in which the CubeSat is
thanks to the data coming from Sensors. Also the Algorithm inside the
controller will calculate the targeted attitude. And then will determine
the rotations to accomplish for each axis.

### Interface (INT)

The ADCS Interface is the hardware part of ADCS which transmit the
signal received from Sensors to the micro-controller and it also
distributes power supply coming from the EPS subsystem to the Actuators.

{{<
    image_pop_up_legend
    "/images/ADCS_Récap.png"
    "Figure 2: ADCS Subsystems"
    "Figure 2: ADCS Subsystems"
>}}

### Document

[System Specifications ADCS and SOA](/wiki/pdf/System_Specifications_ADCS_+_SOA.pdf)

## State Of The Art

### Positioning method and algorithm

**Aim** : Calculate CubeSat orientation and chose best physical input
for actuators.

Estimate an angular rotation:

- Euler angles
- Gimbal angles
- Quaternions

Measuring the attitude:

- TRIAD Algorithm
- Kalman Filter 

[Positioning method and algorithm ADCS](/wiki/pdf/Positioning_method_and_algorithm_ADCS.pdf)

### Sensors

**Aim**: Calculate CubeSat orientation and chose best physical input
for actuators.

Estimate an angular rotation:

- Gyroscope
- Gyrometer
- Sun sensor
- Star tracker
- Horizon sensors
- Magnetometer
- Temperature sensors

[Sensors ADCS](/wiki/pdf/Sensors_ADCS.pdf)

### Actuators

**Aim**: Collect useful data for attitude determination.

Estimate an angular rotation:

- Reaction wheel
- Momentum wheel
- Control momentum gyroscope
- Magnetorquer
- Permanent magnet

[Actuators ADCS](/wiki/pdf/Actuators_ADCS.pdf)

### Electronic board

**Aim**: Get access to sensors and then perform attitude algorithm.

- Hardware
- Software

[Electronic board ADCS](/wiki/pdf/Electronic_board_ADCS.pdf)

## System Specifications ADCS {#system-specifications-adcs .v1-center}

### Global

Those requirements concerns all the ADCS card, including the subsystems.
Their are mainly here to assure the functioning of the module in the
conditions it will face (temperature, magnetic field, radiations and
void).

### ACT (Actuators)

As actuator will be our way to move in space, we impose to them to reach
our precision goal of 5° along each axis. We moreover impose a condition
on the orientation of the Z face in order to accomplish our mission.

### SENS (Sensors)

Sensors will be our primary source of information about our attitude. To
do so, we impose to them a maximum time to give us the data. We also
them to warn us if they are malfunctioning.

### CTRL (Controller)

The controller will collect and process our data. That's why we want the
result of computation to be in our goal range (5°). CTRL have also to be
able to determine the necessary correction in order to be able to send
it to the [OBC]({{< relref "CubesatModules/obc.md" >}}). Finally, the orders coming
from the [OBC]({{< relref "CubesatModules/obc.md" >}}) have to be processed to
individually power our actuators.

### System Specification

[System Specifications ADCS](/wiki/pdf/System_Specifications_ADCS.pdf)

### Mission Specification

[Specifications ADCS](/wiki/pdf/Specifications_ADCS.pdf)

## System Specifications ADCS {#system-specifications-adcs .v1-center}

We decided to include the low level feasability study with our sizing in
order to sum up our results. Our studies can then be placed into 2
categories

### SENS (Sensors)

- Sun sensor: We could use those integrated on solar pannel

- Magnetometer: Three axis magnetometer are an interesting solution

### ACT (Actuators)

- Magnetorquers: The most reliable solution seem to be to locate them
    on solar pannel

[Sizing ADCS](/wiki/pdf/Sizing_ADCS.pdf)

## Algorithm ADCS

### Main functionning

The ADCS mission is to get access to sensors for attitude determination
and then apply correction through actuators.

We designed our decision taking algorithm to be as it follows :

{{<
    image_pop_up_legend
    "/images/Algorithm_ADCS.png"
    "Figure 3: ADCS Algorithm"
    "Figure 3: ADCS Algorithm"
>}}

As we can see our algorithm begins with the initialization of our module
(the IO, communication, sensors and actuators).Then a confirmation of
well-functioning is sent to the [OBC]({{< relref "CubesatModules/obc.md" >}}).

That’s where we reach the central loop. The
[OBC]({{< relref "CubesatModules/obc.md" >}}) can give us several order which can
be classified as follow:

-   If it asks us to start to take measure or to move (so to start the
    actuators), we check if a session in not already in progress and if
    it is not we perform the task and send the data.

-   If it asks us to stop measures or movement, we check if we were
    doing it and if it is the case, we stop doing it.

-   Finally, if the [OBC]({{< relref "CubesatModules/obc.md" >}}) ask to shutdown,
    we verify if we were performing action and then stop them. This put
    us to the end of our loop.

### BDOT Stabilization

The goal is to decrease the kinetic energy of the system, which means stabilize the satellite.

In order to do that we need to use the properties of our actuators: when the magnetorquers are supplied correctly, they can generate a torque of equation `T = m ^ B` (m being the magnetic moment of the dipole and B the earth magnetic field). That means the satellite, which is totally linked with them will have the tendancy to align itself with the Earth magnetic field.
The principle is the following:

The torque created by the coils is calculated by: `T = iS n ^ B`
With I the intensity of current in A, S the surface of a spire in m², n the normal vector to this surface and B the magetic field (here earth).

In our case every element here are fixed except the intensity so using a positive or negative intensity will determine the rotation direction.
We can also see that the torque being the result of a cross product, the magnetic moment will only create a torque if he is coplanar to the B vector (at least one component of it).

{{<
    image_pop_up_legend
    "/images/ADCS-BDOT-illustration.png"
    "Figure 4: BDOT illustration"
    "Figure 4: BDOT illustration"
>}}

The Bdot algorithm itself work as follow: when the satellite is moving so that the Y axis is moving toward the earth magnetic field, the temporal derivative of B will be positive.
We use our magnetorquers to generate a torque opposed to the rotation (negative intensity here to have a magnetic moment oriented toward Y-).
We then reverse the dipole orientation (so I positive) when Y passes B, that is to say B° negative.

To sum up the way the Bdot algorithm work:

{{<
    image_pop_up_legend
    "/images/ADCS-BDOT-Algorithm.png"
    "Figure 5: BDOT algorithm"
    "Figure 5: BDOT algorithm"
>}}

Therefore, the control law applies a magnetic dipole in the opposite direction to the change in the magnetic field (estimated with magnetometers data).
The magnetorquers applies a torque following this equation:

Mi = -ki B’i  (with i being one of the three axis and B’ the temporal derivative of the B field)

As we can see the BDOT algorithm is a simple stabilization algorithm, only knowing the evolution of the magnetic field allow us to take the right decision to stop the rotation of our Cubesat.
