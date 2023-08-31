Class {
	#name : #PTLiteralIntegerType,
	#superclass : #PTType,
	#instVars : [
		'value'
	],
	#category : #'PrettyType-Type'
}

{ #category : #'instance creation' }
PTLiteralIntegerType class >> value: aSmallInteger [

	^ self new value: aSmallInteger;
				  yourself
]

{ #category : #'type checking' }
PTLiteralIntegerType >> typeCheck: aPTType [

	^ #(PTUInt8 PTUInt16 PTUInt32 PTUInt64
	  PTInt8 PTInt16 PTInt32 PTInt64) includes: aPTType class
]

{ #category : #accessing }
PTLiteralIntegerType >> value [

	^ value
]

{ #category : #accessing }
PTLiteralIntegerType >> value: aSmallInteger [

	value := aSmallInteger
]
