as yet unclassified
parse_MethodDeclaration_1: t1 
	| t2 |
	t2 := self skipSpaces: t1.
	^ self apply_MethodHeader: t2