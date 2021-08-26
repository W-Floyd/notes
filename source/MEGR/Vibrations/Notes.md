# Pendulum

$$
\begin{aligned}
    \sum M_{O}&=J \alpha\\
    \text{Where:}\\
    J&=m l^{2}=\text{Mass Moment of Inertia}\\
    l&=\text{Length of massless rod}\\
    \alpha&=\ddot{\theta}=\text{Angular acceleration vector} 
\end{aligned}
$$

Because it is one dimensional:

$$
J \alpha(t)=-m g l \sin \theta(t)
$$

or

$$
m l^{2} \ddot{\theta}(t)+m g l \sin \theta(t)=0
$$

However, this is non-linear and difficult to solve due to $\sin{\theta}$.
Instead we approximate for small angles such that $\sin{\theta}\approx 0$, and the equation becomes:

$$
\ddot{\theta}(t)+\frac{g}{l} \theta(t)=0
$$

Note $l\sin{\theta}$ is horizontal distance of moment arm.

$\theta(0)$ and $\dot{\theta}(0)$ must be known to solve for $\theta(t)$

# Restoring Force

Restoring force is a force which acts to bring a body to its equilibrium position.
The restoring force is a function only of position of the mass or particle, and it is always directed back toward the equilibrium position of the system.
The restoring force is often referred to in simple harmonic motion.
The force which is responsible to restore original size and shape is called restoring force.

**Note:** It is not a "force" in the sensor of Newtons only, rather, it acts in the dimension that the system operates upon ($\mathrm{N}$ in linear, $\mathrm{N}\cdot\mathrm{m}$ for pendulum, etc.)

## Pendulum

$$
F_R = m g l \sin \theta
$$

# Natural Frequency

TODO: How? Why?

## Spring Mass

$$
\omega_n = \sqrt{\frac{k}{m}}
$$

## Pendulum

$$
\omega_n = \sqrt{\frac{g}{l}}
$$

## Disk and Shaft

$$
\omega_n = \sqrt{\frac{k}{J}}
$$

# Models

## 1 DoF Systems

![](!imgdir/105b5e4b7291ac46e86599d2f41030cf2bc998bc.png)

Typical Equation of Motion (EoM):

$$
x(t)=A \sin \left(\omega_{n} t+\phi\right)
$$

## Spring Mass

![](!imgdir/4e0ae10d862993f7ce3fd0fafb1d7e4792df891c.png)

Force applied by spring:

$$
f_{k}=k x
$$

Summing forces along $x$ gives:

$$
m \ddot{x}(t)+k x(t)=0
$$