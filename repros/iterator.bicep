param index int = 2
param appCount int = 4

var name = 'test'

output webAppInfo array = [for (i,iterator) in range(index, appCount): {
  value: '${name}-${i}-${iterator}-${index}-${appCount}'
}]
