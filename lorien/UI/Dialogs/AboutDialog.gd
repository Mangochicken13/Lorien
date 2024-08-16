extends Window

# -------------------------------------------------------------------------------------------------
func _ready():
	size.y = $MarginContainer.size.y + 5
	%VersionLabel.text = "Lorien v%s" % Config.VERSION_STRING
	
	close_requested.connect(hide)
	
	%GithubLinkButton.connect("pressed", _on_GithubLinkButton_pressed)
	%LicenseButton.connect("pressed", _on_LicenseButton_pressed)
	%GodotButton.connect("pressed", _on_GodotButton_pressed)
	%KennyButton.connect("pressed", _on_KennyButton_pressed)
	%RemixIconsButton.connect("pressed", _on_RemixIconsButton_pressed)

# -------------------------------------------------------------------------------------------------
func _on_GithubLinkButton_pressed():
	OS.shell_open("https://github.com/mbrlabs/Lorien")

# -------------------------------------------------------------------------------------------------
func _on_LicenseButton_pressed():
	OS.shell_open("https://github.com/mbrlabs/Lorien/blob/main/LICENSE")

# -------------------------------------------------------------------------------------------------
func _on_GodotButton_pressed():
	OS.shell_open("https://godotengine.org/")

# -------------------------------------------------------------------------------------------------
func _on_RemixIconsButton_pressed():
	OS.shell_open("https://remixicon.com/")

# -------------------------------------------------------------------------------------------------
func _on_KennyButton_pressed():
	OS.shell_open("https://www.kenney.nl/assets/platformer-art-deluxe")
