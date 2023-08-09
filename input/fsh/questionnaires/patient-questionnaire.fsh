RuleSet: Question(linkId, text, type, required, repeats)
* item[+].linkId = "{linkId}"
* item[=].text = "{text}"
* item[=].type = #{type}
* item[=].repeats = {repeats}
* item[=].required = {required}


Instance: PatientRegistrationQuestionnaire
InstanceOf: sdc-questionnaire-extr-smap
Title: "Client Registration Questionnaire"
Description: "Client Registration Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft
* contained[+] = PatientSexAtBirthVS
//* contained[+] = "http://hl7.org/fhir/ValueSet/country"

* insert Question(registrationDateTime, Date-Time information was entered,dateTime,true,false)
* insert Question(firstregisteredAt, The Org unit where the patient was first registered,choice,true,false)
* insert Question(firstName, Given name of the patient,string,false,false)
* insert Question(lastName,Last name of the patient,string,false,false)
* insert Question(dateOfBirth, Date of Birth,string,false,false)
* insert Question(dateOfBirthIsEstimated, Date of Birth is Estimated,boolean,false,false)
* insert Question(sex,Patient sex at birth,choice,true,false)
* item[=].answerValueSet = Canonical(PatientSexAtBirthVS)
* insert Question(currentHomeAddress,Current home address,string,true,false)
* insert Question(contactPhoneNumber,Contact phone number,string,true,false)
* insert Question(countryOfBirth,Country of birth,choice,true,false)
* item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/country"
* insert Question(nationaId,National ID,string,true,false)
* insert Question(consent,National ID,boolean,true,false)
