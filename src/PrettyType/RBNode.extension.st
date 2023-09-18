Extension { #name : #RBNode }

{ #category : #'*PrettyType' }
RBNode >> asType [

	^ Behavior evaluate: (RBSimpleFormatter format: self)
]
