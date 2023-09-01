Class {
	#name : #PTUInt32Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types'
}

{ #category : #'accessing - limits' }
PTUInt32Type >> maxValue [ 

	^ 16rFFFFFFFF
]

{ #category : #'accessing - limits' }
PTUInt32Type >> minValue [ 

	^ 0
]
