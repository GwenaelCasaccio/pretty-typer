Class {
	#name : #PrettyType,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'methodType',
		'scope'
	],
	#category : #PrettyType
}

{ #category : #visiting }
PrettyType class >> type: aNode [

	aNode addSelfReturn.
	^ self new visit: aNode.
]

{ #category : #scopes }
PrettyType >> enterScope: aScope [

	aScope parentScope: scope.
	scope := aScope
]

{ #category : #scopes }
PrettyType >> leaveScope [

	scope := scope parentScope
]

{ #category : #accessing }
PrettyType >> registerMethodType: aPragmaNode [

	scope methodType: (PTMethodType return: (PTTypeLookup createTypeFrom: aPragmaNode arguments first value))
	 
]

{ #category : #accessing }
PrettyType >> registerVariableType: aPragmaNode [

	scope registerVariable: (PTVariableType name: aPragmaNode arguments first value
															 type: (PTTypeLookup createTypeFrom: aPragmaNode arguments second value))

]

{ #category : #visiting }
PrettyType >> visitAssignmentNode: anAssignmentNode [

	| variableType valueType |
	valueType := self visitNode: anAssignmentNode value.
	variableType := self visitNode: anAssignmentNode variable.
	(variableType typeCheck: valueType) ifFalse: [ ^ PTTypeException signal: 'Type error' ].
	^ valueType 
]

{ #category : #visiting }
PrettyType >> visitBlockNode: aBlockNode [

	self error: 'Cannot type block'
]

{ #category : #visiting }
PrettyType >> visitLiteralValueNode: aLiteralNode [

	aLiteralNode value class == SmallInteger ifTrue: [ ^ PTLiteralIntegerType value: aLiteralNode value ].
	aLiteralNode value class == ByteString ifTrue: [ ^ PTLiteralStringType value: aLiteralNode value ].
	^ self error: 'literal type not managed'
]

{ #category : #visiting }
PrettyType >> visitMessageNode: aMessageNode [

	| receiverType messageDeclaration |
	receiverType := self visitNode: aMessageNode receiver.
	messageDeclaration := receiverType messsageLookup: aMessageNode selectorNode value.
	^ messageDeclaration typeCheck: (aMessageNode arguments collect: [ :each | self visitNode: each ])
]

{ #category : #visiting }
PrettyType >> visitMethodNode: aMethodNode [

	| env testClass |
	testClass := PTClassType new.
	testClass methodDictionary at: #factorial: 
									   put: (PTMethodType return: PTUInt64Type new 
																 arguments: { PTUInt64Type new }).
	env := PTEnvironmentScope new.
	env register: #PTTestSample put: testClass.
	self enterScope: env.
	self enterScope: PTClassScope new.
	self enterScope: PTMethodScope new.
	aMethodNode pragmas do: [ :each | self visitNode: each ].
	self visitNode: aMethodNode body.
	self leaveScope.
	self leaveScope.
	self leaveScope.
]

{ #category : #visiting }
PrettyType >> visitNamedBlockNode: aBlockNode [

	self enterScope: PTBlockScope new.
	" vérifier si pragmas de type "
	aBlockNode pragmas do: [ :each | self visitNode: each ].
	self visitArgumentNodes: aBlockNode arguments.
	self visitNode: aBlockNode body.
	self leaveScope
]

{ #category : #visiting }
PrettyType >> visitPragmaNode: aPragmaNode [

 	(#(#return: #return:arguments:) includes: aPragmaNode selector) ifTrue: [ ^ self registerMethodType: aPragmaNode ].
 	(#(#var:type:) includes: aPragmaNode selector) ifTrue: [ ^ self registerVariableType: aPragmaNode ].
	
]

{ #category : #visiting }
PrettyType >> visitReturnNode: aReturnNode [

	| expressionType |
	expressionType := super visitReturnNode: aReturnNode.
	(expressionType typeCheck: scope returnType) ifFalse: [ ^ PTTypeException signal: 'Type Error' ].
	^ scope returnType
]

{ #category : #visiting }
PrettyType >> visitSelfNode: aSelfNode [

	^ PTSelfType new
]

{ #category : #visiting }
PrettyType >> visitSuperNode: aSuperNode [

	^ self error: 'I will not type you'
]

{ #category : #visiting }
PrettyType >> visitVariableNode: aVariableNode [

	^ (scope lookupVarType: aVariableNode name) type
]
