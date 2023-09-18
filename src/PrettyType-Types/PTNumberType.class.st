Class {
	#name : #PTNumberType,
	#superclass : #PTType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTNumberType class >> maxValue [

	^ self shouldBeImplemented 
]

{ #category : #'accessing - limits' }
PTNumberType class >> minValue [

	^ self shouldBeImplemented 
]

{ #category : #comparing }
PTNumberType >> = aType [

	^ self class = aType class
]

{ #category : #comparing }
PTNumberType >> hash [

	^ self class hash
]

{ #category : #'accessing - limits' }
PTNumberType >> maxValue [

	^ self class maxValue  
]

{ #category : #'accessing - limits' }
PTNumberType >> minValue [

	^ self class minValue 
]
