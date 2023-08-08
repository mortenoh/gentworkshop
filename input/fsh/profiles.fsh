Profile: DHIS2BasePatient
Parent: Patient
Title: "DHIS2 Patient profile"
Description: "DHIS2 Patient profile"

* name 1..1 MS
* name.given 1..1 MS
* name.family 1..1 MS
* birthDate 1..1 MS
* gender 1..1 MS 

* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "type"
* address ^slicing.rules = #open
* address ^slicing.ordered = false   // can be omitted, since false is the default
* address ^slicing.description = "Slices on address"
* address contains physicalHomeAddress 1..1 MS
* address[physicalHomeAddress].type = #physical
* address[physicalHomeAddress].use = #home


* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "telecom.system"
* contact ^slicing.rules = #open
* contact ^slicing.ordered = false   // can be omitted, since false is the default
* contact ^slicing.description = "Slices on contact - phone"
* contact contains phonehome 1..1 MS
* contact[phonehome].telecom.system = #phone
* contact[phonehome].telecom.value 1..1 MS

// * contact 0..1 MS
//   * telecom.system = #phone
//   * telecom.value 1..1 MS


* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false  // can be omitted, since false is the default
* identifier ^slicing.description = "Slices on identifier type"
* identifier contains nationalId 1..1 MS
* identifier[nationalId].type = http://dhis2.org/identifiertypes#nationalidentifier

* extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 
* extension[birthPlace].valueAddress.country MS

* birthDate
  * extension contains DateOfBirthIsEstimated named dateOfBirthIsEstimated 0..1
  * extension[dateOfBirthIsEstimated].valueBoolean = true


* extension contains ConsentToBeContacted named consentToBeContacted 0..1
//* extension[consentToBeContacted].valueBoolean = true


Extension: DateOfBirthIsEstimated
Id: DateOfBirthIsEstimated
Title: ""
Description: "Date Of Birth is Estimated."
* value[x] only boolean


Extension: ConsentToBeContacted
Id: ConsentToBeContacted
Title: "ConsentToBeContact"
Description: "Patient gives consent to be contacted."
* value[x] only boolean




/*
X * registrationDateTime 1..1 dateTime "Date-Time information was entered" "Date and Time when the patient information was entered into DHIS2"
X * firstregisteredAt 1..1 Reference(Organization) "The Org unit where the patient was first registered"

// * healthFacilityCode 0..1 string "..."
// * programNationaId 0..* Identifier "..."
// * nhisId 0..1 string "..."
* consent 0..1 boolean  "..."

*/


