{
    "title": "How to slow down rotation ? The Bdot algorithm",
    "date": "2018-01-25",
    "aliases": [
        "/blog/2018-01-24-how-to-slow-down-rotation-the-bdot-algorithm"
    ],
    "draft": true
}

The primary purpose of the ADCS (as its name would suggest) is to control the attitude of the satellite. In the case of ECE³SAT, this will be done by interacting with the Earth's magnetic field. How so ? By using _magnetorquers_, which are just some kind of coils used to produce a torque, thus so adjusting the satellite's rotation.

Most certainly, the nanosatellite will undergo some rotation at various stages of its flight: upon separation with the PPOD launcher or when deploying the antennas or the Electrodynamic Tether, in all these situations (and even more) a perturbation torque will be applied to the Cubesat, making it a freely spinning unusable orbiting junk.
And for sure, we don't like space junk...
Thus, the very first step of any attempt to control the attitude in a stable way should be to reach a rather small rotation velocity (and to keep it throughout time).
Only then can we try to point to a more specific direction.

This is why a detumbling algorithm is needed.
And that's where the _BDOT_ algoritm comes up: it provides a simple way to reduce the angular speed.

But first, let's recall how magnetorquers may be used to act on the satellite's rotation.

## How to use the actuators?

When the magnetorquers are supplied appropriately, they can generate a torque, obeying the law: 
$$\vec{T} = \vec{m} \times \vec{B} = \|\vec{m}\| \dot \|\vec{B}\| \sin(\theta) \vec{u} $$,
where $\vec{m}$ is the magnetic moment of the dipole (the coil), $\vec{B}$ is the Earth's magnetic field, $\theta$ is the angle between $\vec{m}$ and $\vec{B}$, and $\vec{n}$ is the unit vector resulting from the cross-poduct and is orthogonal to both $\vec{m}$ and $\vec{B}$).

Hence, the torque is maximal when the angle between the magnetic moment of the magnetorquer and the magnetic field are orthogonal (i.e. when $\theta = \frac{\pi}{2}$).

This means that the satellite, which is rigidly linked with the magnetorquers, will have the tendancy to align itself in a way that the angle between each of the coils' magnetic moment and the Earth's magnetic field is minimised.

Thus, to control the attitude of the satellite, one has to control each of the three magnetorquers' moment which is ruled by:
$$\vec{m} = i S \vec{n}\_{coil}$$,
where $i$ the intensity of the current flowing through one magnetorquer (in A), $S$ the surface enclosed by a turn of the coil's spiral (in m²) and $\vec{n}\_{coil}$ the normal vector to this surface.
In our case, each element of this equation is fixed except the current intensity. Therefore, controlling the sign and magnitude of the intensity in each coil will determine the rotation direction implied by the resulting torque.

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

Mi = $-k_i$$\dot{B}$$_i$ (with i being one of the three axes and $\dot{B}$$_i$ the temporal derivative of the B field)

As we can see the BDOT algorithm is a simple stabilization algorithm, only knowing the evolution of the magnetic field allow us to take the right decision to stop the rotation of our Cubesat.