as yet unclassified
methodBodyMock
	^ '| childResult |
	childResult := self {1}: string atPos: pos.
	^ childResult
		ifNil: [
			PEGShadowAbstractSyntaxTreeNode new
				rule: self;
				startPos: pos;
				endPos: pos;
				yourself]
		ifNotNil: [nil]'