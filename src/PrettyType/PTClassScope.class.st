Class {
	#name : #PTClassScope,
	#superclass : #PTScope,
	#category : #'PrettyType-Scope'
}

{ #category : #lookup }
PTClassScope >> lookupVarType: aSymbol [

	aSymbol = #self ifTrue: [ ^ PTSelfType new ].
	^ super lookupVarType: aSymbol
]
