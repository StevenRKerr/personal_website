---
layout: post
title: Loop quantum gravity, or lattice quantum gravity?
---

<p>{{ page.date | date_to_string }}</p>

In this post, I'm going to give a brief critical overview of loop quantum gravity, the field that I worked in during my time in physics. A fairly strong understanding of physics is assumed.


<h3> The ADM formalism </h3> 

Loop quantum gravity is an attempt at canonical quantisation of Einstein's general relativity. Thus the starting point is constructing a Hamiltonian. In a flat spacetime that's easy, but on a general spacetime manifold it's not so easy because it requires one to define a time coordinate. The <a href="https://en.wikipedia.org/wiki/ADM_formalism" target="_blank"> ADM formalism</a> addresses this by assuming that spacetime is <a href="https://en.wikipedia.org/wiki/Foliation" target="_blank"> foliated</a>. Roughly this means that our spacetime manifold \\( M \\) is decomposed into a family of spacelike hypersurfaces \\( \\Sigma_t \\) labelled by a timelike coordinate \\( t\\). Spacelike means that any pair of points on \\( \Sigma_t \\) are spacelike separated - their spatial and temporal separation is such that light could not travel between them. There are in general many possible foliations of \\( M \\) that should all be 'equally as good' as each other. 

With a time coordinate in hand, we can now define the Hamiltonian in terms of the metric \\( g_{ij} \\) on the 3-dimensional spacelike hypersurfaces and its conjugate momentum \\( \pi_{ij} \\). The Hamiltonian thus constructed consists of two parts: the Hamiltonian constraint, and the (spatial) diffeomorphism constraint. 


<h3> The Wheeler-DeWitt equation </h3> 

The next step in canonical quantisation is to replace the canonical variables with operators acting on a suitable space of functionals. Because we are working with a field theory, \\( \hat{\pi}_{ij} \\) will be a <a href="https://en.wikipedia.org/wiki/Functional_derivative" target="_blank"> functional derivative</a>. If \\( F \\) is a functional with argument \\( f \\), the functional differential can be defined as follows

$$ \delta F[f][\phi] = \left[ \frac{d}{d \epsilon} F[f + \epsilon \phi]  \right]_{\epsilon = 0}$$.

This is the functional analysis equivalent of \\( dx \\) in vanilla calculus. From here we define the functional derivative as

$$ \frac{\delta F[f]}{f(y)} = \delta F[f][\delta_y] $$,

where \\( \delta_y(x) = \delta(x-y) \\) is the <a href="https://en.wikipedia.org/wiki/Dirac_delta_function" target="_blank"> Dirac delta function</a>. 

You will notice that every time we take a functional derivative, we get a factor of a delta function. This is a problem. The Hamiltonian is second order in the canonical momenta \\( \hat{\pi}_{ij} \\), which leads to singularities arising from the accumulated delta functions.

Really what's happening here is that we started off doing something that isn't mathematically kosher. When we promote fields to operators, really they are operator-valued <a href="https://en.wikipedia.org/wiki/Distribution_(mathematics)" target="_blank"> distributions</a>. It turns out that it is <a href="https://en.wikipedia.org/wiki/Distribution_(mathematics)#Operations_on_distributions" target="_blank"> not at all clear how to sensibly define multiplication for such objects</a>. And yet our Hamiltonian multiplies them footloose and fancy-free. 

These are problems that are generically encountered when attempting to canonically quantise any non-trivial quantum field theory. It is the reason that <a href="https://en.wikipedia.org/wiki/Wightman_axioms#Existence_of_theories_that_satisfy_the_axioms" target="_blank"> there is no known example of a mathematically well-defined interacting quantum field theory in 4 dimensions</a>.

If one is willing to work on a spacetime lattice, then this issue can be avoided. Lattice quantum field theory is in fact a completely consistent, mathematically well-defined, non-perturbative quantisation method. But we'll come back to that later.


<h3> The Ashtekar variables </h3> 

Ok so let's say we are really determined to ignore the fact that we are not doing meaningful maths anymore. It turns out that you can do some manipulations on the Wheeler-DeWitt equation that maybe looks like progress.

