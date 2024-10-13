#import "template.typ": *

#show: main_document.with(
  title: [
    Intermediate Macroeconomics
  ],
  subtitle: [
    CHANG Yung-Hsuan
  ],
  abs: [
    This is a summary note of the course \"ECO_2F002_EP Intermediate Macroeconomics\" instructed by Dr. Mehdi SENOUCI and Dr. Gauthier VERMANDEL at École polytechnique in the first semester in 2024.
  ],
  pref: [
    The following content mostly follows the lecture notes provided by the instructors, but figures are mainly re-produced; there are also some personal remarks.
    
    The last section (@ps) is about problem sets. I copied the majority of the answers as well as figures in files given by the instructors, Dr. Mehdi SENOUCI and Dr. Gauthier VERMANDEL, and the TA, PENG Lanxin.

    The texts that are *bold* are indicating keywords, while the texts that are _italic_ are indicating new nouns.
  ]
)

= The Solow Model

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
  (dot(k)(t))/k(t) = (dot(K)(t))/K(t) - (dot(A)(t))/A(t) - (dot(L)(t))/L(t),$) where $display((dot(A)(t))/A(t))=g
$
and 
$ 
  display((dot(L)(t))/L(t))=n
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

= Theory of Consumption

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
where $theta in R^+ \\ {1}.$ The constant $theta$ is the intertemporal elasticity of substitution as well as the inverse of the relative risk aversion. Note that the log utility, also known as the Cobb-Douglas utility,
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
  => quad u '(C_0) &= (1+r) dot.c beta dot.c u' (C_1).
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
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\
    display(qquad quad 1/star(C_0) &= beta dot.c (1+r) dot.c 1/star(C_1))
  )\
  => quad & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\
    display(qquad quad star(C_1) &= beta dot.c (1+r) dot.c star(C_0))
  )\
  => quad & cases(
    display(qquad quad star(C_0) &= 1/(1+beta) dot.c (Y_0 + Y_1/(1+r))),
    display(qquad quad star(C_1) &= (beta dot.c (1+r))/(1+beta) dot.c (Y_0 + Y_1/(1+r))).
  )\
$

#newpar If the instantaneous utility function $u$ is the *constant intertemporal elasticity in substitution* utility function, then the optimal consumption path $(star(C_0), star(C_1))$ must satisfy equations @consumption_fisher_IBC and @consumption_fisher_optimality_condition. Hence, we should solve 
$
  & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\
    display(quad smallspace smallspace (star(C_0))^(-theta) &= beta dot.c (1+r) dot.c (star(C_1))^(-theta))
  )\
  => quad & cases(
    display(star(C_0) + star(C_1)/(1+r) &= Y_0 + Y_1/(1+r))\
    display(qquad quad star(C_0) &= (beta dot.c (1+r))^(-1/theta) dot.c star(C_1))
  )\
  => quad & cases(
    display(qquad quad star(C_0) &= display(Y_0 + Y_1/(1+r))/display(1 + (beta dot.c (1+r))^(1/theta)/(1+r))),
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
  => quad G_0 + G_1/(1+r) &= T_0 + T_1/(1+r),
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

#newpar Compare two situations, without uncertainty and with uncertainty.

Call $star(C_0)$ the solution for $C_0$ with no uncertainty over $Y_0$ and $Y_1;$ call $C_0 '$ the solution for $C_0$ with uncertainty over $Y_1.$ Note that $C_0, Y_0, "and" Y_1$ are variables like $x$ or $y,$ while $star(C_0)$ and $C_0 '$ are solutions (constant).

See @consumption_uncertainty_convex_before and @consumption_uncertainty_convex_after about the comparison between two levels of uncertainty. In @consumption_uncertainty_convex_before and @consumption_uncertainty_convex_after, $sigma_1 < sigma_2$ and $C_0 ' > C_0 ''.$ This suggests more uncertainty leads more saving.

#figure(caption: [With convex $u ',$ a rise in $"Var"(Y_1)$ lowers optimal $C_0.$ Before the rise, the optimal is now $C_0 '.$])[
  #columns(
    2,
    gutter: 0pt
  )[
    #image("figures/consumption_uncertainty_convex_before_c_0.png", width: 86%)
    #colbreak()
    #image("figures/consumption_uncertainty_convex_before_c_1.png", width: 86%)
  ]
] <consumption_uncertainty_convex_before>

