Class {
	#name : #PTEnvironmentScope,
	#superclass : #PTScope,
	#instVars : [
		'environment'
	],
	#category : #PrettyType
}

{ #category : #initialization }
PTEnvironmentScope >> initialize [ 

	super initialize.
	environment := Dictionary new
]

{ #category : #lookup }
PTEnvironmentScope >> lookupVarType: aSymbol [

	environment at: aSymbol ifPresent: [ : aType | ^ aType ].
	^ super lookupVarType: aSymbol
]

{ #category : #'accessing - environment' }
PTEnvironmentScope >> register: aSymbol put: aBehavior [

	environment at: aSymbol put: aBehavior 
]
