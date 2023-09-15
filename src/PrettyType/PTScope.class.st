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

{ #category : #testing }
PTScope >> isBlockScope [ 

	^ false
]

{ #category : #testing }
PTScope >> isMethodScope [ 

	^ false
]

{ #category : #lookup }
PTScope >> lookupVarType: aSymbol [

	variables do: [ : each | each  name = aSymbol ifTrue: [ ^ each ] ].
	^ self parentScope ifNil: [ self error: 'Variable not found !' ]
	                   ifNotNil: [ : aParentScope | aParentScope lookupVarType: aSymbol ]
]

{ #category : #accessing }
PTScope >> parentScope [

	^ parentScope
]

{ #category : #accessing }
PTScope >> parentScope: aScope [

	parentScope := aScope
]

{ #category : #accessing }
PTScope >> registerVariable: aVariableNode [

	variables add: aVariableNode
]

{ #category : #accessing }
PTScope >> typeClass [

	^ self error: 'TypeClass not defined'
]
