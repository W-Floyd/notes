# Summary

## Types of Processes

### Iso- 

Constant 

#### -thermal 

Temperature 

#### -baric 

Pressure 

#### -tropic 

Direction 

#### -choric (-volumetric, -metric) 

Volume

### Isentropic

No entropy change

#### Special Case for Air

$$
\frac{p_{2}}{p_{1}}=\frac{p_{\mathrm{r} 2}}{p_{\mathrm{r} 1}}
$$

where $p_{\mathrm{r} 1}=p_{\mathrm{r}}\left(T_{1}\right)$ and $p_{\mathrm{r} 2}=p_{\mathrm{r}}\left(T_{2}\right) .$ The function $p_{\mathrm{r}}$ is sometimes called the relative pressure. Observe that $p_{\mathrm{r}}$ is not truly a pressure, so the name relative pressure has no physical significance. Also, be careful not to confuse $p_{\mathrm{r}}$ with the reduced pressure of the compressibility diagram.

Find $p_{\mathrm{r}}$ in Table A-22.

### Adiabatic 

No heat transfer 

### Aergonic (cannot find online) 

No work transfer

### Throttling 

No change in enthalpy, so match values for change in pressure. 

## Efficiency

### Power Cycle

$$
\eta=\frac{W_{\text {cycle }}}{Q_{\text {in }}}
$$

$$
\eta=\frac{Q_{\text {in }}-Q_{\text {out }}}{Q_{\text {in }}}=1-\frac{Q_{\text {out }}}{Q_{\text {in }}}
$$

### Refrigeration and Heat Pump Cycles

$$
W_{\text {cycle }}=Q_{\text {out }}-Q_{\text {in }}
$$

#### Refrigeration Cycle

Coefficient of performance

$$
\beta=\frac{Q_{\text {in }}}{W_{\text {cycle }}}
$$

#### Heat Pump Cycle

Coefficient of performance

$$
\gamma=\frac{Q_{\text {out }}}{W_{\text {cycle }}}
$$

### Isentropic Efficiency

#### Compressor and Pump

Minimum work input:
$$
\left(-\frac{\dot{W}_{\mathrm{cv}}}{\dot{m}}\right)_{\mathrm{s}}=h_{2 \mathrm{s}}-h_{1}
$$

$$
\eta_{\mathrm{c}}=\frac{\left(-\dot{W}_{\mathrm{cv}} / \dot{m}\right)_{\mathrm{s}}}{\left(-\dot{W}_{\mathrm{cv}} / \dot{m}\right)}=\frac{h_{2 \mathrm{s}}-h_{1}}{h_{2}-h_{1}}
$$

## Ideal Gas

From Chemistry we remember:
$$PV = nRT$$

In thermo this becomes:
$$ pv = RT $$

where

$$
\begin{aligned}
R &= \frac{\bar{R}}{M} \\
\bar{R} &= 8.314 \text{ kJ}/\text{kmol K} \\
M &= \text{Molar Mass} \\
\end{aligned}
$$

## Internal Energy

Internal energy is an extensive property of the system, as is the total energy.

$$
E_{2}-E_{1}=\left(U_{2}-U_{1}\right)+\left(\mathrm{KE}_{2}-\mathrm{KE}_{1}\right)+\left(\mathrm{PE}_{2}-\mathrm{PE}_{1}\right)
$$

$$
\Delta E=\Delta U+\Delta \mathrm{KE}+\Delta \mathrm{PE}
$$

## Enthalpy

$$ H = U + pV $$

Which may also be expressed on a unit mass basis:

$$ h = u + pv $$

Units for enthalpy are the same as those for internal energy.

## Quality

$$
x=\frac{m_{\text {vapor }}}{m_{\text {liquid }}+m_{\text {vapor }}}
$$

### Specific Volume

$$
v=(1-x) v_{\mathrm{f}}+x v_{\mathrm{g}}=v_{\mathrm{f}}+x\left(v_{\mathrm{g}}-v_{\mathrm{f}}\right)
$$

### Specific Internal Energy

$$
u=(1-x) u_{\mathrm{f}}+x u_{\mathrm{g}}=u_{\mathrm{f}}+x\left(u_{\mathrm{g}}-u_{\mathrm{i}}\right)
$$

### Specific Enthalpy

$$
h=(1-x) h_{\mathrm{f}}+x h_{\mathrm{g}}=h_{\mathrm{f}}+x\left(h_{\mathrm{g}}-h_{\mathrm{f}}\right)
$$

## Specific Heat

Specific heat is the heat energy required to raise the temperature of a substance (per unit mass) by one degree Celsius.

$c_p$ is specific heat at a constant pressure.
$c_v$ is specific heat at a constant volume.
$$
\begin{aligned}
c_{v} &=\left(\frac{\partial u}{\partial T}\right)_{v} \\
c_{p} &=\left(\frac{\partial h}{\partial T}\right)_{p}
\end{aligned}
$$

For an ideal gas:
$$
c_{p}(T)=c_{v}(T)+R
$$

### Constant Specific Heat

#### Change in specific internal energy

$c_v$ constant:

$$
u\left(T_{2}\right)-u\left(T_{1}\right)=c_{v}\left(T_{2}-T_{1}\right)
$$

#### Change in specific enthalpy

$c_p$ constant:

$$
h\left(T_{2}\right)-h\left(T_{1}\right)=c_{p}\left(T_{2}-T_{1}\right)
$$

### Specific Heat Ratio
For an ideal gas
$$
k=\frac{c_{p}(T)}{c_{v}(T)}
$$

### Constant Specific Heat Ratio

When isentropic ($s_1 = s_2$) and $k$ is constant

$$
\begin{aligned}
\frac{T_{2}}{T_{1}}=&\left(\frac{p_{2}}{p_{1}}\right)^{(k-1) / k}\\
\frac{T_{2}}{T_{1}} =&\left(\frac{v_{1}}{v_{2}}\right)^{k-1}\\
\frac{p_{2}}{p_{1}} =&\left(\frac{v_{1}}{v_{2}}\right)^{k}\\
\end{aligned}
$$