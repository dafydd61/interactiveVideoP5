# interactiveVideoP5 - the plan

Post links:

- [https://github.com/dafydd61/interactiveVideoP5](https://github.com/dafydd61/interactiveVideoP5)
- [https://github.com/dafydd61/intro-to-processing](https://github.com/dafydd61/intro-to-processing).

## Intro

1. Me, you
1. Examples
1. Intro to the tools
	- Arduino
	- Processing
 
## What we're going to learn

Throughout the workshop, we'll build some basic reactive pieces. True *interaction* is beyond the scope of this workshop, but we're going to come out with the tools to start down that road.

### Get our feet wet with Arduino

1. Basics
	- The parts
	- How it works
	- How sketches work
	- Writing sketches
	- Editing Blink
2. Basics of Breadboarding
	- Moving blibk to a breadboard
	- Doing something more interesting
	- More later...

### Processing

1. Basics
	- the window - grid
	- drawing shapes - rect, line, ellipse
	- colours
		- strokeWidth, stroke, fill, background
	- getting help
		- Documentation
		- Example sketches
	- moving stuff around
		- mouseX, mouseY
		- where does background go?
		- map()
	- frameCount, width, height
	- doing some basic math
		- variables
		- Composite shape
		- transforms?
1. Pictures
	- loading and displaying photos
		- it's a variable
		- h & w are properties of pictures!
	- playing with pictures: colour, alpha, filters
		- tint
		- Pop art
		- filter
		- mouse -> tint/filter
		- picture switcher - mouseX, mouseReleased, keyReleased
	- copying part or all of a picture (get(), copy())
1. Detour: arrays, loops
	- arrays from intro
1. Pixels
	- looking at pictures as a list of numbers
		- colourSwap
			- loadPixels()
			- r, g, b
	- manipulating pixels one-by-one
		- richterSmear
	- alpha masking
		- Capture
		- maskImage
2. Videos
	- Playing videos
	- Controlling video playback
	- reactive playback
	- maskVideo
   
### Arduino

- How to get information from the physical world
	- Photoresistor
	- Buttons
	- Knobs
	- other...
- How to talk to the world physically i.e. not through a screen or keyboard
	- light
	- motion

### Putting it together

- Firmata

### Process Demos

- BG subtraction with trails
- edge detection for real objects