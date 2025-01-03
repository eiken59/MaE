#import "template.typ": *

#show: main_document.with(
  title: [
    Intermediate Macroeconomics
  ],
  subtitle: [],
  abs: [
    This is a summary note of the course \"ECO_2F002_EP Intermediate Macroeconomics\" instructed by Dr. Mehdi SENOUCI and Dr. Gauthier VERMANDEL at École polytechnique in the first semester in 2024.
  ],
  pref: [
    The following content mostly follows the lecture notes provided by the instructors, but figures are mainly re-produced; there are also some personal remarks.
    
    The texts that are *bold* are indicating keywords, while the texts that are _italic_ are indicating new nouns. If you see a #text(fill: rgb(0, 0, 255), "blue") text, that means it is a link; you can click it and go to its place.

    // The last section (@ps) is about problem sets. I copied the majority of the answers as well as figures in files given by the instructors, Dr. Mehdi SENOUCI and Dr. Gauthier VERMANDEL, and the TA, PENG Lanxin.
  ]
)

= The Solow Model <solow>

Kaldor in 1961 published "Capital Accumulation and Economics Growth," in which he stylized that there are five facts in processes of economics growth,
+ output per worker grows at a roughly constant rate that does not diminish over time (roughly $2%$),
+ capital per worker grows over time,
+ the $"capital"\/"output"$ ratio is roughly constant (everything stays in the same window),
+ the rate of return to capital is roughly constant,
+ shares of capital and labor in net income are roughly constant, and
+ appreciable differences in the rate of growth of labor productivity and of total output in different societies. (Note: this is of non-regularity.)

#newpar The Solow model, proposed by Solow in 1956, replicates the first five Kaldor facts with minimal assumptions.

== The Production Function

We say that a single consumption $Y(t)$ of good (output) is being produced by number $L(t)$ of labors and capital $K(t)$ via a production function in the form of $ Y(t)=F_t (K(t), L(t)). $
The general scenario is that the production function $F_t$ might change over time due to technical change. Solow eliminates this concern by specifically assuming $ Y(t) = F(K(t), A(t) L(t)). $ This function $F$ need to some conditions, which we will discuss later.

The function $A(t)$ captures "*labor-augmenting* technological progress." Overtime, labor becomes more productive. That is, when $A(t)$ increases, if we fix the amount $L(t)$ of labors-hours, there will be more output produced.

We assume that all population is comprised of labor force with no unemployment. In addition, the economy is closed without government. The same final good is used for either consumption $C(t)$ or investment $I(t),$ i.e., $Y(t) = C(t) + I(t).$

Below are the conditions that $F:RR^2 -> RR$ needs to satisfy.

+ To be strictly positive and strictly diminishing marginal products $M P_k$ and $M P_L$. That is, 
  $
    (partial F)/ (partial K)>0, quad (partial F)/ (partial L)>0, quad (partial^2 F)/ (partial K^2)<0, space space "and" space space (partial^2 F)/ (partial L^2)<0.
  $
+ Inputs are essential. That is, $F(0, L) = 0 space space "and" space space F(K, 0)=0.$
+ To be homogeneous of degree one in $K(t)$ and $L(t).$ That is, 
  $
    F(alpha dot.c K(t), A(t) (alpha dot.c L(t))) = alpha dot.c F(K(t), A(t) L(t)). 
  $

#newpar There is another underlying assumption that fixed-quantity inputs (such as land or natural resources) are assumed to be unimportant, or replaceable by man-made capital.

The most comprehensive production function is the constant elasticity of substitution production function (CES production function), 
$
  Y(t) = ( alpha dot.c (K(t))^((sigma-1)/sigma)+(1-alpha)(A(t) L(t))^((sigma-1)/sigma) ) ^(sigma/(sigma-1)).
$ <solow_ces>

#newpar We can derive many other productions functions via the constant elasticity of substitution production function. In @solow_ces, if we take $sigma -> 1,$ we will get the Cobb-Douglas production function, 
$
  Y(t) = K(t)^alpha (A(t)L(t))^(1-alpha);
$ if we take $sigma -> 0,$ we will get the Leontief production function, 
$
  Y(t)= min{alpha dot.c K(t), (1-alpha) dot.c A(t)L(t)};
$ if we take $sigma -> infinity,$ we will get the linear production function, 
$
  Y(t)=alpha dot.c K(t)+(1-alpha) dot.c A(t)L(t).
$

== Evolution of Inputs

We assume, by Kaldor facts, labor $L(t)$ and productivity $A(t)$ grow at constant. That is, 
$
  g_L (t) := (dot(L)(t))/L(t) = n >= 0 quad "and" quad g_A (t) := (dot(A)(t))/A(t) = g >= 0.
$ In previous equations, $g_X (t)$ denotes the _growth rate_ of variable $X(t).$ Note that the _rate of change_ of $X(t)$ is $dot(X)(t).$ Do not be confused by these two nouns.

Aside from these assumptions, we say that a fraction $s in (0, 1]$ of output is invested. That is, 
$
  I(t)=s dot.c Y(t) quad "and" quad C(t)=(1-s) dot.c Y(t).
$

In addition, capital depreciates at a rate of $delta >= 0.$

Hence, the dynamics of capital stock is given by 
$
  dot(K)(t)=s dot.c Y(t) - delta dot.c K(t),
$ <solow_dynamics_of_capital_stock>
in which suggests the rate of change is increased by investment and is decreased by depreciation.

== The Balanced Growth Path

The _balanced growth path_ (BGP) is the situation when all variables grow at constant rates. Over time, the economy tends to converge to the balanced growth path.

Not only they grow at constant rates, output and capital grow at the same rate as well. Using @solow_dynamics_of_capital_stock, we have 
$
  (dot(K)(t))/K(t)=s dot.c (Y(t))/(K(t))-delta := c_0,
$ <solow_bgp_derivation> where $c_0$ is merely a constant that we set to follow the assumption "all variables grow at constant rates." Hence, working on the second equation in @solow_bgp_derivation, we have 
$
  Y(t)/K(t)=(c_0+delta)/s.
$
Log-differentiating the equation above, since the right-hand side of the equation is a constant, we obtain 
$
  g_Y (t) - g_K (t) = 0.
$ <solow_same_growth_rate>

We first set variables to be per unit of efficient labor,
$
  k(t) := K(t) / (A(t)L(t)) quad "and" quad y(t) := Y(t) / (A(t)L(t)).
$
Using constant returns to scale, we have 
$
  y(t)=&Y(t) / (A(t)L(t))\
  &=F(K(t), A(t)L(t)) / (A(t)L(t))\
  &=F(k(t), 1)\
  &:=f(k(t)),
$ <solow_intensive_form>
where @solow_intensive_form is called the _intensive form._

Out goal is to characterize the evolution of $k(t).$ Since 
$
  k(t)=K(t) / (A(t)L(t)),
$
we log-differentiate and have 
$
  (dot(k)(t))/k(t) = (dot(K)(t))/K(t) - (dot(A)(t))/A(t) - (dot(L)(t))/L(t), 
$
where 
$ 
  (dot(A)(t))/A(t)=g quad "and" quad (dot(L)(t))/L(t)=n
$ 
by assumption. Using @solow_dynamics_of_capital_stock, we further have 
$ 
(dot(k)(t))/k(t) &= (s dot.c Y(t) - delta dot.c K(t))/K(t) - g - n\
&=s dot.c (y(t))/(k(t)) - delta - g - n.
$
Therefore, we have the _law of motion of capital per unit of efficient labor,_ 
$
  dot(k)(t)=s dot.c y(t)-(delta + g + n) dot.c k(t). 
$ <solow_dynamics_efficient_labor> 

#newpar The rate of change in $k(t)$ is the difference of two terms:
+ how much the economy actually saves and
+ how much the economy needs to save to keep $k(t)$ constant.

#newpar The economy needs to save _more_ in order to maintain $k(t)$ if the following happens:
+ the greater is the rise in labor productivity (higher $g$), since more productive labor needs to be endowed with more capital,
+ the more rapid is population growth (higher $n$), since more workers need to be endowed with capital, or
+ the more quickly the existing capital depreciates (higher $delta$).

== The Steady State

We say that the economy reaches a _steady state_ if $dot(k)(t)=0$ after some time, so that, from @solow_dynamics_efficient_labor, we have 
$
  s dot.c f(k(t)) = (delta + g+ n)dot.c k(t).
$

#newpar Let $k_s$ denote the steady-state capital per effective labor if there is any. When we are writing down a solution, we have to ask some questions.
+ Does the solution exist?
+ If it exists, is it unique?
+ Does the economy converge to the steady state?

#figure(caption: "The steady state at the intersection of "+$y = s dot.c f(k(t))$+" and "+$y = (g+n+delta)dot.c k(t).$)[
  #image("figures/solow_steady_state.png", width: 43%)
] <solow_steady_state>

#newpar There are, strictly speaking, two steady states in @solow_steady_state, $(0, 0)$ and $(k_s, y_s).$ However, the trivial steady state at the origin is unstable. Consider @solow_dynamics_of_capital_stock, the first derivative (speed) $dot(k)(t)$ is determined by the difference $s dot.c f(k(t))-(g+n+delta)dot.c k(t)$ of two functions. Thus, when $f(k(t))>(g+n+delta)dot.c k(t),$ we will have $dot(k)(t)>0;$ when $f(k(t))<(g+n+delta)dot.c k(t),$ we will have $dot(k)(t)<0.$ Hence, we can see that on $(0, k_s),$ a point will move horizontally to its right since $dot(k)>0;$ conversely, on $(k_s, infinity),$ a point will move horizontally to its left since $dot(k)<0.$

We have to make sure that the non-trivial steady state exists. If the function $f$ satisfy the _Inada conditions,_
$
  lim_(k->0)f '(k)=infinity quad "and" quad lim_(k->infinity)f '(k)=0,
$
then the non-trivial steady state must exist. The first equation ensures that the slope near $0$ must be greater than $(g+n+delta);$ the second equation ensures that the slope of the function $f$ must be less than $(g+n+delta),$ so that there will be an intersection.

We will have *only one* non-trivial solution since $f$ is concave (due to diminishing $M P_K$). Most importantly, the economy converges to the non-trivial solution.

== Convergence to the Steady State

If the initial state of capital is less than the steady state, capital will accumulate.

#figure(caption: "Accumulation of capital")[
  #image("figures/solow_accumulation_of_capital.png", width: 43%)
]

#newpar More importantly, the growth will slow down as the economy gets closer to $k_s$ from the left.

There must be some impact of the change in one of the parameters, $s, g, n,$ or $delta.$ We have two conceptually distinct but closely related questions.
+ (_Comparative statics_) How would the steady state *shift*?
+ (_Transitional dynamics_) How the economy will *move* there?

We will focus on the change in the saving rate $s.$ The saving rate is the result of the households' choice, and it may be affected by the government policy.

=== Comparative Statics

Suppose the economy is initially at the steady state $k_s.$ As some time $t_0,$ saving rate permanently increases from $s_0$ to $tilde(s).$ The investment $s dot.c Y(t)$ exceeds break-even investment, this suggests the increment of $k.$ Hence, the economy moves to the new steady state with higher $k$ and $y,$ say at $(tilde(k_s), tilde(y_s)).$ Evidently, steady-state output per efficient labor increases. See @solow_rise_in_s. However, does the growth rate become permanently larger? The answer is negative. Once the economy reaches the new steady state, capital per capita $k$ and output per capita $y$ still grow at a rate $g.$


#figure(caption: "The rise in "+$s$+" increases "+$k_s$+" and "+$y_s.$)[
  #image("figures/solow_rise_in_s.png", width: 43%)
] <solow_rise_in_s>


=== Transitional Dynamics (Illustrations)

The movement of capital will take time, but the movement of saving rate is immediate.

#figure(caption: "The time path for the saving rate "+$s.$)[
  #image("figures/solow_time_path_s.jpeg", width: 43%)
]

#figure(caption: "The time path for capital per efficient labor "+$k.$)[
  #image("figures/solow_time_path_k.png", width: 43%)
]

#figure(caption: "The time path for the growth rate of "+$k.$)[
  #image("figures/solow_time_path_growth_rate_k.png", width: 43%)
]

#figure(caption: "The time path for the logarithm of output per capita "+$ln y.$)[
  #image("figures/solow_time_path_logy.jpeg", width: 43%)
]

== The Golden Rule

In terms of welfare, what matters is per-capita consumption rather than per-capita output. How can we achieve the maximum consumption per efficient labor in the steady state by adjusting the saving rate? Evidently, it should neither be too high nor too low. (In particular, we have $c=0$ when either $s=0$ or $s=1.$) There is an inverse U-shaped relationship between per-capita consumption $c$ and saving rate $s.$

#figure(caption: "An illustration about the saving rate "+$s^*$+" maximizes "+$c$+" in the steady state.")[
  #image("figures/solow_golden_rule_illustration.png", width: 43%)
]

Analytically, the goal is to find 
$ 
  display(max_(k, s)(1-s)dot.c f(k)) 
$ <solow_golden_rate_maximizee>
under the constraint 
$
  s dot.c f(k) = (g+n+delta)dot.c k. 
$ <solow_golden_rate_constraint> 

Plug @solow_golden_rate_constraint into the function in @solow_golden_rate_maximizee, we just need to maximize the function 
$
  tilde(f)(k)=f(k)-(g+n+delta)dot.c k. 
$
We look for a point $k$ such that $tilde(f) '(k)=0.$ It is clear that the point $k^*$ such that $f '(k^*)=g+n+delta$ is what we are looking for. Hence, the _golden-rule saving rate_ is found as 
$
  s^*=((g+n+delta)k^*)/(f(k^*)).
$
See @solow_golden_rule_saving_rate for visualization.

Depending on whether the economy initially operated below or above the golden-rule saving rate, the rise in the saving rate $s$ may either *increase* or *reduce* the steady-state consumption per efficient labor.

#figure(caption: "The special "+$k^*$+" maximizes the distance between "+$y = f(k)$+" and "+$y = (g+n+delta)dot.c k.$)[
  #image("figures/solow_golden_rule.jpeg", width: 43%)
] <solow_golden_rule_saving_rate>

The immediate impact of a rise in $s$ is *always* a drop in $c.$ However, as the economy moves to the new steady state with higher $k_s,$ the consumption $c(t)=(1-s)dot.c f(k(t))$ gradually increases.

If initially the economy saves too much, then the reduction in $s$ will increase $c$ both in the short run and in the long run. When $s>s^*,$ the economy is called _dynamically inefficient._

When the saving rate $s$ increases until a value $s_0<s^*,$ there will be an immediate decrease in consumption (from originally $c_s$ to $c '$), but the consumption will gradually accumulate to a higher level ($tilde(c_s)$).

#figure(caption: "The time path for "+$c$+" when "+$s$+" increases and "+$s_0<s^*.$)[
  #image("figures/solow_time_path_c_when_s_increases_with_less_than_gr.jpeg", width: 43%)
]

On the contrary, when the saving rate $s$ increases until a value $s_0>s^*,$ there will be an immediate decrease in consumption (from originally $c_s$ to $c '$) as well, but the consumption will converge to a lower level ($tilde(c_s)$).

#figure(caption: "The time path for "+$c$+" when "+$s$+" increases and "+$s_0>s^*.$)[
  #image("figures/solow_time_path_c_when_s_increases_with_greater_than_gr.jpeg", width: 43%)
]

== Conclusion

This model replicates all the first five Kaldor facts, but it is not at ease with the sixth Kaldor fact except if we invoke different productivity growth patterns across countries. It is indeed a good guide to time series, but a bad guide to cross-section since technology (non-rival) should not stop at national borders.

There are ways to enrich the model, including endogenizing the growth rate $g$ (the endogenous growth theory, the next section) and endogenizing the saving rate $s$ by introducing households' intertemporal optimization (the optimal growth model or the Ramsey–Cass–Koopmans model).

= The Endogenous Growth Theory

The Solow model successfully theorize balanced growth by *exogenous* (to be a parameter in the model) and *steady* technical change, i.e., $g_A (t) = g.$ The increment in $A$ might come from innovation by chance (e.g., tarte Tatin) or purposeful innovation. Moreover, innovation carries a lot of economic value: higher productivity means higher GDP per capita. Knowledge (technology) $A$ is a club good, which is non-rival and partly excludable. The use of knowledge by on does not preclude its use by anyone else, and those who did not contribute to its accumulation can still benefit from it.

The endogenous growth theory starts, on the contrary to the Solow model, with the idea of endogenizing productivity growth $g_A (t).$ There are many models, and we will cover
+ learn-by-doing, which states that technical change is a side-effect of some economic activities, and
+ investment in research and development, which is more often used nowadays.

== The Learn-by-Doing Model <endo_lbd>

As we stated previously, this model consider technical change not a result of deliberate efforts but a *side-effect* of some economic activities.

We assume that all inputs are now engages in goods production with the Cobb-Douglas production function 
$
  Y(t)=(K(t))^alpha (A(t)L(t))^(1-alpha). 
$ <endo_lbd_production_function>
In addition, the stock of knowledge 
$
  A(t)=B dot.c (K(t))^phi.alt,
$ <endo_lbd_knowledge> 
is a function of the stock of capital, where $B$ and $phi.alt$ are positive constants. Plug @endo_lbd_knowledge into @endo_lbd_production_function, we have $ 
  Y(t)=B^(1-alpha)(K(t))^(alpha + phi.alt dot.c (1-alpha)) (L(t))^(1-alpha).
$

#newpar We assume $delta=0$ to simplify mathematical analysis. Thus, the growth 
$
  dot(K)(t)=s dot.c Y(t)
$ <endo_lbd_growth_assumption>
of $K(t)$ becomes some fraction of the total production, and we obtain the dynamics of $K(t)$
$
  dot(K)(t)=s dot.c B^(1-alpha)(K(t))^(alpha + phi.alt dot.c (1-alpha)) (L(t))^(1-alpha).
$ <endo_lbd_dynamics_of_capital_stock>
We further consider a _knife-edge condition,_ which is a specific case, when $n=0$ and $phi.alt = 1.$ Then, $L(t)$ becomes a constant $L$, and the production function becomes 
$
  Y(t) &= B^(1-alpha) K(t) L^(1-alpha)\
  &= (B L)^(1-alpha) K(t),
$
which is linear in $K(t).$ Letting $b$ denotes the constant $(B L)^(1-alpha)$ under this knife-edge condition, we will see that, from @endo_lbd_growth_assumption, the growth rate of capital becomes 
$
  (dot(K)(t))/(K(t))=s b.
$
This suggests that saving rate affects long-run growth.

== The Model of Investment in Research and Development

In @endo_lbd, we considered the accumulation of knowledge is a side-effect of economic activities. In this model, we instead consider the accumulation of knowledge the result of purposeful activities on behalf of innovative firms. Thus, it is reasonable to assume that there is a fraction $a_L$ of labor is employed in research and development, and the rest $(1-a_L)$ of labor is employed in production.

=== A Model without Capital

For simplicity, we first assume that there is no capital. We will put capital back later. The production is given by 
$
  Y(t)=(1-a_L)dot.c A(t)L(t).
$ <endo_ird_woc_production_function>
We assume that labor force grows at a constant rate $ g_L (t)=n>0. $ Notice that from @endo_ird_woc_production_function, log-differentiating yields $ g_Y (t) = g_A (t)+n; $ dividing both sides by $L(t)$ and then log-differentiating yield $ g_(Y/L) (t) = g_A (t). $ We assume the dynamics of knowledge to be 
$
  dot(A)(t) = B dot.c (a_L dot.c L(t))^gamma (A(t))^theta,