The <a href="https://en.wikipedia.org/wiki/Ashtekar_variables" target="_blank"> Ashtekar variables</a> consist of a complex-valued field that looks like an \\( SU(2) \\) connection. It turns out that in terms of these new variables, the Hamiltonian becomes (up to a factor we can ignore) polynomial in the canonical variables. Now, as per the previous section, polynomials involve multiplication which is still not generally well-defined for operator-valued distributions. However, at least the most egregiously non-polynomial factors like square roots of deteminants no longer make an appearance. This development sparked a wave of excitement which really marks the start of the entire loop quantum gravity research programme.


<h3> Thiemann's trick </h3> 

Unfortunately, because the canonical variables are now complex-valued, the theory is a complex version of general relativity. Classically it is easy to impose reality conditions that recover real general relativity. However, in the quantum theory it's not so easy and so far no one has been able to do it. This led to people giving up on the Ashtekar variables after a few years. 

Enter Thomas Thiemann. He figured out a way of writing the Hamiltonian in terms of Poisson brackets involving the connection and the volume. With this trick, he did not have to resort to the problematic complex-valued variables, and once again it looked like maybe progress could be made.


<h3> The loop representation </h3> 

Normally the operators defined from the canonical variables are taken to act on a space of wavefunctions that are functionals of the fields. It turns out that no matter if you use the Ashtekar variables or Thiemann's trick, sensibly defining the Hamiltonian constraint on this space remains difficult and perhaps impossible. That's probably because we chose to ignore the fact that we're not really doing maths some time ago and ploughed ahead anyway.

In order to overcome this difficulty, the next ingredient in the loop quantum gravity recipe is the loop representation. Instead of working with connections, we work with <a href="https://en.wikipedia.org/wiki/Holonomy" target="_blank"> holonomies</a> associated with the connection, and their corresponding conjugate variable called 'flux vectors'. Because the connection lives in \\( SU(2) \\), it turns out that the wavefunctions coincide with Penrose's old idea of <a href="https://en.wikipedia.org/wiki/Spin_network" target="_blank"> spin networks</a>. 

Now we need to define an inner product to get a proper Hilbert space. Spin networks are defined by graphs, and it turns out that in order to preserve diffeomorphism invariance, the inner product more or less has to be defined so that its action on two spin networks is zero unless their underlying graphs coincide. The Hilbert space thus constructed does not have a countable basis, which is a big departure from standard quantum theory. It is relatively straightforward to define the actions of holonomy and flux vector operators on states in this space. 

<h3> Imposing constraints </h3> 

We have to impose the spatial diffeomorphism constraint and the Hamiltonian constraint to get to the physical Hilbert space. It turns out that in our candidate Hilbert space above, the diffeomorphism constraint operator can't be defined, and even if it could, it wouldn't contain any diffeomorphism invariant state aside from the trivial wavefunction. This is because a diffeomorphism is equivalent to moving the spin network around on the manifold \\( M \\).

In order to get around this difficulty, the candidate Hilbert space has to be drastically enlarged to allow states to be constructed that are something like 'averages' of spin networks over states related by diffeomorphisms. If that sounds like it's probably not well-defined, that's because it probably isn't. It appears that there is no real consensus on how to construct this space properly. It is also not known whether it will have a countable basis.

Ok so that's the diffeomorphism constraint, how about the Hamiltonian constraint? First you have to define a suitable quantum operator, and it turns out that is a complete nightmare. I won't go into the details, partly because I don't entirely know them, but mostly because I don't think it's that interesting. If you're up for it, <a href="#1"> [1]</a> gets into more of the nitty gritty. The upshot is that a large number of contrived choices need to be made in order to even make symbolic process. And even then, a large number of ambiguities remain. In particular, it appears necessary to restrict the space that the Hamiltonian constraint acts on to a particular 'habitat', for which there may be an infinite number of candidate choices. It turns out too that the Hamiltonian and diffeomorphism constraints don't play well together. If you proceed 'naively' the action of the Hamiltonian constraint can map a diffeomorphism invariant state onto one that isn't. 

