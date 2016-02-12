#!/usr/bin/perl

my %lines  = (
	      "T" => "Templar",
	      "S" => "Sorcerer",
	      "DK" => "Dragon Knight",
	      "NB" => "Nightblade",
	      "DW" => "Dual Wield",
	      "1H" => "One Hand",
	      "2H" => "Two Hand",
	      "B" => "Bow",
	      "DS" => "Destruction Staff",
	      "V" => "Vampire",
	      "WW" => "Werewolf",
	      "FG" => "Fighters Guild",
	      "MG" => "Mages Guild",
	      "U" => "Undaunted",
	      "WA" => "Attack",
	      "A" => "Alliance",
	      "SG" => "Siege",
	      "*" => "Other"
	     );

my %skills = (
	      "Dark Flare Trauma" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M"
	      },

	      "Fire Touch" =>
	      {
	       class => "DS",
	       source => "M",
	       type => "M"
	      },

	      "Charged Weapon" =>
	      {
	       class => "*",
	       source => "*",
	       type => "M"
	      },

	      "Damage Health" =>
	      {
	       class => "*",
	       source => "*",
	       type => "P"
	      },

	      "Burning Breath" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Fiery Weapon" =>
	      {
	       class => "*",
	       source => "*",
	       type => "M"
	      },

	      "Poisoned" =>
	      {
	       class => "*",
	       source => "*",
	       type => "P"
	      },

	      "Inhale" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Crystal Blast" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Flame Pulsar" =>
	      {
	       class => "DS",
	       source => "M",
	       type => "M"
	      },

	      "Befouled Weapon" =>
	      {
	       class => "*",
	       source => "*",
	       type => "P"
	      },

	      "Crippling Grasp" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Blade Cloak" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Thundering Presence" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Anti-Cavalry Caltrops" =>
	      {
	       class => "A",
	       source => "S",
	       type => "P"
	      },

	      "Frost Reach" =>
	      {
	       class => "DS",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Claws of Life" =>
	      {
	       class => "WW",
	       source => "S",
	       type => "P"
	      },

	      "Dizzying Swing" =>
	      {
	       class => "2H",
	       source => "S",
	       type => "P",
	       cc => 1
	      },

	      "Burning Embers" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Impale" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Luminous Shards" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Engulfing Flames" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Explosive Charge" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Deep Breath" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Power Extraction" =>
	      {
	       class => "NB",
	       source => "S",
	       type => "M"
	      },

	      "Solar Prison" =>
	      {
	       class => "T",
	       source => "U",
	       type => "M"
	      },

	      "Reflective Light" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Blood Craze Bleed" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Petrify" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Shock Ring" =>
	      {
	       class => "DS",
	       source => "M",
	       type => "M"
	      },

	      "Whirling Blades" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Invigorating Drain" =>
	      {
	       class => "V",
	       source => "M",
	       type => "M"
	      },

	      "Feral Pounce" =>
	      {
	       class => "WW",
	       source => "S",
	       type => "P"
	      },

	      "Venom Arrow" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Hidden Blade" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Acid Spray" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Pierce Armor" =>
	      {
	       class => "1H",
	       source => "S",
	       type => "P"
	      },

	      "Atronach Zap" =>
	      {
	       class => "S",
	       source => "U",
	       type => "M"
	      },

	      "Solar Disturbance" =>
	      {
	       class => "T",
	       source => "U",
	       type => "M"
	      },

	      "Camouflaged Hunter" =>
	      {
	       class => "FG",
	       source => "S",
	       type => "M"
	      },

	      "Heavy Attack (Dual Wield)" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Degeneration" =>
	      {
	       class => "MG",
	       source => "M",
	       type => "M"
	      },

	      "Shifting Standard" =>
	      {
	       class => "DK",
	       source => "U",
	       type => "M"
	      },

	      "Meatbag Catapult" =>
	      {
	       class => "SG",
	       source => "SG",
	       type => "SG"
	      },

	      "Daedric Prey" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Mages' Wrath" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Merciless Charge" =>
	      {
	       class => "*",
	       source => "*",
	       type => "P"
	      },

	      "Uppercut" =>
	      {
	       class => "2H",
	       source => "S",
	       type => "P",
	       cc => 1
	      },

	      "Reverberating Bash" =>
	      {
	       class => "1H",
	       source => "S",
	       type => "P",
	       cc => 1
	      },

	      "Disintegration" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Aurora Javelin" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Evil Hunter" =>
	      {
	       class => "FG",
	       source => "M",
	       type => "M"
	      },

	      "Unstable Flame" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Assassin's Will" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Fire Ballista Bolt" =>
	      {
	       class => "SG",
	       source => "SG",
	       type => "SG"
	      },

	      "Ferocious Leap" =>
	      {
	       class => "DK",
	       source => "U",
	       type => "P"
	      },

	      "Endless Fury" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Streak" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Shrouded Daggers" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Razor Caltrops" =>
	      {
	       class => "A",
	       source => "S",
	       type => "P"
	      },

	      "Arrow Barrage" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Burning Talons" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "P"
	      },

	      "Daedric Minefield" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Structured Entropy" =>
	      {
	       class => "MG",
	       source => "M",
	       type => "M"
	      },

	      "Silver Shards" =>
	      {
	       class => "FG",
	       source => "S",
	       type => "P"
	      },

	      "Shield Breaker" =>
	      {
	       class => "*",
	       source => "*",
	       type => "P"
	      },

	      "Flawless Dawnbreaker" =>
	      {
	       class => "FG",
	       source => "U",
	       type => "M"
	      },

	      "Blazing Spear" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Heroic Slash" =>
	      {
	       class => "1H",
	       source => "S",
	       type => "P"
	      },

	      "Mages' Wrath Explosion" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Howl of Agony" =>
	      {
	       class => "WW",
	       source => "S",
	       type => "P",
	       cc => 1
	      },

	      "Killer's Blade" =>
	      {
	       class => "NB",
	       source => "S",
	       type => "M"
	      },

	      "Rapid Strikes" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Molten Whip" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Flaming oil" =>
	      {
	       class => "SG",
	       source => "SG",
	       type => "SG"
	      },

	      "Bash" =>
	      {
	       class => "*",
	       source => "S",
	       type => "P"
	      },

	      "Incapacitating Strike" =>
	      {
	       class => "NB",
	       source => "U",
	       type => "M",
	       cc => 1
	      },

	      "Invasion" =>
	      {
	       class => "1H",
	       source => "S",
	       type => "P",
	       cc => 1
	      },

	      "Devouring Swarm" =>
	      {
	       class => "V",
	       source => "U",
	       type => "M"
	      },

	      "Toppling Charge" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M"
	      },

	      "Force Pulse" =>
	      {
	       class => "DS",
	       source => "M",
	       type => "M"
	      },

	      "Endless Fury Explosion" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Cripple" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Crushing Shock" =>
	      {
	       class => "DS",
	       source => "M",
	       type => "M"
	      },

	      "Tangling Webs" =>
	      {
	       class => "U",
	       source => "M",
	       type => "M"
	      },

	      "Shielded Assault" =>
	      {
	       class => "1H",
	       source => "S",
	       type => "P"
	      },

	      "Binding Javelin" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M"
	      },

	      "Ransack" =>
	      {
	       class => "1H",
	       source => "S",
	       type => "P"
	      },

	      "Soul Tether" =>
	      {
	       class => "NB",
	       source => "U",
	       type => "M"
	      },

	      "Inevitable Detonation" =>
	      {
	       class => "A",
	       source => "M",
	       type => "M"
	      },

	      "Bleeding" =>
	      {
	       class => "*",
	       source => "S",
	       type => "P"
	      },

	      "Dawnbreaker" =>
	      {
	       class => "FG",
	       source => "U",
	       type => "M"
	      },

	      "Clouding Swarm" =>
	      {
	       class => "V",
	       source => "U",
	       type => "M"
	      },

	      "Dawnbreaker of Smiting" =>
	      {
	       class => "FG",
	       source => "U",
	       type => "M"
	      },

	      "Power Lash" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Poison Injection" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Shooting Star" =>
	      {
	       class => "MG",
	       source => "U",
	       type => "M"
	      },

	      "Bombard" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Flame Lash" =>
	      {
	       class => "DK",
	       source => "M",
	       type => "M"
	      },

	      "Burning Light" =>
	      {
	       class => "T",
	       source => "*",
	       type => "M"
	      },

	      "Dark Flare" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M"
	      },

	      "Radiant Destruction" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M"
	      },

	      "Lotus Fan" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Sap Essence" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Funnel Health" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Overload Light Attack" =>
	      {
	       class => "S",
	       source => "U",
	       type => "M"
	      },

	      "Ice Comet" =>
	      {
	       class => "MG",
	       source => "U",
	       type => "M"
	      },

	      "Flying Blade" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Swallow Soul" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Concealed Weapon" =>
	      {
	       class => "NB",
	       source => "M",
	       type => "M"
	      },

	      "Proximity Detonation" =>
	      {
	       class => "A",
	       source => "M",
	       type => "M"
	      },

	      "Soul Harvest" =>
	      {
	       class => "NB",
	       source => "U",
	       type => "M"
	      },

	      "Stampede" =>
	      {
	       class => "2H",
	       source => "S",
	       type => "P"
	      },

	      "Velocious Curse" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M"
	      },

	      "Puncturing Sweep" =>
	      {
	       class => "T",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Take Flight" =>
	      {
	       class => "DK",
	       source => "U",
	       type => "P",
	       cc => 1
	      },

	      "Biting Jabs" =>
	      {
	       class => "T",
	       source => "S",
	       type => "M",
	       cc => 1
	      },

	      "Lethal Arrow" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Light Attack" =>
	      {
	       class => "WA",
	       source => "WA",
	       type => "WA"
	      },

	      "Critical Rush" =>
	      {
	       class => "2H",
	       source => "S",
	       type => "P"
	      },

	      "Steel Tornado" =>
	      {
	       class => "DW",
	       source => "S",
	       type => "P"
	      },

	      "Crystal Fragments" =>
	      {
	       class => "S",
	       source => "M",
	       type => "M",
	       cc => 1
	      },

	      "Heavy Attack" =>
	      {
	       class => "WA",
	       source => "WA",
	       type => "WA"
	      },

	      "Executioner" =>
	      {
	       class => "2H",
	       source => "S",
	       type => "P"
	      },

	      "Focused Aim" =>
	      {
	       class => "B",
	       source => "S",
	       type => "P"
	      },

	      "Wrecking Blow" =>
	      {
	       class => "2H",
	       source => "S",
	       type => "P",
	       cc => 1
	      },

	      "Ambush" =>
	      {
	       class => "NB",
	       source => "S",
	       type => "P"
	      },

	      "Surprise Attack" =>
	      {
	       class => "NB",
	       source => "S",
	       type => "P"
	      }
	     );