$ <endo_ird_woc_dynamics_knowledge>
where $B$, $gamma$, and $theta$ are positive constant. The power $gamma$ measures the extent of decreasing marginal returns to labor in research and development. The dynamics has the "standing on the shoulders of giants" effect when $theta > 1$ and has the "fishing-out" effect when $theta < 1;$ we can imagine that earlier fundamental research facilitates subsequent discoveries when $theta > 1$ and that obvious discoveries are made first, then subsequent ideas become increasingly difficult to discover when $theta < 1.$ The later is more to be assumed nowadays.

From @endo_ird_woc_dynamics_knowledge, we divide both sides by $A(t)$ and obtain 
$
  (dot(A)(t))/(A(t)) = B dot.c (a_L dot.c L(t))^gamma (A(t))^(theta-1).
$ <endo_ird_woc_growth_knowledge_derive>
We use the substitution $display(g_A(t)=(dot(A)(t))/(A(t)))$ to show a magic trick. We log-differentiate @endo_ird_woc_growth_knowledge_derive and have 
$
  (dot(g_A)(t))/(g_A (t)) &= gamma dot.c (dot(L)(t))/(L(t)) + (theta - 1) dot.c (dot(A)(t))/(A(t))\
  &= gamma n + (theta-1) dot.c g_A (t)\
  dot(g_A)(t) &= gamma n dot.c g_A (t)+(theta-1) dot.c (g_A (t))^2,
$ <endo_ird_woc_quadratic>
which is a quadratic expression of $g_A (t).$ Thus, the dynamics of $g_A (t)$ can be represented by a phase diagram (a variable $X$ on the $x$-axis and its derivative with respect to time $dot(X)$ on the $y$-axis). The convergence crucially depends on the value of $theta.$ We first solve @endo_ird_woc_quadratic. If $theta != 1,$ the solutions to the quadratic equation 
$
  gamma n dot.c g_A (t)+(theta-1) dot.c (g_A (t))^2 = 0
$
are $g_A (t)=0$ or $display(g_A (t)= (gamma n) / (1 - theta)).$

When $theta < 1,$ the graph of $dot(g_A)(t)$ will be a parabola with a positive leading coefficient; the growth of knowledge will converge to a certain level $star(g_A).$

#figure(caption: [When $theta < 1,$ the growth $g_A (t)$ of knowledge converges to $star(g_A).$])[
  #image("figures/endo_ird_woc_theta_less_than_1.png", width: 43%)
] <endo_ird_woc_theta_less_than_1>

#newpar When $theta > 1,$ the graph of $dot(g_A)(t)$ will be a parabola with a negative leading coefficient; the growth is explosive.

#figure(caption: [When $theta > 1,$ the growth $g_A (t)$ of knowledge diverges ($g_A (t) -> infinity$ as $t -> infinity$).])[
  #image("figures/endo_ird_woc_theta_more_than_1.png", width: 43%)
] <endo_ird_woc_theta_more_than_1>

#newpar When $theta = 1,$ the graph of $dot(g_A)(t)$ will be a line with slope $gamma n.$ Since $gamma$ is a positive constant, the growth of knowledge stays constant if and only if $n=0.$

#figure(caption: [When $theta = 1,$ the convergence of growth rate of knowledge depends on $n.$])[
  #image("figures/endo_ird_woc_theta_is_1.png", width: 43%)
] <endo_ird_woc_theta_is_1>

=== A Model with Capital

We use the Cobb-Douglas production function to introduce capital, assuming 
$
  Y(t) = ((1 - a_K) dot.c K(t))^alpha ((1 - a_L) dot.c A(t)L(t))^(1-alpha).
$ <endo_ird_wc_production_function>
Do compare @endo_ird_wc_production_function with @endo_ird_woc_production_function. We keep the assumption that there is no depreciation, and hence 
$
  dot(K)(t) = s dot.c Y(t).
$ <endo_ird_wc_no_depreciation>
We also assume the dynamics of knowledge to be 
$
  dot(A)(t) = B dot.c (a_K dot.c K(t))^beta (a_L dot.c L(t))^gamma (A(t))^theta.
$ <endo_ird_wc_dynamics_knowledge>
Do compare @endo_ird_wc_dynamics_knowledge with @endo_ird_woc_dynamics_knowledge. You will find out that the model without capital is a special version with powers $alpha$ and $beta$ being zero.

We now have two endogenous stock variables, $A(t)$ and $K(t).$ From @endo_ird_wc_no_depreciation, we plug in @endo_ird_wc_production_function and have 
$
  (dot(K)(t))/K(t) &= s dot.c (1 - a_K)^alpha ((1 - a_L) dot.c (A(t)L(t))/K(t))^(1-alpha)\
  &= underbrace(s dot.c (1 - a_K)^alpha (1 - a_L)^(1-alpha), c_K)  ((A(t)L(t))/K(t))^(1-alpha).
$ <endo_ird_wc_growth_capital>
From @endo_ird_wc_dynamics_knowledge, we plug in @endo_ird_wc_production_function and have 
$
  (dot(A)(t))/A(t) = underbrace(B power(a_k, beta) power(a_L, gamma), c_A) dot.c (K(t))^beta (L(t))^gamma (A(t))^(theta-1).
$ <endo_ird_wc_growth_knowledge>

#newpar Log-differentiating @endo_ird_wc_growth_capital and @endo_ird_wc_growth_knowledge, since $c_K$ and $c_A$ are constants, we have 
$
  (dot(g_K)(t))/(g_K (t)) &= (1-alpha) dot.c (g_A (t) + g_L (t) - g_K (t))\
  &= (1-alpha) dot.c (g_A (t) + n - g_K (t)),
$ <endo_ird_wc_ggrowth_capital>
and
$
  (dot(g_A)(t))/(g_A (t)) &= beta dot.c g_K (t) + gamma dot.c g_L (t) + (theta - 1) dot.c g_A (t)\
  &= beta dot.c g_K (t) + gamma n + (theta - 1) dot.c g_A (t).
$ <endo_ird_wc_ggrowth_knowledge>
  
#newpar On the balanced growth path, by definition, $A(t)$ and $K(t)$ grow at constant rates, that means $g_A (t)$ and $g_K (t)$ are constants. Hence, $dot(g_A) (t)=dot(g_K) (t)=0.$ Therefore, in the $(g_A, g_K)$ space, we can draw the graph of $dot(g_K) (t)=0,$ 
$
  g_K = n + g_A
$ <endo_ird_wc_BGP_K>
and the graph of $dot(g_A) (t)=0,$ 
$
  g_K = - gamma / beta dot.c n + (1-theta)/beta dot.c g_A.
$ <endo_ird_wc_BGP_A>

#newpar In order to make @endo_ird_wc_BGP_K and @endo_ird_wc_BGP_A to intersect in the first quadrant, we need to assume $display((1-theta)/beta > 1),$ which means decreasing returns to $A(t)$ and $K(t)$ in research and development. This assumption implies $theta < 1$ immediately. Thus, the following about convergence is natural as we discussed previously.

#figure(caption: [The intersection will be in the first quadrant under the assumption.])[
  #image("figures/endo_ird_wc_global_convergence_growth_rate_A_and_K.png", width: 43%)
] <endo_ird_wc_global_convergence_growth_rate_A_and_K>

#newpar The growth rate will converge to the intersection. We cannot analytically prove this result, but we can use figures with expressions to represent the idea. We will see combining @endo_ird_wc_derivative_growth_capital and @endo_ird_wc_derivative_growth_knowledge do the work with any point in each section (divided by two unparallel lines, 4 sections in total) tends to the intersection $(star(g_A), star(g_K)) := display((((1 + gamma - theta) dot.c n)/(1 - (beta + theta)), ((beta + gamma) dot.c n)/(1 - (beta + theta))))$.

Please see @endo_ird_wc_derivative_growth_capital and @endo_ird_wc_derivative_growth_knowledge along with the following expressions. We use algebra to simplify @endo_ird_wc_ggrowth_capital and @endo_ird_wc_ggrowth_knowledge. The strategy that we fix one but another is because the quadratic term is thorny, and we hence fix it. 

For @endo_ird_wc_ggrowth_capital, we fix a $g_(K_0) > n,$ i.e., we focus on the horizontal line $g_K (t) = g_K_0,$ and have 
$ 
  dot(g_K)(t) &= ((1-alpha) dot.c (g_A (t) + n - g_K_0) dot.c g_K_0\
  &= underbrace((1-alpha) dot.c g_K_0, cal(K)>0) dot.c (g_A + underbrace((n - g_K_0 ), -cal(N)<0))\
  &= cal(K) dot.c (g_A (t)-cal(N))
$ <endo_ird_wc_simplify_ggrowth_capital>
The constant $cal(K) > 0$ since $g_K_0 > n "and" alpha in (0, 1);$ the constant $cal(N) > 0$ follows by assumption $g_(K_0) > n.$

For @endo_ird_wc_ggrowth_knowledge, we fix a $g_A_0>display((gamma n)/(1 - theta)),$ i.e., we focus on the vertical line $g_A (t) = g_A_0,$ and have 
$
  dot(g_A)(t) &= (beta dot.c g_K (t) + gamma n + (theta - 1) dot.c g_A_0) dot.c g_A_0\
  &= underbrace((theta - 1) dot.c (g_A_0)^2 + gamma n dot.c g_A_0, "constant" -Theta<0) + underbrace(beta dot.c g_A_0, Gamma>0) dot.c g_K (t)\
  &= Gamma dot.c g_K (t) - Theta
$ <endo_ird_wc_simplify_ggrowth_knowledge>
The constant $-Theta < 0$ since our assumption $g_A_0>display((gamma n)/(1 - theta))$ implies
$
  0 > gamma n + (theta - 1) g_A_0
$
and thus
$
  (theta - 1) dot.c (g_A_0)^2 + gamma n dot.c g_A_0 &= g_A_0 dot.c (gamma n + (theta - 1) g_A_0)\
  < 0.
$

#figure(caption: [The intersection is at $(cal(N), g_K_0).$ By @endo_ird_wc_simplify_ggrowth_capital, if $g_A < cal(N),$ then $dot(g_K)<0;$ if $g_A > cal(N),$ then $dot(g_K)>0.$])[
  #image("figures/endo_ird_wc_global_convergence_growth_rate_K.png", width: 43%)
] <endo_ird_wc_derivative_growth_capital>

#figure(caption: [The intersection is at $(g_A_0, display(Theta / Gamma)).$ By @endo_ird_wc_simplify_ggrowth_knowledge, if $g_K > display(Theta / Gamma),$ then $dot(g_A)>0;$ if $g_K < display(Theta / Gamma),$ then $dot(g_A)<0.$])[
  #image("figures/endo_ird_wc_global_convergence_growth_rate_A.png", width: 43%)
] <endo_ird_wc_derivative_growth_knowledge>

== The Solow Model with Human Capital

The instructor Dr. SENOUCI did not cover this part in the second lecture. The following content is listed for future reference.

This model features *individual-level productivity* growth. Each individual makes oneself more productive by accumulating human capital.

Consider the Cobb-Douglas production function 
$
  Y(t) = (K(t))^alpha (A(t)H(t))^(1-alpha),
$
where $H(t)$ is _worker's productive services_ or _effective labor._ That is, $H(t)$ stands for the union (sum) raw labor $L(t)$ and human capital $"HK".$ Each worker's $"HK"$ depends on the years of education $E$ with following relation $ H(t) = e^(phi.alt E) L(t), $ where $phi.alt$ is a positive constant. Let $k := display(K / (A H))$ and $y = display(Y / (A H)),$ we will have dynamics $ dot(k) = s y - (n + g + delta) k, $ which is identical to @solow_dynamics_efficient_labor.

=== Impact of a Change in the Years of Education

Assume each person lives for $T$ years, studying for the first $E$ years of one's life and working for the remaining $T-E$ years. How does an increase in $E$ affect output per person?

Let $B(t)$ be the number people born at date $t.$ We assume that the birth rate is with a growth rate $n.$ That is, the ratio of the number $B(t-tau)$ of people born at date $(t-tau)$ to the number $B(t)$ of people born at date $t$ is 
$
  B(t) &= B(t-tau) dot.c e^(n tau).
$

#newpar The total population $N(t)$ at date $t$ is equal to those born in $[t-T, t],$ namely 
$
  N(t) &= integral_0^T B(t-tau)dif tau\
  &= B(t) integral_0^T e^(-n tau)dif tau\
  &= (1-e^(-n T)) / n dot.c B(t).
$ <endo_HK_population_at_t>

Likewise, the number $L(t)$ of workers at date $t$ is equal to those who born in $[t-T, t-E],$ namely 
$
  L(t) &= integral_E^T B(t-tau)dif tau\
  &= (e^(-n E) - e^(-n T)) / n dot.c B(t).
$ <endo_HK_workers_at_t>

Therefore, from @endo_HK_population_at_t and @endo_HK_workers_at_t, the output per person at date $t$ equals 
$
  (Y(t))/(N(t)) &= (Y(t))/(A(t) H(t)) dot.c (A(t) H(t))/(N(t))\
  &= y(t) dot.c (A(t) e^(phi.alt E) L(t)) / N(t)\
  &= A(t) y(t) dot.c (e^(phi.alt E) dot.c(e^(-n E) - e^(-n T))) / (1-e^(-n T))
$ <endo_HK_output_per_person>

=== The Golden-Rule Level of Education

An increase in $E$ has ambiguous effect on the steady-state $display(Y(t) / N(t)).$ It will make workers become more productive, i.e., $H(t)$ increases. However, it will also make workers work for less time, i.e., $T-E$ falls. 

Therefore, there is the golden-rule level $star(E)$ of education that maximizes $display(Y(t) / N(t)).$ To simplify the differentiated function, we differentiate $display((1-e^(-n T))/(A(t)y(t)) dot.c Y(t) / N(t))$ and have 
$
  dif/(dif E)((1-e^(-n T))/(A(t)y(t)) dot.c Y(t) / N(t)) &= dif/(dif E)(e^(phi.alt E) dot.c(e^(-n E) - e^(-n T)))\
  // &= phi.alt dot.c e^(phi.alt E) dot.c(e^(-n E) - e^(-n T)) - e^(phi.alt E) dot.c(n dot.c e^(-n E))\
  &= e^(phi.alt E) dot.c (phi.alt dot.c  e^(-n E) - phi.alt dot.c e^(-n T) - n dot.c e^(-n E)).
$
Since $e^(phi.alt E)>0,$ we set the first derivative to zero, eliminate $e^(phi.alt E),$ and have 
$
  phi.alt dot.c  e^(-n star(E)) - phi.alt dot.c e^(-n T) - n dot.c e^(-n star(E)) &= 0\
  // (phi.alt - n) dot.c e^(-n star(E)) &= phi.alt dot.c e^(-n T)\
  e^(-n star(E)) &= phi.alt / (phi.alt - n) dot.c e^(-n T)\
  -n star(E) &= ln phi.alt / (phi.alt - n) - n T\
  star(E) &= T - 1/n ln phi.alt / (phi.alt - n).
$

== Conclusion

Technological change can be theorized as a side-effect of economic activity or as an investment. We covered a learning-by-doing model, which depicts productivity growth as a side-effect of some rational economic activities, and two models with investment in research and development, which employ specialized workers in the lecture; a human-capital-based model is also referred.

The most up-to-date models involve investment in research and development or are based on human capital—naturally, these models are more complex than what we have covered so far. They feature individually rational decision-making. As Romer explains in 1986 and 1990, firms invest in research and development in the hope of outpacing their competitors, and in pure and perfect competition, no costly research and development is undertaken due to the high costs. Lucas, in 1988, also notes that individuals acquire human capital to increase future labor earnings, although this comes at the expense of reduced earnings today. These models are complex, and we are currently unable to treat them extensively.

= Theory of Consumption <consumption>

We have taken minimal assumptions about consumption; we assumed a constant saving rate $s$ with consumption $ C_t = (1-s) Y_t $ and investment $ I_t = s Y_t. $

We now lay the foundations of the pure neoclassical theory of consumption.

We are interested in the rational allocation of income to consumption *at different rates*. The reason we are doing this is that we want to microfound the macroeconomic demand for consumption in dynamic models.

We want a theory that makes sense of the "Kuznets consumption puzzle:" 
- over the long run, consumption per capita and output per capita have parallel trends, i.e., $C\/Y$ is nearly constant, and
- in the short-run, consumption per capita is positively correlated with output per capita, but less volatile; the change in per-capita disposable income is more than real per-capita consumption.

== The Intertemporal Utility Function

Some consumer lives for $T+1$ periods with $T >= 1.$ We let integers $0, 1, dots, T$ denote those periods. In addition, we use the notation $[0, T]$ to indicate the set ${0, 1, dots, T}.$

The consumer gets utility from consuming $C_t$ at the end of each period $t.$ The utility function $U$ is written as 
$
  U(C_0, dots, C_T) = sum_(t=0)^T beta^t dot.c u(C_t),
$ <consumption_intertemporal_utility_function>
where $beta in (0, 1)$ is called the _subjective discount factor,_ and _instantaneous utility function_ $u:RR^+ -> RR$ is twice continuously differentiable, strictly increasing, and strictly concave.

The form of $U$ in @consumption_intertemporal_utility_function is the only function that satisfies _time consistency._ In addition, $beta in (0, 1)$ ensures that the agent puts more weight on the present than on the future: the future is discounted at a constant rate $beta.$ The lower $beta,$ the more impatient the agent is.

Moreover, strictly concave function $u$ will make the consumer consume at all periods, as indifference curves are convex. 

#figure(caption: [Indifference curves for $T=1$ with $a<U_0<b.$])[
  #image("figures/consumption_indifference_curves_T_equals_1.png", width: 43%)
]

For the instantaneous utility function $u,$ there is a common function called the _constant intertemporal elasticity of substitution_ (CIES) utility in the form of 
$
  u(C) = (C^(1-theta)-1)/(1-theta),
$ <consumption_CIES>
where $theta in RR^+ \\ {1}.$ The constant $theta$ is the intertemporal elasticity of substitution as well as the inverse of the relative risk aversion. Note that the log utility, also known as the Cobb-Douglas utility,
$
  u(C) = ln C
$
is the case for @consumption_CIES as $theta->1.$

Elasticity measures how responsive the quantity demanded or supplied of a good is to changes in its price or other factors. If the price elasticity of demand for a good is high, it means that a small change in price causes a large change in the quantity demanded, often because consumers can easily switch to alternatives. On the contrary, if the elasticity is low, demand is relatively stable, meaning that changes in price have little effect on the quantity demanded, often because the good is a necessity or lacks close substitutes.

== The Intertemporal Budget Constraint

The goal of the agent is to maximize the intertemporal utility function $U.$

Assume that the agent earns an exogenous _stream of income_ $(Y_t)_(t=0)^T$ with $Y_t >= 0$ for all $t$ and some are positive. Suppose the _real interest rate_ between two consecutive periods is a constant $r>-1.$

The agent can freely borrow and lend at real rate $r$. It means that for any $t in {0, 1, dots, t-1},$ the agent can trade one unit of $C_t$ for $(1+r)$ units of $C_(t+1),$ and vice versa. Thus, we can know that $(1+r)$ is the price of current consumption in terms of the consumption in the next period. In general, the interest rate $r_t$ may vary from one date to another, but we will abstract from that complication.

