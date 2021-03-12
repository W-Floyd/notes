---
author: William Floyd
header-includes:
- |
  ```{=tex}
  \usepackage{cancel}
  ```
title: Summary
toc: true
---

```{=tex}
\usepackage{cancel}
```



# Types of Processes

## Iso-

Constant

### -thermal

Temperature

### -baric

Pressure

### -tropic

Direction

### -choric (-volumetric, -metric)

Volume

## Isentropic

No entropy change

### Special Case for Air

$$
\frac{p_{2}}{p_{1}}=\frac{p_{\mathrm{r} 2}}{p_{\mathrm{r} 1}}
$$

where $p_{\mathrm{r} 1}=p_{\mathrm{r}}\left(T_{1}\right)$ and
$p_{\mathrm{r} 2}=p_{\mathrm{r}}\left(T_{2}\right) .$ The function
$p_{\mathrm{r}}$ is sometimes called the relative pressure. Observe that
$p_{\mathrm{r}}$ is not truly a pressure, so the name relative pressure
has no physical significance. Also, be careful not to confuse
$p_{\mathrm{r}}$ with the reduced pressure of the compressibility
diagram.

Find $p_{\mathrm{r}}$ in Table A-22.

## Adiabatic

No heat transfer

## Aergonic (cannot find online)

No work transfer

## Throttling

No change in enthalpy, so match values for change in pressure.

# Efficiency

## Power Cycle

$$
\eta=\frac{W_{\text {cycle }}}{Q_{\text {in }}}
$$

$$
\eta=\frac{Q_{\text {in }}-Q_{\text {out }}}{Q_{\text {in }}}=1-\frac{Q_{\text {out }}}{Q_{\text {in }}}
$$

## Refrigeration and Heat Pump Cycles

$$
W_{\text {cycle }}=Q_{\text {out }}-Q_{\text {in }}
$$

### Refrigeration Cycle

Coefficient of performance

$$
\beta=\frac{Q_{\text {in }}}{W_{\text {cycle }}}
$$

### Heat Pump Cycle

Coefficient of performance

$$
\gamma=\frac{Q_{\text {out }}}{W_{\text {cycle }}}
$$

## Isentropic Efficiency

$h_{2s}$ is smallest allowed $h_2$

### Turbines

$$
\left(\frac{\dot{W}_{\mathrm{cv}}}{\dot{m}}\right)_{\mathrm{s}}=h_{1}-h_{2 \mathrm{~s}}
$$

Max value for turbine work is:

$$
\eta_{\mathrm{t}}=\frac{\dot{W}_{\mathrm{cv}} / \dot{m}}{\left(\dot{W}_{\mathrm{cv}} / \dot{m}\right)_{\mathrm{s}}}=\frac{h_{1}-h_{2}}{h_{1}-h_{2 \mathrm{~s}}}
$$

#### Exergetic Efficiency

$$
\epsilon=\frac{\dot{W}_{\mathrm{cv}} / \dot{m}}{\mathrm{e}_{\mathrm{f} 1}-\mathrm{e}_{\mathrm{f} 2}}
$$

### Compressor and Pump

Minimum work input: $$
\left(-\frac{\dot{W}_{\mathrm{cv}}}{\dot{m}}\right)_{\mathrm{s}}=h_{2 \mathrm{s}}-h_{1}
$$

$$
\eta_{\mathrm{c}}=\frac{\left(-\dot{W}_{\mathrm{cv}} / \dot{m}\right)_{\mathrm{s}}}{\left(-\dot{W}_{\mathrm{cv}} / \dot{m}\right)}=\frac{h_{2 \mathrm{s}}-h_{1}}{h_{2}-h_{1}}
$$

#### Exergetic Efficiency

$$
\epsilon=\frac{e_{\mathrm{f} 2}-\mathrm{e}_{\mathrm{f} 1}}{\left(-\dot{W}_{\mathrm{cv}} / \dot{m}\right)}
$$

## Heat Exchanger without Mixing

