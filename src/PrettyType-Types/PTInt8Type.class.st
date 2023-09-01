Class {
	#name : #PTInt8Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTInt8Type >> maxValue [ 

	^ 16r7F
]

{ #category : #'accessing - limits' }
PTInt8Type >> minValue [ 

	^ 16r80 negated
]