Let $(S_t)_(t=0)^T$ be the amount of savings at each period with $ S_t = Y_t - C_t. $ The amount of saving can be positive or negative. Let $A_t$ be the amount of savings stock accumulated at the end of each period. Hence, we have 
$
  A_0 &= S_0,\
  A_1 &= (1+r) A_0 + S_1,\
  A_2 &= (1+r) A_1 + S_2,\
  & space dots.v\
  A_T &= (1+r) A_(T-1) + S_T. 
$

Remember that $r$ is the real interest rate. Hence, to save $S >= 0$ at some period brings $(1+r)S$ extra resources one period after, and to incur debt $S <= 0$ at some period leads to $(1+r)S$ less resources one period after.

We assume that the agent will not die in debt, and hence $A_T >= 0.$ In addition, the agent will try to consume as much as possible at date $T,$ and hence $A_T <= 0.$ These imply $A_T = 0.$ Therefore, at the end of period $t,$ we multiply $display(1/(1+r)^t)$ on both sides of each equation and have 
$
  A_0 &= S_0,\
  1/(1+r) dot.c A_1 &= A_0 + 1/(1+r) dot.c S_1,\
  1/(1+r)^2 dot.c A_2 &= 1/(1+r) dot.c A_1 + 1/(1+r)^2 dot.c S_2,\
  & space dots.v\
  0 &= 1/(1+r)^(T-1) dot.c A_(T-1) + 1/(1+r)^T dot.c S_T. 
$
Summing both sides yields $ 0 = sum_(t=0)^T S_t/(1+r)^t. $ Since $S_t = Y_t - C_t,$ we have the _intertemporal budge constraint_ (IBC) 
$
  sum_(t=0)^T C_t/(1+r)^t &= sum_(t=0)^T Y_t/(1+r)^t.
$ <consumption_IBC>

Remember we have derived @consumption_IBC by using that the agent dies with $0$ wealth. This entails this relationship between the consumption and the income streams.

The left-hand side of @consumption_IBC is the _present value_ (PV) of the consumption stream $(C_t)_(t=0)^T.$ It is the value in terms of date-$0$ consumption of everything that the agent will consume during one's lifetime. The right-hand side is the present value of the income stream. The value in terms of date-$0$ good of everything that the agent will earn during one's lifetime.

A consumption path is _feasible_ if and only if it satisfies @consumption_IBC.

== The Fisher Model

Now, let's focus on the case when $T=1.$ That is, an individual needs to allocate one's consumption stream over just two periods: "today" $(t=0)$ and tomorrow $(t=1).$ The intertemporal budget constraint is $ C_0 + C_1/(1+r) = Y_0 + Y_1/(1+r). $ The point $(Y_1, Y_2)$ is called the _initial endowment._

Since there are only two periods, the intertemporal utility function becomes $ U(C_0, C_1) = u(C_0) + beta dot.c u(C_1). $ In addition, there is the intertemporal budget constraint 
$
  C_0 + C_1/(1+r) = Y_0 + Y_1/(1+r).
$ <consumption_fisher_IBC> The relative price of consumption is given by $display(1/(1\/(1+r))) = 1+r.$ By giving up $(1+r)$ units of future consumption $C_2,$ the individual can obtain $1$ unit of current consumption $C_1.$

=== Optimization

The individual's optimality condition equates the marginal rate of substitution of $C_0$ for $C_1$ to their price ratio $ (u '(C_0))/(beta dot.c u' (C_1)) = 1+r. $ Another mathematical derivation is that we set the first derivative of the function $U$ under the intertemporal budget constraint @consumption_fisher_IBC with respect to $C_0$ to be $0$ and have 
$
  U '(C_0) &= u '(C_0) + beta dot.c u '(C_1) dot.c (dif C_1)/(dif C_0)\
  & = 0 \
  ==> quad u '(C_0) &= (1+r) dot.c beta dot.c u' (C_1).
$ <consumption_fisher_optimality_condition>
Note that we have $display((dif C_1)/(dif C_0) = -(1+r))$ from @consumption_fisher_IBC.

We can also utilize the optimality to derive the relation. Say the point $(star(C_0), star(C_1))$ is optimal. If $C_0$ increases by $dif C,$ then $C_1$ will decrease by $(1+r) dif C$ from @consumption_fisher_IBC. Since the point $(star(C_0), star(C_1))$ is optimal, we should have the change of the intertemporal utility function is zero, i.e., 
$
  dif U &= u '(star(C_0)) dif C - beta dot.c u '(star(C_1)) dot.c (1+r) dif C\ &=0.
$ <consumption_fisher_differential>
If $dif U != 0,$ then the point $(star(C_0), star(C_1))$ will not be optimal. The last equation in @consumption_fisher_differential coincides @consumption_fisher_optimality_condition.

#figure(caption: [Consumer's endowment in the Fisher model.])[
  #image("figures/consumption_fisher_endowment.png", width: 43%)
]

#figure(caption: [Consumer's choices correspond to difference status (saver or borrower).])[
  #columns(2)[
    #image("figures/consumption_fisher_saver.png", width: 86%)
    #colbreak()
    #image("figures/consumption_fisher_borrower.png", width: 86%)
  ]
]

#figure(caption: [Consumer's optimum in the Fisher model. The amount $star(C_0)-Y_0$ is saving $S^*.$])[
  #image("figures/consumption_fisher_optimum.png", width: 43%)
]

#newpar For given present value of lifetime income $display(Y_0 + Y_1/(1+r)),$ the time pattern of income is not important for consumption, but critical for saving. The individual who is relatively rich now and expects to be poor in the future (high $Y_0$ and low $Y_1$) will be a _saver;_ the one with a low $Y_0$ and a high $Y_1$ will be a _borrower._

=== Analytical Solutions

If the instantaneous utility function $u$ is the *Cobb-Douglas* utility function, then the optimal consumption path $(star(C_0), star(C_1))$ must satisfy equations @consumption_fisher_IBC and @consumption_fisher_optimality_condition. Hence, we should solve 
$
  & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\;,
    display(qquad quad 1/star(C_0) &= beta dot.c (1+r) dot.c 1/star(C_1))\,
  )\
  ==> quad & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\;,
    display(qquad quad star(C_1) &= beta dot.c (1+r) dot.c star(C_0))\,
  )\
  ==> quad & cases(
    display(qquad quad star(C_0) &= 1/(1+beta) dot.c (Y_0 + Y_1/(1+r)))\;,
    display(qquad quad star(C_1) &= (beta dot.c (1+r))/(1+beta) dot.c (Y_0 + Y_1/(1+r))).
  )\
$

#newpar If the instantaneous utility function $u$ is the *constant intertemporal elasticity in substitution* utility function, then the optimal consumption path $(star(C_0), star(C_1))$ must satisfy equations @consumption_fisher_IBC and @consumption_fisher_optimality_condition. Hence, we should solve 
$
  & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\;,
    display(quad smallspace smallspace (star(C_0))^(-theta) &= beta dot.c (1+r) dot.c (star(C_1))^(-theta))\,
  )\
  ==> quad & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\;,
    display(qquad quad star(C_0) &= (beta dot.c (1+r))^(-1/theta) dot.c star(C_1))\,
  )\
  ==> quad & cases(
    display(qquad quad star(C_0) &= display(Y_0 + Y_1/(1+r))/display(1 + (beta dot.c (1+r))^(1/theta)/(1+r)))\;,
    display(qquad quad star(C_1) &= display((beta dot.c (1+r))^(1/theta) dot.c (Y_0 + Y_1/(1+r)))/display(1 + (beta dot.c (1+r))^(1/theta)/(1+r))).
  )\
$

== Ricardian Equivalence

Ricardian equivalence, in plain English, showcases that the timing of taxes has *no* impact on private agents' consumption. We can explain in another way: for a given public expense $G,$ whether $G$ is funded through taxation or deficit does not influence the saving/consumption behavior of private agents.

Suppose the government has to spend $G$ today. There are two options: pay for it with taxes today or with a deficit today. However, a deficit today means higher taxes tomorrow for the private agents. Say the government switch from taxes today (option 1) to taxes tomorrow (option 2). The individuals react by saving today what they would have paid in taxes in option 1, to pay future taxes in option 2 without changing their intertemporal consumption profile, which is the same under option 1 and option 2.

We stick to the two-period model still. The following argument will hold for $T$ periods as well. With taxes, the household's date-$t$ disposable income is $Y_t - T_t,$ where $T_t$ is the taxes in date $t;$ hence, the intertemporal budget constraint becomes 
$
  C_0 + C_1 / (1 + r) = (Y_0 - T_0) + (Y_1 - T_1) / (1 + r).
$ <consumption_ricardian_household_IBC>
The government's budget constraints are 
$
  G_0 = T_0 + B qquad "and" qquad G_1 = T_1 - (1+r) B,
$
where $B$ stands for government's borrowing at period $0.$

We combine the two equations for the government's budget constraints and have 
$
  G_1 &= T_1 - (1+r) dot.c (G_0 - T_0)\
  ==> quad G_0 + G_1/(1+r) &= T_0 + T_1/(1+r),
$
which is the government's intertemporal budget constraint.

Assume the government decides to cut current taxes with $Delta T_0 < 0$ without altering the spending profile, so $Delta G_0 = Delta G_1 = 0.$ It would have to raise borrowing $Delta B = - Delta T_0 > 0.$ To repay debt, it would have to raise future taxes 
$
Delta T_1 &= (1+r) Delta B \
&= - (1+r) Delta T_0.
$

#newpar Would the consumer's lifetime disposable income change? *No*, it would not.

The right-hand side of @consumption_ricardian_household_IBC will change to 
$
  (Y_0 - T_0 - Delta T_0) + (Y_1 - T_1 - Delta T_1) / (1 + r) &= (Y_0 - T_0) + (Y_1 - T_1) / (1 + r) - Delta T_0 - (Delta T_1)/(1+r)\
  &= (Y_0 - T_0) + (Y_1 - T_1) / (1 + r) - Delta T_0 - (- (1+r) Delta T_0)/(1+r)\
  &= (Y_0 - T_0) + (Y_1 - T_1) / (1 + r),
$
which did not change at all.

If the budget constraints are unchanged, the optimal intertemporal consumption profile $(star(C_1), star(C_2))$ will not change either. What will change is individual's endowment point and savings.

#figure(caption: [A deficit-financed tax cut does not affect $(star(C_0), star(C_1)).$])[
  #columns(2)[
    #image("figures/consumption_ricardian_before.png", width: 86%)
    #colbreak()
    #image("figures/consumption_ricardian_after.png", width: 86%)
  ]
]

#newpar In fact, the assumptions needed for Ricardian equivalence to hold is strict and nearly impossible to be achieved in the real world. Those assumptions are
+ consumers are forward-looking and have long horizons (as long as the one of the government),
+ financial markets are perfect (borrow and lend at market interest rates freely and same interest rate for households and the government),
+ there is no uncertainty, and
+ taxation is non-distortionary, i.e., the budget is financed by *lump-sum* taxes (based on a fixed amount).

== The Life Cycle Theory

We sketch the life cycle theory qualitatively.

The households' goal is to maintain a stable standard of living. Consider a consumer who
- lives for $T$ periods,
- works during the first $t_R$ years of one's life,
- earns a wage $w>0$ during the working life in $[0, t_R],$ and
- is retired and does not earn anything in $[t_R, T].$

The consumer saves (accumulates wealth) during working life and dissaves during retirement.

How does the optimal consumption path look like?

Suppose there is no interest rate involved, and one's consumption is denoted $C.$ Then, the optimal consumption $star(C)$ is to spend all one's money at period $T.$ Hence, it should satisfy the equation $ star(C) dot.c T = w dot.c t_R. $ The left-hand side is lifetime income, and the right-hand side is lifetime income. Since $T>t_R,$ it follows that $w>star(C).$ Hence, the consumer will save in one's first $t_R$ periods, and dissave in one's last $T-t_R$ periods. The assets of the consumer will reach the peak at the end of period $t_R.$

== Consumption under Uncertainty

So far, the only motive for saving was provision for future consumption, for oneself or one's descendants. However, the individual may also save to pursue other goals; for example, there is _precautionary motive_ to incent one to save in order to insure oneself against future fluctuations of income.

Here is the general idea: future income fluctuations create downside risks for the consumer. If one has saved $X,$ one can be certain to consume at least $(1 + r)X$ in the future, even if income is zero. Therefore, individuals accumulate savings to buffer against risks and reach a target wealth level.

We will see that more uncertainty leads to more savings if and only if $u '$ is convex, i.e., $u '''(C) > 0$ for all $C.$

Consider the following $2$-period optimization problem, 
$
  max_(C_0, tilde(C_1)) u(C_0) + beta dot.c EE(u(tilde(C_1)))
$ <consumption_uncertainty_maximizee>
under the constraint
$
  C_0 + tilde(C_1)/(1+r) = Y_0 + tilde(Y_1)/(1+r),
$ <consumption_unsertainty_constraint>
where the period-$0$ income $Y_0$ is certain, period-$1$ income $tilde(Y_1)$ is a random variable distributed over $[underline(Y), overline(Y)]$ with density function $f_(tilde(Y_1)).$ Hence, the consumer will choose some $C_0$ at date $0$ and will consume $ tilde(C_1) = (1 + r) (Y_0 + tilde(Y_1)/(1 + r) - C_0) $ at date $1.$ We can see that $tilde(C_1)$ is a random variable as well.

The consumer maximizes the _expected utility,_ which is also known as the von Neumann-Morgenstern utility.

We plug @consumption_unsertainty_constraint into the function in the right-hand side of @consumption_uncertainty_maximizee by eliminating $tilde(C_1)$ and have 
$
  g(C_0) &:= u(C_0) + beta dot.c EE(u(tilde(C_1)))\
  &= u(C_0) + beta dot.c EE(u((1 + r) (Y_0 + tilde(Y_1)/(1 + r) - C_0)))\
  &= u(C_0) + beta dot.c EE(u((1+r) dot.c (Y_0 - C_0) + tilde(Y_1)))\
  &= u(C_0) + beta dot.c integral_underline(Y)^overline(Y) u(f_tilde(Y_1)(y) + (1+r) dot.c (Y_0 - C_0)) id y.
$
Suppose that we can change the order of the differentiation operator and the integral operator. We differentiate both sides with respect to $C_0$ and have
$
  g' (C_0) &= u '(C_0) - beta dot.c integral_underline(Y)^overline(Y) u '(f_tilde(Y_1)(y) + (1+r) dot.c (Y_0 - C_0))dot.c (-(1+r)) id y\
  &= u '(C_0) - beta dot.c (1 + r) dot.c EE(u '(tilde(C_1))).
$ <consumption_uncertainty_after_differentiation>

#newpar Since we are looking for the maximum, we set @consumption_uncertainty_after_differentiation to be zero and obtain the condition 
$
  u '(C_0) = beta dot.c (1 + r) dot.c EE(u '(tilde(C_1))).
$ <consumption_uncertainty_maximizing_condition>

#newpar Assume that $u '$ is convex. Recall Jensen's inequality, that is, for any positive random variable $X$ and for any convex function $f,$ $EE(f(X)) >= f(EE(X)).$ Plug  $f = u '$ and $X = tilde(C_1)$ into Jensen's inequality, we will have 
$ 
  EE(u '(tilde(C_1))) >= u '(EE(tilde(C_1))).
$ <consumption_unvertainty_jensen>

#newpar Compare two situations, without uncertainty and with uncertainty. Call $star(C_0)$ the solution for $C_0$ with no uncertainty over $Y_0$ and $Y_1;$ call $C_0 '$ the solution for $C_0$ with uncertainty over $Y_1.$ Note that $C_0, Y_0, "and" Y_1$ are variables like $x$ or $y,$ while $star(C_0)$ and $C_0 '$ are solutions (constant).

See @consumption_uncertainty_convex_before and @consumption_uncertainty_convex_after about the comparison between two levels of uncertainty. In @consumption_uncertainty_convex_before and @consumption_uncertainty_convex_after, $sigma_1 < sigma_2$ and $C_0 ' > C_0 ''.$ This suggests more uncertainty leads more saving.

#figure(caption: [With convex $u ',$ a rise in $VV(Y_1)$ lowers optimal $C_0.$ Before the rise of $sigma,$ the optimal first-period consumption is $C_0 '.$])[
  #columns(
    2,
    gutter: 0pt
  )[
    #image("figures/consumption_uncertainty_convex_before_c_0.png", width: 86%)
    #colbreak()
    #image("figures/consumption_uncertainty_convex_before_c_1.png", width: 86%)
  ]
] <consumption_uncertainty_convex_before>

#figure(caption: [With convex $u ',$ a rise in $VV(Y_1)$ lowers optimal $C_0.$ After the rise of $sigma,$ the optimal first-period consumption is $C_0 ''.$])[
  #columns(
    2,
    gutter: 0pt
  )[
    #image("figures/consumption_uncertainty_convex_after_c_0.png", width: 86%)
    #colbreak()
    #image("figures/consumption_uncertainty_convex_after_c_1.png", width: 86%)
  ]
] <consumption_uncertainty_convex_after>

= Overlapping-Generations Models

// == Introduction

We have taken assumptions regarding aggregated relationships, such as $S = s Y$ in @solow, and modeled individual behavior in @consumption. The next step is to aggregate individual behaviors; in order to do so, we need to assume a *demographic structure*. We specifically focus on the interactions between utility-maximizing agents on markets.

The _overlapping-generations_ structure is one central demographic structure in macroeconomics. The other one is made of infinite-lives consumers (or dynasties) all born at the initial date.

== Overlapping-Generations

The assumption of overlapping generations implies that at each date, different generations of individuals, of various ages, coexist. One period after, the oldest people die, the young gets older, and a new generation comes up.

Why do we study overlapping-generations models? In reality, generations do overlap: people are born and do die. This is a natural framework of analysis for inter-generational issues:
- causes and implications of life-cycle behavior,
- pension systems (fully-funded vs. pay-as-you-go),
- public dept,
- endogenous fertility, family macroeconomics, human capital, etc.

#newpar

Simple overlapping-generations models generate new and important insights on inter-generational dynamics and welfare.

However, market equilibrium can be Pareto-suboptimal in overlapping-generations models even seemingly without any market distortion (imperfect competition, moral hazard, adverse selection, etc.). More importantly, we have a conclusion that the demographic structure itself can lead to some inefficiency.

#figure(
  caption: [Two-Period Overlapping Generations],
  kind: "image",
  supplement: [Figure]
)[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    stroke: 0pt,
    column-gutter: -5pt,
    row-gutter: -10pt,
    table.cell(inset: (bottom: 20pt))[], [$t = 0$], [$t = 1$], [$t = 2$], [$t = 3$], [], [Time],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad$])], [#box(stroke: 1pt + gray, inset: 10pt, width: 6em, [Old $-1$])], [], [], [], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $0$])], [], [], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 1$])], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $1$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $1$])], [], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 2$])], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $2$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $2$])], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 3$])], [], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $3$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $3$])], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$space$])], [], [], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [$dots.down$])], [],
    [Generations],
  )
] <olg_two_period_OLG>

#figure(
  caption: [Three-Period Overlapping Generations],
  kind: "image",
  supplement: [Figure]
)[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    stroke: 0pt,
    column-gutter: -5pt,
    row-gutter: -10pt,
    table.cell(inset: (bottom: 20pt))[], [$t = 0$], [$t = 1$], [$t = 2$], [$t = 3$], [], [Time],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad$])], [#box(stroke: 1pt + gray, inset: 10pt, width: 6em, [Adult $-1$])], [#box(stroke: 1pt + gray, inset: 10pt, width: 6em, [Old $-1$])], [], [], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Adult $0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $0$])], [], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 1$])], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $1$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Adult $1$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $1$])], [], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 2$])], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $2$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Adult $2$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $2$])], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$qquad 3$])], [], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Young $3$])], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [Old $3$])], [],
    [#box(stroke: none, inset: 10pt, width: 3em, [$space$])], [], [], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 6em, [$dots.down$])], [],
    [Generations], [], [], [], [], [], [],
    [$space$]
  )
]

