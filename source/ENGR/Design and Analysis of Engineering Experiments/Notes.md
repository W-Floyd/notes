# Statistics

$$
\begin{array}{|l|c|c|c|}
\cline { 2 - 4 } \multicolumn{1}{c|} {} & \text { Mean } & \begin{array}{c}
\text { Standard } \\
\text { Deviation }
\end{array} & \text { Variance } \\
\hline \text { Population } & \mu & \sigma & \sigma^{2} \\
\hline \text { Sample } & \overline{x} & \mathrm{s} & \mathrm{s}^{2} \\
\hline
\end{array}
$$

## Mean

### Population Mean

$$
\mu=\frac{1}{N} \sum_{i=1}^{N} x_{i}
$$

### Sample Mean

$$
\bar{x}=\frac{1}{n}\sum_{i=1}^{n} x_{i}
$$

## Standard Deviation

Standard deviation measures the spread of a data distribution. It measures the typical distance between each data point and the mean.
The formula we use for standard deviation depends on whether the data is being considered a population of its own, or the data is a sample representing a larger population.

- If the data is being considered a population on its own, we divide by the number of data points, $N$.
- If the data is a sample from a larger population, we divide by one fewer than the number of data points in the sample, $n-1$.

### Population Standard Deviation

$$
\sigma=\sqrt{\frac{1}{N} \sum_{i=1}^{N}\left(x_{i}-\mu\right)^{2}}
$$

### Sample Standard Deviation

$$
s_x=\sqrt{\frac{1}{n-1} \sum_{i=1}^{n}\left(x_{i}-\bar{x}\right)^{2}}
$$

# Calculus

## Integration by parts

