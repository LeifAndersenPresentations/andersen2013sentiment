#lang slideshow

(require slideshow/play
         slideshow/code
         slideshow/latex
         slideshow/pict
         (for-syntax syntax/stx)
         "slideshow-macros.rkt")

(provide (all-defined-out))

(define random-snippit
  (scode "
def dumb_classifier(wanted_phrases,
                    unwanted_phrases):
    class dc():
        def classify(self, text):
            return randint(0,10)==1
    return dc()"))

(define oh-god
  (scode "
1 positive drawing
3 positive justice
5 positive peace-loving peoples
9 positive the support
12 positive tensions
16 positive fair settlement
18 positive self-determination
23 positive reinstating
25 negative the deprived Arab land
30 positive self-determination
34 positive Golan Heights
39 positive dreaming
43 positive permanently
45 positive troubles
48 negative aggression and savage atrocities
49 positive perpetrated
56 positive destroying
61 positive Rafah
69 positive adjacent
71 positive Jenin
80 positive Israel-Palestinian
82 negative peace
83 positive shedding
89 positive organized
91 negative the unilateral withdrawal
94 positive criticisms
95 negative hard-line military policy
96 negative are mounting
101 positive Mossad
104 positive Shin Bet
107 positive dismantle
111 positive numbering
117 negative increasingly critical
121 positive censuring
123 positive scathing criticisms
125 positive unwilling
126 positive military hard-line
128 positive victimizing
132 negative refuses to modify
133 positive his hard-line posture
138 positive Behind
139 positive atrocities
140 positive oppression Israel
142 positive is supporting
145 positive handing
149 positive poking
150 positive fun
161 positive deteriorating
1 positive 20th
2 positive 24th
3 negative the invitation
6 positive organized
18 positive a joint revolving fund
21 positive hovers
2 positive CIA
4 negative to assassinate
5 positive wherever
9 positive be satisfied
11 positive Salman Rushdie
12 positive insulting
14 negative peace
17 positive so-called supporters
18 positive protested
20 positive crushed
23 positive clarifying
24 positive insulting
25 negative violating
32 positive honest
34 positive blaming
35 negative violating
38 negative is not violating
41 negative seems
43 positive justice
50 negative the peoples
51 positive explosions
52 positive 7-ton bombs
55 positive Image-1.gif Image-2.gif
4 positive VNA
8 positive Agent Orange/Dioxins
10 positive 3-6
13 positive NIEHS
16 positive Agent Orange/Dioxins
18 positive define
20 positive NIEHS
21 positive defoliant
22 positive sprayed
24 negative is expected to lay
25 positive seeking
28 positive 1971
30 positive sprayed
32 positive Agent Orange
34 positive dioxin
37 positive Dioxin
38 positive cancer
41 positive 1975
44 positive 4.4
46 positive Agent Orange
3 positive Punjab
6 positive Khalid Maqbool
10 positive 1948
12 positive 1966
17 positive Brigadier
21 positive Quetta
24 positive Retd
26 positive Khalid Maqbool
28 positive Balochistan
36 positive Khalid Maqbool
39 positive Lahore
42 positive Punjab
5 negative the blame
6 positive belongs
8 positive disguise
10 positive moreover
13 positive spite
17 positive Peronism
27 positive bluntly
28 positive interference
32 positive regardless
34 negative honor the institutional timetable
40 positive Chrystian Colombo
44 negative the influence
47 positive Colombo
49 positive vain
53 positive maturing
55 positive also quite naive
56 positive Peronism
57 positive a defeated administration
62 negative wanted to ignore
64 positive demands
66 positive emphasis
72 negative not just verbal
74 positive support
79 negative most inclined
85 positive spite
91 positive wants
94 positive A less utopian wish
99 positive regardless
103 positive Internal Discipline
105 positive deserved bailing
106 positive accordingly
110 positive supported
115 positive would have lent
116 positive a noteworthy twist
3 positive triggers
9 positive influence
11 positive advice
13 positive considers
17 positive nationalizing
18 positive character
29 positive arouses
30 positive fears
35 negative the logical consequence
37 positive expresses
38 positive resounding pots-and-pans demonstrations
40 positive cracks
41 positive supported Chavez
46 negative Bad government management
47 positive complicates
49 positive expose
52 positive opposes
54 positive supports
58 positive desire
61 negative the ideological experiments
62 positive plebiscite
74 positive royalties
78 positive probable
1 negative would want
2 positive bent
3 positive destroying
5 positive the support
8 negative this pretence
10 positive grip
14 positive unchecked
16 positive overrun
21 positive Syria
24 positive Beirut
25 positive a one-sided war
26 positive destroying
27 positive burying
28 negative good
30 positive Throughout
31 negative these wars
33 positive succumbed
34 negative the mighty stranglehold
36 positive Little
42 positive erupted
44 negative desperate means
45 positive conquered
47 positive also legitimate options
49 positive resistance
50 positive forget
51 negative occupation
52 positive pleading
55 positive revolted
57 positive resorting
58 positive stones
60 negative demonstrations and strikes
62 positive swiftly
63 positive breaking
64 negative their limbs and shooting
68 positive settlers
71 positive 481
73 positive 22,088
75 positive demolished
78 positive uprooted
81 positive Throughout
83 positive fattening
85 positive expropriating
87 negative occupation
98 negative the battlefield
101 positive demolished
104 negative occupation endure
106 negative would want to describe
107 positive his aggression
109 negative would want to show
110 positive safe
111 positive escalates
112 positive aggression
115 positive wants to ignite is not going to come
118 positive much worse
120 positive chaos
121 positive bordering
122 negative wanton killing
125 positive applying
126 positive painful retaliatory responses
127 positive seek
128 positive alive
129 negative occupation
131 positive sustaining
132 positive shame
134 positive largely invisible
136 positive innocent people
138 positive also hurt innocent Israelis
140 negative blind and
141 positive murderous rage
142 positive a defeated colonial power
144 positive Against
147 positive two peoples
2 positive Headline
4 positive Adbolhassan Sobhani
6 positive Pot
7 positive Calling
9 positive Addressing
11 positive criticized
13 positive chain
17 positive ostrich
24 positive blame
25 negative regimes and governments
27 positive humanity
30 positive non-WASP humanity
32 positive Non-White Anglo-Saxon-Protestant humanity
33 positive humanity
34 positive blonde
37 positive humanity
46 positive post-war incarceration
48 negative does not recognize
50 positive hence
52 positive hence
53 positive a defeated country
55 positive assume
59 positive plenty
62 positive violators
67 positive chain
69 positive defending
72 positive pontificating
73 positive preaching
75 negative can't suddenly forget
6 positive IHRC
8 positive Sunday expressed concern
13 positive bitter experience
15 positive violation
17 positive prohibition
19 positive torture
21 positive arbitrary detention
22 positive honoring
26 positive recommended
28 positive regretted
31 negative devastating
32 negative world wars and understood
33 positive dependent
34 positive honoring
40 positive turning
42 positive deplored
43 negative the injustice
44 positive violation
49 positive religions
50 positive condemned
52 negative The solidarity
55 positive embark
56 positive trampling
58 positive urged
59 positive respect
60 positive honoring
64 positive denounced
66 positive urging
1 positive ISLAMABAD
8 positive arrests
2 positive storming
4 positive assassinating
5 positive alleges have
7 positive arresting
8 positive innocent citizens
10 positive have denied
12 positive mere unarmed citizens
17 positive abided
18 negative calm
21 positive provokes
22 positive vindictive reactions
23 positive sympathy
26 positive branding
27 negative terrorism any legitimate Palestinian conduct
28 negative to get rid
31 positive such reactions
32 positive occured
37 positive Palestinians seek negotiations
38 positive a legitimate rejection
39 positive colonialism
42 positive provocation
43 negative too harsh
45 negative storm the Palestinian areas
47 positive assassinate
49 positive demolish
52 positive establishments
54 positive uproot
56 positive besiege
57 positive likes
59 negative peace
61 positive patiently
62 positive suppress
63 positive fury
65 positive hoping
66 positive seek
67 negative calm
68 positive freedom
70 positive dignity"))
