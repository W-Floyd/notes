# Mohr's Circle

![](!imgdir/e0f709804142ea71e310e120d77a1fd3f07b4d3e.png)

See pgs. 106-108 for a good example.

## Plane-stress Transformation Equations

$$
\sigma=\frac{\sigma_{x}+\sigma_{y}}{2}+\frac{\sigma_{x}-\sigma_{y}}{2} \cos 2 \phi+\tau_{x y} \sin 2 \phi
$$

$$
\tau=-\frac{\sigma_{x}-\sigma_{y}}{2} \sin 2 \phi+\tau_{x y} \cos 2 \phi
$$

### Maximum Stress

$$
\tan 2 \phi_{p}=\frac{2 \tau_{x y}}{\sigma_{x}-\sigma_{y}}
$$

which can become:

$$
\boxed{\sigma_{1}, \sigma_{2}=\frac{\sigma_{x}+\sigma_{y}}{2} \pm \sqrt{\left(\frac{\sigma_{x}-\sigma_{y}}{2}\right)^{2}+\tau_{x y}^{2}}}
$$

### Maximum Shear Stress

Note that this may not be the true maximum.

$$
\tan 2 \phi_{s}=-\frac{\sigma_{x}-\sigma_{y}}{2 \tau_{x y}}
$$

when:

$$
\sigma=\frac{\sigma_{x}+\sigma_{y}}{2}
$$

which can become:

$$
\boxed{
\tau_{1}, \tau_{2}=\pm \sqrt{\left(\frac{\sigma_{x}-\sigma_{y}}{2}\right)^{2}+\tau_{x y}^{2}}
}
$$