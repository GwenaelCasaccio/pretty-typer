Class {
	#name : #PTTypeLookup,
	#superclass : #Object,
	#category : #'PrettyType-Type-'
}

{ #category : #lookup }
PTTypeLookup class >> createTypeFrom: aSymbol [

	aSymbol = #UInt8 ifTrue: [ ^ PTUInt8Type new ].
	aSymbol = #UInt16 ifTrue: [ ^ PTUInt16Type new ].
	aSymbol = #UInt32 ifTrue: [ ^ PTUInt32Type new ].
	aSymbol = #UInt64 ifTrue: [ ^ PTUInt64Type new ].
	
	aSymbol = #Int8 ifTrue: [ ^ PTInt8Type new ].
	aSymbol = #Int16 ifTrue: [ ^ PTInt16Type new ].
	aSymbol = #Int32 ifTrue: [ ^ PTInt32Type new ].
	aSymbol = #Int64 ifTrue: [ ^ PTInt64Type new ].
	
	^ self error: 'Type not found'
]
