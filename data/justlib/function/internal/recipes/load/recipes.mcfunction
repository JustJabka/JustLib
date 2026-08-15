data modify storage justlib:recipes recipes set value []

function #justlib:recipes/register

data modify storage justlib:recipes recipes[].components merge from storage justlib:recipes recipes_properties