extends Node2D

var hiragana = {
	"a": "あ",
	"i": "い",
	"u": "う",
	"e": "え",
	"o": "お",
	"ka": "か",
	"ki": "き",
	"ku": "く",
	"ke": "け",
	"ko": "こ",
	"sa": "さ",
	"shi": "し",
	"su": "す",
	"se": "せ",
	"so": "そ",
	"ta": "た",
	"chi": "ち",
	"tsu": "つ",
	"te": "て",
	"to": "と",
	"na": "な",
	"ni": "に",
	"nu": "ぬ",
	"ne": "ね",
	"no": "の",
	"ha": "は",
	"hi": "ひ",
	"fu": "ふ",
	"he": "へ",
	"ho": "ほ",
	"ma": "ま",
	"mi": "み",
	"mu": "む",
	"me": "め",
	"mo": "も",
	"ya": "や",
	"yu": "ゆ",
	"yo": "よ",
	"ra": "ら",
	"ri": "り",
	"ru": "る",
	"re": "れ",
	"ro": "ろ",
	"wa": "わ",
	"wo": "を",
	"n": "ん",
	"ga": "が",
	"gi": "ぎ",
	"gu": "ぐ",
	"ge": "げ",
	"go": "ご",
	"za": "ざ",
	"ji": "じ",
	"zu": "ず",
	"ze": "ぜ",
	"zo": "ぞ",
	"da": "だ",
	"di": "ぢ",
	"du": "づ",
	"de": "で",
	"do": "ど",
	"ba": "ば",
	"bi": "び",
	"bu": "ぶ",
	"be": "べ",
	"bo": "ぼ",
	"pa": "ぱ",
	"pi": "ぴ",
	"pu": "ぷ",
	"pe": "ぺ",
	"po": "ぽ",
	"kya": "きゃ",
	"kyu": "きゅ",
	"kyo": "きょ",
	"sha": "しゃ",
	"shu": "しゅ",
	"sho": "しょ",
	"cha": "ちゃ",
	"chu": "ちゅ",
	"cho": "ちょ",
	"nya": "にゃ",
	"nyu": "にゅ",
	"nyo": "にょ",
	"hya": "ひゃ",
	"hyu": "ひゅ",
	"hyo": "ひょ",
	"mya": "みゃ",
	"myu": "みゅ",
	"myo": "みょ",
	"rya": "りゃ",
	"ryu": "りゅ",
	"ryo": "りょ",
	"gya": "ぎゃ",
	"gyu": "ぎゅ",
	"gyo": "ぎょ",
	"ja": "じゃ",
	"ju": "じゅ",
	"jo": "じょ",
	"bya": "びゃ",
	"byu": "びゅ",
	"byo": "びょ",
	"pya": "ぴゃ",
	"pyu": "ぴゅ",
	"pyo": "ぴょ",
}

var pronunciation = {
	"a": "a", "i": "i", "u": "u", "e": "e", "o": "o",
	"ka": "ka", "ki": "ki", "ku": "ku", "ke": "ke", "ko": "ko",
	"sa": "sa", "shi": "shi", "su": "su", "se": "se", "so": "so",
	"ta": "ta", "chi": "chi", "tsu": "tsu", "te": "te", "to": "to",
	"na": "na", "ni": "ni", "nu": "nu", "ne": "ne", "no": "no",
	"ha": "ha", "hi": "hi", "fu": "fu", "he": "he", "ho": "ho",
	"ma": "ma", "mi": "mi", "mu": "mu", "me": "me", "mo": "mo",
	"ya": "ya", "yu": "yu", "yo": "yo",
	"ra": "ra", "ri": "ri", "ru": "ru", "re": "re", "ro": "ro",
	"wa": "wa", "wo": "wo", "n": "n",
	"ga": "ga", "gi": "gi", "gu": "gu", "ge": "ge", "go": "go",
	"za": "za", "ji": "ji", "zu": "zu", "ze": "ze", "zo": "zo",
	"da": "da", "di": "di", "du": "du", "de": "de", "do": "do",
	"ba": "ba", "bi": "bi", "bu": "bu", "be": "be", "bo": "bo",
	"pa": "pa", "pi": "pi", "pu": "pu", "pe": "pe", "po": "po",
	"kya": "kya", "kyu": "kyu", "kyo": "kyo",
	"sha": "sha", "shu": "shu", "sho": "sho",
	"cha": "cha", "chu": "chu", "cho": "cho",
	"nya": "nya", "nyu": "nyu", "nyo": "nyo",
	"hya": "hya", "hyu": "hyu", "hyo": "hyo",
	"mya": "mya", "myu": "myu", "myo": "myo",
	"rya": "rya", "ryu": "ryu", "ryo": "ryo",
	"gya": "gya", "gyu": "gyu", "gyo": "gyo",
	"ja": "ja", "ju": "ju", "jo": "jo",
	"bya": "bya", "byu": "byu", "byo": "byo",
	"pya": "pya", "pyu": "pyu", "pyo": "pyo",
}

