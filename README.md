# Dice Prefix
This script allows you to automatically get a prefix from a default gateway if it is source speciifc.
It also allows the automatic removal of prefixes that are no longer routed.

## Usage
Assign Prefixes

    assign_prefixes

Remove Prefixes (will restart network!)

    remove_prefixes

## Collision Avoidance
Up to now the collision avoidance only works by waiting a random time between 0 and 100s before a node enters prefix search.