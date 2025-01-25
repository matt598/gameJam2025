# theme: light
# author: Matt Sauer
VAR player_name = "Sam"
VAR player_pronouns = 1

--> gamejam_intro

=== Settings ===
Wecome to the settings 
+ Return to start
# CLEAR
-> scroll_intro

=== Credits ===
Credits:
Created by Matt Sauer
    + Back to start
    # CLEAR
    -> gamejam 

=== function player_informal_noun() ===
	{ player_pronouns:
    -0: ~return "boy"
    -2: ~return "girl"
    - else: ~return "one"
}

=== gamejam_intro ===
Welcome to GameJam

 + Begin
    -> character_creator
 + Settings
    -> Settings
 + [Credits]
    -> Credits

=== set_player_name ===
Pick from defaults or enter a custom one:
    + [Samuel]
        ~ player_name = "Samuel"
        # CLEAR
        -> character_creator
    + [Sam]
        ~ player_name = "Sam"
        # CLEAR
        -> character_creator
    + [Samantha]
        ~ player_name = "Samantha"
        # CLEAR
        -> character_creator
    + Custom: Enter custom name filed. Note, some game dialogue is based off of assuming your name begins with "Sam", so be aware this may break immersion for those jokes/references.
        # CLEAR
        ~ player_name = ""
        -> set_custom_player_name_upper
=== set_custom_player_name_controller ===
+ Pick the next letter
-> set_custom_player_name_lower
+ Add space
-> set_custom_player_name_upper
+ Done
# CLEAR
-> character_creator
=== set_custom_player_name_upper ===
+ A
	~ player_name = player_name + "A"
+ B
	~ player_name = player_name + "B"
+ C
	~ player_name = player_name + "C"
+ D
	~ player_name = player_name + "D"
+ E
	~ player_name = player_name + "E"
+ F
	~ player_name = player_name + "F"
+ G
	~ player_name = player_name + "G"
+ H
	~ player_name = player_name + "H"
+ I
	~ player_name = player_name + "I"
+ J
	~ player_name = player_name + "J"
+ K
	~ player_name = player_name + "K"
+ L
	~ player_name = player_name + "L"
+ M
	~ player_name = player_name + "M"
+ N
	~ player_name = player_name + "N"
+ O
	~ player_name = player_name + "O"
+ P
	~ player_name = player_name + "P"
+ Q
	~ player_name = player_name + "Q"
+ R
	~ player_name = player_name + "R"
+ S
	~ player_name = player_name + "S"
+ T
	~ player_name = player_name + "T"
+ U
	~ player_name = player_name + "U"
+ V
	~ player_name = player_name + "V"
+ W
	~ player_name = player_name + "W"
+ X
	~ player_name = player_name + "X"
+ Y
	~ player_name = player_name + "Y"
+ Z
	~ player_name = player_name + "Z"
- -> set_custom_player_name_controller
=== set_custom_player_name_lower ===
+ a
	~ player_name = player_name + "a"
+ b
	~ player_name = player_name + "b"
+ c
	~ player_name = player_name + "c"
+ d
	~ player_name = player_name + "d"
+ e
	~ player_name = player_name + "e"
+ f
	~ player_name = player_name + "f"
+ g
	~ player_name = player_name + "g"
+ h
	~ player_name = player_name + "h"
+ i
	~ player_name = player_name + "i"
+ j
	~ player_name = player_name + "j"
+ k
	~ player_name = player_name + "k"
+ l
	~ player_name = player_name + "l"
+ m
	~ player_name = player_name + "m"
+ n
	~ player_name = player_name + "n"
+ o
	~ player_name = player_name + "o"
+ p
	~ player_name = player_name + "p"
+ q
	~ player_name = player_name + "q"
+ r
	~ player_name = player_name + "r"
+ s
	~ player_name = player_name + "s"
+ t
	~ player_name = player_name + "t"
+ u
	~ player_name = player_name + "u"
+ v
	~ player_name = player_name + "v"
+ w
	~ player_name = player_name + "w"
+ x
	~ player_name = player_name + "x"
+ y
	~ player_name = player_name + "y"
+ z
	~ player_name = player_name + "z"
- -> set_custom_player_name_controller

=== set_player_pronouns ===
Pick from defaults or enter a custom one:
    + [he/him]
        ~ player_pronouns = 0
        # CLEAR
        -> character_creator
    + [they/them]
        ~ player_pronouns = 1
        # CLEAR
        -> character_creator
    + [she/her]
        ~ player_pronouns = 2
        # CLEAR
        -> character_creator

=== character_creator ===
Before beinging your tale, let's learn who you are.
+ Set name, currently: {player_name}.
    -> set_player_name

+ Set Pronouns, currently: { player_pronouns:
    - 0: 	he/him
    - 1: 	they/them
    - 2: 	she/her
    - else: they/them
    }
    -> set_player_pronouns
+ That looks right!
#CLEAR

=== ending_1 ===
 The end, for now...
+ Restart
    # RESTART
    -> END
