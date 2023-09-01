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

{ #category : #'accessing - limits' }
PTNumberType >> maxValue [

	^ self class maxValue  
]

{ #category : #'accessing - limits' }
PTNumberType >> minValue [

	^ self class minValue 
]
