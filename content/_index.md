{
    "title": "ECE3SAT"
}

# Context

## Education

Since the beginning of the space race in 1957, the number of objects
sent into orbit is continuously growing, as does the amount of space
debris orbiting the Earth. This is becoming a real threat for
operational space missions around the Earth. Space debris can be the
result of:

- A collision between two satellites, two debris or a satellite and a
    debris/meteoroid
- A battery which became unstable and exploded
- Fuel leftovers in a satellite or a launcher stage which became
    unstable and exploded
- A planned destruction
- An out of control satellite or a launcher stage

Today, the population of space debris is estimated to be more than 500
000 trackable objects where 20 000 of them are bigger than a tennis
ball. In addition, there are millions of pieces too small to be
detected.

The vast majority of space debris is located in Low Earth Orbit (LEO)
where most space missions are located or planned. Figure 1 illustrates
the distribution of debris around the Earth in 2013.

{{<
    image_pop_up_legend
    "/images/Space_debris_story_video_production_full.png"
    "Illustration from space that shows the earth surrounded by thousands of debris."
    "Figure 1: Representation of the distribution of the space debris in LEO in 2013. Source: ESA"
>}}


Even with the direct threat to space missions that space debris
represents, the real threat comes in the long-term management of the
Earth orbit. Indeed, the Clean Space department of ESA calculated that
the population of debris would keep on growing in an exponential way if
the space industry does not change or if every space activity stops
(Figure 2); thus preventing any orbital activity. The same forecast
considered the limitation of debris creation, End of Life (EOL)
management, debris removal and the limitation of orbital objects.

{{<
    image_pop_up_legend
    "/images/Why_Space_Debris_Mitigation_is_needed_large.gif"
    "Illustration from space that shows the earth surrounded by thousands of debris."
    "Figure 2: Space debris population forecast in 2209 if nothing is done to mitigate them"
>}}

One part of the implementation of the space debris mitigation is made
through the development of solutions to give the tools to the new
satellites to perform deorbiting maneuvers to either cemetery orbits
where the satellite is passivized (batteries and tanks emptied) or
toward Earth to disintegrate upon re-entry into the atmosphere. Several
types of deorbiting systems are currently being developed such as the
aerodynamic sail, chemical engine, and electric/ionic engine.

{{< home_parallax "/images/parallax.jpg" "What Is a Cubesat?" >}}

<!--
    # What Is a Cubesat?
-->

{{<
    image_pop_up_legend
    "/images/429961main_cubesat_1.jpg"
    "Illustration of a cubesat above the Earth."
    "A cubeast above the Earth"
>}}

