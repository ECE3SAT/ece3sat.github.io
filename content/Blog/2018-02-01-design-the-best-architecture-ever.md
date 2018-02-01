{
    "title": "How to determine the system architecture?",
    "date": "2018-02-01"
}

# SYSTEM ARCHITECTURE


## What's an architecture?

A system can be considered as a group of subsystems with their own functionalities and goals.
The architecture is both the general structure distribution of sub-modules on board, and the definition of their relations.

We previously presented our 5 modules ADCS, TCS, OBC, EDT and EPS. Our architecture has to create subsystems in terms of hardware, communication and energy, while respecting spatial requirements and being the most failure-tolerant.

----------

## How to find the best architecture? (methodology)
For a long and ambitious project like ECE3SAT, we wished to follow embedded system methodology.
We applied the process found in the book *Embedded Systems Architectures* described in the following article.

#### 1. Having a solid technical base
Our project covers various technical realms. The first aspect is to gather knowledge in order to understand most requirements.

#### 2. Understanding the architecture business cycle
First of all, we had to gather all requirements from each module. The previous phase focused on it and used formalism to describe it in their reports. However, some requirements had to be updated, that's why dialog with other modules (our final clients) was crucial.

We kept in mind that any information has to be saved (even if it’s written on a napkin). Indeed, we have to be able to make our choices understandable by future working teams.

#### 3. Deﬁning the architectural patterns and reference models
A state of the art and a study of existing cubesat allows our team to quickly identify important modules: EPS, ADCS, OBC, and TCS.

#### 4. Creating the architectural structures
>This is done by decomposing the entire embedded system into hardware and/or software elements, and then further decomposing the elements that need breaking down. These decompositions are represented as some combination of various types of structures [...]. The patterns [...] that most satisfy the system requirements (the most complete, the most accurate, the most buildable, highest conceptual integrity, etc.) should be used as the foundations for the architectural structures.
It is ultimately left up to the architects of the system to decide which structures to select and how many to implement.

#### 5. Documenting the architecture

1. **A document outlining the entire architecture** - 
This step involves creating a table of contents that outlines the information and documentation available for the architecture, such as:
- an overview of the embedded system
- the actual requirements supported by the architecture
- the definitions of the various structures
- the inter-relationships between the structures outlining the documentation representing the various structures
- how these documents are laid out (i.e., modelling techniques, notation, semantics, etc.), and so on.

2. **A document for each structure**

>This document should indicate which requirements are being supported by the structure and how these requirements are being supported by the design, as well as any relative constraints, issues, or open items.
This document should also contain graphical and non-graphical (i.e., tabular, text, etc.) representations of each of the various elements within the structure. For instance, a graphical representation of the structural elements and relationships would include an index containing a textual summary of the various elements, their behavior, their interfaces, and their relationships to other structural elements.

This document should be easily adaptable in specification formalism like UML (*Unified Modelling Language*).


#### 6. Analyzing and evaluating the architecture

>While there are many purposes for reviewing an architecture, primarily it is to determine if an architecture meets the requirements, and to evaluate the potential risks, and possible failure, of a design long before it has been built. When evaluating an architecture, both the person reviewing it and the process of the evaluation must be established.

To compare and choose the best architecture between all proposals, we used grades to note each one in function of their behavior in multiple scenarios. It is called *qualitative-analysis approach*.

Then we take into account the reviews from each module’s team. Indeed, they had to read and verify the documented architecture produced to ensure it matches the set of their own requirements. If one need is not answered, the architecture has to be redesigned by integrating the correction and follow the same process: it is a small V-Model.


#### summary:
This representation sums up all the steps from the creation to the maintenance of an architecture:
{{<
    image_pop_up_legend
    "/images/Blog/lifecycle.png"
    "Figure 1: Embedded Systems Design and Development Lifecycle Model"
    "Figure 1: Embedded Systems Design and Development Lifecycle Model"
>}}


----------


### SOURCES
- *Embedded Systems Architectures* - chapitre 11 (ISBN: 978-0-7506-7792-9)
[Link to ScholarVox](http://scholarvox.campuseiffel.fr/book/40000649)
