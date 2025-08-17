function SCR_Move_Pools_Init()
{
    // F-018: Move Pool Database Structure - Type-categorized move arrays
    // Each type has separate pools for physical and special moves
    // Move IDs start at 1 (0 reserved for "no move")
    
    // Normal Type Moves
    global.move_pool_normal_physical = [
        1,   // Tackle (40 power)
        2,   // Body Slam (85 power)
        3,   // Double-Edge (120 power)
        4,   // Quick Attack (40 power)
        5,   // Slam (80 power)
        6,   // Scratch (40 power)
        7,   // Fury Attack (15 power)
        8,   // Horn Attack (65 power)
        9,   // Take Down (90 power)
        10   // Skull Bash (130 power)
    ];
    
    global.move_pool_normal_special = [
        11,  // Swift (60 power)
        12,  // Hyper Voice (90 power)
        13,  // Tri Attack (80 power)
        14,  // Hidden Power (60 power)
        15,  // Round (60 power)
        16,  // Echoed Voice (40 power)
        17,  // Boomburst (140 power)
        18,  // Judgment (100 power)
        19,  // Weather Ball (50 power)
        20   // Techno Blast (120 power)
    ];
    
    // Fire Type Moves
    global.move_pool_fire_physical = [
        21,  // Fire Punch (75 power)
        22,  // Flame Wheel (60 power)
        23,  // Blaze Kick (85 power)
        24,  // Flare Blitz (120 power)
        25,  // Fire Fang (65 power)
        26,  // Sacred Fire (100 power)
        27,  // Fusion Flare (100 power)
        28,  // Burn Up (130 power)
        29,  // V-create (180 power)
        30   // Pyro Ball (120 power)
    ];
    
    global.move_pool_fire_special = [
        31,  // Ember (40 power)
        32,  // Flamethrower (90 power)
        33,  // Fire Blast (110 power)
        34,  // Heat Wave (95 power)
        35,  // Lava Plume (80 power)
        36,  // Overheat (130 power)
        37,  // Fire Spin (35 power)
        38,  // Blue Flare (130 power)
        39,  // Searing Shot (100 power)
        40   // Magma Storm (100 power)
    ];
    
    // Water Type Moves
    global.move_pool_water_physical = [
        41,  // Aqua Jet (40 power)
        42,  // Waterfall (80 power)
        43,  // Aqua Tail (90 power)
        44,  // Liquidation (85 power)
        45,  // Wave Crash (120 power)
        46,  // Crabhammer (100 power)
        47,  // Razor Shell (75 power)
        48,  // Dive (80 power)
        49,  // Flip Turn (60 power)
        50   // Water Pledge (80 power)
    ];
    
    global.move_pool_water_special = [
        51,  // Water Gun (40 power)
        52,  // Water Pulse (60 power)
        53,  // Surf (90 power)
        54,  // Hydro Pump (110 power)
        55,  // Scald (80 power)
        56,  // Water Spout (150 power)
        57,  // Steam Eruption (110 power)
        58,  // Muddy Water (90 power)
        59,  // Origin Pulse (110 power)
        60   // Sparkling Aria (90 power)
    ];
    
    // Electric Type Moves
    global.move_pool_electric_physical = [
        61,  // Thunder Punch (75 power)
        62,  // Spark (65 power)
        63,  // Wild Charge (90 power)
        64,  // Zing Zap (80 power)
        65,  // Bolt Strike (130 power)
        66,  // Fusion Bolt (100 power)
        67,  // Plasma Fists (100 power)
        68,  // Thunder Fang (65 power)
        69,  // Volt Tackle (120 power)
        70   // Supercell Slam (100 power)
    ];
    
    global.move_pool_electric_special = [
        71,  // Thunder Shock (40 power)
        72,  // Thunderbolt (90 power)
        73,  // Thunder (110 power)
        74,  // Discharge (80 power)
        75,  // Zap Cannon (120 power)
        76,  // Electro Ball (60 power)
        77,  // Volt Switch (70 power)
        78,  // Parabolic Charge (65 power)
        79,  // Rising Voltage (70 power)
        80   // Overdrive (80 power)
    ];
    
    // Grass Type Moves
    global.move_pool_grass_physical = [
        81,  // Vine Whip (45 power)
        82,  // Razor Leaf (55 power)
        83,  // Seed Bomb (80 power)
        84,  // Wood Hammer (120 power)
        85,  // Power Whip (120 power)
        86,  // Bullet Seed (25 power)
        87,  // Needle Arm (60 power)
        88,  // Horn Leech (75 power)
        89,  // Branch Poke (40 power)
        90   // Grassy Glide (70 power)
    ];
    
    global.move_pool_grass_special = [
        91,  // Absorb (20 power)
        92,  // Mega Drain (40 power)
        93,  // Solar Beam (120 power)
        94,  // Petal Dance (120 power)
        95,  // Giga Drain (75 power)
        96,  // Energy Ball (90 power)
        97,  // Leaf Storm (130 power)
        98,  // Grass Knot (60 power)
        99,  // Frenzy Plant (150 power)
        100  // Bloom Doom (185 power)
    ];
    
    // Ice Type Moves
    global.move_pool_ice_physical = [
        101, // Ice Punch (75 power)
        102, // Ice Shard (40 power)
        103, // Icicle Crash (85 power)
        104, // Ice Fang (65 power)
        105, // Avalanche (60 power)
        106, // Icicle Spear (25 power)
        107, // Ice Hammer (100 power)
        108, // Triple Axel (20 power)
        109, // Mountain Gale (100 power)
        110  // Glacial Lance (130 power)
    ];
    
    global.move_pool_ice_special = [
        111, // Powder Snow (40 power)
        112, // Ice Beam (90 power)
        113, // Blizzard (110 power)
        114, // Aurora Beam (65 power)
        115, // Frost Breath (60 power)
        116, // Ice Wind (55 power)
        117, // Freeze-Dry (70 power)
        118, // Absolute Zero (120 power)
        119, // Subzero Slammer (100 power)
        120  // Sheer Cold (999 power)
    ];
    
    // Fighting Type Moves
    global.move_pool_fighting_physical = [
        121, // Karate Chop (50 power)
        122, // Punch (40 power)
        123, // Mega Punch (80 power)
        124, // Close Combat (120 power)
        125, // Dynamic Punch (100 power)
        126, // Mach Punch (40 power)
        127, // Cross Chop (100 power)
        128, // Brick Break (75 power)
        129, // Superpower (120 power)
        130  // Drain Punch (75 power)
    ];
    
    global.move_pool_fighting_special = [
        131, // Focus Blast (120 power)
        132, // Aura Sphere (80 power)
        133, // Vacuum Wave (40 power)
        134, // Secret Sword (85 power)
        135, // Judgment (100 power)
        136, // Final Gambit (999 power)
        137, // Psystrike (100 power)
        138, // Sacred Sword (90 power)
        139, // Force Palm (60 power)
        140  // Spirit Break (75 power)
    ];
    
    // Poison Type Moves
    global.move_pool_poison_physical = [
        141, // Poison Jab (80 power)
        142, // Gunk Shot (120 power)
        143, // Poison Fang (50 power)
        144, // Cross Poison (70 power)
        145, // Poison Tail (50 power)
        146, // Bite (60 power)
        147, // Crunch (80 power)
        148, // Poison Sting (15 power)
        149, // Coil (60 power)
        150  // Dire Claw (80 power)
    ];
    
    global.move_pool_poison_special = [
        151, // Sludge (65 power)
        152, // Sludge Bomb (90 power)
        153, // Sludge Wave (95 power)
        154, // Acid (40 power)
        155, // Poison Gas (0 power)
        156, // Toxic Spikes (0 power)
        157, // Venoshock (65 power)
        158, // Clear Smog (50 power)
        159, // Acid Spray (40 power)
        160  // Belch (120 power)
    ];
    
    // Ground Type Moves
    global.move_pool_ground_physical = [
        161, // Earthquake (100 power)
        162, // Dig (80 power)
        163, // Bone Club (65 power)
        164, // Bonemerang (50 power)
        165, // Bone Rush (25 power)
        166, // Bulldoze (60 power)
        167, // High Horsepower (95 power)
        168, // Stomping Tantrum (75 power)
        169, // Precipice Blades (120 power)
        170  // Thousand Arrows (90 power)
    ];
    
    global.move_pool_ground_special = [
        171, // Mud Shot (55 power)
        172, // Mud Bomb (65 power)
        173, // Earth Power (90 power)
        174, // Mud Slap (20 power)
        175, // Sand Tomb (35 power)
        176, // Spikes (0 power)
        177, // Thousand Waves (90 power)
        178, // Scorching Sands (70 power)
        179, // Sandsear Storm (100 power)
        180  // Raging Fury (120 power)
    ];
    
    // Flying Type Moves
    global.move_pool_flying_physical = [
        181, // Peck (35 power)
        182, // Wing Attack (60 power)
        183, // Drill Peck (80 power)
        184, // Fly (90 power)
        185, // Aerial Ace (60 power)
        186, // Brave Bird (120 power)
        187, // Acrobatics (55 power)
        188, // Sky Attack (140 power)
        189, // Pluck (60 power)
        190  // Dual Wingbeat (40 power)
    ];
    
    global.move_pool_flying_special = [
        191, // Gust (40 power)
        192, // Air Slash (75 power)
        193, // Hurricane (110 power)
        194, // Air Cutter (60 power)
        195, // Twister (40 power)
        196, // Aeroblast (100 power)
        197, // Oblivion Wing (80 power)
        198, // Bleakwind Storm (100 power)
        199, // Springtide Storm (100 power)
        200  // Windstorm (110 power)
    ];
    
    // Psychic Type Moves
    global.move_pool_psychic_physical = [
        201, // Zen Headbutt (80 power)
        202, // Psycho Cut (70 power)
        203, // Heart Stamp (60 power)
        204, // Confusion (50 power)
        205, // Stored Power (20 power)
        206, // Psyshield Bash (70 power)
        207, // Luster Purge (95 power)
        208, // Photon Geyser (100 power)
        209, // Sunsteel Strike (100 power)
        210  // Prismatic Laser (160 power)
    ];
    
    global.move_pool_psychic_special = [
        211, // Psybeam (65 power)
        212, // Psychic (90 power)
        213, // Psyshock (80 power)
        214, // Extrasensory (80 power)
        215, // Future Sight (120 power)
        216, // Psycho Boost (140 power)
        217, // Synchronoise (120 power)
        218, // Mind Blown (150 power)
        219, // Expanding Force (80 power)
        220  // Freezing Glare (90 power)
    ];
    
    // Bug Type Moves
    global.move_pool_bug_physical = [
        221, // Bug Bite (60 power)
        222, // U-turn (70 power)
        223, // X-Scissor (80 power)
        224, // Megahorn (120 power)
        225, // Pin Missile (25 power)
        226, // Leech Life (80 power)
        227, // First Impression (90 power)
        228, // Lunge (80 power)
        229, // Pounce (50 power)
        230  // Skitter Smack (70 power)
    ];
    
    global.move_pool_bug_special = [
        231, // Signal Beam (75 power)
        232, // Bug Buzz (90 power)
        233, // Silver Wind (60 power)
        234, // Struggle Bug (50 power)
        235, // Infestation (20 power)
        236, // Attack Order (90 power)
        237, // Steamroller (65 power)
        238, // Fury Cutter (40 power)
        239, // String Shot (0 power)
        240  // Powder (0 power)
    ];
    
    // Rock Type Moves
    global.move_pool_rock_physical = [
        241, // Rock Throw (50 power)
        242, // Rock Slide (75 power)
        243, // Stone Edge (100 power)
        244, // Rock Blast (25 power)
        245, // Head Smash (150 power)
        246, // Accelerock (40 power)
        247, // Rock Wrecker (150 power)
        248, // Power Gem (80 power)
        249, // Rollout (30 power)
        250  // Diamond Storm (100 power)
    ];
    
    global.move_pool_rock_special = [
        251, // Ancient Power (60 power)
        252, // Rock Tomb (60 power)
        253, // Meteor Beam (120 power)
        254, // Stealth Rock (0 power)
        255, // Rock Polish (0 power)
        256, // Sand Storm (0 power)
        257, // Splintered Stormshards (190 power)
        258, // Continental Crush (120 power)
        259, // Rock Slide (75 power)
        260  // Stone Axe (65 power)
    ];
    
    // Ghost Type Moves
    global.move_pool_ghost_physical = [
        261, // Shadow Punch (60 power)
        262, // Shadow Claw (70 power)
        263, // Shadow Force (120 power)
        264, // Phantom Force (90 power)
        265, // Shadow Sneak (40 power)
        266, // Poltergeist (110 power)
        267, // Spectral Thief (90 power)
        268, // Last Respects (50 power)
        269, // Rage Fist (50 power)
        270  // Bitter Malice (75 power)
    ];
    
    global.move_pool_ghost_special = [
        271, // Shadow Ball (80 power)
        272, // Night Shade (60 power)
        273, // Ominous Wind (60 power)
        274, // Hex (65 power)
        275, // Shadow Storm (95 power)
        276, // Moongeist Beam (100 power)
        277, // Astral Barrage (120 power)
        278, // Infernal Parade (60 power)
        279, // Bitter Blade (90 power)
        280  // Never-Ending Nightmare (160 power)
    ];
    
    // Dragon Type Moves
    global.move_pool_dragon_physical = [
        281, // Dragon Claw (80 power)
        282, // Outrage (120 power)
        283, // Dragon Rush (100 power)
        284, // Dragon Tail (60 power)
        285, // Dual Chop (40 power)
        286, // Giga Impact (150 power)
        287, // Breaking Swipe (60 power)
        288, // Scale Shot (25 power)
        289, // Clanging Scales (110 power)
        290  // Core Enforcer (100 power)
    ];
    
    global.move_pool_dragon_special = [
        291, // Dragon Breath (60 power)
        292, // Dragon Pulse (85 power)
        293, // Draco Meteor (130 power)
        294, // Spacial Rend (100 power)
        295, // Roar of Time (150 power)
        296, // Dragon Energy (150 power)
        297, // Eternabeam (160 power)
        298, // Clangorous Soul (120 power)
        299, // Devastating Drake (185 power)
        300  // Dynamax Cannon (100 power)
    ];
    
    // Dark Type Moves
    global.move_pool_dark_physical = [
        301, // Bite (60 power)
        302, // Crunch (80 power)
        303, // Knock Off (65 power)
        304, // Sucker Punch (70 power)
        305, // Pursuit (40 power)
        306, // Foul Play (95 power)
        307, // Night Slash (70 power)
        308, // Throat Chop (80 power)
        309, // Wicked Blow (75 power)
        310  // Fiery Wrath (90 power)
    ];
    
    global.move_pool_dark_special = [
        311, // Dark Pulse (80 power)
        312, // Night Daze (85 power)
        313, // Snarl (55 power)
        314, // Dark Void (0 power)
        315, // Black Hole Eclipse (180 power)
        316, // Hyperspace Fury (100 power)
        317, // Bad Dreams (80 power)
        318, // Ruination (90 power)
        319, // Kowtow Cleave (85 power)
        320  // Malicious Moonsault (180 power)
    ];
    
    // Steel Type Moves
    global.move_pool_steel_physical = [
        321, // Steel Wing (70 power)
        322, // Iron Head (80 power)
        323, // Iron Tail (100 power)
        324, // Meteor Mash (90 power)
        325, // Bullet Punch (40 power)
        326, // Heavy Slam (40 power)
        327, // Gyro Ball (60 power)
        328, // Smart Strike (70 power)
        329, // Anchor Shot (80 power)
        330  // Sunsteel Strike (100 power)
    ];
    
    global.move_pool_steel_special = [
        331, // Flash Cannon (80 power)
        332, // Mirror Shot (65 power)
        333, // Doom Desire (140 power)
        334, // Magnet Rise (0 power)
        335, // Metal Sound (0 power)
        336, // Steel Beam (140 power)
        337, // Behemoth Blade (100 power)
        338, // Behemoth Bash (100 power)
        339, // Corkscrew Crash (160 power)
        340  // Tectonic Rage (180 power)
    ];
    
    // Fairy Type Moves
    global.move_pool_fairy_physical = [
        341, // Play Rough (90 power)
        342, // Spirit Break (75 power)
        343, // Grassy Glide (70 power)
        344, // Strange Steam (90 power)
        345, // Sparkly Swirl (120 power)
        346, // Zippy Zap (80 power)
        347, // Bouncy Bubble (60 power)
        348, // Sizzly Slide (85 power)
        349, // Glitzy Glow (80 power)
        350  // Baddy Bad (95 power)
    ];
    
    global.move_pool_fairy_special = [
        351, // Moonblast (95 power)
        352, // Dazzling Gleam (80 power)
        353, // Disarming Voice (40 power)
        354, // Draining Kiss (50 power)
        355, // Fairy Wind (40 power)
        356, // Moongeist Beam (100 power)
        357, // Light of Ruin (140 power)
        358, // Floral Healing (0 power)
        359, // Geomancy (95 power)
        360  // Twinkle Tackle (175 power)
    ];
    
    show_debug_message("F-018: Move pools initialized with " + string(360) + " total moves across all types");
}