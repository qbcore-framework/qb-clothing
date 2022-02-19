local Translations = {
    error = {
        ankle_bracelet = "You can't remove your ankle bracelet .."
    },
    info = {
        clothing_store_blip = "Clothing store",
        barber_blip = "Barber",
        surgeon_blip = "Surgeon",
        clothes = "~g~E~w~ - To Shop For Clothes",
        haircut = "~g~E~w~ - To Get A Haircut",
        plastic_surgery = "~g~E~w~ - To Get Plastic Surgery",
        view_clothing = "~g~E~w~ - View Clothing",
        deleted_outfit = "You have deleted your %{value} outfit!",
        confirm_outfit = "You have chosen %{value}! Press Confirm to confirm outfit."
    },
    menu = {
        clothing = "Clothing",
        accessories = "Accessories",
        hair = "Hair",
        features = "Features",
        presets = "Presets",
        my_outfits = "My Outfits",
        character = "Character",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
