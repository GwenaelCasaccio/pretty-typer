Class {
	#name : #PTTyperTest,
	#superclass : #TestCase,
	#category : #'PrettyType-Tests-'
}

{ #category : #tests }
PTTyperTest >> testMethodDeclaration1 [

	| ast typer |
	ast := RBParser parseMethod: 'method <return: #Self>'.
	typer := PrettyType type: ast.
]

{ #category : #tests }
PTTyperTest >> testMethodDeclaration2 [

	| ast |
	ast := RBParser parseMethod: 'method <return: #Self> ^ 123'.
	self should: [ PrettyType type: ast ] raise: PTTypeException.
]

{ #category : #tests }
PTTyperTest >> testMethodDeclaration3 [

	| ast |
	ast := RBParser parseMethod: 'method <return: #UInt8> | a | <var: #a type: #UInt8> ^ a'.
	PrettyType type: ast.
]

{ #category : #tests }
PTTyperTest >> testMethodDeclaration4 [

	| ast |
	ast := RBParser parseMethod: 'method <return: #UInt8> | a | <var: #a type: #UInt8> ^ a := ''abc'''.
	self should: [ PrettyType type: ast ] raise: PTTypeException.
]