The whole thing ends in such a huge mess that not a single physical eigenstate of the Hamiltonian constraint is known. In addition, because of the extraordinary complexity of the Hamiltonian and diffeomorphism operators, it is not known whether the quantum constraint algebra closes. This is a basic requirement for any theory to be consistent.


<h3> Spin foams </h3> 

As long ago as the early 2000's, the situation on the canonical quantisation side seemed hopeless enough that many people in the loop quantum gravity community had instead turned to path integral approaches, hoping they might provide a way out. To this end, various attempts were made to define a partition function for quantum gravity, which all ultimately rest on introducing a discretisation of spacetime - usually a <a href="https://en.wikipedia.org/wiki/Triangulation_(geometry)" target="_blank"> triangulation</a>. If you start out with topological quantum field theory (TQFT), the partition function is naturally independent of the triangulation you choose, and people like that because it has diffeomorphism symmetry as required by general relativity. However, TQFTs inevitably do not have local degrees of freedom, because those degrees of freedom would certainly be sensitive to the local geometry of spacetime. On the other hand, general relativity does have local degrees of freedom. As soon as you allow for local degrees of freedom, the triangulation independence is lost, and you are left in a situation that is basically identical to lattice quantum field theory. That is, the theory depends on the particular spacetime discretisation you choose.


<h3> Conclusion </h3> 

Let me try and sum up the history of loop quantum gravity. We started out with the Ashtekar variables, which seemed to make progress on making sense of the Wheeler-DeWitt equation. However, they were abandoned because reality conditions could not sensibly be imposed in the quantum theory. Our next attempt at making sense of the Wheeler-DeWitt equation was to use Thiemann's trick. Seemingly the only way to make 'progress' in the resulting quantum theory is to switch to the loop representation. This leads to hideously complicated and perhaps ill-defined forms for the Hamiltonian and diffeomorphism constraints and the space that they are meant to act on. The theory is riddled with a large number of ambiguities and artifical choices, and thus far it has not yielded anything physically intelligible. From there, we moved on to the spin foam approach, which is functionally indistinguishable from lattice quantum field theory.

In the process, the following issues remain unsolved
- It is not known whether general relativity is recovered in the classical limit of loop quantum gravity.
- It is not known whether a suitable quantum constraint algebra can be defined that is closed, and therefore whether the quantum theory will be independent of arbitrary choices of coordinates. 
- The candidate operators and Hilbert spaces that do exist may not be well-defined, and even if they are, their definition is plagued by a large number of ad-hoc choices and ambiguities. 
- It is not known whether there is any connection between loop quantum gravity and spin foam approaches.

To me, loop quantum gravity looks like a long series of mashing square-shaped pegs into round holes and ignoring the wreckage that ensues. The entire thing is ugly, contrived and fails to make any tangible progress on the subject of quantum gravity. After 40 years of hammering away at this, it appears that the best the field has to offer is something that is really just a variant of lattice quantum field theory. But the whole motivation for doing any of this in the first place was to avoid perceived shortcomings of lattice quanum field theory!

Ok, it's easy for me to get on my historically retrospective high horse. I will say this about loop quantum gravity; I think it was worth a shot. But I do more or less consider it a failed research programme. It seems like most of its biggest proponents have quietly moved on to other things. I found that the field also has an unfortunate tendency to oversell itself. You would think the above laundry list of outstanding issues would call for a touch of humility and self-awareness. I didn't see much of that when I worked in the field. I get that the people who dedicate their professional lives to a particular theory are inevitably going to be its biggest cheerleaders. But for young graduate students, the mind-boggling complexity of high energy theoretical physics means that it's almost impossible to judge the merits of a field before having worked in it for several years. And by that time you've probably got intellectual Stockholm syndrome anyway. Maybe the self-aggrandisement of loop quantum gravity is a counter-reaction to the ideological hegemony of string theory and the revolutionary fervour of its adherents. But if that's the case, I just wish everyone would get a grip. I guess that woudn't leave them with much content to write papers about though.


<h3>  References </h3> 

<span id="1"> <b>1. </b> </span> Nicolai H, Peeters K, Zamalkar M. <a href="https://arxiv.org/abs/hep-th/0501114" target="_blank"> Loop quantum gravity: an outside view</a>.
