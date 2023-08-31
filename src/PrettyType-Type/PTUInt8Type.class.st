Class {
	#name : #PTUInt8Type,
	#superclass : #PTType,
	#category : #'PrettyType-Type-'
}

{ #category : #'type checking' }
PTUInt8Type >> typeCheck: aPTType [

	^ self class = aPTType class
]
