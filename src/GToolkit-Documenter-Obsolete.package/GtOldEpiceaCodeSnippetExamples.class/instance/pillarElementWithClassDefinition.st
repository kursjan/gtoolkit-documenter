class definition
pillarElementWithClassDefinition
	<gtExample>
	<label: 'Pillar element with an example code snippet with class definition'>
	| fileReference pillarElement |
	fileReference := self fileReferenceWithClassDefinition.
	pillarElement := GtOldDocumenterExamplesUtility pillarElementForPillarFileReference: fileReference.
	(GtOldDocumenterExamplesUtility editorFromPillarElement: pillarElement) styleText.
	self assert: pillarElement notNil.
	^ pillarElement