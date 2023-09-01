Class {
	#name : #PTUInt16Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTUInt16Type >> maxValue [ 

	^ 16rFFFF
]

{ #category : #'accessing - limits' }
PTUInt16Type >> minValue [ 

	^ 0
]
