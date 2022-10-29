


resource customDomain 'Microsoft.Cdn/profiles/customDomains@2021-06-01' existing = {
  name: 'acu1brwaoat5cdnshared01/appt21-psthing-com'
}

output domain object = customDomain.properties
output domainvalidation string = customDomain.properties.validationProperties.validationToken
output domainvalidationexpiration string = customDomain.properties.validationProperties.expirationDate
output domainvalidation2 string = customDomain.properties.domainValidationState
