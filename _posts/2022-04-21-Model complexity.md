---
layout: post
---

<p>{{ page.date | date_to_string }}</p>

There are models for just about anything you can think of. Fundamental physics, economic markets, epidemics, brain function, climate, click-through rates, animal behavior, election outcomes, to name a few. There's a universe of possibilities for ways to model any given phenomenon, and only a few small hidden oases in an otherwise barren desert. What's a model-builder to do?

<h3> How complex should my model be? </h3> 

So, a model should certainly not be as "complex" as the pheonomenon that it attempts to describe is, at least at face value. The whole point of a model is to take something that is too complex for our brains to process by brute force, and find some underlying structure that makes it easier for us to understand. 'The map is not the territory', as they say. 

As an example, <a href="https://en.wikipedia.org/wiki/Standard_Model" target="_blank"> The Standard Model</a> of particle physics contains precisely 19 free parameters that need to be determined by experiment. In exchange for that, we get a description of all known matter, that is accurate all the way down to the subatomic scale. Quite extraordinary.

That still leaves plenty of rope with which to hang oneself though. In particular, I think the academy has a tendency to needlessly over-complicate. For one thing, more free parameters allows more impressive results to be obtained - at least when limiting to the data that the model is trained with. This is known as <a href="https://en.wikipedia.org/wiki/Overfitting" target="_blank"> overfitting</a>, and it's everywhere. It gives the model-builder more levers and buttons that they can use in order to manufacture the exact results they want. Cranking up model complexity also allows academics to go down an intellectual rabbit hole where they can write lots of papers, as is necessary to advance one's career. And finally, it allows them to obfuscate their overfitting - the model gets so complex that people mostly can't be bothered investing weeks/months of their lives in order to figure out the exact trickery that is afoot.


<h3> Model complexity should be proportional to experimental power </h3> 

The better the experiments we can do, the more detailed the hypotheses they can distinguish between. So for example, good physics models can be quite complex because we can often do excellent experiments that allow us to declare a clear victor amongst the competitors. We can build big machines like the <a href="https://en.wikipedia.org/wiki/Large_Hadron_Collider" target="_blank"> Large Hadron Collider</a> and smash beams of particles together in precisely controlled ways for years, and see which theory best predicts what comes out the other end. 

By way of contrast, in e.g. economics we generally have poor experimental power. We can't run repeated controlled experiments that involve tweaking the economies of large countries and see what the results are. This is why economic modelling should for the most part be quite humble in its aspirations. It should not, for example, have any illusions about its ability to provide adequate <a href="https://en.wikipedia.org/wiki/Microfoundations" target="_blank"> microfoundations</a> for macroeconomic models. It's just not going to happen, at least anytime soon.


<h3> Parameters required:Parameters used </h3> 

I have a somewhat loosely formulated idea for an initial sweep at sorting the wheat from the chaff. 

First, look at the quantities that the model purports to accurately predict. What is the smallest number of parameters that would be required to get a prediction at least as good? For example, if its a macroeconomic model whose only accurate prediction a straight line trend for GDP, this would require precisely two parameters: an intercept and a slope. 

Now look at the number of free parameters the model has. If it has at least two, then I suggest the model prima facie has no predictive value beyond a simple line of best fit. It hasn't simplified anything, and the free parameters  give the model-builder enough space to actually get whatever straight line they wanted. 

This is definitely a vague idea at the moment, but maybe it has some legs.








