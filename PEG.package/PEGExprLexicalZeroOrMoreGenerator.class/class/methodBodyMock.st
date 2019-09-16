as yet unclassified
methodBodyMock
	^ '| currentPos currentResult children |
	currentPos := pos.
	children := OrderedCollection new.
	[
		currentResult := self {1}: string atPos: currentPos.
		currentResult ifNotNil: [
			currentPos := currentResult endPos.
			children add: currentResult]
	] doWhileTrue: [(currentResult == nil) not].

	^ PEGAbstractSyntaxTreeNode new
		rule: #zeroOrMore;
		startPos: pos;
		endPos: currentPos;
		children: (children collect: #nodeList) flatten;
		yourself'