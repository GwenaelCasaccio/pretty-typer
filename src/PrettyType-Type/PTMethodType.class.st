Class {
	#name : #PTMethodType,
	#superclass : #Object,
	#instVars : [
		'returnType',
		'arguments'
	],
	#category : #'PrettyType-Type'
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

{ #category : #accessing }
PTMethodType >> return [

	^ returnType 
]

{ #category : #accessing }
PTMethodType >> return: aType [

	returnType := aType
]
