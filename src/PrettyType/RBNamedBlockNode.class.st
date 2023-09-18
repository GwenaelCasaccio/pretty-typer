"
RBBlockNode is an AST node that represents a block ""[...]"".

Like RBMethodNode, the scope attribute is only valid after doing a semantic analyzing step.

Instance Variables:
arguments	<SequenceableCollection of: RBVariableNode>	the arguments for the block
bar	<Integer | nil>	position of the | after the arguments
body	<RBSequenceNode>	the code inside the block
colons	<SequenceableCollection of: Integer>	positions of each : before each argument
left	<Integer>	position of [
right	<Integer>	position of ]
scope	<OCBlockScope | OCOptimizedBlockScope | nil> the scope associated with this code of this block




To get numbers of block usage in the system:

""Lots of Methods""
 Smalltalk globals methods size ""121357""

""there are quite some blocks""
allBlocks := Smalltalk globals methods flatCollect: [:meth | meth ast blockNodes ].
allBlocks size ""86028"". 

""but many are compiled inline (eg ifTrue:)""
currentFullBlocks := allBlocks select: [:blockNode | blockNode isInlined not].
currentFullBlocks size. ""36407""

""What we can compile as CleanBlockClosure""
cleanBlocks := currentFullBlocks select: [:blockNode | blockNode isClean].
cleanBlocks size. ""10097"" 

""the clean blocks are actually just constant""
constantBlocks := cleanBlocks select: [:blockNode | blockNode isConstant].
constantBlocks size. ""2540"" 

""FullBlocks that need the outerContext to return""
fullBocksWithReturn := currentFullBlocks select: [ :each  | each hasNonLocalReturn ].
fullBocksWithReturn size  ""2198""
"
Class {
	#name : #RBNamedBlockNode,
	#superclass : #RBValueNode,
	#instVars : [
		'node'
	],
	#category : #'PrettyType-AST'
}

{ #category : #'instance creation' }
RBNamedBlockNode class >> node: aNode [

    ^ self new node: aNode;
 				   yourself
]

{ #category : #visiting }
RBNamedBlockNode >> acceptVisitor: aProgramNodeVisitor [

	^ aProgramNodeVisitor visitNamedBlockNode: self
]

{ #category : #accessing }
RBNamedBlockNode >> arguments [

	^ node arguments
]

{ #category : #accessing }
RBNamedBlockNode >> body [

	^ node body
]

{ #category : #testing }
RBNamedBlockNode >> isNamedBlock [

	^ true
]

{ #category : #testing }
RBNamedBlockNode >> needsParenthesis [

	^ false
]

{ #category : #accessing }
RBNamedBlockNode >> node [

	node
]

{ #category : #accessing }
RBNamedBlockNode >> node: aNode [

	node := aNode
]

{ #category : #'accessing - pragma' }
RBNamedBlockNode >> pragmaNamed: aSymbol [
	^ self pragmaNamed: aSymbol ifAbsent: [ KeyNotFound signalFor: aSymbol  ]
]

{ #category : #'accessing - pragma' }
RBNamedBlockNode >> pragmaNamed: aSymbol ifAbsent: absentBlock [
	^ self pragmas
		detect: [ :pragma| pragma selector = aSymbol ]
		ifNone: absentBlock
]

{ #category : #'accessing - pragma' }
RBNamedBlockNode >> pragmaNamed: aSymbol ifPresent: foundBlock [
	^ self pragmas
		detect: [ :pragma| pragma selector = aSymbol ]
		ifFound: foundBlock
]

{ #category : #'accessing - pragma' }
RBNamedBlockNode >> pragmaNamed: aSymbol ifPresent: presentBlock ifAbsent: absentBlock [
	^ self pragmas
		detect: [ :pragma| pragma selector = aSymbol ]
		ifFound: presentBlock
		ifNone: absentBlock
]

{ #category : #accessing }
RBNamedBlockNode >> pragmas [
	^ node pragmas
]

{ #category : #accessing }
RBNamedBlockNode >> startWithoutParentheses [

	^ self
]

{ #category : #accessing }
RBNamedBlockNode >> statements [

	^ self body statements
]

{ #category : #accessing }
RBNamedBlockNode >> stopWithoutParentheses [

	^ self
]

{ #category : #accessing }
RBNamedBlockNode >> temporaries [

	^ self body temporaries
]
