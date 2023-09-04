Class {
	#name : #PTClassScope,
	#superclass : #PTScope,
	#category : #PrettyType
}

{ #category : #lookup }
PTClassScope >> lookupVarType: aSymbol [

	aSymbol = #self ifTrue: [ ^ PTSelfType new ].
	^ super lookupVarType: aSymbol
]
