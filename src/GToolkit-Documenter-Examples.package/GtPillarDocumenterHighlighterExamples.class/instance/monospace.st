highlighted text
monospace
	<gtExample>
	| aText |
	aText := '==monospace==' asRopedText.
	GtPillarDocumenterHighlighter highlight: aText.
	self assert: aText rope attributes size equals: 2.
	^ aText