Class {
	#name : #PTMethodType,
	#superclass : #PTType,
	#instVars : [
		'returnType',
		'arguments'
	],
	#category : #'PrettyType-Types'
}

{ #category : #'instance creation' }
PTMethodType class >> return: aReturnType [

	^ self return: aReturnType arguments: #()
]

{ #category : #'instance creation' }
PTMethodType class >> return: aReturnType arguments: anArray [

	^ self new return: aReturnType;
				  arguments: anArray;
				  yourself
]

{ #category : #accessing }
PTMethodType >> arguments [

	^ arguments
]

{ #category : #accessing }
PTMethodType >> arguments: anArray [

	arguments := anArray
]

{ #category : #initialization }
PTMethodType >> initialize [ 

	super initialize.
	arguments := #()
]

{ #category : #accessing }
PTMethodType >> return [

	^ returnType 
]

{ #category : #accessing }
PTMethodType >> return: aType [

	returnType := aType
]

{ #category : #accessing }
PTMethodType >> type [ 

	^ returnType 
]

{ #category : #'type checking' }
PTMethodType >> typeCheck: anArray [

	| stream |
	arguments size = anArray size ifFalse: [ ^ PTTypeException signal: 'Type Error wrong number of args' ].
	stream := ReadStream on: anArray.
	(arguments allSatisfy: [ : aType | aType typeCheck: stream next ]) ifFalse: [ ^ PTTypeException signal: 'Type Error wrong number of args' ].
	^ returnType 
]
