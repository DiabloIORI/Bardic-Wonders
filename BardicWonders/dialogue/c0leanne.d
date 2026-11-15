BEGIN C0LEANNE

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a1
SAY ~新来的，嗯？欢迎来到莉安的奇珍铺……有什么中意的，尽管说。~
+ ~!Global("C0LeanneLegendaryWeapon","GLOBAL",1)~ + ~你这儿有什么特别稀罕的货色吗？~ + a1.1
++ ~看看你都有些什么。~ + a1.0
++ ~不了，多谢。我这就告辞。~ EXIT
END

IF ~~ a1.0
SAY ~你在别处找不到比这儿更齐全的魔法奇珍了。~
IF ~~ DO ~StartStore("c0leanne",LastTalkedToBy())~ EXIT
END

IF ~~ a1.1
SAY ~想找点特别的东西，嗯？让我仔细瞧瞧你……~
IF ~ReputationGT(Player1,19)~ + a1.2
IF ~ReputationLT(Player1,2)~ + a1.3
IF ~!ReputationGT(Player1,19) !ReputationLT(Player1,2)~ + a1.4
END

IF ~~ a1.2
SAY ~啊……很好，当真很好！我在你身上看到一座光明的灯塔，把希望散播到整片大地。你的壮举将在漫长岁月里化作无数传说。我想，你或许配得上。~
IF ~~ + a1.5
END

IF ~~ a1.3
SAY ~嗯……你在这大地上留下了不少污点，是吧？你真是个恶棍，冒险者，你的名字将被后世世代代诅咒。好吧……或许你也配得上。~
IF ~~ + a1.5
END

IF ~~ a1.4
SAY ~嗯……不，恐怕你还没在这世上留下自己的印记。等你真正称得上英雄或恶棍时再来，那时我或许有件奇珍留给你……~
++ ~既然如此，看看你的普通货色吧。~ + a1.0
++ ~再会。~ EXIT
END

IF ~~ a1.5
SAY ~我手中有两件传奇兵器：长剑“挽歌”，会歌唱的利刃……还有短弓“悲叹”，鸣啸的弓。~
IF ~Class(Player1,BARD_ALL)~ + a1.6
IF ~!Class(Player1,BARD_ALL)~ + a1.7
END

IF ~~ a1.6
SAY ~唯有真正的诗人才能触碰这些神器，但要选好！你只能带走其中一件，价钱也不便宜：六万金币。不知你会选哪一件？~
+ ~PartyGoldGT(59999)~ + ~我选长剑“挽歌”。~ DO ~TakePartyGold(60000) GiveItemCreate("c0bwsw2",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(59999)~ + ~我选短弓“悲叹”。~ DO ~TakePartyGold(60000) GiveItemCreate("c0bwbo1",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(59999)~ + ~我下次再决定。~ + a1.9
+ ~PartyGoldLT(60000)~ + ~这两件我都付不起。~ + a1.9
END

IF ~~ a1.7
SAY ~唯有真正的诗人才能触碰这些神器。你并非诗人，但你的队伍里或许有一位。要选好！你只能带走其中一件，价钱也不便宜：八万金币。不知你会选哪一件？~
+ ~PartyGoldGT(79999)~ + ~我选长剑“挽歌”。~ DO ~TakePartyGold(80000) GiveItemCreate("c0bwsw2",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(79999)~ + ~我选短弓“悲叹”。~ DO ~TakePartyGold(80000) GiveItemCreate("c0bwbo1",Player1,0,0,0) SetGlobal("C0LeanneLegendaryWeapon","GLOBAL",1)~ + a1.8
+ ~PartyGoldGT(79999)~ + ~我下次再决定。~ + a1.9
+ ~PartyGoldLT(80000)~ + ~这两件我都付不起。~ + a1.9
END

IF ~~ a1.8
SAY ~明智的选择。它如今属于你了，声名显赫之人。愿它的名字与你的名字一同在传说中被吟唱。~
IF ~~ + a1.10
END

IF ~~ a1.9
SAY ~随你便。这些传奇会等着你……前提是你能保住自己的名声。~
IF ~~ + a1.10
END

IF ~~ a1.10
SAY ~或许你还想看看我那些次一等的宝物，嗯？~
++ ~看看你都有些什么。~ + a1.0
++ ~不了，多谢。我这就告辞。~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN a2
SAY ~啊……熟面孔回来了。冒险过得怎样，嗯？或许你带了足够的金币，来买我这许多奇珍……？~
+ ~!Global("C0LeanneLegendaryWeapon","GLOBAL",1)~ + ~你这儿有什么特别稀罕的货色吗？~ + a1.1
++ ~看看你都有些什么。~ + a1.0
++ ~不了，多谢。我这就告辞。~ EXIT
END
