extends Resource

export var testVar : int

func testFunc(variable):
	variable += 1
	return variable

func _init(p_testVar = 0):
	testVar = p_testVar
