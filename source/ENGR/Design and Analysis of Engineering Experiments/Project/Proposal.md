!define(title)(Project Proposal)
!define(subject)(ENGR 6513)
!define(professor)(Dr. Green)
!define(date)(2021-09-16)
!include(!topdir/common/headers/.report.md)

<!-- Write a 1 - 2 page proposal for your project that covers steps 1 - 3 of the experiment design process as defined in the Montgomery textbook, chapter 1. The project should be related to your senior design or graduate research. If possible, choose a project that will allow you to capture real data this semester. If not, you will explore the power of your design using simulated data.

I encourage you to have at least three factors with two levels each, but I will gladly discuss any questions or variations that are appropriate to your research. -->

<!-- Pick parameters for enclosure, have Sheldon test in order to determine best cooling.
Possibilities are fan size, opening position, rain shroud, exterior coating (paired test, one with and one without with same sunlight). -->

## Problem Statement

In this project, an experiment shall be designed and conducted to determine the most effective method of keeping an outdoor electronics enclosure and associated electronics cool in the sun.
Electronics include a small form factor PC, and radio transmitter board.

## Potential Factors

In order to do so, potential factors that may be considered are:

* exterior coating
* enclosure material
* forced/active ventilation
* ventilation position
* interior insulation
* internal component layout
* heatsinks/heat spreaders

## Factor Selection

Based on an understanding of what might be most effective in this project, and what is feasible to test, it is proposed that the following factors be tested.

### Exterior Coating

At least two levels of this may be tested: uncoated, and coated.
More levels may be tested based on available coatings.
The primary candidates for external coatings (in addition to an uncoated baseline) are:

* white paint
* mylar film
* foam insulation

It is likely that **uncoated**, **painted**, and **mylar** skinned would be the most practical to test, and are the current plan.

### Forced vs. Passive Ventilation

The inclusion of forced airflow (via a cooling fan) through the enclosure shall be tested, along with a comparison to passive ventilation.
While it is understood that forced airflow shall necessarily improve heat transfer, the extent of this effect is to be weighed against the increased cost and complexity of adding a fan to the enclosure.

### Insulation

Thermal insulation material shall also be added to the enclosure, and compared against results without insulation (similarly to ventilation).
The effect of the insulation is not yet known, but it is expected to be minimal should an effective external coating also be applied.

## Response Variables

The variable to be measured for the system is primarily temperature, though measurements shall be taken from multiple locations.
Greater importance shall be given to measurements which affect the longevity of the overall system the most.
Planned probe locations include several overall enclosure temperatures (these are repeated measurements that shall be aggregated as a mean), computer exterior temperature, and CPU temperature.

## Nuisance Factors

Primary nuisance factors include ambient temperature and humidity, intensity and direction of sunlight, and wind speed and direction.
Blocking may be required should these conditions vary during testing.
These conditions may also be mitigated to a large extent by conducting the experiment indoors, thereby eliminating rapid wind and temperature variations.
The effect of sunlight must be accounted for, however, which may be possible through simulated means, perhaps via a heat gun.