$$
0=\cancel{\sum_{j}\left(1-\frac{T_{0}}{T_{j}}\right)} \dot{Q}_{j}-\cancel{\dot{W}_{\mathrm{cv}}}+\left(\dot{m}_{\mathrm{h}} \mathrm{e}_{\mathrm{f} 1}+\dot{m}_{\mathrm{c}} \mathrm{e}_{\mathrm{f} 3}\right)-\left(\dot{m}_{\mathrm{h}} \mathrm{e}_{\mathrm{f} 2}+\dot{m}_{\mathrm{c}} \mathrm{e}_{\mathrm{f} 4}\right)-\dot{\mathrm{E}}_{\mathrm{d}}
$$

$$
\dot{m}_{\mathrm{h}}\left(\mathrm{e}_{\mathrm{f} 1}-\mathrm{e}_{\mathrm{f} 2}\right)=\dot{m}_{\mathrm{c}}\left(\mathrm{e}_{\mathrm{f} 4}-\mathrm{e}_{\mathrm{f} 3}\right)+\dot{\mathrm{E}}_{\mathrm{d}}
$$

$$
\epsilon=\frac{\dot{m}_{\mathrm{c}}\left(\mathrm{e}_{\mathrm{f} 4}-\mathrm{e}_{\mathrm{f} 3}\right)}{\dot{m}_{\mathrm{h}}\left(\mathrm{e}_{\mathrm{fl}}-\mathrm{e}_{\mathrm{f} 2}\right)}
$$

## Direct Contact heat Exchanger

$$
0=\cancel{\sum_{j}\left(1-\frac{T_{0}}{T_{j}}\right)} \dot{Q}_{j}-\cancel{\dot{W}_{\mathrm{cv}}}+\dot{m}_{1} \mathrm{e}_{\mathrm{f} 1}+\dot{m}_{2} \mathrm{e}_{\mathrm{f} 2}-\dot{m}_{3} \mathrm{e}_{\mathrm{f} 3}-\dot{\mathrm{E}}_{\mathrm{d}}
$$

$$
\dot{m}_{1}\left(\mathrm{e}_{\mathrm{f} 1}-\mathrm{e}_{\mathrm{f} 3}\right)=\dot{m}_{2}\left(\mathrm{e}_{\mathrm{f} 3}-\mathrm{e}_{\mathrm{f} 2}\right)+\dot{\mathrm{E}}_{\mathrm{d}}
$$

$$
\epsilon=\frac{\dot{m}_{2}\left(e_{f 3}-e_{f 2}\right)}{\dot{m}_{1}\left(e_{f 1}-e_{f 3}\right)}
$$

# Ideal Gas

From Chemistry we remember: $$PV = nRT$$

In thermo this becomes: $$ pv = RT $$

where

$$
\begin{aligned}
R &= \frac{\bar{R}}{M} \\
\bar{R} &= 8.314 \text{ kJ}/\text{kmol K} \\
M &= \text{Molar Mass} \\
\end{aligned}
$$

# Internal Energy

Internal energy is an extensive property of the system, as is the total
energy.

$$
E_{2}-E_{1}=\left(U_{2}-U_{1}\right)+\left(\mathrm{KE}_{2}-\mathrm{KE}_{1}\right)+\left(\mathrm{PE}_{2}-\mathrm{PE}_{1}\right)
$$

$$
\Delta E=\Delta U+\Delta \mathrm{KE}+\Delta \mathrm{PE}
$$

# Enthalpy

$$ H = U + pV $$

Which may also be expressed on a unit mass basis:

$$ h = u + pv $$

Units for enthalpy are the same as those for internal energy.

# Entropy

TODO: Define.

$$
s\left(T_{2}, p_{2}\right)-s\left(T_{1}, p_{1}\right)=s^{\circ}\left(T_{2}\right)-s^{\circ}\left(T_{1}\right)-R \ln \frac{p_{2}}{p_{1}}
$$

$$
s_{2}-s_{1}=c \ln \frac{T_{2}}{T_{1}} \quad \text { (incompressible, constant } \left.c\right)
$$

## Ideal gas