#figure(caption: [With convex $u ',$ a rise in $"Var"(Y_1)$ lowers optimal $C_0.$ After the rise, the optimal is now $C_0 ''.$])[
  #columns(
    2,
    gutter: 0pt
  )[
    #image("figures/consumption_uncertainty_convex_after_c_0.png", width: 86%)
    #colbreak()
    #image("figures/consumption_uncertainty_convex_after_c_1.png", width: 86%)
  ]
] <consumption_uncertainty_convex_after>


// Appendix

#show: appendix.with()

= Problem Sets <ps>

== The Solow Model and the Golden Rule

+ Consider the Solow growth model 
  $
    cases(
      Y &= F(K, L)\,,
      dot(K)&=s dot.c Y - delta K\,,
      g_L &= n\,
    )
  $
  where $Y$ is output, $K$ is capital stock, and $L$ is the labor force. 

  The function $F(K, L)$ has constant returns to scale and strictly diminishing marginal returns to capital, and the per-worker production function is $y = f(k) = F(k, 1),$ where $y = display(Y/L)$ and $k = display(K/L).$ Labor force and technology are both constant over time ($n = 0$ and $g = 0$).

  Investment $I$ equals to saving, which is a fraction $s in (0, 1)$ of income. Capital depreciates at rate $delta in (0, 1).$ Consumption per worker is $c = (1 - s) dot.c f(k).$
  + 
    + Prove that the evolution of the per-worker capital stock k over time is determined by $ dot(k) = s dot.c f(k) - delta k. $
      *Proof*. By the definition of $k,$ log-differentiating and simplifying yield 
      $
        quad k &= K/L\
        => quad dot(k)/k &= dot(K)/K - dot(L)/L\
        => quad dot(k) &= (s dot.c Y/K - delta) dot.c k \
        &= s dot.c Y/L - delta k \
        &=s dot.c f(k) - delta k. 
      $ #qqed
    + Derive the condition determining the golden-rule level $star(k)$ of capital stock.\
      *Solution*. The golden-rule level $star(k)$ maximizes the consumption under steady state. In steady state, we have $ s dot.c f(k) = delta k, $ and the consumption per worker is $ c=(1-s) dot.c f(k). $ Hence, we need to maximize $ c_"steady state" = f(k)-delta k. $ Since $f$ is concave down, $f(k)-delta k$ is also concave down when $k>0,$ and there will be only one maximum with its derivative $0.$ Hence, the condition is $f '(star(k)) = delta.$ #qqed
    + Considering an economy starting from a saving rate where the steady-state capital stock is above the golden rule, sketch graphs of $k$ and $c$ over time following an immediate decrease in the saving rate sufficient to reach the golden rule in the long run.\
      *Solutions*. If the economy begins in a steady state with more capital than required for the Golden rule then the saving rate must be reduced to reach the golden rule. This is because a lower saving rate implies a lower steady-state capital stock. There is a slow process of adjustment for capital where $k$ gradually falls from a higher steady state to a lower steady state.
      #figure()[
        #image("figures/ps_solow_1_b.jpeg", width: 86%)
      ] #qqed
  + Assume that $f(k) = sqrt(k),$ $delta = 0.15,$ and $s=0.3.$
    + Find the steady-state capital stock $k_s$ per worker.\
      *Solution*. The expression in the steady state is that $ s dot.c f(k) = delta dot.c k. $ Hence, we simply have 
      $
        0.3 dot.c sqrt(k_s) &= 0.15 k_s \
        k_s &= 4.
      $ #qqed
    + Calculate whether this is more, less, or exactly the right amount of capital required for the golden rule.\
      *Solution*. The expression for the golden-rule level is $ f ' (star(k))=delta. $ Hence, we have 
      $ 
        1/(2sqrt(star(k))) &= 0.15 \
        star(k) &= 100/9.
      $
      The amount $k_s = 4$ is less than the amount required for the golden rule. #qqed 
  + Assume that owners of capital save all of their income, while all labor income is consumed. Will the economy have more, less, or exactly the right amount of capital in the long run required for the golden rule? Explain your reasoning.\
    *Solution*. This means that $s=1.$ Regardless of the value of $delta,$ for the expression in the steady state, we always have
    $
      f(k_s)=delta k_s.
    $ <ps_solow_1_c_save_all>
    Moreover, the condition we must have to achieve reach the golden rule is $f '(star(k))=delta,$ which is a direct consequence of @ps_solow_1_c_save_all. Therefore, the steady-state level of capital resulting from the saving behavior assumed in the question is exactly equal to the golden-rule level of capital. #qqed
