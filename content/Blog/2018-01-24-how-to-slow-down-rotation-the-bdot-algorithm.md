{
    "title": "How to slow down rotation ? The Bdot algorithm",
    "date": "2018-01-24",
    "aliases": [
        "/blog/2018-01-24-how-to-slow-down-rotation-the-bdot-algorithm"
    ]
}

One of the main goals of our ADCS is to control our attitude, that is to say the angular position of the ECE³SAT. To do so it will interact with the magnetic field and modify our rotation. The satellite will include magnetorquers, (which are some kind of coils) as actuators in order to influence the angular speed. 
As the satellite will certainly be lauched with rotations on the different axis (due to the separation with the PPOD), a detumbling algorithm is needed to stabilize it.
That's where the BDOT algoritm comes up: it provides a simple way to reduce the angular speed.

## How to use the actuators?

When the magnetorquers are supplied correctly, they can generate a torque of equation $\overrightarrow{T}$  = $\overrightarrow{m}$  ^ $\overrightarrow{B}$  (m being the magnetic moment of the dipole and B the earth's magnetic field). That means the satellite, which is totally linked with them will have the tendancy to align itself with the Earth's magnetic field. The principle is the following :
The torque created by the coils is calculated by : $\overrightarrow{T}$  = iS  	$\overrightarrow{n}$ ^  	$\overrightarrow{B}$
With I the intensity of current in A, S the surface of a spire in m², n the normal vector to this surface and B the magnetic field (here earth).
In our case every element here are fixed except the intensity so using a positive or negative intensity will determine the rotation direction. The torque being the result of a cross product, the magnetic moment will only create a torque if he is coplanar to the B vector (at least one component of it).

## How does the BDOT work?

{{<
    image_pop_up_legend
    "/images/Blog/bdot-schema.png"
    "BDOT schema"
    "Example of the Weber State University cubesat's"
>}}

The Bdot algorithm itself work as follow: when the satellite is moving so that the Y axis is moving toward the earth magnetic field, the temporal derivative of B will be positive. The magnetorquers  will be used to generate a torque opposed to the rotation (negative intensity here to have a magnetic moment oriented toward Y-). The dipole orientation (so I positive) is then reversed, when Y passes B, that is to say \mathring{B}_i negative.

To sum up the way the Bdot algorithm work:
 
{{<
    image_pop_up_legend
    "/images/Blog/bdot-algorithm.jpg"
    "BDOT algorithm simplified"
    "Example of the Weber State University cubesat's"
>}}

So The control law applies a magnetic dipole in the opposite direction to the change in the magnetic field (estimated with magnetometers data). The magnetorquers applies a torque following this equation:

Mi = $-k_i$$\dot{B}$$_i$ (with i being one of the three axis and $\dot{B}$$_i$ the temporal derivative of the B field)

As we can see the BDOT algorithm is a simple stabilization algorithm, only knowing the evolution of the magnetic field allow us to take the right decision to stop the rotation of our Cubesat.