$$
\begin{array}{l}
s\left(T_{2}, v_{2}\right)-s\left(T_{1}, v_{1}\right)=\int_{T_{1}}^{T_{2}} c_{v}(T) \frac{d T}{T}+R \ln \frac{v_{2}}{v_{1}} \\
s\left(T_{2}, p_{2}\right)-s\left(T_{1}, p_{1}\right)=\int_{T_{1}}^{T_{2}} c_{p}(T) \frac{d T}{T}-R \ln \frac{p_{2}}{p_{1}}
\end{array}
$$

### Constant Specific Heats

$$
\begin{array}{l}
s\left(T_{2}, v_{2}\right)-s\left(T_{1}, v_{1}\right)=c_{v} \ln \frac{T_{2}}{T_{1}}+R \ln \frac{v_{2}}{v_{1}} \\
s\left(T_{2}, p_{2}\right)-s\left(T_{1}, p_{1}\right)=c_{p} \ln \frac{T_{2}}{T_{1}}-R \ln \frac{p_{2}}{p_{1}}
\end{array}
$$

## Balance for Closed System

$$
\underbrace{S_{2}-S_{1}}_\text{entropy change}=\underbrace{\int_{1}^{2}\left(\frac{\delta Q}{T}\right)_{\mathrm{b}}}_\text{entropy transfer}+ \underbrace{\sigma}_\text{entropy production}
$$

## Turbine

Max power from turbine can be found assuming it is reversible, which
means that $s_1=s_2$. Match across to find $h_{2s}$.

# Quality

$$
x=\frac{m_{\text {vapor }}}{m_{\text {liquid }}+m_{\text {vapor }}}
$$

## Specific Volume

$$
v=(1-x) v_{\mathrm{f}}+x v_{\mathrm{g}}=v_{\mathrm{f}}+x\left(v_{\mathrm{g}}-v_{\mathrm{f}}\right)
$$

## Specific Internal Energy

$$
u=(1-x) u_{\mathrm{f}}+x u_{\mathrm{g}}=u_{\mathrm{f}}+x\left(u_{\mathrm{g}}-u_{\mathrm{i}}\right)
$$

## Specific Enthalpy

$$
h=(1-x) h_{\mathrm{f}}+x h_{\mathrm{g}}=h_{\mathrm{f}}+x\left(h_{\mathrm{g}}-h_{\mathrm{f}}\right)
$$

# Specific Heat

Specific heat is the heat energy required to raise the temperature of a
substance (per unit mass) by one degree Celsius.

$c_p$ is specific heat at a constant pressure. $c_v$ is specific heat at
a constant volume. $$
\begin{aligned}
c_{v} &=\left(\frac{\partial u}{\partial T}\right)_{v} \\
c_{p} &=\left(\frac{\partial h}{\partial T}\right)_{p}
\end{aligned}
$$

For an ideal gas: $$
c_{p}(T)=c_{v}(T)+R
$$

## Constant Specific Heat

### Change in specific internal energy

$c_v$ constant:

$$
u\left(T_{2}\right)-u\left(T_{1}\right)=c_{v}\left(T_{2}-T_{1}\right)
$$

### Change in specific enthalpy

$c_p$ constant:

$$
h\left(T_{2}\right)-h\left(T_{1}\right)=c_{p}\left(T_{2}-T_{1}\right)
$$

## Specific Heat Ratio

For an ideal gas $$
k=\frac{c_{p}(T)}{c_{v}(T)}
$$

## Constant Specific Heat Ratio

When isentropic ($s_1 = s_2$) and $k$ is constant

$$
\begin{aligned}
\frac{T_{2}}{T_{1}}=&\left(\frac{p_{2}}{p_{1}}\right)^{(k-1) / k}\\
\frac{T_{2}}{T_{1}} =&\left(\frac{v_{1}}{v_{2}}\right)^{k-1}\\
\frac{p_{2}}{p_{1}} =&\left(\frac{v_{1}}{v_{2}}\right)^{k}\\
\end{aligned}
$$

# Exergy

**Exergy** is the property that quantifies potential for use. The
foregoing example illustrates that, unlike energy, exergy is not
conserved but is destroyed by irreversibilities.

## Definition

