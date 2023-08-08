Instance: DHIS2BasePatient1
InstanceOf: DHIS2BasePatient
Title: "DHIS2 Patient example"
Description: "DHIS2 Patient example"

* name.given = "Morten"
* name.family = "Hansen"
* birthDate = "1981-01-01"
* birthDate
  * extension[dateOfBirthIsEstimated].valueBoolean = true
* gender = #male 
* address[physicalHomeAddress].text = "Vietnamgate 123, Oslo"
* address[physicalHomeAddress].use = #home

* contact[phonehome].telecom.value = "1234567"
* identifier[nationalId].value = "1234234245"
* identifier[nationalId].system = "http://whatever.country/nationalidnamespace"

* extension[birthPlace].valueAddress.country = urn:iso:std:iso:3166#NO
* extension[consentToBeContacted].valueBoolean = true
