# ForceSenseJoy

This joystick measures the force applied by the user and not the deflection as done by conventional joysticks.
<img src="/pictures/joystick.jpg" height="400">

## Operating principle

The force is measured using two strain gauges each for the x- and y-axis.
These strain gauges are used in a half-bridge Wheatstone bridge configuration.
The signal from the bridge are amplified by an instrumentation amplifier and then read out using 13-bit analog-digital-converters.
The LUFA library is used to create a USB-joystick device.

## Status

At the moment there are some problems.
The calibration of the Wheatstone bridges is far from perfect.
On one hand this leads to a laborious adjustment process using the trim pots to balance the arms of the bridge and on the other hand the signal sometimes drifts over time.
While the adjustment does not have to be perfect, as the center point (zero) can be set via software on the press of a button,
a bigger imbalance of the bridges will make the amplifier to be unable to amplify the signal to its maximum amplitude.
A possible sollution to this would be the adjustment of the reference voltage.

## How to build
The make script is situated in firmware/src/.  
The project can be build and flashed with
```
make avrdude
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
