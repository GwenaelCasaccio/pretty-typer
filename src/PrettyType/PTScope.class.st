Class {
	#name : #PTScope,
	#superclass : #Object,
	#instVars : [
		'parentScope',
		'variables'
	],
	#category : #PrettyType
}

{ #category : #initialization }
PTScope >> initialize [ 

	super initialize.
	variables := Set new.
]

{ #category : #lookup }
PTScope >> lookupVarType: aSymbol [

	variables do: [ : each | each  name = aSymbol ifTrue: [ ^ each ] ].
	^ self parentScope lookupVarType: aSymbol
]

{ #category : #accessing }
PTScope >> parentScope [

	parentScope
]

{ #category : #accessing }
PTScope >> parentScope: aScope [

	parentScope := aScope
]

{ #category : #accessing }
PTScope >> registerVariable: aVariableNode [

	variables add: aVariableNode
]