+ Consider now the following Solow growth model with government spending. 

  Output Y is produced according to the production function $Y=F(K, L), $ where $K$ is the capital stock, and $L$ is the labor force. The function $F(K, L)$ has constant returns to scale and diminishing marginal returns to capital, and the per-worker production function is $y=f(k),$ where $y:= display(Y/L),$ and $k:=display(K/L).$ The labor force being equal to the employment and total population grows at the a positive rate $n.$ There is no technical progress ($g = 0$).

  The government purchases $G=gamma L$ units of consumption goods, where $gamma>0$ is per-capita government spending. The government finances its purchases through lump-sum taxes, so that the government budget is balanced, $G=T,$ where $T$ denotes total taxes. Investment $I$ equals saving being a constant fraction $s in (0, 1)$ of disposable income $Y-T.$ Capital depreciates at rate $delta in (0, 1).$
  + Derive analytically the balanced growth path for capital, $K$, and output per capita, $y$, and show how the steady-state level of capital per worker, $k$, is determined. (Hint: use the condition $C(t) + I(t) + G(t) = Y(t)$.)\
    *Solution*. Using the dynamics of capital stock, we firstly have 
    $
      dot(K) &= I - delta K\
      &=s dot.c (Y-T) - delta K\
      &=s dot.c (Y- gamma L) - delta K\
      => quad dot(K)/K &= s dot.c (y-gamma)/k-delta.
    $ <eq_ps_solow_2_a_dynamics_capital> By the definition of $k,$ log-differentiating and plugging in @eq_ps_solow_2_a_dynamics_capital yield 
    $
      dot(k)/k &= dot(K)/K - dot(L)/L\
      &=s dot.c (y-gamma)/k-delta - n\
      => quad dot(k) &= s dot.c (y - gamma) - (delta + n) dot.c k\
      &= s dot.c (f(k) - gamma) - (n + delta) dot.c k.
    $
    The steady state is when $dot(k)=0,$ i.e., $ s dot.c f(k) = s gamma + (n + delta) dot.c k. $ #qqed
  + Illustrate graphically that there can be two steady states, one with high capital per worker, $overline(k)$, and one with low $underline(k)$. Which steady state does the economy converge to? Why the other steady-state is unstable?\
    *Solution*. There will be two steady states.
    #figure(numbering: none)[
      #image("figures/ps_solow_2_b.jpeg", width: 43%)
    ]
    If the stock of capital per worker is lower than the low steady-state value $underline(k),$ actual investment is lower than break-even investment, and the capital stock per worker decreases over time and converges to zero. If the stock of capital per worker exceeds $underline(k),$ the economy will diverge from $underline(k)$ making the low steady state unstable. It will ultimately converge to its stable steady state $overline(k)$ even if there is too much capital and $k > overline(k)$. Indeed, if $underline(k) < k < underline(k)$, actual investment exceeds break-even investment and the economy accumulates capital per worker. The opposite takes place when $k > overline(k)$, because break-even investment (or capital consumption line) is above the actual investment line and capital stock decreases. #qqed
  + Ignore the unstable steady state and consider a permanent increase in per capita government spending, $gamma.$ Illustrate the paths of the following variables over time:
    + The growth rate of capital.\
      *Solution*. An increase in $gamma$ lowers capital per worker and output per worker in the (new) steady state. When the economy reaches its new steady state, the growth rates of aggregate output, investment and consumption will equal the growth rate in population $n,$ the growth rate of the aggregates in the previous steady state.

      Since government in our example takes away from the public investable resources and doesn’t invest itself, a higher level of government consumption will lead to lower values of capital per worker, output per worker and consumption per worker in the steady state.

      The growth of $K$ drops, but as the economy moves to the new steady state with lower $k,$ it gradually moves back to $n.$ The dynamics of $g_K$ is illustrated below.
      #figure()[
        #image("figures/ps_solow_2_c_g_X.jpeg", width: 43%)
      ]
    + Output per capita.\
      *Solution*. It follows the dynamics of $k,$ since $y=f(k).$ It smoothly converges to the new (and lower) steady-state level $y_s '.$ The dynamics of $y$ is illustrated below.
      #figure()[
        #image("figures/ps_solow_2_c_y.jpeg", width: 43%)
      ]
    + Private consumption per capita.\
      *Solution*. Consumption depends on the disposable income, 
      $
        C&=(1-s)(Y-T)\
        &=(1-s)(Y-G)\
        => quad c &= (1-s)(y-gamma).
      $
      Thus, per-capita consumption sharply decreases in the short-run when the government increases its per-capita spending. Then it follows the transition path of $y(t)$ being a constant fraction of the disposable income per capita. The dynamics of $c$ is illustrated below.
      #figure(caption: none)[
        #image("figures/ps_solow_2_c_c.jpeg", width: 43%)
      ]
