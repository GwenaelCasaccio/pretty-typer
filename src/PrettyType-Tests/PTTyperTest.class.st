Class {
	#name : #PTTyperTest,
	#superclass : #TestCase,
	#category : #'PrettyType-Tests-'
}

{ #category : #tests }
PTTyperTest >> testMethodDeclaration1 [

	| ast typer |
	ast := RBParser parseMethod: 'method <return: #UInt8>'.
	typer := PrettyType type: ast.

]