# ─── COLOUR PALETTE ───────────────────────────────────────────────────────────
# Background panel  : #0F1923   (near-black navy)
# Card surface      : #1A2535   (dark blue-grey)
# Button default    : #1E2D40   (steel blue-grey)
# Button hover      : #263548   (slightly lighter)
# Button border     : #2E4460   (muted blue)
# Accent idle       : #2A6496   (slate blue)
# Text primary      : #D8E3ED   (cool off-white)
# Text secondary    : #7A9BB5   (muted blue-grey)
# Correct           : #1F4A2E   (dark green)
# Correct border    : #2E7D46   (mid green)
# Wrong             : #4A1F1F   (dark red)
# Wrong border      : #8B3030   (mid red)
# ──────────────────────────────────────────────────────────────────────────────

func load_txt(path: String) -> String:
	var file = FileAccess.open(path, FileAccess.READ)
	if file == null:
		return "null"
	return file.get_as_text()

func save_text_file(content: String, file_name: String):
	var file = FileAccess.open("res://data/" + file_name, FileAccess.WRITE)
	if file:
		file.store_string(content)
		file.close()
	else:
		print("error saving file")

# ─── STYLEBOX FACTORY ─────────────────────────────────────────────────────────

func make_stylebox_full(bg: String, border: String, radius: int = 16, border_width: int = 2) -> StyleBoxFlat:
	var s = StyleBoxFlat.new()
	s.bg_color = Color.html(bg)
	s.border_color = Color.html(border)
	s.border_width_top    = border_width
	s.border_width_bottom = border_width
	s.border_width_left   = border_width
	s.border_width_right  = border_width
	s.corner_radius_top_left     = radius
	s.corner_radius_top_right    = radius
	s.corner_radius_bottom_left  = radius
	s.corner_radius_bottom_right = radius
	# generous inner padding so the hiragana character breathes
	s.content_margin_top    = 18
	s.content_margin_bottom = 18
	s.content_margin_left   = 24
	s.content_margin_right  = 24
	return s

func make_stylebox(bg: String, radius: int = 16) -> StyleBoxFlat:
	return make_stylebox_full(bg, bg, radius, 0)

# pre-baked styles
var style_btn_normal : StyleBoxFlat
var style_btn_hover  : StyleBoxFlat
var style_correct    : StyleBoxFlat
var style_wrong      : StyleBoxFlat
var style_panel      : StyleBoxFlat

var reseting = false
var points   = 0

func _init_styles():
	style_btn_normal = make_stylebox_full("#1E2D40", "#2E4460", 16, 2)
	style_btn_hover  = make_stylebox_full("#263548", "#3A5577", 16, 2)
	style_correct    = make_stylebox_full("#1F4A2E", "#2E7D46", 16, 2)
	style_wrong      = make_stylebox_full("#4A1F1F", "#8B3030", 16, 2)
	style_panel      = make_stylebox_full("#1A2535", "#1A2535", 20, 0)

