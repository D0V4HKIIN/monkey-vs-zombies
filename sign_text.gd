class_name SignReader extends KeyWordReader

var halloween_words = [
	"BAT", "GHOST", "WITCH", "PUMPKIN", "VAMPIRE", "WEREWOLF", "MONSTER", "ZOMBIE", "SPIDER", "CAULDRON",
	"BLACK", "CAT", "HAUNTED", "MUMMY", "MOMMY?", "SKULL", "BONES", "TOMBSTONE", "FRANKENSTEIN", "CREEPY", "GOBLIN", "EERIE",
	"NIGHTMARE", "FULL", "MOON", "GHOULISH", "GRUESOME", "BOO", "CANDY", "TRICK", "TREAT", "POTION", "SPELL",
	"COBWEB", "JACK-O’-LANTERN", "SHADOW", "LANTERN", "SCARY", "COSTUME", "MASK", "BLOOD", "GRAVEYARD", "COFFIN",
	"BROOMSTICK", "CLOAK", "HOCUS", "POCUS", "WRAITH", "PHANTASM", "CREEPER", "HORROR", "CHILLING", "SCREECH", "FANGS",
	"CURSE", "MIDNIGHT", "SPOOKY", "SPECTER", "CACKLE", "GORY", "BEWITCHED", "SCREAMING", "SPECTRAL", "HALLOW",
	"PHANTOM", "ASHES", "BEWITCHING", "LURKING", "MOANING", "BONEING", "POSSESSED", "SPELLBOOK", "SCARECROW", "HOWLING", "SCREAM",
	"TORCHLIGHT", "ENCHANTED", "RESTLESS", "CATACOMB", "CLAW", "CRYPT", "POLTERGEIST", "RATTLING", "TOMB", "WAND",
	"SHIVER", "GRINNING", "CLOAKED", "GRAVE", "FIEND", "GARGOYLE", "BEWITCH", "DARK", "FOG", "POISON", "OMEN",
	"SINISTER", "ECTOPLASM", "SHRIEKING", "NOCTURNAL", "FRIGHT", "WICKED"
]

func random_word() -> String:
	var ran_num = randi_range(0, halloween_words.size())
	return halloween_words[ran_num]

func _ready():
	text = random_word()
	super()

func do_keyword():
	get_parent().queue_free()
