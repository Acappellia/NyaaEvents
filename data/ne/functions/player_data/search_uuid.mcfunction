##search uuid

##init a marker & check current id
data modify storage ne:tmp search.check_UUID set from storage ne:player uuid_check[0].UUID
data modify storage ne:tmp search.init_UUID set from storage ne:player uuid_check[0].UUID

##if it has a value, enter loop
execute if data storage ne:tmp search.check_UUID store result score #search_result ne run function ne:player_data/search_uuid_loop