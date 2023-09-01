Class {
	#name : #PTUInt64Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTUInt64Type >> maxValue [ 

	^ 16rFFFFFFFFFFFFFFFF
]

{ #category : #'accessing - limits' }
PTUInt64Type >> minValue [ 

	^ 0
]
