Class {
	#name : #PTSelfType,
	#superclass : #PTType,
	#category : #'PrettyType-Type'
}

{ #category : #'type checking' }
PTSelfType >> typeCheck: aPTType [
 
	^ self class = aPTType class
]
