as yet unclassified
apply_normalFloatingPointLiteral_exponent: t1 
	^ (memoization at: t1)
		at: #'parse_normalFloatingPointLiteral_exponent'
		ifAbsentPut: [| t2 |
			t2 := self parse_normalFloatingPointLiteral_exponent: t1.
			t2
				ifNotNil: [PEGNode
						newOn: #'normalFloatingPointLiteral_exponent'
						for: string
						from: t1
						to: t2 endPos
						children: t2 nodeList]]