**Exergy** is the maximum theoretical work obtainable from an overall
system consisting of a system and the environment as the system comes
into equilibrium with the environment (passes to the dead state).

$$
\mathrm{E}=\left(U-U_{0}\right)+p_{0}\left(V-V_{0}\right)-T_{0}\left(S-S_{0}\right)+\mathrm{KE}+\mathrm{PE}
$$

### Specific Exergy

$$
\mathrm{e}=\left(u-u_{0}\right)+p_{0}\left(v-v_{0}\right)-T_{0}\left(s-s_{0}\right)+\mathrm{V}^{2} / 2+g z
$$

## Environment

The **environment** is regarded to be a simple compressible system that
is large in extent and uniform in temperature, $T_{0},$ and pressure,
$p_{0}$.

## Dead State

When a system of interest is at $T_{0}$ and $p_{0}$ and at rest relative
to the environment, we say the system is at the **dead state**. At the
dead state there can be no interaction between system and environment
and, thus, no potential for developing work.

## Closed System Balance

$$
\underbrace{\mathrm{E}_{2}-\mathrm{E}_{1}}_{\text{exergy change}}=\underbrace{\int_{1}^{2}\left(1-\frac{T_{0}}{T_{\mathrm{b}}}\right) \delta Q-\left[W-p_{0}\left(V_{2}-V_{1}\right)\right]}_{\text{exergy transfers}}- \underbrace{T_{0} \sigma}_{\text{exergy destruction}}
$$

------------------------------------------------------------------------

Alternatively:

$$
\mathrm{E}_{2}-\mathrm{E}_{1}=\mathrm{E}_{\mathrm{q}}-\mathrm{E}_{\mathrm{w}}-\mathrm{E}_{\mathrm{d}}
$$

where:

$$
\begin{aligned}
\mathrm{E}_{\mathrm{q}}&=\left[\begin{array}{c}
\text {exergy transfer } \\
\text { accompanying heat } \\
\text { transfer }
\end{array}\right]&=\int_{1}^{2}\left(1-\frac{T_{0}}{T_{\mathrm{b}}}\right) \delta Q\\
\mathrm{E}_{\mathrm{w}}&=\left[\begin{array}{c}
\text { exergy transfer } \\
\text { accompanying work }
\end{array}\right]&=\left[W-p_{0}\left(V_{2}-V_{1}\right)\right]\\
\mathrm{E}_{\mathrm{d}}&=\left[
\text { exergy destruction } \right]&=T_{0} \sigma
\end{aligned}
$$

------------------------------------------------------------------------

$$
\mathrm{E}_{\mathrm{d}}:\left\{\begin{array}{ll}
>0 & \text { irreversibilities present within the system } \\
=0 & \text { no irreversibilities present within the system }
\end{array}\right.
$$

## Specific Flow

$$
e_{\mathrm{f}}=h-h_{0}-T_{0}\left(s-s_{0}\right)+\frac{\mathrm{V}^{2}}{2}+g z
$$

## Destruction

$$
\dot{\mathrm{E}}_{d}=T_{0} \dot{\sigma}_{CV}
$$

where:

$\dot{\sigma}_{CV}$ is the rate of entropy production evaluated from an
entropy rate balance.

## Steady State Rate Balance

$$
0=\sum_{j} \dot{\mathrm{E}}_{\mathrm{q} j}-\dot{W}_{\mathrm{cv}}+\sum_{i} \dot{\mathrm{E}}_{\mathrm{fi}}-\sum_{e} \dot{\mathrm{E}}_{\mathrm{f} e}-\dot{\mathrm{E}}_{\mathrm{d}}
$$

where:

$$
\begin{aligned}
\dot{\mathrm{E}}_{\mathrm{q} j} &=\left(1-\frac{T_{0}}{T_{j}}\right) \dot{Q}_{j} \\
\dot{\mathrm{E}}_{\mathrm{fi}} &=\dot{m}_{i} \mathrm{e}_{\mathrm{fi}} \\
\dot{\mathrm{E}}_{\mathrm{fe}} &=\dot{m}_{e} \mathrm{e}_{\mathrm{f} e}
\end{aligned}
$$
