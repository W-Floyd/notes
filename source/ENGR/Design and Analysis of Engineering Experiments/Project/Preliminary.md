!define(title)(DAE Final Report (Preliminary))
!define(subject)(ENGR 6513)
!define(professor)(Dr. Green)
!define(date)(2021-11-09)
!include(!topdir/common/headers/.report.md)

<!-- Introduction: The introduction states the problem and purpose of the study and frames the research question. -->

# Introduction

In this project, an experiment is designed and conducted to determine the most effective method of keeping an outdoor electronics enclosure and associated electronics cool in the sun.
Electronics include a small form factor PC, and radio transmitter board.
Various factors were considered, and three variables selected, with two levels each, forming a $2^3$ 1/2 fractional factorial design.
Testing is undertaken with nuisance factors controlled for as much as practical.

<!-- # Related Work -->
<!-- Related Work: Give a brief overview of related work in the field. This will be similar to a literature search, but slightly less exhaustive. -->

# Experimental Design
<!-- Experimental Design: Explain the study design and why you think the design was suitable for the problem.  -->

Taking into account practical limits to testing given budget, time, and equipment constraints, it was decided that a $2^3$ 1/2 fractional factorial design with 3 replicas for each configuration would be best, giving a total of 12 datasets.

| Name | A | B | C |
|------|---|---|---|
| (1)  | - | - | - |
| ab   | + | + | - |
| ac   | + | - | + |
| bc   | - | + | + |

# Methods and Materials
<!-- Methods & materials: Give a detailed explanation of how the experiment was conducted and the materials used. Make sure you include every small detail so that someone else can replicate the experiment if required. -->

Tt was determined that the CPU temperature of the PC was of primary concern.
To simulate worst case conditions, the CPU was loaded with a stress test at 100\% utilization.
Given the minimal power draw of the radio transmitter, it was not included in testing.

To conduct the experiment, the PC was installed into the enclosure selected, then sealed shut as it would be once installed.
Using a custom software package, CPU temperature data was polled from the Linux system, and transmitted over MQTT.
The MQTT messages were then logged over time on another machine.

The enclosure was placed in an insulated testing enclosure with a 1875 watt hairdrier affixed so as to blow hot air through the system, venting through a gap in the hinged door of the testing enclosure.
For each test run, it was ensured that the system was saturated with heat before taking data from a run - that is, one dummy run was conducted when coming from a cold start, to ensure consistent heat distribution.

After beginning heating, data logging commenced upon the first sample to read 85 degrees Celsius, and concluded upon the first sample to read 96 degrees Celsius (non-inclusive).
This data was logged as a CSV file with the time of each sample and temperature.
In the interest of time, configurations were not randomized between runs.

The configurations are as follows:

| Name | Coated | Insulated | Orientation |
|------|--------|-----------|-------------|
| LLL  | No     | No        | Horizontal  |
| HHL  | Yes    | Yes       | Horizontal  |
| HLH  | Yes    | No        | Vertical    |
| LHH  | No     | Yes       | Vertical    |

For each dataset, a linear fit was made, then normalized to have a starting value of 85 degrees Celsius, as it is the rate of change in temperature that is significant, not the time offset.

# Results and Discussion
<!-- Results and Discussion: This section includes the results of the experiment, and discusses its implications.   -->
Where L/H means Un/Coated, Un/Insulated, Horizontal/Vertical

![All data and fits](Data/both.png)

![Average fit for each configuration](Data/average.png)

As a preliminary interpretation of the data, it is apparent that the coating of the enclosure is the primary factor in affecting the rate of change in CPU temperature, and by extension the rate at which heat energy may pass into the electronics enclosure.