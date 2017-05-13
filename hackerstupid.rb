I also want to be able to track how far a bot got.
like, if they signed in then got stuck, i want to know about that.

maybe I have an event

maybe we have a Host table

and we can track Event and Attack on a host
and can also track Miss


schema

ATTACK
id
url (of current webpage)
element_id
element_class
success
reported
rewarded
timestamps

BREACH
attack_id
info
timestamps
