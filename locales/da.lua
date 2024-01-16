local Translations = {
    store = {
        barber = "Frisør",
        surgeon = "Plastikkirurg",
        clothing = "Tøjbutik",
        outfitchanger = "Tøjskifter"
    },

    outfits = {
        roomOutfits = "Forudindstillede",
        myOutfits = "Mine Outfits",
        character = "Tøj",
        accessoires = "Tilbehør"
    },

    menu = {
        hair = "Hår",
        character = "Tøj",
        accessoires = "Tilbehør",
        features = "Funktioner"
    },

    ui = {
        select = "Vælg",
        delete = "Slet",
        select_outfit = "Vælg Outfit",
        player_model = "Spillermodel",
        model = "Model",
        mother = "Mor",
        father = "Far",
        texture = "Tekstur",
        type = "Type",
        item = "Genstand",
        skin_color = "Hudfarve",
        parent_mixer = "Forælder Mixer",
        shape_mix = "Form Mixer",
        skin_mix = "Hud Mixer",
        arms = "Arme",
        undershirt = "Undertøj/Bælter",
        color = "Farve",
        jacket = "Jakker/Toppe",
        vests = "Veste",
        decals = "Dekorationer",
        acessory = "Hals Tilbehør",
        bags = "Tasker",
        pants = "Bukser",
        shoes = "Sko",
        eye_color = "Øjenfarve",
        moles = "Fregner/Skønhedspletter",
        opacity = "Gennemsigtighed",
        nose_width = "Næsebredde",
        width = "Bredde",
        nose_peak_height = "Næsespidsens højde",
        height = "Højde",
        nose_peak_length = "Næsespidsens længde",
        length = "Længde",
        nose_bone_height = "Næsebenets højde",
        nose_peak_lowering = "Næsespidsens sænkning",
        lowering = "Sænkning",
        nose_bone_twist = "Næsebensvridning",
        twist = "Vridning",
        eyebrow_height = "Øjenbrynshøjde",
        eyebrow_depth = "Øjenbrynsdybde",
        depth = "Dybde",
        cheeks_height = "Kinderhøjde",
        cheeks_width = "Kinderbredde",
        cheeks_depth = "Kinderdybde",
        eyes_opening = "Øjenåbning",
        opening = "Åbning",
        lips_thickness = "Læbernes tykkelse",
        thickness = "Tykkelse",
        jaw_bone_width = "Kæbebensbredde",
        jaw_bone_length = "Kæbebenslængde",
        chin_height = "Hagebenshøjde",
        chin_width = "Hagebensbredde",
        butt_chin  ="Dimplehage",
        size = "Størrelse",
        neck_thickness = "Halsens tykkelse",
        ageing = "Ældning",
        hair = "Hår",
        eyebrow = "Øjenbryn",
        facial_hair = "Ansigtshår",
        lipstick = "Læbestift",
        blush = "Rouge",
        makeup = "Makeup",
        mask = "Masker",
        hat = "Hatte",
        glasses = "Briller",
        ear_accessories = "Øretilbehør",
        watch = "Armbåndsure",
        bracelet = "Armbånd",
        btn_confirm = "Bekræft",
        btn_cancel = "Annuller",
        btn_saveOutfit = "Gem Outfit",
        outfit_name = "Outfit Navn"
    },

    notify = {
        error_bracelet = "Du kan ikke fjerne din ankelarmbånd...",
        info_deleteOutfit = "Du har slettet din %{outfit} outfit!"
    }
}

if GetConvar('qb_locale', 'en') == 'da' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
    })
end