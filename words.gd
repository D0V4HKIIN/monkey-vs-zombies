extends Node

var halloween_words = [
	"Bat", "Ghost", "Witch", "Pumpkin", "Vampire", "Werewolf", "Monster", "Zombie", "Spider", "Cauldron",
	"Black", "Cat", "Haunted", "Mummy", "Skull", "Bones", "Tombstone", "Frankenstein", "Creepy", "Goblin", "Eerie",
	"Nightmare", "Full Moon", "Ghoulish", "Gruesome", "Boo", "Candy", "Trick", "Treat", "Potion", "Spell",
	"Cobweb", "Jack-o’-lantern", "Shadow", "Lantern", "Scary", "Costume", "Mask", "Blood", "Graveyard", "Coffin",
	"Broomstick", "Cloak", "Hocus", "Pocus", "Wraith", "Phantasm", "Creeper", "Horror", "Chilling", "Screech", "Fangs",
	"Curse", "Midnight", "Spooky", "Specter", "Cackle", "Gory", "Bewitched", "Screaming", "Spectral", "Hallow",
	"Phantom", "Ashes", "Bewitching", "Lurking", "Moaning", "Possessed", "Spellbook", "Scarecrow", "Howling", "Scream",
	"Torchlight", "Enchanted", "Restless", "Catacomb", "Claw", "Crypt", "Poltergeist", "Rattling", "Tomb", "Wand",
	"Shiver", "Grinning", "Cloaked", "Grave", "Fiend", "Gargoyle", "Bewitch", "Dark", "Fog", "Poison", "Omen",
	"Sinister", "Ectoplasm", "Shrieking", "Nocturnal", "Fright", "Wicked"
]

var rng = RandomNumberGenerator.new()

func random_word() -> String:
	var ran_num = rng.randi_range(0, 100)
	return halloween_words[ran_num]
	