+ Consider the Solow model of economic growth with no technological progress ($g = 0$).
  
  The production function is $Y= F(K, L)$, where both output $Y$ and the capital stock $K$ are measured in terms of the quantity of trucks and L is the labor force. Assume each worker requires a truck in order to produce any output (new trucks), but cannot use more than one truck at the same time. Assume also that it takes four workers (and four trucks) to produce one unit of output. It implies that the production function is $ Y=1/4 min{K, L}. $ The labor force is equal to employment and grows at a constant rate $n,$ the capital stock depreciates at a constant rate $delta$, and the saving rate is $s.$ One unit of good can be turned into one truck.

  Let $y:= display(Y/L)$ and $k:=display(K/L)$ denote output per person and capital per person respectively. The per-person production function is $y= f (k).$
  + Write down the expression for the production function per-person and plot the corresponding Solow diagram in the $(k, y)$ space.\
    *Solution*. This question is equivalently asking us to draw the graph of $ y = 1/4 dot.c min{k, 1}. $ The graph is depicted below.
    #figure(numbering: none)[
      #image("figures/ps_solow_3_a.jpeg", width: 43%)
    ] #qqed
  + Assume now that the population grows by $0.3%$ every year ($n = 0.003$), while $0.7%$ of trucks become obsolete every year ($delta= 0.007$).
  
    Suppose that the agents save $25%$ of their income ($s = 0.25$). Find the steady-state capital stock per person, $k_s,$ and output per person, $y_s.$ Illustrate graphically.\
    *Solution*. The expression in the steady state is $ s dot.c f(k_s)=(delta + n) dot.c k_s. $ Hence, we simply have 
    $
      0.25 dot.c 1/4 dot.c min{k_s, 1} = 0.01 dot.c k_s.
    $
    #figure()[
      #image("figures/ps_solow_3_b.jpeg", width: 43%)
    ] <ps_solow_3_b>
    After drawing the equations, we can see that $k_s=6.25.$ #qqed
  + Define the golden rule level of the capital per capita $star(k)$ on the balanced growth path and find its value for the parameters given in b.\
    *Solution*. The expression for the golden-rule level is $ f ' (star(k))=delta + n. $ However, since $f$ is kinked at $k=1,$ we can only analyze the slope.

    When $k<1,$ we have $f '(k) = display(1/4) > 0.01;$ when $k<1,$ we have $f '(k) = 0 < 0.01.$ hence, the golden-rule level of capital per capital is $1.$ #qqed
  + Justify whether the saving rate of $25%$ is too low or too high to reach the golden rule. Determine the golden-rule saving rate $star(s).$ \
    *Solution*. From @ps_solow_3_b, it will be optimal to reduce the saving rate $s$ until the increasing segment of the actual investment $s dot.c f(k)$ starts to coincide with the break-even investment line $(n+delta) dot.c k.$ That is, the golden-rule saving rate has to satisfy $ star(s) dot.c f '(k) = n + delta, $ which implies $ star(s) dot.c 1/4 &= 0.01 \ star(s) &= 0.04. $ Hence, $25%$ is too high. #qqed

