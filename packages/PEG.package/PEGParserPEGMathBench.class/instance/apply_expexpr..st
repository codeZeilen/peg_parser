as yet unclassified
apply_expexpr: t1 
	^ (memoization at: t1)
		at: #'parse_expexpr'
		ifAbsentPut: [| t2 |
			t2 := self parse_expexpr: t1.
			t2
				ifNotNil: [PEGNode
						newOn: #expexpr
						for: string
						from: t1
						to: t2 endPos
						children: t2 nodeList]]