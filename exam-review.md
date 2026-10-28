# Exam Review

Answer each question in a few sentences. There are no trick questions and no
single right answer. We are looking for specific reasoning, not definitions
copied from somewhere.

Write your answer under each question, replacing the "(answer here)" line.

## 1. Is it a game?

The course defines a game as "a voluntary, structured play activity that
players do for fun." Pick one of Cookie Clicker, The Stanley Parable, or
Minecraft in Creative Mode. Argue whether it is a game under that definition,
and say which part of the definition it stresses or breaks.

Whilst some may argue Minecraft Creative Mode isn't necessarilly structured in the sense
you have an "end goal", I would argue that it is still a game under that defintion as 
structure is not just the end goal, but the ruleset and context the game world exsists
in. Restone is inherently structured, and a lot of people use creative mode to create 
gigantic contraptions.The block pallete itself is structured, you cannot do any color of
wood/concrete, there is a limited selection. It is not structure through having a final 
boss, but instead having constraints on your creativity.

## 2. Three games

Pick three games we have not covered in class. For each, give its core skill
(dexterity, logic/calculation, social/deception, spatial, chance), its player
alignment (1v1, team vs team, co-op, 1-vs-many, solo), and its information
state (perfect or imperfect). Then say which of the three you would rather
design, and why.

Metal Gear Solid 4 is a logic and dexterity checking game. It requires good understanding of the core stealth
mechanics that underline the game, whilist also dexterity when it comes to the fast paced fire fights common
in the earlier sections of the game. It is an imperfect information state, as you do not have an exact radar like 
in earlier games (MGS 1 and 2). 

Hearts of Iron 4 is a Free-For-All with teams that is a logic/calculation and social/deception checking game.
It relies on forming alliances and strategizing with your army, deciding what is best to do. It is also an imperfect information
state game, as you only can see troops of countries who you border at your border, or your allies border. This provides fog of war
except in vital areas (so you can notice enemies postering on one of your fronts).

Dots & Boxes is a perfect information state and logic checking game. This is because it is a solved game, it is like chess and checkers in
that the entire board is visible, but unlike chess there are much fewer game states (atleast in smaller sizes like 4x4) so it is possible to 
know the logical best move through brute force. 

Out of these, I would have rather designed MGS4 because the blending of gameplay with cutscenes provides a cinema like feel whilst also
not just being a walking simulator like other such "cinematic" games.

## 3. Chess and Texas Hold'em

Both are two-player competitive games. Describe how hidden information and
randomness change what the player is actually doing in each. Then give one
concrete design consequence: something you would have to change if you moved
chess's rules to poker's information model, or the other way around.

In chess, there is no randomness (besides deciding who gets white and goes first). This
means with enough skill, you can reasonably beat a new player every single time. Meanwhile,
in Texas Hold'dem it is totally random the cards you and the table are dealt. The only skill 
there is bluffing and knowing when to bet. This means a totally new player could shark pros, 
unlike chess. In chess, you need to consider what your opponent is doing but you have the same 
information as them making it more of a guessing game of how skilled they are. In poker, the player
does not have this information and has to work it into the guessing. If you wanted to have randomness
or blind information in chess, you would need fog of war and/or random piece starting locations.
Otherwise, it would still be totally known statewise to both players. 

## 4. Tetris

In class almost everyone got bored before playing a full hour of Tetris. Why?
What would you change about the game to keep a player interested for that
long, and what would that change cost?

Others got bored of playing tetris because it is the same exact loop over and over, and if you cannot play long 
games it is just slow tetris gameplay which gets boring fast.  If I had to make it intresting for people not into
grinding high scores and who like seeing how high of a level they could reach, I'd just make it like Tetris 99 as 
bring in competetive spirit. This is because said competitive spirit can normally be counted on to keep people hooked.

## 5. The game loop

Pick one of: Go, Blackjack, Settlers of Catan, Pandemic, Slay the Spire,
Hades, Minecraft, Stardew Valley, Overcooked, Pac-Man.

Describe its game loop: what the player does, what the game updates in
response, and what feedback the player gets. Then remove one step of the loop
and describe what breaks.

Game:Black
The player decides Hit, Stand, Double Down (if first turn), or split (if a pair). Then, the game respectivley
gives them a card and goes to step one, has the dealer draw until they are above 17, gives the player one more card and then goes to the dealer
drawing, or splits the game into two hands and goes back to step one. In the case of split or hit with no bust, the feedback is the new card. If stand or double down,
it is the dealers hand and win/lose. If you remove the step where the player decides what to do, then it would just be roullette with exrtra steps wich would not be fun.
Player agency makes gambling a lot more fun, as it lets you feel more involved in the fate of your money (even if your involvement is very tiny, all things considered).

## 6. Autobattler design

Dota Underlords and Hearthstone Battlegrounds are auto-battlers. Pick one
design rule -- for example, that a triple can only be ranked up once, or that
damage scales with the number of surviving units -- and explain the trade-off
it makes: what it encourages in the player, and what it costs.

In Dota Underlords, you can only have a set number of cards out at a time until
you upgrade it with currency. This makes it so you can't just spam a bunch of cheap, low cost cards
to overwhelm your enemy. It instead encourages the player to be more thoughful with what they buy & how
they set up their field. However, it makes the early phase of the game feel quick yet a little slow as you do 
not have many powerhouses so it takes a while to kill, but there is not that many minions that need to die for the round
to end.
