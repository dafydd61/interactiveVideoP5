# interactiveVideoP5 - the plan

Post links:

- [https://github.com/dafydd61/interactiveVideoP5](https://github.com/dafydd61/interactiveVideoP5)
- [https://github.com/dafydd61/intro-to-processing](https://github.com/dafydd61/intro-to-processing).

## Intro

1. Me, you
1. Examples
	- My Grandfather's House (Procesing, openFrameworks)
	- [Road Trip](https://vimeo.com/193215771) (Procesing, openFrameworks)
	- Aaron Koblin: [Radiohead, *House of Cards*](https://github.com/dataarts/radiohead) (Processing)
	- Cheryl Sourkes, [*Everybody's Autobiography*](http://cherylsourkes.com/everybodys-autobiography/) (Processing, JavaScript)
	- Gerda Cammaer, [*Maputo Praia*](https://vimeo.com/76016374) (Processing, Pure Data)
	- Nils Völker, [*One Hundred and Eight*](http://nilsvoelker.com/content/onehundredandeight/index.html) (Processing, Arduino (presumably))
	- Ole Kristensen, [*Body Navigation*](https://vimeo.com/1362832) (Processing, Infrared Camera)
	- Klaus Obermaier and Ars Electronica Futurelab, [*Le Sacre du Printemps *](http://www.exile.at/sacre/) (?)
	- Golan Levin, Zachary Lieberman, Jaap Blonk, and Joan La Barbara, [*Messa di voce*](http://www.youtube.com/watch?v=GfoqiyB1ndE) (Processing(?))
1. Intro to the tools
	- Arduino
	- Processing
1. What we're going to learn
	- **Procesing**
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
			- frameCount, width, height
			- doing some basic math
				- variables
				- Composite shape
		1. Pictures
			- loading and displaying photos
				- it's a variable
				- h & w are properties of pictures!
			- playing with pictures: colour, alpha, filters
				- tint
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
				- maskImage
		2. Videos
			- Playing videos
			- Controlling video playback
			- reactive playback
	- **Arduino**
		- How to get information from the physical world
			- Photoresistor
			- Buttons
			- Knobs
			- other...
		- How to talk to the world physically i.e. not through a screen or keyboard
			- light
			- motion
	- **Putting it together**
		- Firmata
	- In the process, we'll build some basic reactive pieces. True *interaction* is beyond the scope of this workshop, but we're going to come out with the tools to start down that road.