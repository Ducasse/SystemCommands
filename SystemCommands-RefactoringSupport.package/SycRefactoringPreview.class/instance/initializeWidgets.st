initialization
initializeWidgets

	changesTree := self newTree.
	textArea := self newCode.
	scopeDropList := self newDropList.
	
	self initializeChangesTree.
	self initializeTextArea.
	self initializeScopeDropList.
	self setFocus.
	self
		bindKeyCombination: PharoShortcuts current acceptShortcut toAction: [ self accept ];
		bindKeyCombination: Character escape toAction: [ self cancel ]