== Endogenous Growth

+ Consider an economy where output is given by $ Y(t) = (K(t))^alpha (A(t)L(t))^(1-alpha). $ <ps_endo_1_output> Let the population be constant and equal to $1,$ i.e., $L(t)=1$ for all $t,$ and thus $n=0.$ #h(1fr)

  Suppose there is no depreciation, i.e., $delta=0$, so that the capital accumulation is given by $ dot(K)(t)=s dot.c Y(t). $ <ps_endo_1_capital_accumulation> Assume that the knowledge accumulation occurs as a side-effect of goods production, $ dot(A)(t)=B dot.c Y(t). $ <ps_endo_1_side_effect>
  + Find expressions for $g_A (t)$ and $g_K (t)$ in terms of $A(t),$ $K(t),$ and the parameters.\
    *Solution*. We first find $g_A (t).$ Plugging @ps_endo_1_output in @ps_endo_1_side_effect, we have 
    $
      dot(A)(t) &= B dot.c (K(t))^alpha (A(t)L(t))^(1-alpha)\
      => quad g_A (t) &= B dot.c (K(t) / A(t))^alpha (L(t))^(1-alpha)\
      &= B dot.c (K(t) / A(t))^alpha.
    $ <ps_endo_1_a_g_A> We now find $g_K (t).$ Plugging @ps_endo_1_output in @ps_endo_1_capital_accumulation, we have 
    $
      dot(K)(t) &= s dot.c (K(t))^alpha (A(t)L(t))^(1-alpha) \
      => quad g_K (t) &= s dot.c (K(t))^(alpha-1) (A(t)L(t))^(1-alpha)\
      &=s dot.c (A(t) / K(t))^(1-alpha).
    $ <ps_endo_1_a_g_K> #qqed
  + Sketch $dot(g_A)=0$ and $dot(g_K)=0$ lines in $(g_A, g_K)$ space.\
    *Solution*. From @ps_endo_1_a_g_A and @ps_endo_1_a_g_K, we log-differentiate and have 
    $ 
      (dot(g_A)(t)) / (g_A (t)) &= alpha dot.c (g_K (t) - g_A (t))\
      => quad dot(g_A)(t) &= alpha dot.c (g_K (t) - g_A (t)) dot.c g_A (t)
    $
    and 
    $ 
      (dot(g_K)(t)) / (g_K (t)) &= (1-alpha) dot.c (g_A (t) - g_K (t))\
      => quad dot(g_K)(t) &= (1-alpha) dot.c (g_A (t) - g_K (t)) dot.c g_K (t).
    $
    Hence, both $dot(g_A)=0$ and $dot(g_K)=0$ are the equation $g_K - g_A = 0.$ However, we have to note the tendencies of $dot(g_K)$ and $dot(g_A).$ For $dot(g_A)(t),$ if we fix a $g_A,$ the greater $g_K$ is, the greater $dot(g_A)(t)$ is; hence, above the line is $dot(g_A)>0,$ and below the line is $dot(g_A)<0.$ For $dot(g_K)(t),$ if we fix a $g_K,$ the greater $g_A$ is, the greater $dot(g_K)(t)$ is; hence, to the right of the line is $dot(g_A) > 0,$ and to the left of the line is $dot(g_A) < 0.$
    #figure(caption: [Phase diagram for $g_A$ and $g_K.$])[
      #image("figures/ps_endo_1_b.jpeg", width: 43%)
    ] <ps_endo_1_b> #qqed
  + Does the economy converge to a balanced growth path? If so, what are the growth rates of $K, A,$ and $Y$ on the balanced growth path?\
    *Solution*. From @ps_endo_1_b, we can see that the economy converges to the balanced growth path. That is, the economy converges to some point lying on $g_A = g_K.$ To determine the path, we need to combine the expressions for $g_A (t)$ and $g_K (t)$ derived in a and try to explicitly express $g_K (t)$ from $g_A (t).$ We simply use @ps_endo_1_a_g_K to divide @ps_endo_1_a_g_A and have 
    $ 
      (g_K (t))/(g_A (t)) &= s/B dot.c (A(t) / K(t))^(1-alpha) dot.c (A(t) / K(t))^alpha\
      &= s/B dot.c ((g_A (t))/B)^(-1/alpha)\
      => quad g_K (t) &= s dot.c (B / (g_A (t)))^(1/alpha - 1).
    $ <ps_endo_g_k_by_g_A>
    Plugging the equilibrium, on the balanced growth path, $g_A = g_K=star(g)$ into @ps_endo_g_k_by_g_A, we obtain $ star(g)=s^alpha B^(1-alpha). $ To find the growth rate of output on the balanced growth path, log-differentiating @ps_endo_1_output yields $ g_Y = alpha g_K + (1-alpha)g_A. $ Since we are focusing on the balanced growth path, we plug $g_A = g_K=star(g)$ in and have $ g_Y=star(g). $
    #figure()[
      #image("figures/ps_endo_1_b_convergence_BPG.jpeg", width: 43%)
    ] #qqed
  + How does an increase in $s$ affect long-run growth?\
    *Solution*. The increase in $s$ will shift neither $dot(g_A)=0$ nor $dot(g_K)=0$ since both will coincide with the line $g_A=g_K.$ However, the hyperbola in @ps_endo_g_k_by_g_A will shift outwards.
    
    #figure()[
      #image("figures/ps_endo_1_c_new_steady_state.jpeg", width: 43%)
    ]
    
    Since the change in $s$ does not affect $g_A,$ whereas it increases $g_K,$ the economy will jump from point $E$ to point $F,$ where $F$ is just above $E.$ Then, the economy will gradually converge to the new steady state at point $E_"new".$ #qqed
