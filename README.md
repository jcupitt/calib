# Move an sRGB image to P3 primaries using nip4

screenshot:

[![Screenshot](screenshot.png)](screenshot.png)

nip4 is here:

https://github.com/libvips/nip4

# Sample output

Hree's sRGB vs. P3:

[![srgb-p3](srgb-p3.jpg)](srgb-p3.jpg)

Left: an sRGB image

Right: the same image converted to linear RGB, then to XYZ, then to the P3 
primaries, then the sRGB transfer function is reapplied.

You can see reds have become slightly desaturated, since the P3 space is so
much larger in that direction.

Here's sRGB vs XYZ:

[![srgb-xyz](srgb-xyz.jpg)](srgb-xyz.jpg)

Right: just an identity matrix instead of XYZ->P3, followed by shifting the
whitepoint to D65. 

Now everything is very desaturated, since the XYZ space is enormous.
