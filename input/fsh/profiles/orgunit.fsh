Profile: OrgUnit
Parent: Location
Title: ""
Description: ""

* identifier 0..* // TO DO: Slice for id, code, href 
* extension contains 
    Level named level 1..1 MS and
    ShortName named shortName 1..1 MS and
    OrganisationUnitGroup named orgUnitGroup 0..* MS and
    AttributeValue named attribute 0..* MS and 
    http://hl7.org/fhir/StructureDefinition/location-boundary-geojson named geojson 0..1 MS 

* partOf MS
* name 1..1 MS
* managingOrganization 1..1
* managingOrganization only Reference(OrgUnitOrganization)
* description MS


Profile: OrgUnitOrganization
Parent: Organization
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1
* extension[period].valuePeriod.start 1..1
* extension[period].valuePeriod.end 0..0


Extension: Level
Id: Level
Title: "Level"
Description: "Hierarchical level."
* value[x] only integer



Extension: ShortName
Id: ShortName
Title: "Short name"
Description: "Short name."
* value[x] only string



Extension: OrganisationUnitGroup
Id: OrganisationUnitGroup
Title: "Organisation Unit Group"
Description: "Organisation Unit Group."
* value[x] only Identifier


Extension: AttributeValue
Id: AttributeValue
Title: "Attribute Value"
Description: "Attribute Value."
* extension contains
    attribute 1..1 MS and
    value 1..1 MS
* extension[attribute] ^short = "The attribute type"
* extension[attribute].value[x] only Coding
* extension[value] ^short = "attribute value"
* extension[value].value[x] only Coding or string or integer or boolean




Instance: OrgUnit1
InstanceOf: OrgUnit


* name = "MyOrgUnit"
* managingOrganization.reference = "Organization/342342"
* extension[level].valueInteger = 1
* extension[shortName].valueString = "MyOrgUnit"

* extension[attribute][+].extension[+].url = #attribute
* extension[attribute][=].extension[=].valueCoding = #systemXCode
* extension[attribute][=].extension[+].url = #value
* extension[attribute][=].extension[=].valueString = "12345"


* extension[attribute][+].extension[+].url = #attribute
* extension[attribute][=].extension[=].valueCoding = #systemXDate
* extension[attribute][=].extension[+].url = #value
* extension[attribute][=].extension[=].valueString = "2022-01-02"




RuleSet: StringAttribute(attribute,value)
* extension[attribute][+].extension[+].url = #attribute
* extension[attribute][=].extension[=].valueCoding = #{attribute}
* extension[attribute][=].extension[+].url = #value
* extension[attribute][=].extension[=].valueString = "{value}"

RuleSet: CodingAttribute(attribute,value)
* extension[attribute][+].extension[+].url = #attribute
* extension[attribute][=].extension[=].valueCoding = #{attribute}
* extension[attribute][=].extension[+].url = #value
* extension[attribute][=].extension[=].valueString = #{value}

* insert StringAttribute(SystemZcode,123456)