+ Many economists ave criticized endogenous growth models on the basis of the existence of scale effects by which large countries should have higher growth rates than small countries.

  Consider a model where productivity growth is an externality caused by capital accumulation. With usual notations, consider the following model
  $
    cases(
      Y &= A K^alpha L^(1-alpha)\,,
      A &= B K^ phi.alt\,,
      dot(K) &= s Y\,,
      g_L &= n\,,
    )
  $
  with $n>0$ and $alpha, s in (0, 1).$
  + Write $g_K$ as a function of $K, L,$ and the model's parameters.\
    *Solution*. We plug $Y = A K^alpha L^(1-alpha)$ and $A = B K^ phi.alt$ into $dot(K) = s Y,$ having 
    $
      dot(K) &= s B K^phi.alt K^alpha L^(1-alpha)\
      => quad g_K &= s B L^(1-alpha)K^(alpha+ phi.alt - 1).
    $ #qqed
  + Derive an expression of $g_Y$ depending on $g_K$ and $g_L.$ What inequality mush hold so that there exists a balanced growth path, i.e., a regime where $g_Y$ and $g_K$ are strictly positive constants? How does $g_y$ vary with $n?$\
    *Solution*. We log-differentiate the first assumption and have 
    $
      g_Y &= g_A + alpha g_K + (1-alpha) g_L\
      &= phi.alt g_K + alpha g_K + (1-alpha) dot.c g_L\
      &= (phi.alt + alpha) dot.c g_K + (1-alpha) dot.c g_L.
    $
    The sufficient condition that there exists a balanced growth path is to have the @solow_same_growth_rate. Hence, we must have $ g_Y = ((1 - alpha) dot.c n) / (1 - phi.alt - alpha). $ <ps_endo_2_b_g_Y> This suggests that the denominator cannot be zero. Since growth rates are positive, the inequality $ 1 - phi.alt - alpha > 0 $ must hold. We now derive the expression for $g_y.$ From @ps_endo_2_b_g_Y, since $y = display(Y/L),$ we have $ g_y &= g_Y - n \ &= (phi.alt n) / (1 - phi - alpha). $ Hence, $g_y$ is increasing in $n.$ More population growth means more people, thus more output, hence more capital accumulation and ultimately more productivity. #qqed
  + Now replace the second equation in the model by $display(A = B dot.c (K/L)^phi.alt).$ Write an expression for $g_K$ along a balanced growth path. What value(s) of $phi.alt + alpha$ is consistent with the existence of a balanced growth path? How does $g_y$ vary with $n?$ Interpret the differences between the two models.\
    *Solution*. We plug $Y = A K^alpha L^(1-alpha)$ and $display(A = B dot.c (K/L)^phi.alt)$ into $dot(K) = s Y,$ having 
    $
      dot(K) &= s B dot.c (K/L)^phi.alt K^alpha L^(1-alpha)\
      => quad g_K &= s B L^(1 - phi.alt - alpha)K^(alpha+ phi.alt - 1)\
      &= s B dot.c (L/K)^(1-phi.alt-alpha).
    $ The balanced growth path requires $g_K$ to be a constant. Hence, either the variable $display(L/K)$ is constant or $1-phi.alt-alpha = 0.$ For the first case, $display(L/K)$ being constant implies the growth rate of $display(L/K)$ is $0,$ which means $g_K = g_L = n;$ there is no growth in output $y$ per capita. For the second case, $phi.alt - alpha = 1$ implies $g_K = g_Y = s B;$ the model has a balanced growth path where $g_y = s B - n.$

    In the first (initially given) model, productivity depends on the aggregate stock of capital, that goes up when $n$ goes up. In the second model, productivity depend on the capital-labor ratio, which decreases when population growth is higher (because more workers come up at each period); in this case population growth makes the growth rate of income per capita decrease. #qqed
