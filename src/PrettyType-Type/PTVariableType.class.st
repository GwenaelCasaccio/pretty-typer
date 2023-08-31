Class {
	#name : #PTVariableType,
	#superclass : #PTType,
	#instVars : [
		'name',
		'type'
	],
	#category : #'PrettyType-Type'
}

{ #category : #'instance creation' }
PTVariableType class >> name: aSymbol type: aPTType [

	^ self new name: aSymbol;
				  type: aPTType;
				  yourself
]

{ #category : #accessing }
PTVariableType >> name [

	^ name
]

{ #category : #accessing }
PTVariableType >> name: anObject [

	name := anObject
]

{ #category : #accessing }
PTVariableType >> type [

	^ type
]

{ #category : #accessing }
PTVariableType >> type: anObject [

	type := anObject
]

{ #category : #'type checking' }
PTVariableType >> typeCheck: aPTType [ 

	^ type typeCheck: aPTType
]
