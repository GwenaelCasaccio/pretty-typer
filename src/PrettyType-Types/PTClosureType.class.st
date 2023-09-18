Class {
	#name : #PTClosureType,
	#superclass : #PTType,
	#instVars : [
		'returnType',
		'arguments'
	],
	#category : #'PrettyType-Types'
}

{ #category : #'instance creation' }
PTClosureType class >> return: aReturnType [

	^ self return: aReturnType arguments: #()
]

{ #category : #'instance creation' }
PTClosureType class >> return: aReturnType arguments: anArray [

	^ self new return: aReturnType;
				  arguments: anArray;
				  yourself
]

{ #category : #accessing }
PTClosureType >> arguments [

	^ arguments
]

{ #category : #accessing }
PTClosureType >> arguments: anObject [

	arguments := anObject
]

{ #category : #converting }
PTClosureType >> asType [

	^ self
]

{ #category : #initialization }
PTClosureType >> initialize [ 

	arguments := #()
]

{ #category : #lookup }
PTClosureType >> messsageLookup: aSelector [

	self error: 'foo'.
	aSelector = #value ifTrue: [ ^ self ].
	self error: 'Message not found'
]

{ #category : #accessing }
PTClosureType >> return [

	^ returnType
]

{ #category : #accessing }
PTClosureType >> return: anObject [

	returnType := anObject
]

{ #category : #'type checking' }
PTClosureType >> typeCheck: aType [

	^ self class = aType class and: [ 
		arguments = aType arguments and: [ returnType = aType return  ] ]
]
