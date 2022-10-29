@allowed([
  '0.25'
  '0.5'
  '0.75'
  '1.0'
  '1.25'
  '1.5'
  '1.75'
  '2.0'
])
@description('The container Resources CPU')
param containerResourcesCpu string = '0.25'

@allowed([
  '0.5'
  '1.0'
  '1.5'
  '2.0'
  '2.5'
  '3.0'
  '3.5'
  '4.0'
])
@description('The container Resources Memory')
param containerResourcesMemory string = '0.5'

output cpu string = json(containerResourcesCpu)
output mem string = json(containerResourcesMemory)

var test = '''
 I am a string
 on a multiline
'''
