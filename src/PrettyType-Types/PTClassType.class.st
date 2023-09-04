Class {
	#name : #PTClassType,
	#superclass : #PTType,
	#instVars : [
		'className',
		'methodDictionary'
	],
	#category : #'PrettyType-Types'
}

{ #category : #accessing }
PTClassType >> className1 [

	^ className
]

{ #category : #accessing }
PTClassType >> className: anObject [

	className := anObject
]

{ #category : #initialization }
PTClassType >> initialize [ 

	super initialize.
	methodDictionary := Dictionary new.
]

{ #category : #accessing }
PTClassType >> methodDictionary [

	^ methodDictionary
]

{ #category : #accessing }
PTClassType >> methodDictionary: anObject [

	methodDictionary := anObject
]