func _apply_btn_defaults():
	for btn in [$TextEdit, $TextEdit2, $TextEdit3]:
		btn.add_theme_stylebox_override("normal",   style_btn_normal)
		btn.add_theme_stylebox_override("hover",    style_btn_hover)
		btn.add_theme_stylebox_override("pressed",  style_btn_hover)
		btn.add_theme_stylebox_override("disabled", style_btn_normal)
		btn.add_theme_color_override("font_color",         Color.html("#D8E3ED"))
		btn.add_theme_color_override("font_hover_color",   Color.html("#FFFFFF"))
		btn.add_theme_color_override("font_pressed_color", Color.html("#FFFFFF"))
		btn.add_theme_font_size_override("font_size", 48)

func _style_pronunciation_label():
	# Style the prompt card / pronunciation label
	$Pronunciation.add_theme_color_override("font_color", Color.html("#D8E3ED"))
	$Pronunciation.add_theme_font_size_override("font_size", 75)
	if $Pronunciation.has_method("add_theme_stylebox_override"):
		var panel = make_stylebox_full("#1A2535", "#2E4460", 20, 2)
		panel.content_margin_top    = 24
		panel.content_margin_bottom = 24
		panel.content_margin_left   = 32
		panel.content_margin_right  = 32
		$Pronunciation.add_theme_stylebox_override("normal", panel)

func _style_points_label():
	if has_node("PointsLabel"):
		$PointsLabel.add_theme_color_override("font_color", Color.html("#7A9BB5"))
		$PointsLabel.add_theme_font_size_override("font_size", 20)

func _style_timer_bar():
	if has_node("TimerBar"):
		$TimerBar.add_theme_color_override("font_color", Color.html("#2A6496"))

# ─── GAME LOGIC ───────────────────────────────────────────────────────────────

func buttonPress(buttonPressed):
	if reseting:
		return
	reseting = true
	$Timer.paused = true

	var current_pronunciation = $Pronunciation.text

	if buttonPressed.text == hiragana[current_pronunciation]:
		$correct.play()
		buttonPressed.add_theme_stylebox_override("normal", style_correct)
		buttonPressed.add_theme_stylebox_override("hover",  style_correct)
		points += 1
		save_text_file(str(points), "points.txt")
	else:
		$incorrect.play()
		buttonPressed.add_theme_stylebox_override("normal", style_wrong)
		buttonPressed.add_theme_stylebox_override("hover",  style_wrong)

	_update_points_display()
	await get_tree().create_timer(2).timeout
	new_Round()

func _update_points_display():
	if has_node("PointsLabel"):
		$PointsLabel.text = "Points: " + str(points)

func new_Round():
	reseting = false
	$Timer.paused = false
	$Timer.start(4)

	var pron = get_random_item("pronunciation")
	$Pronunciation.text = pron

	var first  = get_random_item("hiragana")
	var second = get_random_item("hiragana")
	while second == first:
		second = get_random_item("hiragana")

	var third = get_random_item("hiragana")
	while third == first or third == second:
		third = get_random_item("hiragana")

	var slot = get_random_item("number")
	if   slot == 1: first  = hiragana[pron]
	elif slot == 2: second = hiragana[pron]
	elif slot == 3: third  = hiragana[pron]

	# reset button styles
	_apply_btn_defaults()

	$TextEdit.text  = first
	$TextEdit2.text = second
	$TextEdit3.text = third

func get_random_item(type):
	match type:
		"hiragana":
			if hiragana.is_empty(): return null
			return hiragana[hiragana.keys().pick_random()]
		"pronunciation":
			if pronunciation.is_empty(): return null
			return pronunciation[pronunciation.keys().pick_random()]
		"number":
			return randi_range(1, 3)

# ─── LIFECYCLE ────────────────────────────────────────────────────────────────

func _ready() -> void:
	points = int(load_txt("res://data/points.txt"))
	_init_styles()
	_apply_btn_defaults()
	_style_pronunciation_label()
	_style_points_label()
	_style_timer_bar()
	_update_points_display()
	new_Round()

func _on_timer_timeout() -> void:
	await get_tree().create_timer(2).timeout
	$Timer.start()
	new_Round()

func _on_text_edit_button_up() -> void:
	buttonPress($TextEdit)

func _on_text_edit_2_button_up() -> void:
	buttonPress($TextEdit2)

func _on_text_edit_3_button_up() -> void:
	buttonPress($TextEdit3)
