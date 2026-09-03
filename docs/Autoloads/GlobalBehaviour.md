Global functions to acces to behaviour rather globally

### Functions

- initGlobals(node):
Initializes the Globals in a given node via its Globals dictionary
- insertOverlappingNode(overlappingNodes, node):
inserts node into overlappingNodes array accordingly to its z_index value

**Comment**

>the below description of Globals initialization on nodes via Dictionary, or initialization via node variables lead to confusion of usage, usage of Globals is just invoking them until said otherwise

`initGlobals() : initializes the globals autoloads nodes for a given **node** via a dictionary with keys being the name of said Global as it is in the Project Settings and values being the identity of said Global, this to make whichever node be needed to have the globals at their disposition`