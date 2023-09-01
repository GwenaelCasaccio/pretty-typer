Class {
	#name : #PTSelfType,
	#superclass : #PTType,
	#category : #'PrettyType-Types'
}

{ #category : #'type checking' }
PTSelfType >> typeCheck: aPTType [
 
	^ self class = aPTType class
]
