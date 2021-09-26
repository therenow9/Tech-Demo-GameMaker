/// @description define item names and sprites etc

item_name=choose("apple","pear","banana");
sprite_index=asset_get_index("spr_" + item_name);

//item chosen at random from these fruits
//make sure to name sprites the same as item names