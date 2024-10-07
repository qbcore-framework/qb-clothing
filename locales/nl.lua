local Translations = {
    store = {
        barber = "Kapperszaak",
        surgeon = "Plastisch Chirurg",
        clothing = "Kledingwinkel",
        outfitchanger = "Kledingwisselaar"
    },

    outfits = {
        roomOutfits = "Voorinstellingen",
        myOutfits = "Mijn Outfits",
        character = "Kleding",
        accessoires = "Accessoires"
    },

    menu = {
        hair = "Haar",
        character = "Kleding",
        accessoires = "Accessoires",
        features = "Kenmerken"
    },

    ui = {
        select = "Selecteer",
        delete = "Verwijder",
        select_outfit = "Selecteer Outfit",
        player_model = "Spelermodel",
        model = "Model",
        mother = "Moeder",
        father = "Vader",
        texture = "Textuur",
        type = "Type",
        item = "Item",
        skin_color = "Huidskleur",
        parent_mixer = "Oudermixer",
        shape_mix = "Vormmix",
        skin_mix = "Huidsmix",
        arms = "Armen",
        undershirt = "Onderhemd/Riemen",
        color = "Kleur",
        jacket = "Jassen/Tops",
        vests = "Vesten",
        decals = "Decals",
        acessory = "Nekaccessoires",
        bags = "Tassen",
        pants = "Broeken",
        shoes = "Schoenen",
        eye_color = "Oogkleur",
        moles = "Sproeten/Moedervlekken",
        opacity = "Ondoorzichtigheid",
        nose_width = "Neusbreedte",
        width = "Breedte",
        nose_peak_height = "Neuspiekhoogte",
        height = "Hoogte",
        nose_peak_length = "Neuspieklengte",
        length = "Lengte",
        nose_bone_height = "Neusbeenhoogte",
        nose_peak_lowering = "Neuspiekverlaging",
        lowering = "Verlaging",
        nose_bone_twist = "Neusbeendraai",
        twist = "Draai",
        eyebrow_height = "Wenkbrauwhoogte",
        eyebrow_depth = "Wenkbrauwdiepte",
        depth = "Diepte",
        cheeks_height = "Wanghoogte",
        cheeks_width = "Wangbreedte",
        cheeks_depth = "Wangdiepte",
        eyes_opening = "Oogopening",
        opening = "Opening",
        lips_thickness = "Lipdikte",
        thickness = "Dikte",
        jaw_bone_width = "Kaakbeenbreedte",
        jaw_bone_length = "Kaakbeenlengte",
        chin_height = "Kinbeenhoogte",
        chin_width = "Kinbeenbreedte",
        butt_chin  = "Kuiltjeskin",
        size = "Grootte",
        neck_thickness = "Nekdikte",
        ageing = "Veroudering",
        hair = "Haar",
        eyebrow = "Wenkbrauwen",
        facial_hair = "Gezichtshaar",
        lipstick = "Lippenstift",
        blush = "Blush",
        makeup = "Make-up",
        mask = "Maskers",
        hat = "Hoeden",
        glasses = "Brillen",
        ear_accessories = "Ooraccessoires",
        watch = "Horloges",
        bracelet = "Armbanden",
        btn_confirm = "Bevestigen",
        btn_cancel = "Annuleren",
        btn_saveOutfit = "Outfit Opslaan",
        outfit_name = "Outfit Naam"
    },

    notify = {
        error_bracelet = "Je kunt je enkelband niet verwijderen ...",
        info_deleteOutfit = "Je hebt je %{outfit} outfit verwijderd!"
    }
}

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
    })
end
