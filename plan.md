# interactiveVideoP5 - the plan

Post links:

- [https://github.com/dafydd61/interactiveVideoP5](https://github.com/dafydd61/interactiveVideoP5)
- [https://github.com/dafydd61/intro-to-processing](https://github.com/dafydd61/intro-to-processing).

## Intro

1. Me, you
1. Examples
	- Aaron Koblin: [Radiohead, *House of Cards*](https://github.com/dataarts/radiohead) (Processing)
	- Gerda Cammaer, [*Maputo Praia*](https://vimeo.com/76016374) (Processing, Pure Data)
	- Nils Völker, [*One Hundred and Eight*](http://nilsvoelker.com/content/onehundredandeight/index.html) (Processing, Arduino (presumably))
	- Ole Kristensen, [*Body Navigation*](https://vimeo.com/1362832) (Processing, Infrared Camera)
	- Klaus Obermaier and Ars Electronica Futurelab, [*Le Sacre du Printemps *](http://www.exile.at/sacre/) (?)
	- Golan Levin, Zachary Lieberman, Jaap Blonk, and Joan La Barbara, [*Messa di voce*](http://www.youtube.com/watch?v=GfoqiyB1ndE) (Processing(?))
	- David Rokeby, [*Seen*](https://vimeo.com/6012986) (Max/MSP)
	- David Rokeby, [*Taken*](https://vimeo.com/17139664) (Max/MSP)
	- David Rokeby, [*San Marco Flow*](https://vimeo.com/15070143) (Max/MSP)
	- David Rokeby, [*Very Nervous System*](https://vimeo.com/8120954) (Max/MSP)
	- [Road Trip](https://vimeo.com/193215771) (Procesing, openFrameworks)
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