utility - accessing
documentFromPillarElement: aGtPillarEditorElement 
	<return: #GtDocument>
	| aDocument |
	aDocument := aGtPillarEditorElement document.
	self assert: aDocument notNil.
	self assert: aDocument documentParts notNil.
	^ aDocument