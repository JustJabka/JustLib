data modify storage justlib:recipes page[].components merge from storage justlib:recipes recipes_properties
data modify storage justlib:recipes page append from storage justlib:recipes meta.template[]
data modify storage justlib:recipes pages append from storage justlib:recipes page