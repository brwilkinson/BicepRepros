


output test string = true ? string(resourceGroup('ACU1-BRW-AOA-RG-T5')) : string(resourceGroup(''))
output test2 string = false ? string(resourceGroup('ACU1-BRW-AOA-RG-T5')) : string(resourceGroup(null))
