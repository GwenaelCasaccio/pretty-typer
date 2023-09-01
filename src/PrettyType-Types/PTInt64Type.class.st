Class {
	#name : #PTInt64Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTInt64Type >> maxValue [ 

	^ 16r7FFFFFFFFFFFFFFF
]

{ #category : #'accessing - limits' }
PTInt64Type >> minValue [ 

	^ 16r8000000000000000 negated
]