== Overlapping-Generations in Endowment Economies

In this subsection, we will see a 2-period overlapping generations model given by Paul Samuelson in 1958.

Consider a 2-period overlapping generations structure. There is one perishable (non-storable) good. Each generation is $(1+n)$ times as big as the previous one with the relation $ N_(t+1) = (1+n) N_t, $ where $N_t$ is the size of generation $t,$ $N_0 = 1.$ Take @olg_two_period_OLG for example, the number of people in Young 2 will be $(1+n)$ times as big as the number of people in Young 1, and the number of people in Old 1 equals the number of people in Young 1.

In addition, we assume that all individuals have the utility function $U$ over young-age consumption $c^y$ and old-age consumption $c^o$ with 
$
  U(c^y, c^o) = u(c^y) + beta dot.c u(c^o),
$
where $u ''<0,$ $u '>0,$ and $u$ satisfies the Inada condition.

The young is endowed with 1 unit of the perishable good, and the old is endowed with 0.

=== Credit Markets

It is natural that people start from credit markets, i.e., markets without money.

If facing an interest rate $r>-1,$ the young born at date $t$ wants to save to finance old-age consumption, since there will be no income in your old-age year.

However, there is actually no way to save. The good is perishable, the other young people want to save as well, and old people will not be able to repay in the next period. Hence, the old will just consume $c^o = 0,$ while the young will consume $c^y = 1,$ which is a suboptimal equilibrium.

The credit market cannot function on a bilateral basis under 2-period overlapping generation models, as two people of different generations never meet twice.

=== Remedy

Imagine that there exists an agree-on in fixed quantity $M$ (say gold or useless paper "money"), initially held by the old of date $t=0.$

Suppose that the old and every future generation believe they will be able to buy and sell money at price $p_t$ in period $t$ in terms of goods.

People might now be able to buy money for goods when young, sell money for goods when old. Does it happen at equilibrium? What is the equilibrium interest rate $display(p_(t+1)/p_t)?$

Suppose you were born at date $t >= 0.$ If you know $p_t$ and have perfect foresight over $p_(t+1),$ your program will be maximizing your utility $U,$ i.e., looking for 
$
  max_(m_t) u(1-p_t m_t) + beta dot.c u(p_(t+1)m_t),
$
where $m_t$ stands for the price of money in terms of the good.

To maximize the function, we just set the first derivative to be zero and have 
$
  u '(1- p_t m_t) dot.c (- p_t) + beta dot.c u '(p_(t+1)m_t) dot.c p_(t+1) &= 0\
  u '(1- p_t m_t) &= beta dot.c u '(p_(t+1)/(p_t) dot.c p_t m_t) dot.c p_(t+1)/(p_t),
$
which implies 
$
  p_t m_t = f(p_(t+1)/(p_t))
$
for some function $f.$ This money demand function $f$ is a saving function.

The demand-supply equilibrium at date $t$ requires the total money demand equals the total money supply, i.e., 
$
  underbrace(p_t dot.c M, "total supply") &= underbrace(N_t dot.c p_t dot.c m_t, "total demend")\
  &= underbrace(N_0, 1) dot.c (1+n)^t dot.c f(p_(t+1)/p_t)\
  &= (1+n)^t dot.c f(p_(t+1)/(p_t)).
$ <olg_ds_eq_t>
Similarly, the demand-supply equilibrium at date $t+1$ requires
$
  p_(t+1) dot.c M = (1+n)^(t+1) dot.c f(p_(t+2)/p_(t+1)).
$ <olg_ds_eq_t_plus_1>

#newpar Consider a steady state when $display(p_(t+1)/(p_t)) = 1 + r$ for all $t.$ Then, @olg_ds_eq_t_plus_1 divided by @olg_ds_eq_t yields $ 1+r = 1+n. $ The only possible equilibrium real interest rate (rate of return on money) is the population growth rate!

If $display(p_(t+1)/(p_t)) = 1 + n$ for all $t$ and $p_0$ is determined by $p_0 M = f(1+n),$ then supply-demand will be ensured at all dates on the money market (or equivalently consumption-goods), and the equilibrium is also welfare-maximizing for all generations: money restores optimality, as it restores inter-generational trade. Notice that, however, you need to be certain that future generations will all accept money as a means of savings.

We talked about money (non-productive) a lot in this section. What about an economy with a productive asset?

== The Diamond Model

Consider a 2-period overlapping-generation model with population growth rate $n>0,$ and size of the cohort at time $t$ is $L_t = (1+n)^t L_0.$ The initial old (born at $t=-1$) are each endowed with capital $overline(k).$ Consumers born at date $t$ will have the utility
$
 U(sub(c^y, t), sub(c^o, t+1)) = u(sub(c^y, t))+beta dot.c u(sub(c^o, t+1)). 
$
The young has $1$ unit of labor, and the old has $0.$ The young earns competitive wage $w_t,$ consumes $sub(c^y, t),$ and saves $s_t$ in the form of capital. Also, the young earns competitive interest rate $r_(t+1)$ on $s_t,$ consumes $sub(c^o, t+1)=(1+r_(t+1)) dot.c s_t$ when old. We assume that capital does not depreciate.

The production function is $F(K, L),$ of which firms operate competitively. We assume that $F$ is beautiful enough; that is, $F in C^2,$ is homogeneous of degree 1, is strictly increasing in $K$ and $L,$ and satisfies the Inada condition. The intensive form of $f$ also satisfies $f ''<0$ and $f '>0.$

Date-$t$ capital stock $K_t$ is made of the savings of the old date $t$: 
$
  K_t = s_(t-1)L_(t-1) " for " t >= 1, quad " and " K_0 = overline(k) L_(-1).
$

=== The Optimal Steady State

We first consider the problem of a *benevolent social planner* who chooses the levels of consumption of each generation and of capital stock. The planner wants to provide the next generation with the same possibilities. To be more precise, $n k_t$ capital must be accumulated at each period, so that the capital-labor ratio $display(K_t/L_t)$ will be constant for all $t.$ That is to say, the social planner has $0$ discount rate, who values only the steady-state level well-being. 

Hence, the optimization problem becomes to find 
$
  max_(c^y, c^o, k) U(c^y, c^o)
$ <olg_optimal_steady_state_maximizee>
under the constraint
$
  F(K, L) = L c^y + L/(1+n) dot.c c^o + n K,
$ <olg_optimal_steady_state_bc_original>
where $+ n K$ is to maintain the capital-labor ratio.

We can simplify @olg_optimal_steady_state_bc_original to make the intensive form appear, having 
$
  F(K, L) &= L c^y + L/(1+n) dot.c c^o + n K\
  F(k, 1) &= c^y + c^o/(1+n) + n k\
  f(k) - n k &= c^y + c^o/(1+n).
$ <olg_optimal_steady_state_bc>

#newpar The problem has two components: maximizing the net output $f(k) - n k$ with respect to $k$ and maximizing $U$ under the budget constraint.

We first maximize the net output. It is clear that we have 
$
  f '(star(k)) = n. 
$ <olg_optimal_steady_state_net_output>

#newpar We can now maximize $U$ under @olg_optimal_steady_state_bc with @olg_optimal_steady_state_net_output, having that the optimal consumption bundle $(star(c^y), star(c^o))$ will satisfy 
$
  diff(, c^y)(u(c^y)+beta dot.c u(c^o)) &= 0\
  ==> #hide($(-)$) u '(star(c^y)) + beta dot.c u '(star(c^o)) dot.c diff(, c^y)((1+n) dot.c (f(star(k)) - n star(k) - c^y)) &= 0\
  ==> #hide($diff(, c^y)(() dot.c (f(star(k)) - n star(k) - c^y))$) u '(star(c^y)) + beta dot.c u '(star(c^o)) dot.c (-1-n) &= 0\
  ==> #hide($diff(, c^y)((1+n) dot.c (f(star(k)) - n star(k) - c^y)) + beta dot.c u '(star(c^o)) dot.c (-)$) u '(star(c^y)) &=  beta dot.c (1+n) dot.c u '(star(c^o)).
$ <olg_optimal_steady_state_condition>

=== Decentralized dynamics

We now turn to the actual equilibrium, also known as the _decentralized dynamics._ We want to know what happens when the market work freely.

The competitive wage rate and interest rate are given by the condition that $ w_t = sub("MP"_L, t) quad "and" quad r_t = sub("MP"_K, t). $ We can compute such by manipulating a coefficient, having
$
  pdiff(, L) F(K, L) &= pdiff(, L) L dot F(K/L, 1)\
  &= pdiff(, L) L dot f(k)\
  &= f(k) + L dot.c f '(k) dot.c pdiff(k, L)\
  &= f(k) + L dot.c f '(k) dot.c (-K/L^2)\
  &= f(k) - k dot.c f '(k)
$
and 
$
  pdiff(, K) F(K, L) &= pdiff(, K) L dot f(k)\
  &= L dot.c f '(k) dot.c pdiff(k, K)\
  &= f '(k).
$
#newpar Hence, we have 
$
  w_t = f(k_t) - k_t dot.c f '(k_t) quad "and" quad r_(t+1) = f '(k_(t+1)).
$
Then, the price-taking agents want to find
$
  max_(sub(c^y, t), sub(c^o, t+1)) U(sub(c^y, t), sub(c^o, t+1))
$ <olg_decentralized_dynamics_maximizee>
under the constraint
$
  sub(c^y, t) + sub(c^o, t+1)/(1+r_(t+1)) = w_t.
$ <olg_decentralized_dynamics_bc>
We just need to solve
$
  diff(, sub(c^o, t+1))(u(sub(c^y, t)) + beta dot.c u(sub(c^o, t+1))) &= 0\
  ==> quad u '(sub(c^y, t)) dot.c diff(sub(c^y, t), sub(c^o, t+1)) + beta dot.c u '(sub(c^o, t+1)) &= 0\
  ==> quad #hide($display(u '(sub(c^y, t)) dot.c diff(sub(c^y, t), sub(c^o, t+1))+)$) beta dot.c u '(sub(c^o, t+1)) &= (u '(sub(c^y, t)))/(1+r_(t+1))\
  ==> quad #hide($display(u '(sub(c^y, t)) dot.c diff(sub(c^y, t), sub(c^o, t+1))+beta_(+1) dot.c)$) u '(sub(c^y, t)) &= beta dot.c (1+r_(t+1)) dot.c u '(sub(c^o, t+1))\
  ==> quad #hide($display(u '(sub(c^y, t)) dot.c diff(sub(c^y, t), sub(c^o, t+1))+ dot.c)$) u '(w_t - s_t) &= beta dot.c (1+r_(t+1)) dot.c u '((1+r_(t+1))dot.c s_t)
$ 
in which $w_t$ and $r_(t+1)$ will determine a saving function 
$
  s_t = arg max_s_t U(w_t - s_t, (1+r_(t+1)) dot.c s_t):=s(w_t, r_(t+1)).
$

The model's dynamics are summarized by a sequence $(k_t)_(t = 0).$ The sequence $(k_t)_(t = 0)$ is an equilibrium sequence of capital-labor ratios if and only if 
$ 
  K_(t+1)/L_(t+1) = s_t L_t qquad <==> qquad k_(t+1) &= s_t/(1+n)\
  &= (s(f(k_t) - k_t dot.c f '(k_t), f '(k_(t+1))))/(1+n).
$

Date-$t$ savings must be consistent with date-$t$ wages and date-$(t+1)$ interest rate, or there might be no equilibrium.

Note worthy that if $u=ln,$ then $s$ does not depend on $f '(k_(t+1)).$

=== Decentralized Steady State

Suppose there is a steady-state capital-labor ratio $hat(k),$ i.e., 
$
  hat(k) = (s(f(hat(k)) - k_t dot.c f '(hat(k)), f '(hat(k))))/(1+n),
$
where $hat(k)$ is determined by preferences (saving rate $s$), technology (intensive form $f$), and demography (population growth rate $n$).

We can now state a central theorem on overlapping-generation models about the steady-state interest rate.\
#box(width: 1fr, stroke: 1pt + black, inset: (x: 12pt, top: 14pt, bottom: 12pt))[
  *Theorem*. Let $hat(r)=f '(hat(k))$ be the steady-state interest rate. If $hat(r)<n,$ then the decentralized steady state is dynamically inefficient, i.e., it is possible to increase the welfare of all generations. If $hat(r)>n,$ then the decentralized steady state is dynamically efficient, i.e., it is not possible to strictly increase the welfare of some generation without strictly decreasing the welfare of another generation.
]\
*Proof*. Suppose $hat(r)<n.$ Let $epsilon>0.$ Let every young transfer $epsilon$ to the old, so that each old receives $(1+n) epsilon.$ This will benefit all generations since the market price of $c^o$ at steady state is $ 1/(1+hat(r)), $ which is greater than $display(1/(1+n))$: the consumer gets more utility by having access to a small amount of $c^o$ at less-than-market price. Suppose $hat(r)>n.$ That is, the case of capital under-accumulation. Then, any policy will hurt at least one generation: intra-period or inter-generational trade hurts at least some generation, and forced capital accumulation hurts the current generation. #qqed

This should last forever, or the very last generation will be hurt. It is similar to the pension system, which left the young pay some for the old.

To illustrate graphically, see the following figures.

