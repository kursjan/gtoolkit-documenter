adding non-existent example class
addAnotherNonExistentExampleClass
	<gtExample>
	<label: 'Add another non-existent example class'>
	| aCodeSnippet anAnnouncements |
	aCodeSnippet := self codeSnippetOfDocumentWithNonExistentExampleClass.
	self assert: aCodeSnippet isMethodClassDefined not.
	anAnnouncements := OrderedCollection new.
	aCodeSnippet subscribe: GtDocumentAnnouncement do: [ :anAnnouncement | 
		anAnnouncements add: anAnnouncement ].
	GtOldDocumenterExamplesUtility 
		createClassNamed: (aCodeSnippet methodClassName, 'Two') asSymbol
		during: [ 
			self assert: anAnnouncements isEmpty.
			self assert: aCodeSnippet isMethodClassDefined not.
			self assert: aCodeSnippet isMethodDefined not ].
	self assert: anAnnouncements isEmpty.
	^ aCodeSnippet