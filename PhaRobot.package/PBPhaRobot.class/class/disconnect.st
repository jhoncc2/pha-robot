public
disconnect
	<script: 'BTQueryBot disconnect'>
	"bot disconnect."
	self allInstances
		do: [ :ann | 
			ann bot ifNotNil: [ ann bot announcer subscriptions subscriptions
				do: [ :e | ann bot announcer removeSubscription: e ] ] ]