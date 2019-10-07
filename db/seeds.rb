Character.delete_all
Character.create!([
  {id: 1, name: "nameone", character_class: "Warrior", race: "Night Elf",user_id: 1},
  {id: 2, name: "nametwo", character_class: "Mage", race: "Human",user_id: 1},
  {id: 3, name: "namethree", character_class: "Priest", race: "Draenei",user_id: 1},
  {id: 4, name: "namefour", character_class: "Warlock", race: "Human",user_id: 1},
  {id: 5, name: "namefive", character_class: "Demon Hunter", race: "Night Elf",user_id: 1}
])