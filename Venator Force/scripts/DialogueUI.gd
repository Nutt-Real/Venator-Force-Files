extends Control

# Full cutscene dialogue
var dialogue = [
    # Scene 1: World Lore
    {"name": "Commander Darius Kane", "line": "Ten years ago, the Tear opened — a portal to another world."},
    {"name": "Commander Darius Kane", "line": "Monsters flooded through. Civilization fell. Cities turned to ruins."},
    {"name": "Commander Darius Kane", "line": "We ran. We hid. But we also fought back."},
    {"name": "Commander Darius Kane", "line": "The Venators were formed — elite soldiers trained to capture and control the creatures we once feared."},
    {"name": "Commander Darius Kane", "line": "You are one of us now, recruit. A Venator."},
    {"name": "Commander Darius Kane", "line": "This is no longer about survival. It's about sealing that portal and reclaiming our world."},

    # Scene 2: Arrival at the Base
    {"name": "", "line": "[You step into the Venator base — a metal fortress surrounded by makeshift barricades.]"},
    {"name": "", "line": "[The air hums with energy. Soldiers train. Weapons charge. Alarms echo faintly.]"},
    {"name": "Commander Darius Kane", "line": "Fresh meat, huh? You don’t look like much. Most recruits last a week before they're begging to leave."},
    {"name": "Player", "line": "I won’t run. I’m ready to fight."},
    {"name": "", "line": "[Laughter echoes from nearby troops.]"},
    {"name": "Commander Darius Kane", "line": "Bold words. But bold words won’t stop a Riftborn from ripping you in half."},

    # Scene 3: Mission Briefing
    {"name": "", "line": "[Kane slams his finger onto a map of ruined terrain.]"},
    {"name": "Commander Darius Kane", "line": "Your first mission’s simple: a pack of Riftborn was spotted near the outskirts."},
    {"name": "Commander Darius Kane", "line": "Fast. Lethal. Capture one. Bring it back alive."},
    {"name": "Player", "line": "Just one? Sounds easy."},
    {"name": "Commander Darius Kane", "line": "That’s what the last recruit said."},
    {"name": "Commander Darius Kane", "line": "...We’re still looking for his legs."},
]

var index = 0

func _ready():
    show_dialogue(index)

func _on_NextButton_pressed():
    index += 1
    if index < dialogue.size():
        show_dialogue(index)
    else:
        self.queue_free()  # Close the dialogue box
        # Optionally call the next scene or enable player control here

func show_dialogue(i):
    var current = dialogue[i]
    $DialogueBox/NameLabel.text = current["name"]
    $DialogueBox/DialogueText.text = current["line"]
