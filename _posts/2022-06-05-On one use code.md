---
layout: post
title: On one-use code
---

<p>{{ page.date | date_to_string }}</p>

Academics who code are, I think, somewhat known for their less than stellar creations. I have certainly written code that I would prefer didn't see the light of day. A recent example that attracted a great deal of attention is <a href="https://en.wikipedia.org/wiki/Neil_Ferguson_(epidemiologist)" target="_blank"> Professor Neil Ferguson's</a> <a href="https://en.wikipedia.org/wiki/CovidSim" target="_blank"> CovidSim</a>. As the name suggests, it is a simulator of COVID-19 transmission that works by creating artificial agents representing people and environments that they interact with, in much the same way as the SimCity series of games but without the funky graphics. It was the basis of a <a href="https://www.imperial.ac.uk/media/imperial-college/medicine/sph/ide/gida-fellowships/Imperial-College-COVID19-NPI-modelling-16-03-2020.pdf" target="_blank"> paper</a> that is credited with fundamentally altering the course of the UK's COVID-19 policy. The paper predicted that even under the optimal 'mitigation' strategy that was considered, the peak surge capacity of ICU beds in the UK would be exceeded 8-times over due to the pandemic. As of the date of writing, it has 3,910 citations.

In May 2020, The code behind the simulation was released to GitHub, which is a ubiquitously-used online tool for software development. Before it was released to the public, it apparently consisted of a single 15,000 line file written in C. Having one file of source code that long is already a cardinal sin in coding, and there were many other failures to live up to standard software development practices. 


<h3> Ok, but it worked, didn't it? </h3>

An independent research group was able to reproduce the published results of CovidSim by running it themselves. So, while CovidSim may have been less than desirable from a coding point of view, it did its job as intended. Does it really matter that it wasn't that pretty?

I have a lot of sympathy for the team that worked on this code. Academic coding often doesn't live up to industry software development standards, for a multitude of reasons. Code that is used to carry out analysis for research is typically 'one-use', or close to it. It is not, for example, google.com, which is used by god knows how many millions of people every day and has a large team of people continuously maintaining it. Code written for research is typically intended to be used by a small number of people who authored it, to obtain a specific set of outputs just once.

In addition to that, the PhD students, postdocs and other research staff who typically write the code for such projects are usually themselves not trained in industry standard software development pratices. Many of them will come from disciplines that aren't primarily coding-centred, and will have to pick it up along the way with little or no oversight. That's a tough position to be in.

Third, academia is often a race to publish results, that can end up being a very much winner-take-all proposition. Release your paper a week too late and posterity will not look kindly upon you. These are not circumstances that are conducive to producing nice code.

Lastly, an adage comes to mind that goes something like this: "Feel free to break the rules once you know why they exist". It captures the idea that once you are at a sufficiently high level in a given skill, a lot of what you do consists of knowing when exactly the rules can be bent/broken. Great chess grandmasters, for example, often play with flagrant disregard for well-established principles of the game. They have been at it for long enough that they can often get a competitive edge by going beyond the rules, in a way that is informed by years of study and expertise. Likewise, there are circumstances where it is ok to write fairly 'terrible' code, that breaks all the rules - sometimes you just need a result quickly, and you can focus on cleaning it up/optimising later, or not at all. Why, for example, spend hours beautifying a piece of code when you have a deadline looming that depends crucially on the output of said code? Do your due diligence in making sure it is correct, and hit enter.

That said, it is not exactly confidence-inspiring that this simulation that changed the course of a nation was lacking in robustness. One reason we like pretty code is that it tends to minimise the chances of an error. The stakes could not have been higher in this case - an error would have had massive consequences. Also, the fact that the code has been around in one form or another since 2005, and has been adapted repeatedly for modelling various epidemics, makes me a little less sympathetic. That is not exactly what one would call one-use code.











