---
layout: post
---

<p>{{ page.date | date_to_string }}</p>

Myself and a team of collaborators including Stuart Bedston at the University of Swansea, Declan Bradley at Queen's University Belfast and Mark Joy at the University of Oxford recently published a <a href="https://doi.org/10.1093/ije/dyac199" target="_blank"> paper</a> in the International Journal of Epidemiology studying waning of COVID-19 vaccine effectiveness. One of the major findings of the paper is that for first and second dose of AstraZeneca and first dose of Pfizer, effectiveness of the vaccine against COVID-19 hospitalisation or death reached zero by approximately day 60-80 after receiving the vaccine, and then went negative. 

That is quite a striking result. This post is going to dig into possible explanations of this phenomenon and its implications.

<h3> First of all, what did you actually do? </h3>

We carried out a type of study called a 'target trial emulation'. This attempts to find a 'naturally occurring' clinical trial, by matching people in a population who received a given treatment to similar people who didn't receive the treatment. You can then compare the rate of adverse events in these retrospectively generated, artificial treatment and control groups.

The data that we used to do this study are highly confidential, and stored securely on different servers in each nation of the UK. It is not permitted to have any statistically disclosive, individual-level information leave those servers. However, we introduced an interesting methodological novelty that allowed us to do a pooled study despite these restrictions. This means that the final result that we ended up with is identical to what we would have got if the data all started out in the same location. We were able to do this because of the target trial emulation study design that we used. So, amazingly, it is possible to do a pooled analysis across multiple separate datasets that controls very carefully for individual level characteristics, without actually having to share any individual-level information!


<h3> What could be causing negative vaccine effectiveness? </h3>

One possibilty is that it is behavioural. So people who get vaccinated might be more likely to behave in ways that put them at greater risk of infection. For example, at various points during the pandemic, vaccinated people have been subject to fewer restrictions on movement than unvaccinated people. On the other hand, it could just as well go the other way - unvaccinated people may be less risk averse when it comes to the possibility of being infected, and thus may have behaved in ways that put them at greater danger of contracting COVID-19.

It is also possible that naturally-acquired immunity is more robust than vaccine-induced immunity. A <a href="https://doi.org/10.1093/ije/dyac199" target="_blank"> study</a> from Israel found that vaccinated individuals had a 13-fold increased risk of infection compared to previously infected individuals. 

A final possibility is that this is all just a consequence of the fact that the protection offered by the vaccine is relatively short-lasting. For example, imagine that I had two cohorts of similar individuals, and vaccination offered 100% protection against infection for a short period of time. The first cohort receives a dose of vaccine on day 0, while the second cohort receives a dose of vaccine on day 30. One would intuitively expect that the first cohort would initially have fewer severe COVID-19 outcomes, but then at some point the second cohort would do better. Now instead of vaccinating the second cohort, let's have them contract COVID-19. And instead of it happening on day 30, let's sprinkle it around randomly in time, but initially occurring at a higher rate than in the vaccinated group. Finally, let's assume that the vaccine is effective but not perfect for a short period of time, and naturally-acquired innoculation is as immunologically effective (or better) than the vaccine. One would still expect something qualitatively similar; the first cohort would have fewer events intially, then subsequently the second cohort would do better because those people who contract and recover from COVID-19 are naturally innoculated.

By the way I should say that our study is not the only one to find negative vaccine effectiveness.

<h3> What are the implications? </h3>

If negative vaccine effectiveness is largely explained by behavioural factors, then it might be possible to curtail it with a public information campaign aimed at making sure vaccinated individuals continue to observe precautions against COVID-19. On the other hand, I do think that one of the major incentives to get the vaccine is so that one can return to normal behaviour. I personally am not convinced that the explanation for negative vaccine effectiveness is behavioural, and even if it was I am skeptical about our ability to do anything about it. 

If negative vaccine effectiveness cannot be significantly curtailed, then it raises some very interesting policy questions. Vaccines still have utility, but what is their proper role in world where COVID-19 is endemic? For example, if vaccine doses could be timed so that the period where negative vaccine effectiveness would kick in happens towards the end of a wave of infections, it may be be possible to provide significant long-term protection by offering a precisley-timed, recurring regimen of COVID-19 vaccines. However, I don't really have much confidence in our ability to sufficiently accurately forecast future waves of infections in a way that would allow us to usefully implement such a scheme, unless COVID-19 becomes a seasonal illness like flu.

The other main utility offered by COVID-19 vaccines is 'flattening the curve'. That is, spreading the case load over time so that our healthcare services are not overwhelmed and can offer better treatment. This could be worthwhile, though again it would require forecasting ability that so far has proven elusive to us.

The final question is whether all of this is worth it. Mass COVID-19 vaccinations are expensive, and it is not clear how beneficial it is. It seems quite possible that there are far more cost-effective ways to preserve human life. In particular, I think in our revolutionary fervour for vaccines, we may have neglected a cheaper and easier win in the form of anti-viral and monoclonal antibody treatments.


