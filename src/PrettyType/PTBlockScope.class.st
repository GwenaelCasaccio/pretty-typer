Class {
	#name : #PTBlockScope,
	#superclass : #PTScope,
	#instVars : [
		'methodType',
		'temporaries'
	],
	#category : #'PrettyType-Scope'
}

{ #category : #initializing }
PTBlockScope >> initialize [ 

	super initialize.
	temporaries := OrderedCollection new.
]

{ #category : #testing }
PTBlockScope >> isBlockScope [ 

	^ true
]

{ #category : #lookup }
PTBlockScope >> lookupVarType: aSymbol [

	methodType arguments do: [ : each | each  name = aSymbol ifTrue: [ ^ each ] ].
	temporaries do: [ : each | each  name = aSymbol ifTrue: [ ^ each ] ].
	^ super lookupVarType: aSymbol
]

{ #category : #accessing }
PTBlockScope >> methodType [

	^ methodType
]

{ #category : #accessing }
PTBlockScope >> methodType: anObject [

	methodType ifNotNil: [ ^ self error: 'Cannot register twice a method type' ].
	methodType := anObject
]

{ #category : #accessing }
PTBlockScope >> returnType [ 

	^ methodType return
]

{ #category : #accessing }
PTBlockScope >> typeClass [

	^ PTClosureType
]
