Logical: BaseOrgUnit
Title: "Base Org Unit"
Description: "Base Org Unit."

* id 0..1 string "unique IDfor the org unit" // identifier
* code 1..1 string "" // identifier
* href 0..1 string "unique URL where the unit is available from" // identifier

* level 1..1 integer "" // extension

* parent 0..1 string ""
// Location.partOf
// Organization.partOf
* name 1..1 string ""
// name
* shortName 1..1 string ""
// extension

* description 0..1 string ""
// Location.description

* openingDate 1..1 date ""
// Org: ext organization-period
// Loc: ???
* geometry 0..1 string ""
// Org: 
// Loc: ext location-geojson
* organisationUnitGroups 0..* Identifier "groups that contain this org unit"

* attributeValues 0..* string "additional attributes that are in this org unit"
