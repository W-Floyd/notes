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
