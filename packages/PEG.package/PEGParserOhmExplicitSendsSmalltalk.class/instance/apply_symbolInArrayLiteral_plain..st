as yet unclassified
apply_symbolInArrayLiteral_plain: t1 
	^ (memoization at: t1)
		at: #'parse_symbolInArrayLiteral_plain'
		ifAbsentPut: [| t2 |
			t2 := self parse_symbolInArrayLiteral_plain: t1.
			t2
				ifNotNil: [PEGNode
						newOn: #'symbolInArrayLiteral_plain'
						for: string
						from: t1
						to: t2 endPos
						children: t2 nodeList]]