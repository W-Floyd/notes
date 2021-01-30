---
header-includes:
- \usepackage{cancel}
---

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

Minimum work input:
$$
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