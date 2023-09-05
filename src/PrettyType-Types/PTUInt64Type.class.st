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

{ #category : #'type checking' }
PTUInt64Type >> typeCheck: aPTType [

	^ self class = aPTType class or: [ aPTType class = PTLiteralIntegerType and: [ aPTType value between: 16r0 and: 16rFFFFFFFFFFFFFFFF ] ]
]
