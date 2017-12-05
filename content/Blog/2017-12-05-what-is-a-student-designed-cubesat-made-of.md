{
    "title": "What is a student-designed cubesat made of?",
    "date": "2017-12-05T17:50:00+01:00"
}

Building a satellite is a big adventure for students like us! Even so this enterprise could seem demanding and perhaps intimidating, we have to manage this just as any other project. And it starts with *defining system functionalities*.

Actually, few core functionalities are a standard in nanosatellites:

* First of all, as any other device, the satellite needs *power* to work.  Electricity is produced by solar panels and distributed in the whole CubeSat. Since the satellite is sometimes in Earth's shadow, energy should also be stored in batteries during lighted phases in order to be used during eclipse phases. The responsible module for energy management is the **"Energy Power Supply" (EPS)**.
![University of Tokyo CubSat's solar panels](http://www.space.t.u-tokyo.ac.jp/cubesat/mission/dev/pow/img/xi-iv-full-l.jpg)
University of Tokyo CubeSat example (here solar cells are on all of the six faces)
© ISSL, University of Tokyo, JAPAN

* The CubeSat also needs to *orient itself*. It is not a matter of translations (the satellite is stuck on its orbit since its deployment), but a matter of *rotation* around its axis to properly orient its faces (solar cells towards the Sun and antenna towards Earth). This system is named **Attitude Determination Control System (ADCS)**. It is useful throughout the duration of the mission, and especially more during the detumbling phase: when the satellite is first launched on its orbit, it is spinning at a high speed. The first task to achieve for the satellite is therefore to stabilize itself!
![Tumbling satellite image](https://media.giphy.com/media/3osBL1WVO9SflVB5Pa/giphy.gif)
Tumbling satellite (extracted from the ESA video "Space debris - a journey to Earth"

* As suggested just before, the satellite needs to *communicate* with Earth as well. What would be the point of a -- more or less -- expensive space program if our device were not able to transmit us its mission results? That's precisely the role of the **Telecommunication system (TCS)**. Its antenna sends data from the satellite to a station based on Earth (called the Ground Station or GS). Data can also be sent from the Ground Station to the satellite's TCS to transmit orders.

* Finally, we often name **On Board Computer (OBC)** the entity dedicated to the whole satellite *management*. OBC is in charge of other modules' supervision; it is our CubeSat's brain!

Here is a short video about these entities:

{{< youtube LLoQZBPVrpQ >}}

And what now? Well, that depends on the mission's goals! Here at ECE³Sat, our payload is a deorbiting system.

These entities constitute a logical splitting, but does not necessarily reflect the final hardware division. Several functionalities can be handled by the same microcontroller, and one functionality can be implemented with several pieces of hardware according to its needs. Gathering or splitting entities among different boards, and communication between these boards, are a serious strategic concern. An article dedicated to this **architecture design** will be released soon, stay tuned!
