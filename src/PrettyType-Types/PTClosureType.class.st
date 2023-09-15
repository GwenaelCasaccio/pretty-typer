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

{ #category : #accessing }
PTClosureType >> return [

	^ returnType
]

{ #category : #accessing }
PTClosureType >> return: anObject [

	returnType := anObject
]
