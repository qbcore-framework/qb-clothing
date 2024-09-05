local Translations = {
    store = {
        barber = "Coiffure",
        surgeon = "Plastische chirurg",
        clothing = "Kledij winkel",
        outfitchanger = "Veranderen van outfit"
    },

    outfits = {
        roomOutfits = "Presets",
        myOutfits = "Opgeslagen outfits",
        character = "Kledij",
        accessoires = "Accessoires"
    },

    menu = {
        hair = "Haar",
        character = "Kledij",
        accessoires = "Accessoires",
        features = "Functies"
    },

    ui = {
        select = "Selecteer",
        delete = "Verwijderen",
        select_outfit = "Outfit selecteren",
        player_model = "Player Model",
        model = "Model",
        mother = "Moeder",
        father = "Vader",
        texture = "Texture",
        type = "Type",
        item = "Item",
        skin_color = "Huidskleur",
        parent_mixer = "Ouders combineren",
        shape_mix = "Uitzicht combineren",
        skin_mix = "Huid combineren",
        arms = "Armen",
        undershirt = "tshirt/riemen",
        color = "Kleur",
        jacket = "Jassen/vesten",
        vests = "Vesten",
        decals = "Decals",
        acessory = "Nek Accessoires",
        bags = "Tassen/rugzakken",
        pants = "Broeken",
        shoes = "Schoenen",
        eye_color = "Oogkleur",
        moles = "Moles/Freckles",
        opacity = "Doorzichtigheid",
        nose_width = "Neusbreedte",
        width = "Breedte",
        nose_peak_height = "Neushoogte",
        height = "Hoogte",
        nose_peak_length = "Neuslengte",
        length = "Lengte",
        nose_bone_height = "Neusbeenhogte",
        nose_peak_lowering = "Neuspuntverlaging",
        lowering = "verlaging",
        nose_bone_twist = "Neusbeentwist",
        twist = "Twist",
        eyebrow_height = "Wenkbrauwhoogte",
        eyebrow_depth = "Wenkbrauwdiepte",
        depth = "Diepte",
        cheeks_height = "Kaakhoogte",
        cheeks_width = "Kaakbreedte",
        cheeks_depth = "Kaakdiepte",
        eyes_opening = "Oogopening",
        opening = "Opening",
        lips_thickness = "Lipdikte",
        thickness = "Dikte",
        jaw_bone_width = "Kaalijnbreedte",
        jaw_bone_length = "Kaaklijnhoogte",
        chin_height = "Kinhoogte",
        chin_width = "Kinbreedte",
        butt_chin  ="Kin",
        size = "Size",
        neck_thickness = "Nekdikte",
        ageing = "Ouderdom",
        hair = "Haar",
        eyebrow = "Wenkbrauw",
        facial_hair = "Baard",
        lipstick = "Lippestift",
        blush = "Blozen",
        makeup = "Makeup",
        mask = "Masker",
        hat = "Hoed/klak",
        glasses = "Brillen",
        ear_accessories = "Oor Accessoires",
        watch = "Horloges",
        bracelet = "Armbandjes",
        btn_confirm = "Bevestig",
        btn_cancel = "Annuleer",
        btn_saveOutfit = "Outfit opslagen",
        outfit_name = "Outfit Naam"
    },

    notify = {
        error_bracelet = "Je kan je armband niet uitdoen..",
        info_deleteOutfit = "Je hebt je %{outfit} outfit verwijderd!"
    }
}

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