my %classes;
my %sources;
my %types;

while (<>) {
  my @values = split(",", $_);
  my $skill = $values[0];
  my $damage = $values[1];
  if (exists $skills{$skill}) {
    my $class = $skills{$skill}{"class"};
    my $source = $skills{$skill}{"source"};
    my $type = $skills{$skill}{"type"};
    $classes{$class} += $damage;
    $sources{$source} += $damage;
    $types{$type} += $damage;
  }
  elsif ($skill ne "Skill") {
    print("Skill $skill does not have an entry!\n");
  }
}

print("Skill Line, Total Damage\n");
foreach my $i (keys(%classes)) {
  my $line = $lines{$i};
  print("$line,$classes{$i}\n");
}

print("\n\nDamage Source, Total Damage\n");
foreach my $i (keys(%sources)) {
  my $source = $i eq "U" ? "Ultimate"
    : $i eq "S" ? "Stamina"
    : $i eq "M" ? "Magika"
    : $i eq "WA" ? "Attack"
    : $i eq "SG" ? "Siege"
    : "Other";
    
  print("$source,$sources{$i}\n");
}

print("\n\nDamage Type, Total Damage\n");
foreach my $i (keys(%types)) {
  my $type = $i eq "P" ? "Physical"
    : $i eq "M" ? "Magic"
    : $i eq "SG" ? "Siege"
    : $i eq "WA" ? "Attack"
    : "Other";
  print("$type,$types{$i}\n");
}




