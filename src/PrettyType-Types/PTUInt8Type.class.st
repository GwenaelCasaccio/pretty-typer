Class {
	#name : #PTUInt8Type,
	#superclass : #PTNumberType,
	#category : #'PrettyType-Types-'
}

{ #category : #accessing }
PTUInt8Type >> maxValue [ 

	^ 16rFF
]

{ #category : #accessing }
PTUInt8Type >> minValue [ 

	^ 0
]

{ #category : #'type checking' }
PTUInt8Type >> typeCheck: aPTType [

	^ self class = aPTType class or: [ aPTType class = PTLiteralIntegerType and: [ aPTType value between: 16r0 and: 16rFF ] ]
]
