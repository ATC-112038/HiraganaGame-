extends Node2D

var hiragana = {
	"a": "あ", "i": "い", "u": "う", "e": "え", "o": "お",
	"ka": "か", "ki": "き", "ku": "く", "ke": "け", "ko": "こ",
	"sa": "さ", "shi": "し", "su": "す", "se": "せ", "so": "そ",
	"ta": "た", "chi": "ち", "tsu": "つ", "te": "て", "to": "と",
	"na": "な", "ni": "に", "nu": "ぬ", "ne": "ね", "no": "の",
	"ha": "は", "hi": "ひ", "fu": "ふ", "he": "へ", "ho": "ほ",
	"ma": "ま", "mi": "み", "mu": "む", "me": "め", "mo": "も",
	"ya": "や", "yu": "ゆ", "yo": "よ",
	"ra": "ら", "ri": "り", "ru": "る", "re": "れ", "ro": "ろ",
	"wa": "わ", "wo": "を", "n": "ん",
	"ga": "が", "gi": "ぎ", "gu": "ぐ", "ge": "げ", "go": "ご",
	"za": "ざ", "ji": "じ", "zu": "ず", "ze": "ぜ", "zo": "ぞ",
	"da": "だ", "di": "ぢ", "du": "づ", "de": "で", "do": "ど",
	"ba": "ば", "bi": "び", "bu": "ぶ", "be": "べ", "bo": "ぼ",
	"pa": "ぱ", "pi": "ぴ", "pu": "ぷ", "pe": "ぺ", "po": "ぽ",
	"kya": "きゃ", "kyu": "きゅ", "kyo": "きょ",
	"sha": "しゃ", "shu": "しゅ", "sho": "しょ",
	"cha": "ちゃ", "chu": "ちゅ", "cho": "ちょ",
	"nya": "にゃ", "nyu": "にゅ", "nyo": "にょ",
	"hya": "ひゃ", "hyu": "ひゅ", "hyo": "ひょ",
	"mya": "みゃ", "myu": "みゅ", "myo": "みょ",
	"rya": "りゃ", "ryu": "りゅ", "ryo": "りょ",
	"gya": "ぎゃ", "gyu": "ぎゅ", "gyo": "ぎょ",
	"ja": "じゃ", "ju": "じゅ", "jo": "じょ",
	"bya": "びゃ", "byu": "びゅ", "byo": "びょ",
	"pya": "ぴゃ", "pyu": "ぴゅ", "pyo": "ぴょ",
}