+ Consider the continuous-time growth model with physical capital $K_t$ and human capital $H_t$ 
  $
    cases(
      Y_t &= ((1-a_K)K_t)^alpha ((1-a_H)H_t)^(1-alpha)\,,
      dot(K)_t &= s Y_t-delta_K K_t\,,
      dot(H)_t &= (a_K K_t)^gamma (a_H H_t)^phi.alt (A_t L_t)^(1-gamma-phi.alt) -delta_H H_t\,,
      dot(L)_t &= n L_t\,,
      dot(A)_t &= g A_t\,,
    )
  $
  with 
  $
    a_K, a_H, alpha, gamma, phi.alt, delta_K, delta_H in (0, 1), qquad gamma+phi.alt > 1, quad "and" quad n, g > 0.
  $ The fractions $a_K$ and $a_H$ respectively stand for the proportion of total physical and human capital stocks devoted to human capital accumulation rather than to output production. The fractions $delta_K$ and $delta_H$ are the depreciation rates of physical and human capital.

  Notice that this model assumes that human capital is produced in its own sector with its own production function. Raw labor $L$ is useful only as something to be educated, not as an input into the production of final goods. Similarly, knowledge $A$ is useful only as something that can be conveyed to students, not as a direct input to goods production.
  
  + Define $k:=display(K/(A L))$ and $h:=display(H/(A L)).$ Derive equations for $dot(k)$ and $dot(h)$ as depending on $k$ and $h.$\
    *Solution*. Log-differentiating the given definitions, we have 
    $
      dot(k)/k &= g_K - g_A - g_L\
      &= s dot.c Y/K - delta_K - g - n\
      &= s dot.c (1-a_K)^alpha ((1-a_H)H/K)^(1-alpha) - delta_K - g - n\
      &= s dot.c (1-a_K)^alpha (1-a_H)^(1-alpha) h^(1-alpha) k^(alpha-1) - delta_K - g - n\
      => quad dot(k) &=s dot.c ((1-a_K)k)^alpha ((1-a_H)h)^(1-alpha) - (delta_K + g + n) k
    $ <ps_endo_3_a_k_dot> and 
    $
      dot(h)/h &= g_H - g_A - g_L\
      &= (a_K K)^gamma power(a_H, phi.alt)power(H,phi.alt-1) (A L)^(1-gamma-phi.alt) -delta_H - g - n\
      => quad dot(h) &= (a_K k)^gamma (a_H h)^phi.alt - (delta_H + g + n) h.
    $ <ps_endo_3_a_h_dot> #qqed
  + Derive an equation describing the set of combinations of $k$ and $h$ such that $dot(k)=0.$ Sketch it in the $(k, h)$ space. Do the same for $dot(h)=0$ on the same graph.\
    *Solution*. We need some patience and algebra sense to answer this question. We will use more subscripts with calligraphic capital letters to represent constants to avoid visual confusion. We first deal with $dot(k)=0.$ In this case, we have 
    $
    s dot.c ((1-a_K)k)^alpha ((1-a_H)h)^(1-alpha) &= (delta_K + g + n) k\
      underbrace(s dot.c (1-a_K)^alpha (1-a_H)^(1-alpha), cal(S)) h^(1-alpha) &= underbrace((delta_K + g + n), cal(K)) k^(1-alpha)\
      h &= (cal(K)/cal(S))^(1/(1-alpha)) k,
    $ <ps_endo_3_b_k_dot> which shows a proportional relationship between $h$ and $k.$ We now deal with $dot(h)=0.$ In this case, we have 
    $
      (delta_H + g + n) h &= (a_K k)^gamma (a_H h)^phi.alt\
      underbrace((delta_H + g + n), cal(H)) h^(1-phi.alt) &= underbrace(power(a_K, gamma)power(a_H, phi.alt), cal(A))k^gamma\
      h &= (cal(A)/cal(H))^((1)/(1-phi.alt)) k^((gamma)/(1-phi.alt)).
    $ <ps_endo_3_b_h_dot> Since $gamma + phi.alt > 1,$ the graph of @ps_endo_3_b_h_dot will be a power function with power $display((gamma)/(1-phi.alt)) != 1.$ See the following figure for graphs of the equations.
    #figure()[
      #image("figures/ps_endo_3_b.jpeg", width: 43%)
    ] #qqed
  + Based on the graph of the previous question, explain why $k$ and $h$ tend to some limit for any initial conditions.\
    *Solution*. From @ps_endo_3_a_k_dot, we fix $k$ and find that the greater $h$ is, the greater $dot(k)$ is; hence, above the line is $dot(k)>0,$ and below the line is $dot(k)<0.$ Use the following figure for assistance.
    #figure()[
      #image("figures/ps_endo_3_c_k_dot.jpeg", width: 43%)
    ]
    From @ps_endo_3_a_h_dot, we fix $h$ and find that the greater $k$ is, the greater $dot(h)$ is; hence, to the right of the curve is $dot(h)>0,$ and to the left of the curve is $dot(h)<0.$ Use the following figure for assistance.
    #figure()[
      #image("figures/ps_endo_3_c_h_dot.jpeg", width: 43%)
    ]
    Combining both of them will suggest the following figure, which shows that any initial condition will converge to the intersection.
    #figure()[
      #image("figures/ps_endo_3_c_convergence.jpeg", width: 43%)
    ] #qqed
  + Suppose that $dot(k)=dot(h)=0.$ What is the growth rate of physical capital per capita, the one of human capital per capita, and the one of output per capita?\
    *Solution*. By assumption, we have 
    $
      g_K - g_L - g_A = 0 quad "and" quad g_H - g_L - g_A = 0.
    $
    Hence, 
    $
      g_(K/L) &= g_K - g_L \
      &= g_A\
      &= n
    $
    and 
    $
      g_(H/L) &= g_H - g_L \
      &= g_A\
      &= n.
    $
    Log-differentiating the first assumption yields 
    $
      g_Y &= alpha g_K + (1-alpha) g_H\
      &= alpha (g_L + g_A) + (1-alpha) (g_L + g_A)\
      &= g + n.
    $
    Hence, 
    $
      g_y &= g_Y - n\
      &= g.
    $ #qqed

== Theory of Consumption

+ Consider the two-period Fisher model of consumption choice. An individual receives income $Y_1 > 0$ in the first period and income $Y_2>0$ in the second period, and one can save or borrow at real interest rate $r>0.$ One optimally chooses consumption plan $(C_1, C_2).$ His utility function is $U,$ which is strictly increasing in each argument, strictly quasi-concave, and continuously differentiable. We also assume that 
  $
    pdiff(U, C_1)(C_1, C_2) limits(-->)^(C_1->0) infinity doub "for all" doub C_2>0 quad "and" quad pdiff(U, C_2)(C_1, C_2) limits(-->)^(C_2->0) infinity doub "for all" doub C_1>0.
  $
  The individual maximizes $U$ under the intertemporal budget constraint.