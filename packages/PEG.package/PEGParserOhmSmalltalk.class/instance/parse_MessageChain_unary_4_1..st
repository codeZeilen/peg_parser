as yet unclassified
parse_MessageChain_unary_4_1: t1 
	| t2 |
	t2 := self skipSpaces: t1.
	^ self apply_KeywordMessage: t2