var katakana = {
	"a": "ア", "i": "イ", "u": "ウ", "e": "エ", "o": "オ",
	"ka": "カ", "ki": "キ", "ku": "ク", "ke": "ケ", "ko": "コ",
	"sa": "サ", "shi": "シ", "su": "ス", "se": "セ", "so": "ソ",
	"ta": "タ", "chi": "チ", "tsu": "ツ", "te": "テ", "to": "ト",
	"na": "ナ", "ni": "ニ", "nu": "ヌ", "ne": "ネ", "no": "ノ",
	"ha": "ハ", "hi": "ヒ", "fu": "フ", "he": "ヘ", "ho": "ホ",
	"ma": "マ", "mi": "ミ", "mu": "ム", "me": "メ", "mo": "モ",
	"ya": "ヤ", "yu": "ユ", "yo": "ヨ",
	"ra": "ラ", "ri": "リ", "ru": "ル", "re": "レ", "ro": "ロ",
	"wa": "ワ", "wo": "ヲ", "n": "ン",
	"ga": "ガ", "gi": "ギ", "gu": "グ", "ge": "ゲ", "go": "ゴ",
	"za": "ザ", "ji": "ジ", "zu": "ズ", "ze": "ゼ", "zo": "ゾ",
	"da": "ダ", "di": "ヂ", "du": "ヅ", "de": "デ", "do": "ド",
	"ba": "バ", "bi": "ビ", "bu": "ブ", "be": "ベ", "bo": "ボ",
	"pa": "パ", "pi": "ピ", "pu": "プ", "pe": "ペ", "po": "ポ",
	"kya": "キャ", "kyu": "キュ", "kyo": "キョ",
	"sha": "シャ", "shu": "シュ", "sho": "ショ",
	"cha": "チャ", "chu": "チュ", "cho": "チョ",
	"nya": "ニャ", "nyu": "ニュ", "nyo": "ニョ",
	"hya": "ヒャ", "hyu": "ヒュ", "hyo": "ヒョ",
	"mya": "ミャ", "myu": "ミュ", "myo": "ミョ",
	"rya": "リャ", "ryu": "リュ", "ryo": "リョ",
	"gya": "ギャ", "gyu": "ギュ", "gyo": "ギョ",
	"ja": "ジャ", "ju": "ジュ", "jo": "ジョ",
	"bya": "ビャ", "byu": "ビュ", "byo": "ビョ",
	"pya": "ピャ", "pyu": "ピュ", "pyo": "ピョ",
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

var hiragana_groups = {
	"All":    [],
	"Vowels": ["a","i","u","e","o"],
	"K":      ["ka","ki","ku","ke","ko"],
	"S":      ["sa","shi","su","se","so"],
	"T":      ["ta","chi","tsu","te","to"],
	"N":      ["na","ni","nu","ne","no"],
	"H":      ["ha","hi","fu","he","ho"],
	"M":      ["ma","mi","mu","me","mo"],
	"Y":      ["ya","yu","yo"],
	"R":      ["ra","ri","ru","re","ro"],
	"W/N":    ["wa","wo","n"],
	"G":      ["ga","gi","gu","ge","go"],
	"Z":      ["za","ji","zu","ze","zo"],
	"D":      ["da","di","du","de","do"],
	"B":      ["ba","bi","bu","be","bo"],
	"P":      ["pa","pi","pu","pe","po"],
	"Combos": ["kya","kyu","kyo","sha","shu","sho","cha","chu","cho",
			   "nya","nyu","nyo","hya","hyu","hyo","mya","myu","myo",
			   "rya","ryu","ryo","gya","gyu","gyo","ja","ju","jo",
			   "bya","byu","byo","pya","pyu","pyo"],
}

var katakana_groups = {
	"All":    [],
	"Vowels": ["a","i","u","e","o"],
	"K":      ["ka","ki","ku","ke","ko"],
	"S":      ["sa","shi","su","se","so"],
	"T":      ["ta","chi","tsu","te","to"],
	"N":      ["na","ni","nu","ne","no"],
	"H":      ["ha","hi","fu","he","ho"],
	"M":      ["ma","mi","mu","me","mo"],
	"Y":      ["ya","yu","yo"],
	"R":      ["ra","ri","ru","re","ro"],
	"W/N":    ["wa","wo","n"],
	"G":      ["ga","gi","gu","ge","go"],
	"Z":      ["za","ji","zu","ze","zo"],
	"D":      ["da","di","du","de","do"],
	"B":      ["ba","bi","bu","be","bo"],
	"P":      ["pa","pi","pu","pe","po"],
	"Combos": ["kya","kyu","kyo","sha","shu","sho","cha","chu","cho",
			   "nya","nyu","nyo","hya","hyu","hyo","mya","myu","myo",
			   "rya","ryu","ryo","gya","gyu","gyo","ja","ju","jo",
			   "bya","byu","byo","pya","pyu","pyo"],
}

var active_keys: Array = []
var active_group: String = "All"
var active_script: String = "hiragana"
var active_char_map: Dictionary = {}
var current_pron_key: String = ""

var style_btn_normal : StyleBoxFlat
var style_btn_hover  : StyleBoxFlat
var style_correct    : StyleBoxFlat
var style_wrong      : StyleBoxFlat
var style_panel      : StyleBoxFlat
var style_group_active   : StyleBoxFlat
var style_group_inactive : StyleBoxFlat

var jp_font: FontFile

var reseting = false
var points   = 0

var main_menu: CanvasLayer
var game_ui_visible = false
var group_grid: GridContainer

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

func _load_jp_font():
	jp_font = load("res://fonts/NotoSansJP-Regular.ttf")

func make_stylebox_full(bg: String, border: String, radius: int = 16, border_width: int = 2) -> StyleBoxFlat:
	var s = StyleBoxFlat.new()
	s.bg_color     = Color.html(bg)
	s.border_color = Color.html(border)
	s.border_width_top    = border_width
	s.border_width_bottom = border_width
	s.border_width_left   = border_width
	s.border_width_right  = border_width
	s.corner_radius_top_left     = radius
	s.corner_radius_top_right    = radius
	s.corner_radius_bottom_left  = radius
	s.corner_radius_bottom_right = radius
	s.content_margin_top    = 18
	s.content_margin_bottom = 18
	s.content_margin_left   = 24
	s.content_margin_right  = 24
	return s

func make_stylebox(bg: String, radius: int = 16) -> StyleBoxFlat:
	return make_stylebox_full(bg, bg, radius, 0)

func _init_styles():
	style_btn_normal     = make_stylebox_full("#1E2D40", "#2E4460", 16, 2)
	style_btn_hover      = make_stylebox_full("#263548", "#3A5577", 16, 2)
	style_correct        = make_stylebox_full("#1F4A2E", "#2E7D46", 16, 2)
	style_wrong          = make_stylebox_full("#4A1F1F", "#8B3030", 16, 2)
	style_panel          = make_stylebox_full("#1A2535", "#1A2535", 20, 0)
	style_group_active   = make_stylebox_full("#2A6496", "#5BA3D9", 12, 2)
	style_group_inactive = make_stylebox_full("#1E2D40", "#2E4460", 12, 2)

func _apply_btn_defaults():
	for btn in [$TextEdit, $TextEdit2, $TextEdit3]:
		if jp_font:
			btn.add_theme_font_override("font", jp_font)
		btn.add_theme_stylebox_override("normal",   style_btn_normal)
		btn.add_theme_stylebox_override("hover",    style_btn_hover)
		btn.add_theme_stylebox_override("pressed",  style_btn_hover)
		btn.add_theme_stylebox_override("disabled", style_btn_normal)
		btn.add_theme_color_override("font_color",         Color.html("#D8E3ED"))
		btn.add_theme_color_override("font_hover_color",   Color.html("#FFFFFF"))
		btn.add_theme_color_override("font_pressed_color", Color.html("#FFFFFF"))
		btn.add_theme_font_size_override("font_size", 48)

func _style_pronunciation_label():
	if jp_font:
		$Pronunciation.add_theme_font_override("font", jp_font)
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

func _set_game_nodes_visible(visible: bool):
	$TextEdit.visible  = visible
	$TextEdit2.visible = visible
	$TextEdit3.visible = visible
	$Pronunciation.visible = visible
	if has_node("PointsLabel"):
		$PointsLabel.visible = visible
	if has_node("TimerBar"):
		$TimerBar.visible = visible
	if visible == false:
		$Timer.paused = true
	game_ui_visible = visible

func _rebuild_group_grid():
	for child in group_grid.get_children():
		child.queue_free()
	active_group = "All"
	var current_groups: Dictionary
	if active_script == "katakana":
		current_groups = katakana_groups
	else:
		current_groups = hiragana_groups
	for g in current_groups.keys():
		var btn = Button.new()
		btn.text = g
		btn.custom_minimum_size = Vector2(100, 52)
		btn.add_theme_font_size_override("font_size", 16)
		_style_menu_group_btn(btn, g == active_group)
		btn.pressed.connect(_on_menu_group_selected.bind(g))
		group_grid.add_child(btn)

func _build_main_menu():
	main_menu = CanvasLayer.new()
	main_menu.name = "MainMenu"
	main_menu.layer = 10
	add_child(main_menu)

	var bg = ColorRect.new()
	bg.color = Color.html("#0F1923")
	bg.set_anchors_preset(Control.PRESET_FULL_RECT)
	main_menu.add_child(bg)

	var center = CenterContainer.new()
	center.set_anchors_preset(Control.PRESET_FULL_RECT)
	main_menu.add_child(center)

	var vbox = VBoxContainer.new()
	vbox.alignment = BoxContainer.ALIGNMENT_CENTER
	vbox.add_theme_constant_override("separation", 24)
	center.add_child(vbox)

	var title = Label.new()
	title.text = "Welcome"
	title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title.add_theme_font_size_override("font_size", 72)
	title.add_theme_color_override("font_color", Color.html("#D8E3ED"))
	vbox.add_child(title)

	var script_row = HBoxContainer.new()
	script_row.name = "ScriptRow"
	script_row.alignment = BoxContainer.ALIGNMENT_CENTER
	script_row.add_theme_constant_override("separation", 10)
	vbox.add_child(script_row)

	var scripts = ["hiragana", "katakana", "both"]
	var script_labels = {"hiragana": "Hiragana", "katakana": "Katakana", "both": "Both"}
	for s in scripts:
		var sb = Button.new()
		sb.text = script_labels[s]
		sb.custom_minimum_size = Vector2(120, 44)
		sb.add_theme_font_size_override("font_size", 15)
		_style_menu_group_btn(sb, s == active_script)
		sb.pressed.connect(_on_script_selected.bind(s, script_row))
		script_row.add_child(sb)

	var subtitle = Label.new()
	subtitle.name = "Subtitle"
	subtitle.text = "Choose a line"
	subtitle.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	subtitle.add_theme_font_size_override("font_size", 18)
	subtitle.add_theme_color_override("font_color", Color.html("#7A9BB5"))
	vbox.add_child(subtitle)

	group_grid = GridContainer.new()
	group_grid.name = "GroupGrid"
	group_grid.columns = 6
	group_grid.add_theme_constant_override("h_separation", 10)
	group_grid.add_theme_constant_override("v_separation", 10)
	vbox.add_child(group_grid)

	_rebuild_group_grid()

	var sep2 = Control.new()
	sep2.custom_minimum_size = Vector2(0, 4)
	vbox.add_child(sep2)

	var start_btn = Button.new()
	start_btn.text = "Start"
	start_btn.custom_minimum_size = Vector2(220, 60)
	start_btn.add_theme_font_size_override("font_size", 22)
	var sb2 = make_stylebox_full("#2A6496", "#5BA3D9", 14, 2)
	sb2.content_margin_top    = 14
	sb2.content_margin_bottom = 14
	start_btn.add_theme_stylebox_override("normal",  sb2)
	start_btn.add_theme_stylebox_override("hover",   make_stylebox_full("#3A80B8", "#7BBDE8", 14, 2))
	start_btn.add_theme_stylebox_override("pressed", make_stylebox_full("#1E5880", "#4A96CC", 14, 2))
	start_btn.add_theme_color_override("font_color",       Color.html("#FFFFFF"))
	start_btn.add_theme_color_override("font_hover_color", Color.html("#FFFFFF"))
	start_btn.pressed.connect(_on_start_pressed)

	var hbox = HBoxContainer.new()
	hbox.alignment = BoxContainer.ALIGNMENT_CENTER
	hbox.add_child(start_btn)
	vbox.add_child(hbox)

func _on_script_selected(script_name: String, script_row: HBoxContainer):
	active_script = script_name
	var script_labels = {"hiragana": "Hiragana", "katakana": "Katakana", "both": "Both"}
	for child in script_row.get_children():
		if child is Button:
			_style_menu_group_btn(child, child.text == script_labels[active_script])
	_rebuild_group_grid()

func _style_menu_group_btn(btn: Button, is_active: bool):
	var s_active   = make_stylebox_full("#2A6496", "#5BA3D9", 12, 2)
	var s_inactive = make_stylebox_full("#1E2D40", "#2E4460", 12, 2)
	s_active.content_margin_top    = 10
	s_active.content_margin_bottom = 10
	s_inactive.content_margin_top    = 10
	s_inactive.content_margin_bottom = 10
	btn.add_theme_stylebox_override("normal",  s_active if is_active else s_inactive)
	btn.add_theme_stylebox_override("hover",   make_stylebox_full("#263548", "#3A5577", 12, 2))
	btn.add_theme_stylebox_override("pressed", s_active)
	btn.add_theme_color_override("font_color", Color.html("#FFFFFF") if is_active else Color.html("#7A9BB5"))

func _on_menu_group_selected(group_name: String):
	active_group = group_name
	for child in group_grid.get_children():
		if child is Button:
			_style_menu_group_btn(child, child.text == active_group)

func _on_start_pressed():
	_update_active_keys()
	main_menu.visible = false
	_set_game_nodes_visible(true)
	new_Round()

func _add_back_button():
	var cl = CanvasLayer.new()
	cl.name = "BackLayer"
	cl.layer = 5
	add_child(cl)

	var back = Button.new()
	back.name = "BackButton"
	back.text = "Menu"
	back.custom_minimum_size = Vector2(80, 32)
	back.add_theme_font_size_override("font_size", 14)
	var bs = make_stylebox_full("#1E2D40", "#2E4460", 8, 2)
	bs.content_margin_top    = 6
	bs.content_margin_bottom = 6
	bs.content_margin_left   = 12
	bs.content_margin_right  = 12
	back.add_theme_stylebox_override("normal",  bs)
	back.add_theme_stylebox_override("hover",   make_stylebox_full("#263548", "#3A5577", 8, 2))
	back.add_theme_stylebox_override("pressed", make_stylebox_full("#263548", "#3A5577", 8, 2))
	back.add_theme_color_override("font_color",       Color.html("#7A9BB5"))
	back.add_theme_color_override("font_hover_color", Color.html("#D8E3ED"))
	back.set_anchors_preset(Control.PRESET_TOP_LEFT)
	back.position = Vector2(12, 12)
	back.pressed.connect(_on_back_to_menu)
	cl.add_child(back)
	var reset = Button.new()
	reset.name = "ResetButton"
	reset.text = "Reset Points"
	reset.custom_minimum_size = Vector2(120, 32)
	reset.add_theme_font_size_override("font_size", 14)
	var rs = make_stylebox_full("#3D1A1A", "#8B3030", 8, 2)
	rs.content_margin_top    = 6
	rs.content_margin_bottom = 6
	rs.content_margin_left   = 12
	rs.content_margin_right  = 12
	reset.add_theme_stylebox_override("normal",  rs)
	reset.add_theme_stylebox_override("hover",   make_stylebox_full("#5A2020", "#C04040", 8, 2))
	reset.add_theme_stylebox_override("pressed", make_stylebox_full("#5A2020", "#C04040", 8, 2))
	reset.add_theme_color_override("font_color",       Color.html("#D8E3ED"))
	reset.add_theme_color_override("font_hover_color", Color.html("#FFFFFF"))
	reset.set_anchors_preset(Control.PRESET_TOP_LEFT)
	reset.position = Vector2(12, 52)
	reset.pressed.connect(_on_reset_points)
	cl.add_child(reset)
	

func _on_back_to_menu():
	reseting = false
	$Timer.paused = true
	_set_game_nodes_visible(false)
	main_menu.visible = true

func _update_active_keys():
	match active_script:
		"hiragana":
			active_char_map = hiragana
			if active_group == "All":
				active_keys = hiragana.keys()
			else:
				active_keys = hiragana_groups[active_group].duplicate()
		"katakana":
			active_char_map = katakana
			if active_group == "All":
				active_keys = katakana.keys()
			else:
				active_keys = katakana_groups[active_group].duplicate()
		"both":
			active_char_map = {}
			var keys_to_use: Array
			if active_group == "All":
				keys_to_use = hiragana.keys()
			else:
				keys_to_use = hiragana_groups[active_group].duplicate()
			for k in keys_to_use:
				active_char_map["h_" + k] = hiragana[k]
				active_char_map["k_" + k] = katakana[k]
			active_keys = active_char_map.keys()

func buttonPress(buttonPressed):
	if reseting:
		return
	reseting = true
	$Timer.paused = true

	if buttonPressed.text == active_char_map[current_pron_key]:
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

	current_pron_key = active_keys.pick_random()

	var display_pron = current_pron_key
	if "_" in current_pron_key:
		display_pron = current_pron_key.substr(current_pron_key.find("_") + 1)
	$Pronunciation.text = display_pron

	var all_values = active_char_map.values()
	var correct_char = active_char_map[current_pron_key]

	var choices: Array = [correct_char]
	while choices.size() < 3:
		var candidate = all_values.pick_random()
		if not choices.has(candidate):
			choices.append(candidate)
	choices.shuffle()

	_apply_btn_defaults()
	$TextEdit.text  = choices[0]
	$TextEdit2.text = choices[1]
	$TextEdit3.text = choices[2]

func _ready() -> void:
	_load_jp_font()
	points = int(load_txt("res://data/points.txt"))
	hiragana_groups["All"] = hiragana.keys()
	katakana_groups["All"] = katakana.keys()
	active_char_map = hiragana
	_init_styles()
	_apply_btn_defaults()
	_style_pronunciation_label()
	_style_points_label()
	_style_timer_bar()
	_update_points_display()
	_update_active_keys()
	_set_game_nodes_visible(false)
	_build_main_menu()
	_add_back_button()

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
	
func _on_reset_points():
	points = 0
	save_text_file("0", "points.txt")
	_update_points_display()
