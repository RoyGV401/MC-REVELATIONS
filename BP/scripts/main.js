import { world, Dimension, system, MinecraftEffectTypes } from "@minecraft/server";

var nameBounty = "";
var equis = 0;
var zeta = 0;
var reward = 0;

system.runInterval(() => {
    const jugadores = world.getAllPlayers();

    jugadores.forEach((jug) => {

        if (jug.getTags().includes("get_bounty")) {
            jug.removeTag("get_bounty");
            bountyStart();
            jug.runCommandAsync('scoreboard players set @s aTempRemove 1')
        }

        jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run summon rev:bounty_objective "' + nameBounty + '" ' + equis + ' 140 ' + zeta + ' ');
        if (reward > 64) {
            jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run replaceitem entity @e[name="' + nameBounty + '"] slot.inventory 1 emerald ' + (reward / 2));
            jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run replaceitem entity @e[name="' + nameBounty + '"] slot.inventory 2 emerald ' + (reward / 2));
        } else {
            jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run replaceitem entity @e[name="' + nameBounty + '"] slot.inventory 1 emerald ' + (reward));

        }

        if (reward < 40) {
            jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run event entity @e[name="' + nameBounty + '"] rev:low_tier');

        }
        if (reward > 40 && reward < 80) {
            jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run event entity @e[name="' + nameBounty + '"] rev:mid_tier');

        }
        if (reward > 80) {
            jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run event entity @e[name="' + nameBounty + '"] rev:high_tier');
        }

        jug.runCommandAsync('execute as @a[scores={aTempRemove=50}] run effect @e[name="' + nameBounty + '"] resistance 8 20 true ');
    });




});

function bountyStart() {
    nameBounty = '§e' + getRandomName() + '§r';
    equis = Math.floor(Math.random() * 20001) - 10000;;
    zeta = Math.floor(Math.random() * 20001) - 10000;;
    reward = Math.floor(Math.random() * 140 / 2) * 2 + 16;

    if (reward > 124) {
        reward = 124;
    }
    const crime = generateCrimeCharge();
    world.sendMessage("");
    world.sendMessage("§l§4WANTED DEAD");
    world.sendMessage("Name: §l" + nameBounty);
    world.sendMessage("Last known location: §l§3X:" + equis + " Y:?  Z:" + zeta);
    world.sendMessage("Cause of persecussion: §l§9" + crime)
    world.sendMessage("Reward: §l§2" + reward + " emeralds");
    world.sendMessage("");
    world.getDimension('overworld').runCommandAsync('tickingarea add circle ' + equis + ' 140 ' + zeta + ' 2 aTemp true');
};


function generateCrimeCharge() {
    const crimes = [
        "Damaging and destroying several village houses",
        "Stealing chests from a village",
        "Killing a wandering trader",
        "Setting fire to a forest",
        "Causing an Illager raid on purpose",
        "Assault to several villagers",
        "Intentional use of Creepers to cause destruction",
        "Breaking a beacon",
        "Killing a golem",
        "Collaboration with Illagers",
        "Relations with the Red Dusk Cult",
        "Collaboration with the Red Dusk Cult",
        "Was seen on the troops of the Iron Brotherhood",
        "Collaboration with the Iron Brotherhood",
        "Destroying a farm",
        "Poaching wildlife",
        "Using lava or fire to grief",
        "Trapping animals in tight spaces",
        "Building offensive structures",
        "Picking a fight with a peaceful mob",
        "Polluting a river or lake",
        "Harming or killing a horse",
        "Interfering with someone else's build",
        "Creating lag on the server"
    ];

    const randomCrimeCharge = crimes[Math.floor(Math.random() * crimes.length)];

    return randomCrimeCharge;
};

function randomReward() {
    const range = 70;
    const max = 120;
    const min = 30;

    const offset = (max - range) / 2;


    const randomNumber = Math.floor(Math.random() * range) + offset;

    return randomNumber;
};

function randomInt() {
    const range = 5000;
    const max = 10000;
    const min = -max;

    const offset = (max - range) / 2; // calculate the offset to favor the range

    // generate a random number within the range, with an offset to favor the range
    const randomNumber = Math.floor(Math.random() * range) + offset;

    // return the random number
    return randomNumber;
};


function getRandomName() {
    const names = [
        'Alden', 'Bryce', 'Cedric', 'Darian', 'Elric', 'Fiora', 'Gareth', 'Hadrian', 'Iris', 'Jareth',
        'Kael', 'Lysandra', 'Marius', 'Naida', 'Orion', 'Phaedra', 'Quinn', 'Rhiannon', 'Seren', 'Talon',
        'Urien', 'Vesper', 'Wyatt', 'Xanthe', 'Ysabel', 'Zarek', 'Aurelia', 'Brennan', 'Corin', 'Drystan'
    ];
    const lastNames = [
        'Blackthorn', 'Crimsonwind', 'Darkstone', 'Dragonfire', 'Ebonwood', 'Frostborne', 'Goldheart', 'Holloway', 'Ironclad', 'Jadeblade',
        'Keystone', 'Lionheart', 'Moonshadow', 'Noblesteel', 'Oakenshield', 'Phoenixwing', 'Ravenwood', 'Shadowcaster', 'Starweaver', 'Thunderstrike',
        'Valiant', 'Wolfsbane', 'Xenith', 'Yellowbloom', 'Zephyrwind', 'Amberlight', 'Bloodmoon', 'Crystalbrook', 'Dreadhelm', 'Emberfall'
    ];

    const randomNameIndex = Math.floor(Math.random() * names.length);
    const randomLastNameIndex = Math.floor(Math.random() * lastNames.length);

    const randomName = names[randomNameIndex];
    const randomLastName = lastNames[randomLastNameIndex];

    return randomName + ' ' + randomLastName;
};




