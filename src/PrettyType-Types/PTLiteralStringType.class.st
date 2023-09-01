Class {
	#name : #PTLiteralStringType,
	#superclass : #PTType,
	#instVars : [
		'value'
	],
	#category : #'PrettyType-Types'
}

{ #category : #'instance creation' }
PTLiteralStringType class >> value: aString [

	^ self new value: aString;
				  yourself
]

{ #category : #'type checking' }
PTLiteralStringType >> typeCheck: aPTType [

	^ PTStringType = aPTType class
]

{ #category : #accessing }
PTLiteralStringType >> value [

	^ value
]

{ #category : #accessing }
PTLiteralStringType >> value: anObject [

	value := anObject
]
