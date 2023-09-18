Extension { #name : #Object }

{ #category : #'*PrettyType' }
Object >> asType [ 

	^ self error: 'Cannot cast object to type'
]
