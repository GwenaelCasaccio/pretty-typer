Class {
	#name : #PTTestSample,
	#superclass : #Object,
	#instVars : [
		'slot1',
		'slot2'
	],
	#category : #'PrettyType-Tests'
}

{ #category : #tests }
PTTestSample class >> factoria: anInteger [
	<return: #UInt64>
	
	^ anInteger
]

{ #category : #tests }
PTTestSample >> method1 [

	| temp1 temp2 |
	<var: #temp1 type: #PTUInt8>
	<var: #temp2 type: #PTUInt16>
	temp1 := temp2 := 123.
]
