Class {
	#name : #PTInt16Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTInt16Type class >> maxValue [ 

	^ 16rFFFF
]

{ #category : #'accessing - limits' }
PTInt16Type class >> minValue [ 

	^ 16rFFFF
]

{ #category : #'accessing - limits' }
PTInt16Type >> maxValue [ 

	^ 16r7FFF
]

{ #category : #'accessing - limits' }
PTInt16Type >> minValue [ 

	^ 16r8000 negated
]
