as yet unclassified
parse_mulexpr_divide: t1 
	| t2 t3 t4 |
	t2 := t1.
	t4 := OrderedCollection new: 3.
	t3 := self parse_mulexpr_divide_1: t2.
	t3
		ifNil: [^ nil].
	t2 := t3 endPos.
	t4 add: t3.
	t3 := self parse_mulexpr_divide_2: t2.
	t3
		ifNil: [^ nil].
	t2 := t3 endPos.
	t4 add: t3.
	t3 := self parse_mulexpr_divide_3: t2.
	t3
		ifNil: [^ nil].
	t2 := t3 endPos.
	t4 add: t3.
	^ PEGShadowNode
		newOn: #shadow
		for: string
		from: t1
		to: t2
		children: (t4 collect: #nodeList) flatten