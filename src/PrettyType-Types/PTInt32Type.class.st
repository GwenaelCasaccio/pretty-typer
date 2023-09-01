Class {
	#name : #PTInt32Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTInt32Type >> maxValue [ 

	^ 16r7FFFFFFF
]

{ #category : #'accessing - limits' }
PTInt32Type >> minValue [ 

	^ 16r80000000 negated
]
