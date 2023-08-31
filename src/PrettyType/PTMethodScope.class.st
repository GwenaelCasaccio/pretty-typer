Class {
	#name : #PTMethodScope,
	#superclass : #PTScope,
	#instVars : [
		'methodType',
		'temporaries'
	],
	#category : #PrettyType
}

{ #category : #initialization }
PTMethodScope >> initialize [ 

	super initialize.
	temporaries := OrderedCollection new.
]

{ #category : #lookup }
PTMethodScope >> lookupVarType: aSymbol [

	methodType arguments do: [ : each | each  name = aSymbol ifTrue: [ ^ each ] ].
	temporaries do: [ : each | each  name = aSymbol ifTrue: [ ^ each ] ].
	^ super lookupVarType: aSymbol
]

{ #category : #accessing }
PTMethodScope >> methodType [

	^ methodType
]

{ #category : #accessing }
PTMethodScope >> methodType: anObject [

	methodType ifNotNil: [ ^ self error: 'Cannot register twice a method type' ].
	methodType := anObject
]

{ #category : #accessing }
PTMethodScope >> returnType [ 

	^ methodType return
]
