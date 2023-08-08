Logical: PatientInfo
Title: "Patient data model"
Description: "When a patient is added, we register the person the enrollment info"

//* enrollmentOrgUnit 0..* string "The organization that has first registered the person"
* registrationDateTime 1..1 dateTime "Date-Time information was entered" "Date and Time when the patient information was entered into DHIS2"
* firstregisteredAt 1..1 Reference(Organization) "The Org unit where the patient was first registered"
* firstName 0..1 string "Given name of the patient"
* lastName 0..1 string "Family name"
* dateOfBirth 1..1 string "..."
* dateOfBirthIsEstimated 0..1 boolean "..."
* sex 1..1 code "..."
* sex from PatientSexAtBirthVS (example)
  * ^comment = "(valueset depends on the program)"
* currentHomeAddress 1..1 string ""
* contactPhoneNumber 1..1 string ""
* countryOfBirth 0..1 string "..."
* countryOfBirth from urn:iso:std:iso:3166 (example)
* nationaId 0..1 string "..."
// * healthFacilityCode 0..1 string "..."
// * programNationaId 0..* Identifier "..."
// * nhisId 0..1 string "..."
* consent 0..1 boolean  "..."


// @Name: Local Code Systems

// Define a local code system
CodeSystem: PatientSexAtBirth
Id:         patient-sex-at-birth
Title:     "Patient sex at birth"
* #male "Male"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Masculino"
  * ^designation[+].language = #es
  * ^designation[=].value = "Masculino"
  * ^designation[+].language = #et
  * ^designation[=].value = "Mees"
* #female "Female"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Feminino"
  * ^designation[+].language = #es
  * ^designation[=].value = "Feminino"
  * ^designation[+].language = #et
  * ^designation[=].value = "Naine"
* #other "Other"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Outro"
  * ^designation[+].language = #es
  * ^designation[=].value = "Otro"
  * ^designation[+].language = #et
  * ^designation[=].value = "Muu"
* #unknown "Unknown"
  * ^designation[+].language = #pt
  * ^designation[=].value = "Desconhecido"
  * ^designation[+].language = #es
  * ^designation[=].value = "Desconocido"
  * ^designation[+].language = #et
  * ^designation[=].value = "Teadmata"



ValueSet: PatientSexAtBirthVS
Id: patient-sex-at-birth-vs
Title: ""
Description: ""
// The "include" in this rule is optional
// http://varnomen.hgvs.org can be replaced with an alias
* include codes from system PatientSexAtBirth
