Class {
	#name : #PTLiteralIntegerType,
	#superclass : #PTType,
	#instVars : [
		'value'
	],
	#category : #'PrettyType-Types'
}

{ #category : #'instance creation' }
PTLiteralIntegerType class >> value: aSmallInteger [

	^ self new value: aSmallInteger;
				  yourself
]

{ #category : #'type checking' }
PTLiteralIntegerType >> typeCheck: aPTType [

	^ ({ PTUInt8Type. PTUInt16Type. PTUInt32Type. PTUInt64Type.
	   PTInt8Type.  PTInt16Type.  PTInt32Type.  PTInt64Type } includes: aPTType class) and: [ value between: aPTType minValue and: aPTType maxValue ]
]

{ #category : #accessing }
PTLiteralIntegerType >> value [

	^ value
]

{ #category : #accessing }
PTLiteralIntegerType >> value: aSmallInteger [

	value := aSmallInteger
]