#figure(
  caption: [Illustration about the Central Theorem],
  kind: "image",
  supplement: [Figure]
)[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr),
    stroke: 0pt,
    column-gutter: -10.4em,
    row-gutter: -10pt,
    table.cell(inset: (bottom: 20pt))[], [$t = t_0$], [$t_0 + 1$], [$t_0 + 2$],
    [#box(stroke: none, inset: 10pt, width: 8em, [$qquad$])], [#box(stroke: 1pt + gray, inset: 10pt, width: 8em, [Old $t_0-1$])], [], [],
    [#box(stroke: none, inset: 10pt, width: 8em, [$"Gen." t_0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Young $t_0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Old $t_0$])], [],
    [#box(stroke: none, inset: 10pt, width: 8em, [$t_0+1$])], [], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Young $t_0+1$])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Old $t_0+1$])],
    [#box(stroke: none, inset: 10pt, width: 8em, [$t_0+2$])], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Young $t_0+2$])],
  )
  #table(
    columns: (1fr, 1fr, 1fr, 1fr),
    stroke: 0pt,
    column-gutter: -10.4em,
    row-gutter: -10pt,
    table.cell(inset: (bottom: 20pt))[], [$t = t_0$], [$t_0 + 1$], [$t_0 + 2$],
    [#box(stroke: none, inset: 10pt, width: 8em, [$qquad$])], [#box(stroke: 1pt + gray, inset: 10pt, width: 8em, [Gets $(1+n)epsilon$])], [], [],
    [#box(stroke: none, inset: 10pt, width: 8em, [$"Gen." t_0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Lost $epsilon$ ($arrow.t$)])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Old $t_0$])], [],
    [#box(stroke: none, inset: 10pt, width: 8em, [$t_0+1$])], [], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Young $t_0+1$])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Old $t_0+1$])],
    [#box(stroke: none, inset: 10pt, width: 8em, [$t_0+2$])], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Young $t_0+2$])],
  )
  #table(
    columns: (1fr, 1fr, 1fr, 1fr),
    stroke: 0pt,
    column-gutter: -10.4em,
    row-gutter: -10pt,
    table.cell(inset: (bottom: 20pt))[], [$t = t_0$], [$t_0 + 1$], [$t_0 + 2$],
    [#box(stroke: none, inset: 10pt, width: 8em, [$qquad$])], [#box(stroke: 1pt + gray, inset: 10pt, width: 8em, [Gets $(1+n)epsilon$])], [], [],
    [#box(stroke: none, inset: 10pt, width: 8em, [$"Gen." t_0$])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Lost $epsilon$ ($arrow.t$)])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Gets $(1+n)epsilon$])], [],
    [#box(stroke: none, inset: 10pt, width: 8em, [$t_0+1$])], [], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Lost $epsilon$ ($arrow.t$)])], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Old $t_0+1$])],
    [#box(stroke: none, inset: 10pt, width: 8em, [$t_0+2$])], [], [], [#box(stroke: 1pt + black, inset: 10pt, width: 8em, [Young $t_0+2$])],
  )
]

You can see that everyone (each generation) is better-off since 
$
  -epsilon + (1+n) epsilon > -epsilon + (1+hat(r))epsilon.
$

_Remark_. There should be some content about public debt in the original following section. However, it is too complicated for me to understand, and Dr. SENOUCI said we should consider those off-program. Hence, there is no content about this topic.

// I really cannot figure out about the following parts about public debt.
// Dr. Senouci: Consider this off-program.

// === Public Debt: External Debt

// We first talk about the external debt. Imagine the government issues $g_1>0$ units of external debt per worker, which borrows $(1+n)g_1$ and repays $(1+r_(t+1))g_1$ to date-$t$ creditors. This goes on at each period. The debt is assumed not to affect directly the consumers' welfare.

// Hence, rational consumers want to find 
// $
//   max_s U(w-s - (r-n)g_1, (1+r)s).
// $

// The equilibrium will occur if and only if $ k=(s(w-(r-n)g_1, r))/(1+n), $ where $w=f(k)-k dot.c f '(k)$ and $r= f '(k).$

// If the income effect dominates the substitution effect, i.e., savings depend on $w-(r-n)g_1$ and little on $r,$ then an increase in $g_1$ translates into lower $k$ if and only if $ r-n>0. $ The effect of external debt goes in the wrong direction (away from the golden rule $f '(star(k))=n$).

// === Public Debt: Internal Debt

// We now talke about the internal debt. Imagine the government issues $g_2>0$ units of internal debt per worker with nearly the same process, except that now $(r-n)g$ does not leaven the economy and public debt comptets with capital as a means of saving $ s_t/(1+n) = k_(t+1)+g_2. $ 
// Rational consumers want to find 
// $
//   max_s U(w-s - (r-n)g_2, (1+r)s).
// $

// The equilibrium will occur if and only if $ k=(s(w-(r-n)g_2, r))/(1+n)-g_2, $ where $w=f(k)-k dot.c f '(k)$ and $r= f '(k).$


= The IS-LM Model

// == Introduction and History

In 1937, Hicks developed the IS-LM framework to formalize Keynes' ideas. The four letters are the first letter of investment, saving, liquidity preference, and money supply, respectively. In short, this model represents equilibrium in the goods (IS) and money (LM) markets.

Hicks interpreted Keynes within a general equilibrium framework: short-run macroeconomic equilibrium with *weak aggregate demand* and unemployment and emphasize of the role of interest rates in balancing investment and savings. This interpretation allowed Keynesian thought to be integrated into neoclassical economics.

In classical view of general equilibrium, markets are naturally clear through price adjustments, and full employment is achieved as long as wages and prices are flexible. However, Keyens' general theory rejects the idea that markets are always clear. This is because in the short run, wages and prices can be rigid, which lead to unemployment and output gaps $y^d-y^n,$ where $y^d$ is the output demanded, and $y^n$ is the natural market demanded.

This model focuses on how output is determined in the short run. It looks at two things:
- the aggregated damand and its main compoments,
- money market and the role of interst rates.

#newpar

The IS-LM model helps illustrate how stabilization policies (such as fiscal or monetary policy) can be used to influence the economy, aiming to stabilize output and employment levels.

In addition, it serves as a tool for analyzing the impact of fisical (government spending and taxation) and monetary (interest rate adjustments by the central bank) policies on the economy, and it helps illustrate the trade-offs policymakers face, such as the impact of monetary expansion on interest rates and investment.

As mentioned, we would like to find equilibria on the goods and money markets. This is a static model, so that time does not play an important role. We assume the following:
- economy consists of households, firms, and the government,
- a single homogeneous good $Y$ is produced by perfectly competitive firms and consumed by households,
- (_normal rigidities_) prices are *fixed*, so that the firms are ready to supply any amount of $Y$ at the given price level $P,$ and
- (_closed economy_) there is no international trade in goods or assets.

== The Goods Market

The IS curve represents the goods markets. The planned aggregate expenditures $"AE"_p$ consist of
- consumption $C$: goods and services bought by households,
- investment $I$: spending on the acquisition of capital by firms, and
- government spending $G.$

Hence, the goods market equilibrium conditions requires, from the demand side, $ C+I+G=Y, $ where $C+I+G="AE"_p.$ The *actual* expenditures are *always* equal to the income because every dollar spend by a buyer becomes income to the seller. Therefore, the equilibrium requires $ "AE"_"actual" = Y = "AE"_p. $

=== Consumption

The consumption $C$ is positively depending on disposable income $Y-T,$ where $T$ are net taxes. We will write $ C = C(Y-T), $ where the derivative of $C$ is called the marginal propensity to consume (MPC). The marginal propensity to consume $C '$ is a positive decimal, and it measures how much out of one extra unit of income if spent on consumption. We can assume a specific functional form: linear consumption function 
$ 
  C(Y-T) = C_0 + c_y dot (Y-T), 
$ <islm_consumption_linear>
where $C_0$ is the incompressible consumption refers to the minimum level of consumption that households need to maintain, and $c_y$ is the marginal propensity to consume.

=== Investment
The investment is negatively depending on the interest rate $r$ $ I = I(r) $ with $diff(I, r) < 0.$ The intuition is that firms' borrowing costs rise when $r$ increases, which makes it less profitable to invest, and with other conditions remaining the same. We can do something similar as we do in @islm_consumption_linear, to assume a specific linear investment function 
$
  I(r) = I_0 - i_r dot r,
$ <islm_investment_linear>
where $i_r$ measures interest sensitivety of investment demand by how much investment falls if $r$ increases by $1$ percentage point.

=== Government Spending and Taxation

The two parameters $G$ and $T$ are assumed to be exogenously fixed. We have other possibilities as well. For example, 
- balanced budget $G=T,$
- procyclical expenditures $G'(Y)>0$ or $T'(Y)>0,$ or
- countercyclical expenditures $G'(Y)<0$ or $T'(Y)<0.$

Taxes $T$ can be lump-sum or proportional. The linear form of taxation is 
$
  T(Y) = T_0 + t_y dot Y,
$ <islm_tax_linear>
where $T_0$ is lump-sum tax, and $t_y$ is the rate for proportional tax.

The IS curve is the locus showing all combinations of $Y$ and $r$ such that the goods market is in equilibrium. In the linear economy, this gives us a negative relation between $r$ and $Y$ By
$
  Y &= C+I+G\
  &= C_0 + c_y dot (Y-T) + I_0 - i_r dot r + G\
  ==> quad Y &= -i_r/(1-c_y) dot r + (C_0 - c_y dot T - I_0 + G)/(1-c_y).
$ <islm_is_Y_r>

The intuition of @islm_is_Y_r is that an increase in $r$ leads a decrease in investment, which leads a decrease in $"AE"_p$; as a result, $Y$ decreases.

Note that when we are drawing an IS curve, we will put $Y$ to be the horizonal axis and $r$ to be the vertical axis, which is the contrary to the form of @islm_is_Y_r.

== The Money Market

The LM curve represents the money market. We assume that there are two financial assets in the economy: money and bonds. Money does not pay interest and is more liquid (immediate); bonds pay a nomial interest $i>0$ an is less liquid. Also, we have two motives for holding cash: transactions (depends on $Y$) and specilative (depends on $i$). Is is assumed that there is no money illusion, i.e., money is valued for its purchasing power.

We set the demand for real money balances is given by $ M^D/P = L(Y, i) $ for some function $L,$ with $M^D$ the demand for money. More income raises the need for more transactions $pdiff(L, Y)>0;$ interest rate $i$ is the opportunity cost of holding cash $pdiff(L, i)<0.$ We can again use linear form to assume a particular form 
$
  L(Y, i) = L_0 + I_y dot Y - I_i dot i,
$ <islm_demand_money_linear>
where $L_0$ is the autonomous money demand, $I_y$ is the income sensitivity of money demand, and $I_r$ is the interest sensitivety of money demand.

The real money supply is assumed to be exogenously fixed at $display(M^S/P).$ Since the price level $P$ is fixed, supply of real money balances $display(M^S/P)$ is independent of $Y$ and $r.$ Here we also assume that real and nominal rates are equal.

In practice in modern monetary system, money supply is controlled by the central bank and is fixed in the short run.

The LM curve is the locus showing all combinations of $Y$ and $r$ such that the money market is in equilibrium, i.e., $ M^D/P = M^S/P. $ In a linear economy, this is a positive relation between $r$ and $Y$ since 
$
  M^S/P &= M^D/P\
  &= L(Y, i)\
  &= L_0 + I_y dot Y - I_i dot i\
  &= L_0 + I_y dot Y - I_i dot r\
  ==> doub quad r &= I_Y/I_i dot Y + (L_0 - M^S\/P)/I_i.
$ <islm_lm_Y_r>

== Equilibrium in the IS-LM model

Both IS and LM are in partial equilibrium for given $r$ or $Y.$ When both goods are markets are in equilibrium, there will be a unique pair $(star(r), star(Y))$ solving the system $ cases(Y = C(Y-T) + I(r) + G\,, display(L(Y, r) = M^S/P)\,) $ corresponds to the equilibrium in the IS-LM model. That pair is exactly the intersection of the IS and the LM curves.

== Policy

In this framework, we can analyze the government policy. The aim is to stablize output $Y$ around its "natural" or *full-employment* (also called *potential*) level $Y^p.$ We can see policies with different aspects:
- expansionary (increasing $Y$) or contractionary (decreasing $Y$),
- fiscal or monetary.

For fiscal policies, we have government spendings $G$ and taxations $T.$ Fisical policy shifts the IS curve: either direct (of $G$) or indirect (of $T,$ through change in $C$) impact on aggregated demand. Recall @islm_is_Y_r. 

For monetary policies, we have open-market operations (affecting $M^S$) and discount window (affecting $r$). Monetary policy shifts the LM curve: the change in $M^S$ shifts the vertical money supply curve $display(M^D/P = M^S/P),$ and hence for any $Y,$ the interest rate $r$ equilibrating the money market changes.

To access the overall effect of a policy, one needs to compute the magnitude of the *policy multiplier*, which is the change in output $Delta Y$ per given change in $G, T, "or" M^S.$

We combine @islm_is_Y_r and @islm_lm_Y_r to have the compact system 
$
  cases(
    r &= display(I_Y/I_i) dot Y + display((L_0 - M^S\/P)/I_i)\,,
    Y &= display(-i_r/(1-c_y)) dot r + display((C_0 - c_y dot T - I_0 + G)/(1-c_y)).
  )
$ <islm_policy_compact_system>

One can express @islm_policy_compact_system in variations for clarity purposes, as a function of policy instruments: $Delta G, Delta T, "or" Delta M^S$ to have
$
  cases(
    Delta r &= display(I_Y/I_i) dot Delta Y - display(1/I_i dot (Delta M^S)/(P))\,,
    Delta Y &= display((- i_r dot r - c_y dot Delta T + Delta G)/(1-c_y)).
  )
$ <islm_policy_compact_system_instruments>

The resulting core insight from this model can be obtained from one equation derived from @islm_policy_compact_system_instruments 
$
  Delta Y = 1/display(1-c_y + i_r dot I_y \/ I_i) dot (Delta G - c_y Delta T + i_r/I_i dot (Delta M^S)/P).
$ <islm_policy_compact_system_core>

=== Fisical Policy Multiplier

Suppose the government conducts a fisical expansion#footnote("It can be a fiscal contraction as well. The sign does not affect the formula. So do the following formulae.") $Delta G > 0.$ How does the equilibrium $star(Y)$ change? From @islm_policy_compact_system_core, the _fiscal policy multiplier_ reads as 
$ 
  (Delta Y)/(Delta G) = (1)/display(1-c_y + i_r dot I_y \/ I_i),
$ <islm_fiscal_multiplier>
which indicates that the marginal propensity to consume $c_y$ and crowding out effects $i_r$ are key determinants.

Now, suppose the government conducts a tax decrement $Delta T < 0.$ How does the equilibrium $star(Y)$ change? From @islm_policy_compact_system_core again, the _tax multiplier_ reads as
$ 
  (Delta Y)/(Delta G) = (-c_y)/display(1-c_y + i_r dot I_y \/ I_i),
$ <islm_tax_multiplier>
which is simlar to the tax multiplier, attenuated by the marginal propensity to consume $c_y.$

=== Monetary Policy multiplier

Suppose the central bank conducts a monetary expation $Delta M^S > 0.$ How does the equilibrium $star(Y)$ change? From @islm_policy_compact_system_core, the _monetary policy multiplier_ reads as 
$ 
  (Delta Y)/(Delta M^S) = (1)/display(1-c_y + i_r dot I_y \/ I_i) dot i_r/I_i dot 1/P,
$ <islm_monetary_multiplier> which is similar to the tax multiplier, ambigously affected by $i_r.$

=== Crowding Out Effect

From @islm_fiscal_multiplier, the marginal propensity to consume $c_y,$ the interest sensitivity of invesement demand $i_r,$ and the slope of the LM curve $display(-I_y/I_i)$ determine the magnitude of the fiscal policy multiplier. We can see that if $i_r dot display(I_y/I_i)$ is large, the effect of the fiscal policy is reduced.

When the government increases spending (fiscal expansion), it inittially raises the aggregate demand, leading to an increase in output. As a result, households and firms demand more money for transactions. This increases in money demand affects the equilibrium in the money market. In order to meet the higher demand for money, the interest rate $r$ increases because the supply of money is fixed in the short run. Hence, firms will reduce investment, and this reduction in investment partially offsets the initial increase in income caused by higher government spending. This effect is called the *crowding out effect*.

Increasing aggregate demand unintendedly reduces private investment. One can think about a policy mix, in which money supply could be used to offset the crowding out effect. Consider the variations in interest rate, assuming $Delta r = 0,$ yields $ (Delta M^S)/P = I_y Delta Y. $ The _policy mix multiplier_ becomes $ Delta Y = 1/(1-c_y) Delta G $ with money supply $display((Delta M^S)/P = (I_y)/(1-c_y) dot Delta G).$

= Unemployment

_Unemployed_ are those who are not working, but able and willing to work and actively searching for job.

We have classified four generes of unemployment:
+ frictional, which occurs when people are temporarily unemployed while transitioning between (*searching* for) jobs,
+ structural, which arises from a *mismatch* between workers' skills or locations and the requirements of available jobs, e.g., elevator attendants, 
+ classical (real wage), which occurs when wages are kept above the market-clearing level, often due to minimum wage laws, labor unions, or other wage-setting mechanisms (*real wage rigidities*), and
+ Keynesian (cyclical), which is caused by a decrease in aggregate demand in the economy, often during a recession.

The first three comprise the natural rate $u_n$ of unemployment.

In practice, the natural rate of unemployment is a theoretical concept that cannot be directly observed. However, it represents the rate of unemployment to which the economy would converge in the absence of shocks and frictions. It serves as a *benchmark*, distinguishing the cyclical fluctuations in unemployment from its long-term, structural component.

The two components, cyclical unemployment and structural unemployment, require distinct policy responses; the former calls for stabilization measures, while the later necessitates longer-term reforms.

== Walrasian Labor Market

The _Walrasian labor market_ is based on the concept of general equilibrium, where wages and employment are determined by the interactions of labor supply and labor demand. It assumes that markets are *perfectly competitive*, and wages adjust to clear the market, i.e., there is no involuntary unemployment.

Since it is a perfect competitioin, workers and firms are all price-takers: no one can individually influence the wage level. In addition, wages adjust instantly to equate labor supply, and the market-clearning wage guarantees that all workers who want to work at the equilibrium wage can find employment.

// I cannot read page 9 and 10. 

== Efficiency Wages

In fact, firms pay more than the reservation (equilibrium) wage $star(w).$ In 1914, Henry Ford introduced the five dollar day which doubles the wage. The _efficiency wage_ considerations were investigated by Raff and Summers in 1987; the increase in productivity and profits at Ford yielded less turnover.

However, the macroeconomic implication of setting a wage higher than reservation wage will imply unemployment from the Walrasian view of labor markets.

We start from the Walrasian labor market with inelastic labor supply. We assume that there are large numbers of firms, and they are perfectly competitive. The output is described by the production function $F$ with $ Y = F(e dot N^D), $ where $e$ is the _efficiency unit of labor_ which is *increasing in wage*, and $F$ is increasing and concave. We also assume that the demand for goods is stochastic $Y,$ allowing firms to adjust supply through inputs $e$ and $N^D.$ As we said, the labor supply is inelastic and is set to be at $overline(N)^S.$

The firm chooses number of workers to hire $N$ and wage $w$ to look for 
$
  max_(N^D, w) F(e(w) dot N^D) - w dot N^D,
$ <unemployment_firm>
where $N^D in [0, overline(N)^S],$ and $w >= 0.$

When we have $N^D < overline(N)^S,$ the first order conditions for @unemployment_firm are 
$
  F '(e(w) dot N^D) dot e(w) - w = 0 qquad "and" qquad F '(e(w) dot N^D) dot N^D dot e '(w) - N^D = 0.
$
Combining the two equations above, we will have 
$
  (w dot e '(w))/(e(w)) = 1,
$ <unemployment_efficiency_efficiency_wage>
in which left-hand side is called the _the elasticity of effort with respect to the wage rate_ $epsilon^e_w.$ The _efficiency wage_ $hat(w)$ is also implicitly defined by @unemployment_efficiency_efficiency_wage.

In @unemployment_efficiency_efficiency_wage, the potimal condition equated the elasticity of effort with respect to the wage rate to unity. That is, firm wants to hire effective labors as cheaply as possible, which minimizes the cost per efficient unit $w\/e(w).$

When $N^D = overline(N)^S,$ we just solve $ F '(e(w) dot overline(N)^S) dot e(w) - w = 0. $

It can be easier to consider with some closed-form expressions. We suppose the production function is defined by
$
  F(e dot N^D) = (e dot N^D)^alpha,
$ <unemployment_efficiency_production_cf>
and the efficiency unit of labor is defined by 
$
  e(w) = cases((display((w-x)/(x)))^beta\, quad &"if " w >= x\,, 0\, &"if " w < x\,)
$ <unemployment_efficiency_efficiency_cf>
where $beta in (0, 1),$ and $x$ captures outside options. Then, we can find the reservation wage as a state-dependent relation of $N^D$ and $overline(N)^S$ with
$
  star(w) = cases(display((x)/(1-beta))\, quad &"if " N^D < overline(N)^S\,,
                  x dot (1 + (display((x dot N^(1-alpha))/(alpha beta)))^(1/(beta - 1 + (alpha - 1) dot beta)))\, quad &"if " N^D < overline(N)^S\.)
$

== Generalization

For the efficiency we assumed previously, there can be more things in the parameter list. For example, the average wage paid by other firms $overline(w),$ or the current level of unemployment $u.$

Correspondingly, we can assume the efficiency is given by $ e(w, overline(w), u) $ with $pdiff(e, overline(w)) < 0$ and $pdiff(e, u) < 0.$ Then, each firm chooses $w$ and $N$ with taking $overline(w)$ and $u$ as given.

We give an example with some closed-form expressions. Suppose the efficiency of labor is given by
$
  e(w) = cases((display((w-x)/(x)))^beta\, quad &"if " w >= x\,, 0\, &"if " w < x\,)
$ <unemployment_generalization_efficiency_cf>
where $beta in (0, 1),$ and $ x = (1 - b dot u) dot overline(w) $ stands for the worker's outside opportunities. The symbol $b$ characterizes the concern about unemployment, e.g., low skill workers may have $b>1,$ but computer scientists may have $b approx 0.$

Then, @unemployment_efficiency_efficiency_wage becomes 
$
  beta dot ((w-x)/(x))^(beta - 1) dot 1/x dot w/((display((w-x)/(x)))^beta) = 1.
$ <unemployment_generalization_efficiency_wage>
Solving @unemployment_generalization_efficiency_wage, we have $ hat(w) = x/(1- beta) = (1-b u)/(1-beta) overline(w). $ This means that all firms are identical, and the wage is in equilibrium. Hence, the equilibrium (natural) unemployment rate becomes $ u_n = beta / b. $

= The AS-AD Model

We have mentioned the IS-LM model; however, it cannot account for the supply-side shocks or explain how inflacion could coexist with high unemployment.

== The AD Curve

So far, we assumed that the price level $P$ is fixed. Now, we relax this assumption and let $P$ vary through a change in prices.

We build the AD curve from the IS curve and the MP curve. The IS curve is built from the consumption determination from pernament income hypothesis; the MP curve is built from monetary policy decision.

=== The IS Curve

Consider a representative consumer with the following welfare function $ sum_(s=0)^infinity beta^s dot.c U(C_(t+s), sub(N^S, t+s)), $ <asad_is_welfare> where $beta < 1$ is the discount factor, $U$ is a typical utility function, $C_t$ is flow of consumption, and $sub(N^S, t)$ is labor supply (hours worked).

We assume $ U(C, N) = log(C) - xi N, $ where $xi>0$ is the disutility of work.

In addition, we have the budget constraint for each period $ P_t C_t + A_t = (1 + i_(t-1)) A_(t-1)+sub(N^S, t) tilde(W)_t, $ <asad_is_bc_original> where agents can purchase goods quantity $C_t$ at market price $P_t,$ and $A_t$ is the quantity of financial assets with interest rate $i_t,$ and $tilde(W)_t$ is the nominal wage.

We express @asad_is_bc_original in real terms (divide both sides by $P_t$), having $ C_t + a_t = (1+i_(t-1))/(1+pi_t) a_(t-1) + sub(N^S, t) W_t, $ where $1+pi_t = display(P_t/P_(t-1))$ and $W_t$ is the real wage.

Hence, maximizing @asad_is_welfare yields the Euler equation $ (partial U)/(partial C) (C_t) = beta dot.c (1+i_(t))/(1+pi_(t+1)) dot.c (partial U)/(partial C) (C_(t+1)), $ where the LHS is the change in consumption now, and the RHS is the change in consumption tomorrow.

Considering a simplified output $ Y_t = C_t + sub(epsilon^G, t), $ where $sub(epsilon^G, t)$ is a spending shock. The IS curve is the locus of all $(Y, i-pi)$ such that consumption goods market clears for different real rates $ y_t = y_(t+1) - (i_t - pi_(t+1)) + sub(epsilon^G, t),$ where $x_t := log X_t,$ $i_t approx log(1+i_t),$ and $log beta approx -r.$

Households anticipating an increase in real rate postpone consumption later and saves. Aggregate demand $y_t$ reduces in response (IS effects through consumption).

=== The MP Curve

The MP curve is the locus of all $(i_t, pi_t)$ such that the central bank penalizes inflation deviation from a target $pi$ with $phi$ a weight of inflation $ i_t = i + phi dot.c(pi_t - pi). $

=== The AD Curve

The AD curve is the combination of IS and MP, which will be $ y_t = y_(t+1) - phi dot.c (pi_t - pi) + (pi_(t+1)-pi) + sub(epsilon^G, t). $

For a rise in inflation above target, central bank increases nominal rate $i$ in response. Households postpone consumption $c_t$ decreases. It cools down the economy with lower aggregate demand $y_t.$

== The AS Curve

Aggregate output is determined by the production function $ Y = F(N), $ where $F$ is concave, and $N$ is employment. Employment is determined by equilibrium on the labor market. Which factors affect labor demand $N^D$ and labor supply $N^S?$ Labor demand is derived from firms' profit maximization, and labor supply is derived from households' utility maximization.

=== The LRAS Curve

In absence of nominal rigidities and shocks, full-employment output is called the natural economy. The economy is at potential $ P^* = W_n = P_n xi Y_n, $ where $P^*$ is the optimal price. Under flexible price, $display(P^* / P_n = 1);$ hence, $y_n = -log xi.$ The LRAS curve is a vertical line that depends on structural factors only.

=== The AS Curve

In each period $t,$ a fixed proportion $(1-omega)$ of forms set its wage optimally; the other in proportion $omega$ grow at a rate equal to the inflation rate $ P_t = P_(t-1) dot.c (1+pi_(t-1)) dot.c (1+sub(epsilon^P, t)), $ where $sub(epsilon^P, t)$ is a supply shock.

The geometric aggregation yields $ P_t = (P_(t-1) dot.c (1+pi_(t-1)) dot.c (1+sub(epsilon^P, t)))^omega dot.c (sub(P^*, t))^(1-omega). $ Take log on both sides yields $ p_t = omega dot.c (p_(t-1) + pi_(t-1) + sub(epsilon^P, t)) + (1-omega)(w_t + p_t). $

Hence, the AS curve is given by $ pi_t = pi_(t-1) + (1-omega)/omega dot.c (y_t - y_n) + sub(epsilon^P, t), $ where $y_n$ is the natural market output, and the term $display((1-omega)/(omega))$ measures the degree of nominal rigidity.

An economy that experiences a boom with $y_t > y_n$ will have excess labor demand. Labor market clears with an increasing real wage. Firms gradually adjust their selling prices $pi_t > pi_(t-1).$ If the economy is at potential $y_t = y_n,$ the economy is back to constant inflation.

The calibration of $omega$ nests two visions of macroeconomics: $omega -> 0$ is the classical view with vertical AS curve, which considers fluctuations in the general price level $P$ should not affect $Y;$ $omega->1$ is the Keynesian view with horizonal AS curve, which considers the prices are fixed (nominal rigidity) in the short run.

== The AS-AD Equilibrium

Assume that the shocks only occur once, and the economy starts at full employment $pi_(t-1) = pi,$ the expectations of future period are $y_(t+1) = y_n$ and $pi_(t+1) = pi,$ we have 
$ cases(display(y_t - y_n =  - phi dot.c (pi_t - pi) + (pi_(t+1)-pi) + sub(epsilon^G, t),), display(pi_t - pi = (1-omega)/omega dot.c (y_t - y_n) + sub(epsilon^P, t).)) $

= Open Economy

So far, we focused on equilibria on the goods market (IS curve) and the money market (LM curve). In an open economy, there is a third market: the foreign exchange market (BP curve).

Domestic and foreign economy are linked via two channels: trade in goods and services (current account) and trade in financial assets (capital account).

== Exchange Rate

We have two types of exchange rate.

The _nominal exchange rate_ $e$ is the price of the domestic currency in terms of the foreign currency. A rise (fall, respectively) in $e$ is called appreciation (depreciation) of domestic currency.

The _real exchange rate_ $epsilon$ measures the price of a fix basket of goods $ epsilon = (e P) / P^*, $ where $P$ is domestic price level and $P^*$ is foreign price level.

== Balance of Payments

As mentioned in the second paragraph in the introduction, there are two channels of transactions: current account and capital account.

For the current account $"CA", $ it is account for three compoments: net exports $"NX" ,$ net income from aboard $"NI",$ and net transters from aboard $"NT".$ $ "CA" = "NX" + "NI" + "NT". $

For the capital account $"KA",$ it is account for the net capital flows $"CF"$ and the net change in foreign currency reserves $Delta"FCR".$ $ "KA" = "CF" + Delta"FCR". $

By construction, we have $ "CA" + "KA" = 0. $ In addition, emperically, $"NI"$ and $"NT"$ constitute little part of $"CA";$ it follows that $ "CA" = "NX", $ where the net export is defined by the difference between expenditures on exports and imports in real terms $ "NX" = "Ex" - "Im"/epsilon, $ where $"Ex"$ is positively related to foreigner's income and negatively related to $epsilon,$ and $"Im"$ is positively related to domestic imcome and positively related to $epsilon;$ that is, $ (partial"NX")/(partial star(Y)) > 0, quad (partial"NX")/(partial Y) < 0, doub "and" doub (partial"NX")/(partial epsilon) "is unclear." $

From the demand side, we have $ Y = C + I + G + "NX"; $ from the supply side, we have $ Y = C + S + T. $ Hence, the equilibrium can be rewritten as $ S = I + (G - T) + "NX", $ <open_balance_private_saving> where $"BD":= G - T$ is the primary budget deficit. In @open_balance_private_saving, it suggests that domestic private saving $S$ can be lent to domestic investors $I,$ public sector $"BD",$ or foreign sector $"NX".$

== Mundell-Fleming Model

Since most studies show that in the medium run, the quantity effect of the decrease in $epsilon$ dominates the price effect, we shall assume that $ (partial"NX")/(partial epsilon) < 0. $ Hence, we can use a specific example of linear net export $ "NX" = "NX"_0 - m Y - a epsilon, $ where $display(m = -(partial"NX")/(partial Y))$ is the marginal propensity to import.

The slope of the IS curve in the open economy is $ [diff(r, Y)]_"IS" = (1 - C_Y prime - "NX"_Y prime)/(I_r prime) < 0. $ Compare this to @islm_is_Y_r.

The capital flows $"CF"$ represent financial transactions: the difference between domestic and foreign assets acquired by investors. We assume that financial assets are perfect substitutes; thus, the capital flow is positively related to the difference between exchange rates $ (partial"CF")/(partial(r - r^*)) > 0. $ This partial derivative is the mobility of capital. A specific example is liner $ "CF" = "KA" = "KA"_0 + f dot.c (r - r^*). $

Now, we can construct the BP curve since we obtain two elemets about the foreign exchange market $ "BP" = "NX" + "CF" = 0. $ Hence, we can have $ overbrace("NX"_0 - m Y - a epsilon, "NX") + overbrace("KA"_0 + f dot.c (r - r^*), "CF") = 0. $ The BP curve is the locus showing all combinations of $Y$ and $r$ such that the foreign exchange market is in equilibrium. The slope of the BP curve is $ (Delta r)/(Delta Y) = m/f > 0. $

= Some Limits of Monetary Policy



// Appendix

// #show: appendix.with()

// = Problem Sets <ps>

// == The Solow Model and the Golden Rule

// + Consider the Solow growth model 
//   $
//     cases(
//       Y &= F(K, L)\;,
//       dot(K)&=s Y - delta K\;,
//       g_L &= n\,
//     )
//   $
//   where $Y$ is output, $K$ is capital stock, and $L$ is the labor force. 

//   The function $F(K, L)$ has constant returns to scale and strictly diminishing marginal returns to capital, and the per-worker production function is $y = f(k) = F(k, 1),$ where $y = display(Y/L)$ and $k = display(K/L).$ Labor force and technology are both constant over time ($n = 0$ and $g = 0$).

//   Investment $I$ equals to saving, which is a fraction $s in (0, 1)$ of income. Capital depreciates at rate $delta in (0, 1).$ Consumption per worker is $c = (1 - s) dot.c f(k).$
//   + 
//     + Prove that the evolution of the per-worker capital stock $k$ over time is determined by $ dot(k) = s dot.c f(k) - delta k. $
//       *Proof*. By the definition of $k,$ log-differentiating and simplifying yield 
//       $
//         quad k &= K/L\
//         ==> quad dot(k)/k &= dot(K)/K - dot(L)/L\
//         ==> quad dot(k) &= (s dot.c Y/K - delta) dot.c k \
//         &= s dot.c Y/L - delta k \
//         &=s dot.c f(k) - delta k. 
//       $ #qqed
//     + Derive the condition determining the golden-rule level $star(k)$ of capital stock.\
//       *Solution*. The golden-rule level $star(k)$ maximizes the consumption under steady state. In steady state, we have $ s dot.c f(k) = delta k, $ and the consumption per worker is $ c=(1-s) dot.c f(k). $ Hence, we need to maximize $ c_"steady state" = f(k)-delta k. $ Since $f$ is concave down, $f(k)-delta k$ is also concave down when $k>0,$ and there will be only one maximum with its derivative $0.$ Hence, the condition is $f '(star(k)) = delta.$ #qqed
//     + Considering an economy starting from a saving rate where the steady-state capital stock is above the golden rule, sketch graphs of $k$ and $c$ over time following an immediate decrease in the saving rate sufficient to reach the golden rule in the long run.\
//       *Solutions*. If the economy begins in a steady state with more capital than required for the Golden rule then the saving rate must be reduced to reach the golden rule. This is because a lower saving rate implies a lower steady-state capital stock. There is a slow process of adjustment for capital where $k$ gradually falls from a higher steady state to a lower steady state.
//       #figure()[
//         #image("figures/ps_solow_1_b.jpeg", width: 86%)
//       ] #qqed
//   + Assume that $f(k) = sqrt(k),$ $delta = 0.15,$ and $s=0.3.$
//     + Find the steady-state capital stock $k_s$ per worker.\
//       *Solution*. The expression in the steady state is that $ s dot.c f(k) = delta k. $ Hence, we simply have 
//       $
//         0.3 dot.c sqrt(k_s) &= 0.15 k_s \
//         k_s &= 4.
//       $ #qqed
//     + Calculate whether this is more, less, or exactly the right amount of capital required for the golden rule.\
//       *Solution*. The expression for the golden-rule level is $ f ' (star(k))=delta. $ Hence, we have 
//       $ 
//         1/(2sqrt(star(k))) &= 0.15 \
//         star(k) &= 100/9.
//       $
//       The amount $k_s = 4$ is less than the amount required for the golden rule. #qqed 
//   + Assume that owners of capital save all of their income, while all labor income is consumed. Will the economy have more, less, or exactly the right amount of capital in the long run required for the golden rule? Explain your reasoning.\
//     *Solution*. This means that $s=1.$ Regardless of the value of $delta,$ for the expression in the steady state, we always have
//     $
//       f(k_s)=delta k_s.
//     $ <ps_solow_1_c_save_all>
//     Moreover, the condition we must have to achieve reach the golden rule is $f '(star(k))=delta,$ which is a direct consequence of @ps_solow_1_c_save_all. Therefore, the steady-state level of capital resulting from the saving behavior assumed in the question is exactly equal to the golden-rule level of capital. #qqed
// + Consider now the following Solow growth model with government spending. 

//   Output Y is produced according to the production function $Y=F(K, L), $ where $K$ is the capital stock, and $L$ is the labor force. The function $F(K, L)$ has constant returns to scale and diminishing marginal returns to capital, and the per-worker production function is $y=f(k),$ where $y:= display(Y/L),$ and $k:=display(K/L).$ The labor force being equal to the employment and total population grows at the a positive rate $n.$ There is no technical progress ($g = 0$).

//   The government purchases $G=gamma L$ units of consumption goods, where $gamma>0$ is per-capita government spending. The government finances its purchases through lump-sum taxes, so that the government budget is balanced, $G=T,$ where $T$ denotes total taxes. Investment $I$ equals saving being a constant fraction $s in (0, 1)$ of disposable income $Y-T.$ Capital depreciates at rate $delta in (0, 1).$
//   + Derive analytically the balanced growth path for capital, $K$, and output per capita, $y$, and show how the steady-state level of capital per worker, $k$, is determined. (Hint: use the condition $C(t) + I(t) + G(t) = Y(t)$.)\
//     *Solution*. Using the dynamics of capital stock, we firstly have 
//     $
//       dot(K) &= I - delta K\
//       &=s dot.c (Y-T) - delta K\
//       &=s dot.c (Y- gamma L) - delta K\
//       ==> quad dot(K)/K &= s dot.c (y-gamma)/k-delta.
//     $ <eq_ps_solow_2_a_dynamics_capital> By the definition of $k,$ log-differentiating and plugging in @eq_ps_solow_2_a_dynamics_capital yield 
//     $
//       dot(k)/k &= dot(K)/K - dot(L)/L\
//       &=s dot.c (y-gamma)/k-delta - n\
//       ==> quad dot(k) &= s dot.c (y - gamma) - (delta + n) dot.c k\
//       &= s dot.c (f(k) - gamma) - (n + delta) dot.c k.
//     $
//     The steady state is when $dot(k)=0,$ i.e., $ s dot.c f(k) = s gamma + (n + delta) dot.c k. $ #qqed
//   + Illustrate graphically that there can be two steady states, one with high capital per worker, $overline(k)$, and one with low $underline(k)$. Which steady state does the economy converge to? Why the other steady-state is unstable?\
//     *Solution*. There will be two steady states.
//     #figure(numbering: none)[
//       #image("figures/ps_solow_2_b.jpeg", width: 43%)
//     ]
//     If $k<underline(k),$ actual investment is lower than break-even investment, and the capital stock per worker decreases over time and converges to zero. If $k>underline(k),$ the economy will diverge from $underline(k)$ making the low steady state unstable. It will ultimately converge to its stable steady state $overline(k)$ even if there is too much capital and $k > overline(k)$. Indeed, if $underline(k) < k < overline(k)$, actual investment exceeds break-even investment and the economy accumulates capital per worker. The opposite takes place when $k > overline(k)$, because break-even investment (or capital consumption line) is above the actual investment line and capital stock decreases. #qqed
//   + Ignore the unstable steady state and consider a permanent increase in per capita government spending, $gamma.$ Illustrate the paths of the following variables over time:
//     + The growth rate of capital.\
//       *Solution*. An increase in $gamma$ lowers capital per worker and output per worker in the (new) steady state. When the economy reaches its new steady state, the growth rates of aggregate output, investment and consumption will equal the growth rate in population $n,$ the growth rate of the aggregates in the previous steady state.

//       Since government in our example takes away from the public investable resources and doesn't invest itself, a higher level of government consumption will lead to lower values of capital per worker, output per worker and consumption per worker in the steady state.

//       The growth of $K$ drops, but as the economy moves to the new steady state with lower $k,$ it gradually moves back to $n.$ The dynamics of $g_K$ is illustrated below.
//       #figure()[
//         #image("figures/ps_solow_2_c_g_X.jpeg", width: 43%)
//       ] #qqed
//     + Output per capita.\
//       *Solution*. It follows the dynamics of $k,$ since $y=f(k).$ It smoothly converges to the new (and lower) steady-state level $y_s '.$ The dynamics of $y$ is illustrated below.
//       #figure()[
//         #image("figures/ps_solow_2_c_y.jpeg", width: 43%)
//       ] #qqed
//     + Private consumption per capita.\
//       *Solution*. Consumption depends on the disposable income, 
//       $
//         C&=(1-s)(Y-T)\
//         &=(1-s)(Y-G)\
//         ==> quad c &= (1-s)(y-gamma).
//       $
//       Thus, per-capita consumption sharply decreases in the short-run when the government increases its per-capita spending. Then it follows the transition path of $y(t)$ being a constant fraction of the disposable income per capita. The dynamics of $c$ is illustrated below.
//       #figure(caption: none)[
//         #image("figures/ps_solow_2_c_c.jpeg", width: 43%)
//       ] #qqed
// + Consider the Solow model of economic growth with no technological progress ($g = 0$).
  
//   The production function is $Y= F(K, L)$, where both output $Y$ and the capital stock $K$ are measured in terms of the quantity of trucks and L is the labor force. Assume each worker requires a truck in order to produce any output (new trucks), but cannot use more than one truck at the same time. Assume also that it takes four workers (and four trucks) to produce one unit of output. It implies that the production function is $ Y=1/4 min{K, L}. $ The labor force is equal to employment and grows at a constant rate $n,$ the capital stock depreciates at a constant rate $delta$, and the saving rate is $s.$ One unit of good can be turned into one truck.

//   Let $y:= display(Y/L)$ and $k:=display(K/L)$ denote output per person and capital per person respectively. The per-person production function is $y= f (k).$
//   + Write down the expression for the production function per-person and plot the corresponding Solow diagram in the $(k, y)$ space.\
//     *Solution*. This question is equivalently asking us to draw the graph of $ y = 1/4 dot.c min{k, 1}. $ The graph is depicted below.
//     #figure(numbering: none)[
//       #image("figures/ps_solow_3_a.jpeg", width: 43%)
//     ] #qqed
//   + Assume now that the population grows by $0.3%$ every year ($n = 0.003$), while $0.7%$ of trucks become obsolete every year ($delta= 0.007$).
  
//     Suppose that the agents save $25%$ of their income ($s = 0.25$). Find the steady-state capital stock per person, $k_s,$ and output per person, $y_s.$ Illustrate graphically.\
//     *Solution*. The expression in the steady state is $ s dot.c f(k_s)=(delta + n) dot.c k_s. $ Hence, we simply have 
//     $
//       0.25 dot.c 1/4 dot.c min{k_s, 1} = 0.01 dot.c k_s.
//     $
//     #figure(caption: "Determination of "+$k_s$)[
//       #image("figures/ps_solow_3_b.jpeg", width: 43%)
//     ] <ps_solow_3_b>
//     After drawing the equations, we can see that $k_s=6.25.$ #qqed
//   + Define the golden rule level of the capital per capita $star(k)$ on the balanced growth path and find its value for the parameters given in b.\
//     *Solution*. The expression for the golden-rule level is $ f ' (star(k))=delta + n. $ However, since $f$ is kinked at $k=1,$ we can only analyze the slope.

//     When $k<1,$ we have $f '(k) = display(1/4) > 0.01;$ when $k<1,$ we have $f '(k) = 0 < 0.01.$ hence, the golden-rule level of capital per capital is $1.$ #qqed
//   + Justify whether the saving rate of $25%$ is too low or too high to reach the golden rule. Determine the golden-rule saving rate $star(s).$ \
//     *Solution*. From @ps_solow_3_b, it will be optimal to reduce the saving rate $s$ until the increasing segment of the actual investment $s dot.c f(k)$ starts to coincide with the break-even investment line $(n+delta) dot.c k.$ That is, the golden-rule saving rate has to satisfy $ star(s) dot.c f '(k) = n + delta, $ which implies $ star(s) dot.c 1/4 &= 0.01 \ star(s) &= 0.04. $ Hence, $25%$ is too high. #qqed

// == Endogenous Growth

// + Consider an economy where output is given by $ Y(t) = (K(t))^alpha (A(t)L(t))^(1-alpha). $ <ps_endo_1_output> Let the population be constant and equal to $1,$ i.e., $L(t)=1$ for all $t,$ and thus $n=0.$ #h(1fr)

//   Suppose there is no depreciation, i.e., $delta=0$, so that the capital accumulation is given by $ dot(K)(t)=s dot.c Y(t). $ <ps_endo_1_capital_accumulation> Assume that the knowledge accumulation occurs as a side-effect of goods production, $ dot(A)(t)=B dot.c Y(t). $ <ps_endo_1_side_effect>
//   + Find expressions for $g_A (t)$ and $g_K (t)$ in terms of $A(t),$ $K(t),$ and the parameters.\
//     *Solution*. We first find $g_A (t).$ Plugging @ps_endo_1_output in @ps_endo_1_side_effect, we have 
//     $
//       dot(A)(t) &= B dot.c (K(t))^alpha (A(t)L(t))^(1-alpha)\
//       ==> quad g_A (t) &= B dot.c (K(t) / A(t))^alpha (L(t))^(1-alpha)\
//       &= B dot.c (K(t) / A(t))^alpha.
//     $ <ps_endo_1_a_g_A> We now find $g_K (t).$ Plugging @ps_endo_1_output in @ps_endo_1_capital_accumulation, we have 
//     $
//       dot(K)(t) &= s dot.c (K(t))^alpha (A(t)L(t))^(1-alpha) \
//       ==> quad g_K (t) &= s dot.c (K(t))^(alpha-1) (A(t)L(t))^(1-alpha)\
//       &=s dot.c (A(t) / K(t))^(1-alpha).
//     $ <ps_endo_1_a_g_K> #qqed
//   + Sketch $dot(g_A)=0$ and $dot(g_K)=0$ lines in $(g_A, g_K)$ space.\
//     *Solution*. From @ps_endo_1_a_g_A and @ps_endo_1_a_g_K, we log-differentiate and have 
//     $ 
//       (dot(g_A)(t)) / (g_A (t)) &= alpha dot.c (g_K (t) - g_A (t))\
//       ==> quad dot(g_A)(t) &= alpha dot.c (g_K (t) - g_A (t)) dot.c g_A (t)
//     $
//     and 
//     $ 
//       (dot(g_K)(t)) / (g_K (t)) &= (1-alpha) dot.c (g_A (t) - g_K (t))\
//       ==> quad dot(g_K)(t) &= (1-alpha) dot.c (g_A (t) - g_K (t)) dot.c g_K (t).
//     $
//     Hence, both $dot(g_A)=0$ and $dot(g_K)=0$ are the equation $g_K - g_A = 0.$ However, we have to note the tendencies of $dot(g_K)$ and $dot(g_A).$ For $dot(g_A)(t),$ if we fix a $g_A,$ the greater $g_K$ is, the greater $dot(g_A)(t)$ is; hence, above the line is $dot(g_A)>0,$ and below the line is $dot(g_A)<0.$ For $dot(g_K)(t),$ if we fix a $g_K,$ the greater $g_A$ is, the greater $dot(g_K)(t)$ is; hence, to the right of the line is $dot(g_A) > 0,$ and to the left of the line is $dot(g_A) < 0.$
//     #figure(caption: [Phase diagram for $g_A$ and $g_K.$])[
//       #image("figures/ps_endo_1_b.jpeg", width: 43%)
//     ] <ps_endo_1_b> #qqed
//   + Does the economy converge to a balanced growth path? If so, what are the growth rates of $K, A,$ and $Y$ on the balanced growth path?\
//     *Solution*. From @ps_endo_1_b, we can see that the economy converges to the balanced growth path. That is, the economy converges to some point lying on $g_A = g_K.$ To determine the path, we need to combine the expressions for $g_A (t)$ and $g_K (t)$ derived in a and try to explicitly express $g_K (t)$ from $g_A (t).$ We simply use @ps_endo_1_a_g_K to divide @ps_endo_1_a_g_A and have 
//     $ 
//       (g_K (t))/(g_A (t)) &= s/B dot.c (A(t) / K(t))^(1-alpha) dot.c (A(t) / K(t))^alpha\
//       &= s/B dot.c ((g_A (t))/B)^(-1/alpha)\
//       ==> quad g_K (t) &= s dot.c (B / (g_A (t)))^(1/alpha - 1).
//     $ <ps_endo_g_k_by_g_A>
//     Plugging the equilibrium, on the balanced growth path, $g_A = g_K=star(g)$ into @ps_endo_g_k_by_g_A, we obtain $ star(g)=s^alpha B^(1-alpha). $ To find the growth rate of output on the balanced growth path, log-differentiating @ps_endo_1_output yields $ g_Y = alpha g_K + (1-alpha)g_A. $ Since we are focusing on the balanced growth path, we plug $g_A = g_K=star(g)$ in and have $ g_Y=star(g). $
//     #figure()[
//       #image("figures/ps_endo_1_b_convergence_BPG.jpeg", width: 43%)
//     ] #qqed
//   + How does an increase in $s$ affect long-run growth?\
//     *Solution*. The increase in $s$ will shift neither $dot(g_A)=0$ nor $dot(g_K)=0$ since both will coincide with the line $g_A=g_K.$ However, the hyperbola in @ps_endo_g_k_by_g_A will shift outwards.
    
//     #figure()[
//       #image("figures/ps_endo_1_c_new_steady_state.jpeg", width: 43%)
//     ]
    
//     Since the change in $s$ does not affect $g_A,$ whereas it increases $g_K,$ the economy will jump from point $E$ to point $F,$ where $F$ is just above $E.$ Then, the economy will gradually converge to the new steady state at point $E_"new".$ #qqed
// + Many economists ave criticized endogenous growth models on the basis of the existence of scale effects by which large countries should have higher growth rates than small countries.

//   Consider a model where productivity growth is an externality caused by capital accumulation. With usual notations, consider the following model
//   $
//     cases(
//       Y &= A K^alpha L^(1-alpha)\;,
//       A &= B K^ phi.alt\;,
//       dot(K) &= s Y\;,
//       g_L &= n\,,
//     )
//   $
//   with $n>0$ and $alpha, s in (0, 1).$
//   + Write $g_K$ as a function of $K, L,$ and the model's parameters.\
//     *Solution*. We plug $Y = A K^alpha L^(1-alpha)$ and $A = B K^ phi.alt$ into $dot(K) = s Y,$ having 
//     $
//       dot(K) &= s B K^phi.alt K^alpha L^(1-alpha)\
//       ==> quad g_K &= s B L^(1-alpha)K^(alpha+ phi.alt - 1).
//     $ #qqed
//   + Derive an expression of $g_Y$ depending on $g_K$ and $g_L.$ What inequality mush hold so that there exists a balanced growth path, i.e., a regime where $g_Y$ and $g_K$ are strictly positive constants? How does $g_y$ vary with $n?$\
//     *Solution*. We log-differentiate the first assumption and have 
//     $
//       g_Y &= g_A + alpha g_K + (1-alpha) g_L\
//       &= phi.alt g_K + alpha g_K + (1-alpha) dot.c g_L\
//       &= (phi.alt + alpha) dot.c g_K + (1-alpha) dot.c g_L.
//     $
//     The sufficient condition that there exists a balanced growth path is to have the @solow_same_growth_rate. Hence, we must have $ g_Y = ((1 - alpha) dot.c n) / (1 - phi.alt - alpha). $ <ps_endo_2_b_g_Y> This suggests that the denominator cannot be zero. Since growth rates are positive, the inequality $ 1 - phi.alt - alpha > 0 $ must hold. We now derive the expression for $g_y.$ From @ps_endo_2_b_g_Y, since $y = display(Y/L),$ we have $ g_y &= g_Y - n \ &= (phi.alt n) / (1 - phi - alpha). $ Hence, $g_y$ is increasing in $n.$ More population growth means more people, thus more output, hence more capital accumulation and ultimately more productivity. #qqed
//   + Now replace the second equation in the model by $display(A = B dot.c (K/L)^phi.alt).$ Write an expression for $g_K$ along a balanced growth path. What value(s) of $phi.alt + alpha$ is consistent with the existence of a balanced growth path? How does $g_y$ vary with $n?$ Interpret the differences between the two models.\
//     *Solution*. We plug $Y = A K^alpha L^(1-alpha)$ and $display(A = B dot.c (K/L)^phi.alt)$ into $dot(K) = s Y,$ having 
//     $
//       dot(K) &= s B dot.c (K/L)^phi.alt K^alpha L^(1-alpha)\
//       ==> quad g_K &= s B L^(1 - phi.alt - alpha)K^(alpha+ phi.alt - 1)\
//       &= s B dot.c (L/K)^(1-phi.alt-alpha).
//     $ The balanced growth path requires $g_K$ to be a constant. Hence, either the variable $display(L/K)$ is constant or $1-phi.alt-alpha = 0.$ For the first case, $display(L/K)$ being constant implies the growth rate of $display(L/K)$ is $0,$ which means $g_K = g_L = n;$ there is no growth in output $y$ per capita. For the second case, $phi.alt - alpha = 1$ implies $g_K = g_Y = s B;$ the model has a balanced growth path where $g_y = s B - n.$

//     In the first (initially given) model, productivity depends on the aggregate stock of capital, that goes up when $n$ goes up. In the second model, productivity depend on the capital-labor ratio, which decreases when population growth is higher (because more workers come up at each period); in this case population growth makes the growth rate of income per capita decrease. #qqed
// + Consider the continuous-time growth model with physical capital $K_t$ and human capital $H_t$ 
//   $
//     cases(
//       Y_t &= ((1-a_K)K_t)^alpha ((1-a_H)H_t)^(1-alpha)\;,
//       dot(K)_t &= s Y_t-delta_K K_t\;,
//       dot(H)_t &= (a_K K_t)^gamma (a_H H_t)^phi.alt (A_t L_t)^(1-gamma-phi.alt) -delta_H H_t\;,
//       dot(L)_t &= n L_t\;,
//       dot(A)_t &= g A_t\,,
//     )
//   $
//   with 
//   $
//     a_K, a_H, alpha, gamma, phi.alt, delta_K, delta_H in (0, 1), qquad gamma+phi.alt > 1, quad "and" quad n, g > 0.
//   $ The fractions $a_K$ and $a_H$ respectively stand for the proportion of total physical and human capital stocks devoted to human capital accumulation rather than to output production. The fractions $delta_K$ and $delta_H$ are the depreciation rates of physical and human capital.

//   Notice that this model assumes that human capital is produced in its own sector with its own production function. Raw labor $L$ is useful only as something to be educated, not as an input into the production of final goods. Similarly, knowledge $A$ is useful only as something that can be conveyed to students, not as a direct input to goods production.
  
//   + Define $k:=display(K/(A L))$ and $h:=display(H/(A L)).$ Derive equations for $dot(k)$ and $dot(h)$ as depending on $k$ and $h.$\
//     *Solution*. Log-differentiating the given definitions, we have 
//     $
//       dot(k)/k &= g_K - g_A - g_L\
//       &= s dot.c Y/K - delta_K - g - n\
//       &= s dot.c (1-a_K)^alpha ((1-a_H)H/K)^(1-alpha) - delta_K - g - n\
//       &= s dot.c (1-a_K)^alpha (1-a_H)^(1-alpha) h^(1-alpha) k^(alpha-1) - delta_K - g - n\
//       ==> quad dot(k) &=s dot.c ((1-a_K)k)^alpha ((1-a_H)h)^(1-alpha) - (delta_K + g + n) k
//     $ <ps_endo_3_a_k_dot> and 
//     $
//       dot(h)/h &= g_H - g_A - g_L\
//       &= (a_K K)^gamma power(a_H, phi.alt)power(H,phi.alt-1) (A L)^(1-gamma-phi.alt) -delta_H - g - n\
//       ==> quad dot(h) &= (a_K k)^gamma (a_H h)^phi.alt - (delta_H + g + n) h.
//     $ <ps_endo_3_a_h_dot> #qqed
//   + Derive an equation describing the set of combinations of $k$ and $h$ such that $dot(k)=0.$ Sketch it in the $(k, h)$ space. Do the same for $dot(h)=0$ on the same graph.\
//     *Solution*. We need some patience and algebra sense to answer this question. We will use more subscripts with calligraphic capital letters to represent constants to avoid visual confusion. We first deal with $dot(k)=0.$ In this case, we have 
//     $
//     s dot.c ((1-a_K)k)^alpha ((1-a_H)h)^(1-alpha) &= (delta_K + g + n) k\
//       underbrace(s dot.c (1-a_K)^alpha (1-a_H)^(1-alpha), cal(S)) h^(1-alpha) &= underbrace((delta_K + g + n), cal(K)) k^(1-alpha)\
//       h &= (cal(K)/cal(S))^(1/(1-alpha)) k,
//     $ <ps_endo_3_b_k_dot> which shows a proportional relationship between $h$ and $k.$ We now deal with $dot(h)=0.$ In this case, we have 
//     $
//       (delta_H + g + n) h &= (a_K k)^gamma (a_H h)^phi.alt\
//       underbrace((delta_H + g + n), cal(H)) h^(1-phi.alt) &= underbrace(power(a_K, gamma)power(a_H, phi.alt), cal(A))k^gamma\
//       h &= (cal(A)/cal(H))^((1)/(1-phi.alt)) k^((gamma)/(1-phi.alt)).
//     $ <ps_endo_3_b_h_dot> Since $gamma + phi.alt > 1,$ the graph of @ps_endo_3_b_h_dot will be a power function with power $display((gamma)/(1-phi.alt)) != 1.$ See the following figure for graphs of the equations.
//     #figure()[
//       #image("figures/ps_endo_3_b.jpeg", width: 43%)
//     ] #qqed
//   + Based on the graph of the previous question, explain why $k$ and $h$ tend to some limit for any initial conditions.\
//     *Solution*. From @ps_endo_3_a_k_dot, we fix $k$ and find that the greater $h$ is, the greater $dot(k)$ is; hence, above the line is $dot(k)>0,$ and below the line is $dot(k)<0.$ Use the following figure for assistance.
//     #figure()[
//       #image("figures/ps_endo_3_c_k_dot.jpeg", width: 43%)
//     ]
//     From @ps_endo_3_a_h_dot, we fix $h$ and find that the greater $k$ is, the greater $dot(h)$ is; hence, to the right of the curve is $dot(h)>0,$ and to the left of the curve is $dot(h)<0.$ Use the following figure for assistance.
//     #figure()[
//       #image("figures/ps_endo_3_c_h_dot.jpeg", width: 43%)
//     ]
//     Combining both of them will suggest the following figure, which shows that any initial condition will converge to the intersection.
//     #figure()[
//       #image("figures/ps_endo_3_c_convergence.jpeg", width: 43%)
//     ] #qqed
//   + Suppose that $dot(k)=dot(h)=0.$ What is the growth rate of physical capital per capita, the one of human capital per capita, and the one of output per capita?\
//     *Solution*. By assumption, we have 
//     $
//       g_K - g_L - g_A = 0 quad "and" quad g_H - g_L - g_A = 0.
//     $
//     Hence, 
//     $
//       g_(K/L) &= g_K - g_L \
//       &= g_A\
//       &= n
//     $
//     and 
//     $
//       g_(H/L) &= g_H - g_L \
//       &= g_A\
//       &= n.
//     $
//     Log-differentiating the first assumption yields 
//     $
//       g_Y &= alpha g_K + (1-alpha) g_H\
//       &= alpha (g_L + g_A) + (1-alpha) (g_L + g_A)\
//       &= g + n.
//     $
//     Hence, 
//     $
//       g_y &= g_Y - n\
//       &= g.
//     $ #qqed

// == Theory of Consumption

// + Consider the two-period Fisher model of consumption choice. An individual receives income $Y_1 > 0$ in the first period and income $Y_2>0$ in the second period, and one can save or borrow at real interest rate $r>0.$ One optimally chooses consumption plan $(C_1, C_2).$ His utility function is $U,$ which is strictly increasing in each argument, strictly quasi-concave, and continuously differentiable. We also assume that 
//   $
//     pdiff(U, C_1)(C_1, C_2) limits(-->)^(C_1->0) infinity doub "for all" doub C_2>0 quad "and" quad pdiff(U, C_2)(C_1, C_2) limits(-->)^(C_2->0) infinity doub "for all" doub C_1>0.
//   $
//   The individual maximizes $U$ under the intertemporal budget constraint.
//   + Write down an equation for the individual's life-time budget constraint (i.e. the $(C_1, C_2)$ that the individual can afford). Draw a diagram illustrating how the optimal consumption plan is determined.\
//     *Solution*. By @consumption_IBC, the individual's lifetime budget constraint is 
//     $
//       C_1 + C_2 / (1+r) = Y_1 + Y_2 / (1+r).
//     $ <pc_consumption_1_a_bc>
//     The optimal consumption bundle $(C_1, C_2)$ is determined by maximizing the utility function $U$ such that $U(C_1, C_2)$ attains the maximum under the budget constraint. The optimal consumption bundle $(C_1, C_2)$ is the point where is @pc_consumption_1_a_bc is the tangent to $U(C_1, C_2)=U_0.$
//     #figure()[
//       #image("figures/pc_consumption_1_a.png", width: 43%)
//     ]
//     #qqed
//   + Consider that the real interest rate rises. How does it affect the life-time budget constraint? Would a saver ever find it rational to start borrowing when interest rates rise?\
//     *Solution*. Since $display(Y_1 + Y_2 / (1+r))$ is constant, we can simplify the @pc_consumption_1_a_bc to 
//     $
//       C_2 = -(1+r)C_1 + (1+r)Y_1 + Y_2.
//     $
//     Hence, if $r$ rises, the slope of @pc_consumption_1_a_bc will be smaller, i.e., the line will be steeper and pivot clockwise around the endowment point $(Y_1, Y_2).$

//     After the rise in the interest rate, it is impossible for a rational saver to be a borrower since the bundles were available before the rise in the interest rate from $r$ to $r ',$ but they (illustrated in the following figure with yellow) were not chosen by the consumer.
//     #figure()[
//       #image("figures/pc_consumption_1_b.png", width: 43%)
//     ]
//     #qqed
//   + Could a saver respond to a rise in $r$ by saving *less*? Explain.\
//     *Solution*. Yes. A saver can respond to a rase in $r$ by saving less. We should answer by considering the _substitution effect_ (can be seen on a unique indifference curve) and the _income effect_ (can be seen between two parallel budget constraint). 
    
//     The substitution effect is defined as the response to the new interest rate, after hypothetically giving (or taking away) an amount of income that allows the individual just to afford a consumption point on the original indifference curve. The substitution effect is found by locating the point on the original indifference curve where the gradient is equal to the new gradient of the budget constraint. Since the budget constraint becomes steeper owing to the higher interest rate, the substitution effect implies a movement up and to the left the indifference curve, which means a reduction in current consumption. Intuitively, high interest rates make current consumption relatively more expensive than future consumption by raising the return to lending, thus encouraging saving and discouraging the current spending.

//     The income effect is defined as the response to removing the hypothetical increase or decrease of income that was used to calculate the substitution effect. Thus, by definition, the sum of the income and substitution effects is equal to the overall response to the change in interest rates. The nature of the income effect depends on whether the individual was initially a borrower or a saver. In this question, the individual is a saver, so the initial consumption point is to the left of the endowment point.

//     As a result of the higher interest rate, the budget constraint pivots clockwise around the endowment point. This shows that there must be a hypothetical decrease in income to calculate the substitution effect. This corresponds to the dashed budget line with the same gradient as the new budget line, but in a lower position that allows a consumption point on the original indifference curve to be just affordable.

//     Calculating the income effect means obtaining the effect of removing this hypothetical decrease in income, that is, the effect of the parallel shift of the budget constraint from the dashed line to the one passing through the endowment point. This is an upward shift, and given the assumption that consumption is a normal good, the response of current consumption to this shift is positive.

//     With a positive income effect and a negative substitution effect, the overall response of current consumption $C_1$ (and thus saving $S = Y_1-C_1$) is ambiguous. When the income effect dominates, an increase in $r$ leads to a reduction in savings; when the substitution dominates, an increase in $r$ leads to a rise in savings.

//     A specific example is in @consumption_CIES. When $theta>1,$ we can know that if $Y_2 = 0,$ the optimal consumption in the first period 
//     $
//       star(C_1) &= Y_0 / (1 + display(((beta dot.c (1+r))^(1/theta))/(1+r)))\
//       &=Y_0 / (1 + beta^(1/theta)) dot.c (1+r)^((1-theta)/(theta))
//     $
//     is decreasing in $r.$
//     #figure()[
//       #columns(2)[
//         #image("figures/pc_consumption_1_c_1.png", width: 100%)
//         #colbreak()
//         #image("figures/pc_consumption_1_c_2.png", width: 100%)
//       ]
//     ] #qqed
// + Consider an individual who lives from $0$ to $T,$ and whose lifetime utility is given by $ U(C_0, dots, C_T)=sum_(t=0)^T u(C(t)), $ where $u '>0$ and $u ''<0.$ The integer $T$ is greater than $2.$

//   The individual's income is exogenously given by
//   $
//     Y(t) = cases(
//       Y_0 + g t\, quad &"if" doub t=0\, dots\, R\;,
//       0\, &"if" doub t=R+1\, dots\, T\,
//     )
//   $
//   where $g > 0.$ The retirement age, $R >= 1,$ satisfies $R + 1 < T.$ The interest rate is zero, the individual has no initial wealth, and there is no uncertainty.
//   + What is the individual's lifetime budget constraint?\
//     *Solution*. We have to make the lifetime consumption equal life time income. Hence, the budget constraint is 
//     $
//       sum_(t=0)^R Y_0 + g t &= sum_(t=0)^T C_t\
//       <==> quad (R+1) Y_0 + g dot.c (R dot.c (R+1))/2 &= sum_(t=0)^T C_t.
//     $ <pc_consumption_2_bc> #qqed
//   + Prove that the individual wishes constant $C(t)$ for all dates $t in {0, dots , T}.$\
//     *Proof*. Without loss of generality, assume $C(t_1) > C(t_2)$ for some $t_1 != t_2 in {0, dots , T},$ and this sequence of consumption will yield optimal. Since $u$ is strictly concave, we will have 
//     $
//       u((C(t_1)+C(t_2))/2) > display(u(C(t_1))+u(C(t_2)))/2.
//     $
//     Hence, there is one more consumption bundle $(display((C(t_1)+C(t_2))/2), display((C(t_1)+C(t_2))/2))$ at $t_1$ and $t_2$ on the budget constraint (since $r=0$) that yields a greater utility, a contradiction. Therefore, the individual wishes constant consumption for all dates. #qqed
//   + What is the path of the individual's wealth as a function of $t?$\
//     *Solution*. From @pc_consumption_2_bc, we know that the constant consumption 
//     $
//       star(C) = (R+1)/(T+1) dot.c (Y_0 + (g R)/2).
//     $
//     Hence, we simply have 
//     $
//       W(t) = cases(
//         display(sum_(tau = 0)^t (Y_0 + g tau) - (t + 1) star(C))\, quad & "if" t <= R\;,
//         W(R) - (t + 1) star(C)\, quad & "else."
//       )
//     $
//     Since $W(R)=display((R+1) Y_0 + g dot.c (R dot.c (R+1))/2)$ and $star(C) = display((R+1)/(T+1) dot.c (Y_0 + (g R)/2)),$ we can further simplify $W(t)$ and have 
//     $
//       W(t) = cases(
//         display((t+1) dot.c (Y_0 + (g t)/2 - star(C)))\, quad & "if" t <= R\;,
//         (T-t) star(C)\, quad & "else."
//       )
//     $ #qqed
// + Consider an individual who lives for three periods.

//   In period 1, his or her objective function is $ U_1(C_1, C_2, C_3) = ln C_1 + beta dot.c (ln C_2 + ln C_3), $ where $beta in (0, 1)$ is the discount factor. In period 2, it is $ U_2(C_2, C_3)=ln C_2 + beta ln (C_3). $

//   #newpar Since the individual's period-$3$ choice problem is trivial (one should consume whatever is remaining), the period-$3$ objective function is irrelevant.

//   The individual has initial wealth $W>0$ and faces a real interest rate $r=0.$
//   + Find the values of $C_1,$ $C_2,$ and $C_3$ under the following assumptions about how they are determined.
//     + (_Commitment_) The individual chooses $C_1,$ $C_2,$ and $C_3$ in period 1.\
//       *Solution*. We want to maximize 
//       $
//         U_1(C_1, C_2, C_3)
//       $ <pc_consumption_3_a_i_maximizee>
//       under the budget constraint
//       $
//         C_1 + C_2 + C_3 = W.
//       $ <pc_consumption_3_a_i_bc>
//       Hence, we substitute $C_3$ by $W-C_1-C_2$ in @pc_consumption_3_a_i_maximizee and have 
//       $
//         U_1(C_1, C_2, C_3) &= U_1(C_1, C_2, W-C_1-C_2)\
//         &= ln C_1 + beta dot.c ln C_2 + beta dot.c ln (W-C_1-C_2).
//       $
//       We first differentiate $U_1$ with respect to $C_1$ and to $C_2,$ we have
//       $
//         pdiff(U_1, C_1)(C_1, C_2, C_3) &= 1/C_1 - beta/(W-C_1-C_2)
//       $
//       and 
//       $
//         pdiff(U_1, C_2)(C_1, C_2, C_3) &= beta/C_2 - beta/(W-C_1-C_2).
//       $
//       Setting the partial derivatives to zero, we solve the system 
//       $
//         & cases(
//           display(1/C_1 - beta/(W-C_1-C_2) &= 0)\,,
//           display(beta/C_2 - beta/(W-C_1-C_2) &= 0)\;
//         )\
//         ==> quad & cases(
//           beta C_1 &= W-C_1-C_2\,,
//           #hide($beta$) C_2 &= W-C_1-C_2\;
//         )\
//         ==> quad & cases(
//           star(C_1) &= display(W / (1+2 beta))\,,
//           star(C_2) &= display((beta W) / (1+2 beta))\,,
//           star(C_3) &= display((beta W) / (1+2 beta)).
//         )
//       $ #qqed
//     + (_No commitment, naïvete_) The individual chooses $C_1$ in period 1 to maximize the period-1 objective function, thinking he or she will also choose $C_2$ to maximize this objective function. In fact, however, the individual chooses $C_2$ to maximize the period-2 objective function.\
//       *Solution*. Let $tilde(C_1)$ be the choice of the individual in period 1, which should be considered a constant. We now want to maximize 
//       $
//         U_2(C_2, C_3)
//       $ <pc_consumption_3_a_ii_maximizee>
//       under the budget constraint
//       $
//         tilde(C_1) + C_2 + C_3 = W.
//       $ <pc_consumption_3_a_ii_bc>
//       Hence, we substitute $C_3$ by $W-tilde(C_1)-C_2$ in @pc_consumption_3_a_ii_maximizee and have 
//       $
//         U_2(C_2, C_3) &= U_2(C_2, W-tilde(C_1)-C_2)\
//         &= ln tilde(C_2) + beta dot.c ln (W-tilde(C_1)-C_2).
//       $
//       We first differentiate $U_1$ with respect to $C_2,$ we have
//       $
//         pdiff(U_1, C_2)(C_2, C_3) &= 1/C_2 - beta/(W-tilde(C_1)-C_2).
//       $
//       Setting the partial derivative to zero, we have 
//       $
//         1/C_2 - beta/(W-tilde(C_1)-C_2) &= 0\
//         ==> qquad qquad qquad quad beta C_2 &= W - tilde(C_1) - C_2\
//         ==> qquad qquad qquad quad #hide($beta$) C_2 &= (W-tilde(C_1))/(1 + beta).
//       $ 
//       Thus, $C_3 = display((beta dot.c (W - tilde(C_1)))/(1+beta))$ by @pc_consumption_3_a_ii_bc. In period 1, the individual chooses $C_1$ just as she did under commitment since she (wrongly) believes she will choose $C_2$ in the same way as under commitment. Thus, we have $ tilde(C_1) = star(C_1), $ where $star(C_1)$ is the one in the last question. Therefore, 
//       $
//         cases(
//           star(C_1) &= display(W / (1+2 beta))\,,
//           star(C_2) &= display((2 beta W) / ((1+beta)(1+2 beta)))\,,
//           star(C_3) &= display((2 beta^2 W) / ((1+beta)(1+2 beta))).
//         )
//       $ #qqed
//     + (_No commitment, sophistication_) The individual chooses $C_1$ in period 1 to maximize the period-1 objective function, realizing that he or she will choose $C_2$ in period 2 to maximize the period-2 objective function.\
//       *Solution*. From the previous question, we know that if one is maximizing the period-2 objective function, we must have 
//       $
//         star(C_2)(C_1) = display((W - C_1)/(1 + beta)) quad "and" quad star(C_3)(C_1) = display((beta dot.c (W - C_1))/(1+beta)).
//       $ <pc_consumption_3_a_iii_relation> That is, $C_2$ and $C_3$ will be uniquely determined by $C_1.$ Hence, by @pc_consumption_3_a_iii_relation, we only need to maximize
//       $
//         &#hide($=$)U_1(C_1, star(C_2)(C_1), star(C_3)(C_1))\
//         &= ln C_1 + beta dot.c (ln star(C_2)(C_1)) + beta dot.c (ln star(C_3)(C_1))\
//         &= ln C_1 + beta dot.c (ln (W - C_1)/(1 + beta)) + beta dot.c (ln (beta dot.c (W - C_1))/(1+beta))\
//         &= ln C_1 + beta ln (W-C_1) - beta ln (1+beta) + beta ln (W-C_1) + beta ln beta/(1+beta).
//       $ <pc_consumption_3_a_iii_maximizee>
//       Set the partial derivative of @pc_consumption_3_a_iii_maximizee with respect to $C_1$ to be zero, we have 
//       $
//         1/C_1 - beta/(W-C_1) - beta/(W-C_1) &= 0\
//         ==> qquad qquad qquad doub #hide($star(C_1)$) W-C_1 - 2beta dot.c C_1 &= 0\
//         ==> qquad qquad qquad doub #hide($W-C_1 - 2beta dot.c C_1$) star(C_1) &= W/(1+2 beta).
//       $
//       We can hence see that the three-tuple $(star(C_1), star(C_2), star(C_3))$ is the same as the one in the previous question. #qqed
//   + Use your answers to parts (a) and (b) to explain in what sense the individuals' preferences are time-inconsistent. Explain intuitively why sophistication does not produce different behavior than naïvete.\
//     *Solution*. The individual's preferences are time-inconsistent because the optimal choice of period-2 consumption that is made in the first period is no longer the optimal choice once period 2 actually arrives.

//     This is illustrated by the fact that if the individual does not commit to period-2 consumption in the first period, then when period 2 arrives one chooses
//     $
//       tilde(C_2) &= (2 beta W) / ((1+beta)(1+2 beta))\
//       &= 2/(1+beta) dot.c (beta W)/(1+2beta)\
//       &> (beta W)/(1+2beta)\
//       &= star(C_2),
//     $
//     where the inequality holds because
//     $
//       2/(1+beta)&>2/(1+1)\ &=1
//     $
//     with the discount factor $beta in (0, 1).$

//     From the period-1 objective function we can see that in the first period the individual is indifferent between period-2 and period-3 consumption; they are both discounted by the discount factor $beta < 1.$

//     But when period 2 actually arrives, we can see from the period-2 objective function that the individual then prefers period-2 consumption over period-3 consumption: his marginal rate of substitution proportionately increases by a factor $display(1/beta).$

//     The key to the result that sophistication does not affect behavior is the assumption of log utility.

//     Think of a sophisticated individual contemplating a marginal decrease in $C_1$, relative to what a naïve individual would do. The naïve individual believes she will allocate the increase in saving equally between $C_2$ and $C_3$ and that marginal utility will be the same in the two future periods. The sophisticated individual realizes that she will, in fact, devote most of the increase in saving to $C_2$ and that $C_2$ will be high. The individual does not particularly value $C_2$ thus marginal utility in period 2 will be low. This tends to make the increase in saving look relatively less attractive to the sophisticated individual than to the naïve individual.

//     But the sophisticated individual also realizes that some of the increase in saving will be devoted to $C_3$, which will be low. The individual values $C_3$ as much as $C_2$ and thus marginal utility will be high in period 3. This tends to make the increase in saving look relatively more attractive to the sophisticated individual than to the naïve individual.

//     With log utility, these two effects exactly offset each other. With a general utility function, a sophisticated individual can consume either more or less in the first period than a naïve individual. #qqed

// == Overlapping-Generations Models

// + We consider a 3-period overlapping-generations model, where individuals born at date some date $t$ are first "Young," then "Adult," then "Old." Successive cohorts grow at rate $n > -1.$ There is only one good. The young and the adult is endowed with $1$ unit of that good, and the old is endowed with none. Hence, lifetime endowment can be written $(1, 1, 0).$ All individuals have the same utility function over consumption at the three ages: $ U(C_1, C_2, C_3) = u(C_1) + beta dot.c u(C_2) + beta^2 dot.c u(C_3), $ where $u$ is a strictly increasing and strictly concave function and $beta in (0, 1).$
//   + The real interest rate between dates $tau$ and $tau + 1$ is $r_(tau + 1).$ We call $R_(tau + 1) = display(1 / (1 + r_(tau + 1)))$ the associated (objective) discount factors. Set the problem of a consumer born at some time date $t$ without solving it.
//   + Call $(C_1(R_(t+1), R_(t+2)), C_2(R_(t+1), R_(t+2)), C_3(R_(t+1), R_(t+2)))$ the solution to the maximization problem in the previous question. Prove that some sequence of real interest rates constitute a general, intertemporal equilibrium if and only if 
//     $
//       1 + 1/(1+n) = C_1(R_(t+1), R_(t+2)) + 1/(1+n) dot.c C_2(R_(t+1), R_(t+2)) + 1/(1+n)^2 dot.c C_3(R_(t+1), R_(t+2)).
//     $
//   + Prove that $(r_tau = n)_(tau)$ constitutes a competitive equilibrium.
//   + Consider the following optimization problem $cal(P)^"SP"$: find 
//     $
//       max_(C_1, C_2, C_3) U(C_1, C_2, C_3)
//     $
//     under the constraint
//     $
//       C_1 + C_2/(1+n) + C_3/(1+n)^2 <= 1 + 1/(1+n).
//     $
//     Interpret this problem. Prove that the equilibrium  obtained in question c reaches the maximum sustainable level of welfare for all generations.
//   + Draw a picture representing all the flows of goods that go with the credit market. One should consider the case where the young and the adults save, i.e., $C_1< 1$ and $C_2<1$ at the $r=n$ equilibrium.
//   + Imagine now people have to lend to each other on a bilateral basis, hence need to meet twice for any credit contract. We assume that $n=0, u = ln,$ and $beta = 1.$ An agent born at date $t$ will
//     - incur debt $R dot.c v_d$ when young and reimburses $v_d$ when adult, and
//     - lend $R dot.c v_ell$ when adult and get reimbursement $v_ell$ when old.
//     Let $R = display(1/(1+r))>0$ be some fixed discount rate. Write and solve the agent's problem, i.e., find optimal values of $u_d$ and $u_ell$ as functions of $R.$
//   + What is the equilibrium value of $R$ in the economy with only bilateral credit?
// + Consider the following overlapping-generations model (baseline Diamond in 1965). Agents live for two periods. An agent born at date $t >= 0$ has no initial wealth and is endowed with $1$ unit of labor that one rents on the labor market in exchange for real wage $w_t.$ All agents have utility $U$ over young-age consumption $sub(c^y, t)$ and old-age consumption $sub(c^o, t+1)$ with 
//   $
//     U(sub(c^y, t), sub(c^o, t+1)) = ln (sub(c^y, t)) + beta dot.c ln (sub(c^o, t+1)),
//   $
//   where $beta in (0, 1).$ The agent save $ s_t = w_t - sub(c^y, t) $ in the first period, in which case one can consume $ sub(c^o, t+1)=(1+r_(t+1))s_t $ at old age.

//   Production per worker is $ y_t = f(k_t) = power(k_t, alpha), $ where $k_t$ is the capital-labor ratio and $alpha = (0, 1).$ Perfect competition on the inputs markets guarantee that capital and labor are priced at their marginal productivities, 
//   $
//     r_(t=1) = f '(k_(t+1)) quad "and" quad w_t = f(k_t)-k_t dot.c f '(k_t).
//   $
  
//   The growth rate of the population is constant $n.$ The capital-labor ratio at date $t$ is equal to the savings of people who are old at date $t,$ divided by $1+n.$ The capital-labor ratio at time $t=0$ is exogenously given.

//   + Set and solve the program of a date-$t$ agent. How much does one save for a wage $w_t?$\
//     *Solution*. The agent wants to find 
//     $
//       max_(sub(c^y, t), sub(c^o, t+1)) U(sub(c^y, t), sub(c^o, t+1))
//     $
//     under the constraint
//     $
//       sub(c^y, t) + sub(c^o, t+1)/(1+n) = w_t.
//     $
//     Hence, we just need to set the first derivative of $U$ is zero and have
//     $
//       diff(, sub(c^y, t))U(sub(c^y, t), (1+n)(w_t - sub(c^y, t))) &= diff(, sub(c^y, t)) ln (sub(c^y, t)) + beta dot.c ln ((1+n)(w_t - sub(c^y, t)))\
//       &= 1/sub(c^y, t) + beta dot.c 1/((1+n)(w_t - sub(c^y, t)))dot.c (-1-n)\
//       &= 1/sub(c^y, t) - beta/(w_t - sub(c^y, t))\
//       &= 0,
//     $
//     which implies $display(sub(c^y, t) = w_t/(1+beta)).$ Hence, the agent saves 
//     $
//       s_t = (beta dot.c w_t)/(1+beta).
//     $ #qqed
//   + Find a dynamic equation for $k_t,$ i.e., an equation of the form $k_(t+1)=psi(k_t)$ for some function $psi.$ Prove that $k_t$ converges to some value $star(k)$ (to be determined) as time goes to infinity.\
//     *Solution*.
//   + We consider now a "fully-funded" pension system: at each date $t,$ the government collects lump-sum taxes $tau_t$ from the young agents. The tax receipts are invested in physical capital and returned to the old generation the next period. The old at $t+1$ then get $(1+r_(t+1))tau_t$ with $0 <= tau_t < star(s_t),$ where $star(s_t)$ is the saving desired by the individuals born at time $t$ in the absence of the pension system.

//     How will the capital stock be affected by this pension system?\
//     *Solution*.
//   + We consider now a "pay-as-you-go" pension system: at each date $t,$ the government collects lump-sum taxes $tau_t$ from the young agents. The tax receipts are transferred to the old who are alive at date $t;$ hence every old at date $t$ gets $(1+n) tau_t.$ Assume that the lump-sum tax per worker is constant: $tau_t = tau$ for all $t,$ and that it is lower than the wage rate $w_t$ at all dates.

//     How will the capital stock be affected by this pension system, on impact (qualitatively)? What will happen over time?\
//     *Solution*.