TODO: Copy in.
[See online note](https://tutorial.math.lamar.edu/Classes/CalcII/IntegrationByParts.aspx)

***

# Chapter 1

## Misc. Definitions

### Run/Test

Each experimental **run** is called a **test**.

### Experiments

An **experiment** is a test or series of series of runs with purposefully changed input variables, with output observed for change, and changes identified.
In this way, models may be made by relating changes in input variables to output result.
In general, experiments are used to study the performance of processes and systems.

### Models

**Mechanistic models** may be developed using well understood principles.
This is uncommon.

**Empirical models** can describe system performance, and are developed experimentally.

### Interaction

An **interaction** is the failure of one factor to produce the same effect on the response at different levels of another factor.

### Repeated Measurements

**Repeated measurements** mean to take multiple measurements of some parameter of a run, but only within the same run.
For example, 4 parts processed in parallel and subsequently measured are still multiple measurements, as they are from the same replicate.

### Nuisance Factors

**Nuisance factors** may influence the experimental response but are not of direct interest.
Break down into **controllable**, **uncontrollable**, or **noise factors**.

Controllable may be set by the experimenter (e.g.: batch of material), often uses blocking to get around the issue.

Uncontrollable but measurable allows **analysis of covariance** wherein the effect of the nuisance factor may be accounted and adjusted for (e.g.: humidity in outside process environment).

Noise factor if naturally uncontrollable and variable, but controllable in testing conditions.
Goal is typically to find settings of controllable design factors that minimize variability induced by noise factors.
Sometimes called process robustness study or robust design problem.

## Strategies of Experimentation

### Best Guess
**Best guess** experimentation relies on luck, or the experimenter's subject knowledge and expertise.
This is often used, and can yield good results, but has pitfalls in more complicated scenarios or when seemingly "good enough" results are achieved.

### One Factor At a Time (OFAT)
**One factor at a time** (**OFAT**) testing uses baselines (starting points), and changes variables one at a time to observe outcomes.
Does not account for **interaction** between variables.
They are always less efficient than other methods based on a statistical approach to design.

### Factorial
**Factorial** experimentation deal with variables varied together, instead of at the same time.
They make the most efficient use of experimental data
Generally, if there are $k$ factors, each at two levels, the factorial design would require $2^{k}$ runs.
Example is easiest, from page 5 of textbook ($2^2 \mathrm{~factorial}$):

![](!imgdir/b0fe526a18f566c5234dc25767acfc1dc11767e1.png)

Figure shows the results of performing the factorial experiment in Figure 1.4. The scores from each round of golf played at the four test combinations are shown at the corners of the square. Notice that there are four rounds of golf that provide information about using the regular-sized driver and four rounds that provide information about using the oversized driver. By finding the average difference in the scores on the right- and left-hand sides of the square, we have a measure of the effect of switching from the oversized driver to the regular-sized driver, or
$$
\begin{aligned}
\text { Driver effect } &=\frac{92+94+93+91}{4}-\frac{88+91+88+90}{4} \\
&=3.25
\end{aligned}
$$
That is, on average, switching from the oversized to the regular-sized driver increases the score by $3.25$ strokes per round. Similarly, the average difference in the four scores at the top of the square and the four scores at the bottom measures the effect of the type of ball used:
$$
\begin{aligned}
\text { Ball effect } &=\frac{88+91+92+94}{4}-\frac{88+90+93+91}{4} \\
&=0.75
\end{aligned}
$$
Finally, a measure of the interaction effect between the type of ball and the type of driver can be obtained by subtracting the average scores on the left-to-right diagonal in the square from the average scores on the right-to-left diagonal, resulting in
$$
\begin{aligned}
\text { Ball-driver interaction effect } &=\frac{92+94+88+90}{4}-\frac{88+91+93+91}{4} \\
&=0.25
\end{aligned}
$$

In brief, as example, 2 variables are tested at 2 possible values (let's say A/B, and C/D), 2 times each (8 total runs).
The average effect of A/B change is evaluated, as well as average C/D effect ($\text{A/B effect}=\mu_{B}-\mu_{A}$, $\text{C/D effect}=\mu_{D}-\mu_{C}$)
Additionally, average AC/BD and AD/BC change is also found (called the "interaction effect") by finding the difference between opposing diagonals ($\text{AB/CD interaction effect} = \mu_{AC/BD}-\mu_{AD/BC}$)

### Fractional Factorial Experiment
A **fractional factorial experiment** is a variation of the basic factorial design in which only a subset of the runs is used.
In image, top is full $2^4$ runs, bottom is a **one-half fraction**, using $\frac{1}{2}2^4=8$ runs

![](!imgdir/03a60875432ddf0e4a6cb484414d4a0302d000b2.png)

## Types of Experiments

### Mixture Experiment

A **mixture experiment** is so called because various ingredients that are combined to form the diagnostic make up 100 percent of the mixture composition (on a volume, weight, or mole ratio basis).
Mixture experiments are a special type of response surface experiment.

## Statistical Design of Experiments

**Statistical design of experiments** refers to the process of planning the experiment so that appropriate data will be collected and analyzed by statistical methods, resulting in valid and objective conclusions.
The statistical approach to experimental design is necessary if we wish to draw meaningful conclusions from the data.
When the problem involves data that are subject to experimental errors, statistical methods are the only objective approach to analysis.

## Basic Principles of Experimental Design

### Randomization

**Randomization** is core to the use of statistical methods in experimental design.
Means allocation of experimental material and order in which individual runs of the experiment are to be performed are randomly determined.
This is to ensure that observations are randomly distributed.

#### Complete Randomization

As one might expect, **complete randomization** makes all aspects of the order of experimentation random.
This is not always practical, as changes in variables may take extra time or resources.

### Replication

**Replication** means an independent repeat run of each factor combination.
That is, to have replicated an experiment means to have conducted it with identical input variables.
Each of these replications is called a **replicate**.

Replication allows finding a more precise estimate of factors that utilize sample mean
The variance of the sample mean is thus:

$$
\sigma_{\bar{y}}^{2}=\frac{\sigma^{2}}{n}
$$

Note that even if a variable happens to not change from one run to another, it ought to be changed to a different value and back again anyway.
The variability of hitting this mark is important - the change must be constant.

Replication reflects sources of variability both between runs and (potentially) within runs.
Do not confuse it with repeated measurements.

### Blocking

Used to improve the precision with which comparisons among the factors of interest are made.
Often blocking is used to reduce or eliminate the variability transmitted from nuisance factors.
Generally, a block is a set of relatively homogeneous experimental conditions.
This allows batches that differ slightly (different supplier, etc.) to still allow collecting and comparing useful data, by running the analysis for each block, the creating an aggregate of these effects separate from any specific block.

## Guidelines for Designing Experiments

1. Recognition of and statement of the problem
2. Selection of the response variable
3. Choice of factors, levels, and range
4. Choice of experimental design
5. Performing the experiment
6. Statistical analysis of the data
7. Conclusions and recommendations

## Summary

### Brief

1. Recognition of and statement of the problem
2. Selection of the response variables
3. Choice of factors, levels, and ranges
4. Choice of experimental design
5. Performing the experiment
6. Statistical analysis of the data
7. Conclusions and recommendations

***

### 1. Recognition of and statement of the problem

Not as simple as one might think.
Necessary to develop all ideas about objectives of experiment.
Usually, it is important to solicit input from all concerned parties: engineering, quality assurance, manufacturing, marketing, management, customer, and operating personnel (who have much ignored insight).
For this reason, a team approach to designing experiments is recommended.

Unlikely that one big experiment will answer all questions.
A sequential approach using a series of smaller experiments is the best strategy, as it saves time, effort, and resources.
Helpful to prepare a list of specific problems or questions that are to be addressed by the experiment.
Some possible reasons include:

#### a. Factor screening or characterization

When dealing with a new process, it is important to learn which factors influence response(s) of interest.
It is especially important with new technologies.

#### b. Optimization

Once factors have been identified, one must find the levels of these to produce desirable results.
Screening alone is unusual, optimization is almost always required.

#### c. Confirmation

Verify that the change enacted in the experiment is indeed desirable.
May include testing to see if new manufacturing process is appropriate for full-scale process.

#### d. Discovery

Usually trying to discover what happens when using a new material, factor, or range of factors.
Usually involves screening of factors.
Very common in pharmaceutical industry.

#### e. Robustness

Address conditions of response degradation - that is, finding optimal factors to set such that uncontrollable factors introduce minimum variability.

### 2. Selection of the response variable

Experimenter should be certain variable really provides useful information.
Usually average, standard deviation, or both are used.
Multiple response variables is not unusual.

Experimenter should keep in mind instrument calibration, as well as maintaining this calibration throughout the experiment.
Poor gauge capability should be identified, and if necessary multiple measurements should be aggregated to form the observed response.
Find and define these issues before the experiment is conducted.
The instruments themselves may merit experiments of their own.

### 3. Choice of factors, levels, and range

(2 and 3 are often done out of order or in parallel)

Factors fall into two categories - **potential design factors**, or nuisance factors.
Further, potential design factors break down into **design factors**, **held-constant factors**, and **allowed-to-vary** factors.

Held-constant factors are typically factors that are difficult to change (e.g.: characteristic of machine used for manufacture).
Their held value is ideally "typical".
We often assume held-constant and allowed-to-vary factors have little effect.

(Note: a nuisance factor is an allowed-to-vary that has a significant effect)

Once design factors have been selected, ranges over which these will be varies, and specific levels for runs should be chosen.
**Process knowledge** (combination of practical experience and theoretical understanding) is required to be able to choose these.
Avoid being influenced by past experience, especially in early stages or when process is new.

When goal is factor screening or process characterization, best to keep factor levels low (generally, 2 levels for screening).
In screening, region of interest is large - as knowledge is built up, region of interest may become more narrow.

Steps 1-3 form **pre-experimental planning**, and is critical.
It is unlikely one person will be enough - team effort on experiment planning will be helpful.

#### Cause-and-effect (fishbone) diagram

Can be useful to organize some information generated in pre-experimental planning.
"Effect" is spine, potential causes are "ribs".
Individual causes may directly lead to some design factors being included, or require further study to determine.

![Cause-and-effect diagram](!imgdir/1fe455b956e1ea9bc4e307e84da8bdbf47fad551.png)

### 4. Choice of experimental design

Easier if prior steps are done correctly.