as yet unclassified
parse_LiteralArrayLiteral_2_1: t1 
	| t2 |
	t2 := self skipSpaces: t1.
	^ self apply_literalArrayLiteralElement: t2