A CubeSat (1U-class spacecraft) is a nanosatelite satellite for space
research that is made up of multiples of 10x10x11.35 cubic units, with a
weight less than 1.33 kilograms. CubeSat are most commonly put in low
Earth orbit by deployers on the International Space Station
([ISS](https://en.wikipedia.org/wiki/International_Space_Station)), or
launched as secondary payloads on a lunch vehicle. Thus, in 1999 CubeSat
specifications were developed by California Polytechnic State University
and Stanford University to help universities worldwide to perform space
science and exploration. The goal is to enable graduate students to be
able to design, build, test and operate in space a spacecraft with
capabilities similar to the first spacecraft,
[Sputnik](https://en.wikipedia.org/wiki/Sputnik_1)

## Application

In terms of applications, CubeSats are generally used to demonstrate
spacecraft technologies that are targeted for use in small satellites or
that present questionable feasibility and are unlikely to justify the
coast of a larger satellite. In our case, the CubeSat will be used to
test a new deorbitation system.

## Design

Many CubeSat's specifications have several high-level goals.
Miniaturizing satellites does reduce the cost of development and
especially the launching cost. Standard CubeSats are called 1U made up
of 10x10x11.35 cm units designed to provide 10x10x10cm of useful volume
while weighing no more then 1.33 kilograms. Those are the
characteristics of the standard size 1U used in our ECE CubeSat's
project. It is possible to increase the size of a CubeSat by adding
units. For example, CubeSat composed of two units (2U) and 3U CubeSat
for 30cm3 availible volume permitting more advanced missions and more
are obtained this way.

## Structure

Materials used in the structure must feature the same coefficient of
thermal expansion as the deployer to prevent jamming. Specifically,
allowed materials are four alluminium alloys: 7075, 6061, 5005 and 5052.
Aluminium used on the structure which contracts the P-POD must be
anodized to prevent cold welding, and other materials may be used for
structure if a waiver is obtained. Furthermore, further consideration is
put into material selection as not all materials can be used in vacuums.

{{< home_parallax "/images/parallax.jpg" "ECE3SAT Project" >}}

<!--
    # ECE3SAT Project
-->

The ECE3SAT project is a student project developed at the french
engineer school, [ECE Paris](http://www.ece.fr/school-of-engineering/) .
The goal of the project is to send a [Cubesat](#cubesat) in space to
verify a physical theory permitting a fast deorbiting. The project
started in September 2015 after the [ESA](http://m.esa.int/ESA)
authorization.

The ECE3SAT is composed of five modules named

- Attitude Determination Control System ([ADCS](/wiki/adcs/index.html))
- Energy Power Supply ([EPS](/wiki/eps/index.html))
- On Board Computer ([OBC](/wiki/obc/index.html))
- Payload ([PAYLOAD](/wiki/payload/index.html))
- Telecommunication System ([TCS](/wiki/tcs/index.html))

The [Cubesat](#cubesat) development is divided in five different phases,
0, A, B, C & D and E & F. Each phase is supposed to be realized in 1
Year.

The goal of the project is to succeed in the mission, but also to enable
students to overcome a physical theory through the realization of a
satellite.

{{< home_parallax "/images/parallax.jpg" "Project Phases" >}}

<!--
    # Project Phases
-->

<!-- raw HTML like this is very bad, dont write anymore of it please -->
<div style="text-align:center">
    <div style="max-width:350px; width:100%; display:inline-block;">
        {{< youtube 94MddSwKZFQ >}}
    </div>
    <div style="max-width:350px; width:100%; display:inline-block;">
        {{< youtube LLoQZBPVrpQ >}}
    </div>
</div>

A space project needs a big management to be successful. That's why all
space projects are divided into various logical stages, called Phases.
Each phase is designed to end with a major milestone in the development,
such as proof of concept, equipment delivery, launch, etc.

**The text in bold and italics describes the phases specifics for
[Cubesats](#cubesat).**

Typically the phases are:

## Phase 0

Phase 0 is sometime already ready but in a project like a
[Cubesat](#cubesat) it needs to be done. So this includes focusing on
the technical aspects of the project, the management plan, the group
project agreement and building partner's interest.

**The Phase 0 is very important for [Cubesat](#cubesat) Projects because
everything needs to be thought from scratch. (Done in 2015-2016)**

## Phase A

Phase A is a relatively low cost paper exercise, designed to expand the
basic idea and confirm that the project is feasible.

During Phase A, the Principal Investigators (PI) shall define the
overall experiment plan. Co-Investigators (CoIs) may be necessary to
avoid experiment duplication, share the work loads, or be responsible
for the development of sub-systems, algorithm's, data interpretation
packages etc.

**Includes: Technical Specifications, Coordination Board, Simple
Simulations. (Done 2016-2017)**

## Phase B

The main purpose of Phase B is to convert the conceptual idea into a
prototype model upon which further investigations can be performed to
confirm the feasibility of the concept, before going to the expense of
building space qualified hardware. The initial prototype models
sometimes referred to as Engineering Models (EM), can use non-space
qualified materials or procedures. They are not constrained by either
weight or size restrictions, but they should prove the functionality of
any special components or materials that would eventually be
incorporated into a flight model. Following testing and acceptance of
the hardware or software, the project is ready to move onto the next
phase.

**Includes: Technical Modeling, Designing, Simulations, Low level
Feasibility. (In process 2017-2018)**

## Phase C & D

Phases C and D are usually combined. The purpose of Phase C & D is to
convert the outcome of Phase B into a fully space qualified model that
would be suitable for either space activities on board the actual flight
or as ground equipment or software to control a particular activity.

**Includes: Technical Specifications, Management Project, Technical
Tests & Validations, Partners Financial investments.**

## Phase E & F

Phases E & F are associated with the launch campaign and the post launch
activities, tests, preparation.

**Includes: Launch preparation, Ground Relay, Start of launch, Partners
implications**

## Data analysis phase

The ultimate stage of a project is the analysis of the data to reach a
scientific conclusion. Analysis of data may take place at any stage of
the experiment, prior to flight, in-flight and post flight.

**The interesting part starts ! Will the mission be a success ?**

## Documents / References

* [PDF from PRODEX explaining Phases](pdf/PRODEX_USERGUIDE_V7_may2011.pdf)
* [Complete management project architecture developed](pdf/Management_Plan_ECE³SAT_draft.pdf)
