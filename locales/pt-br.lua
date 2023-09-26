local Translations = {
    store = {
        barber = "Barbearia",
        surgeon = "Cirurgião Plástico",
        clothing = "Loja de Roupas",
        outfitchanger = "Troca de Roupas"
    },

    outfits = {
        roomOutfits = "Predefinições",
        myOutfits = "Meus Conjuntos",
        character = "Roupas",
        accessoires = "Acessórios"
    },

    menu = {
        hair = "Cabelo",
        character = "Roupas",
        accessoires = "Acessórios",
        features = "Características"
    },

    ui = {
        select = "Selecionar",
        delete = "Excluir",
        select_outfit = "Selecionar Conjunto",
        player_model = "Modelo do Jogador",
        model = "Modelo",
        mother = "Mãe",
        father = "Pai",
        texture = "Textura",
        type = "Tipo",
        item = "Item",
        skin_color = "Cor da Pele",
        parent_mixer = "Mistura dos Pais",
        shape_mix = "Mistura da Forma",
        skin_mix = "Mistura da Pele",
        arms = "Braços",
        undershirt = "Camiseta/Cintos",
        color = "Cor",
        jacket = "Jaquetas/Blusas",
        vests = "Coletes",
        decals = "Decalques",
        acessory = "Acessórios de Pescoço",
        bags = "Bolsas",
        pants = "Calças",
        shoes = "Sapatos",
        eye_color = "Cor dos Olhos",
        moles = "Sardas/Pintas",
        opacity = "Opacidade",
        nose_width = "Largura do Nariz",
        width = "Largura",
        nose_peak_height = "Altura do Pico do Nariz",
        height = "Altura",
        nose_peak_length = "Comprimento do Pico do Nariz",
        length = "Comprimento",
        nose_bone_height = "Altura do Ossinho do Nariz",
        nose_peak_lowering = "Abaixamento do Pico do Nariz",
        lowering = "Abaixamento",
        nose_bone_twist = "Giro do Ossinho do Nariz",
        twist = "Giro",
        eyebrow_height = "Altura das Sobrancelhas",
        eyebrow_depth = "Profundidade das Sobrancelhas",
        depth = "Profundidade",
        cheeks_height = "Altura das Maçãs do Rosto",
        cheeks_width = "Largura das Maçãs do Rosto",
        cheeks_depth = "Profundidade das Maçãs do Rosto",
        eyes_opening = "Abertura dos Olhos",
        opening = "Abertura",
        lips_thickness = "Espessura dos Lábios",
        thickness = "Espessura",
        jaw_bone_width = "Largura do Ossinho da Mandíbula",
        jaw_bone_length = "Comprimento do Ossinho da Mandíbula",
        chin_height = "Altura do Ossinho do Queixo",
        chin_width = "Largura do Ossinho do Queixo",
        butt_chin  ="Covinha no Queixo",
        size = "Tamanho",
        neck_thickness = "Espessura do Pescoço",
        ageing = "Envelhecimento",
        hair = "Cabelo",
        eyebrow = "Sobrancelhas",
        facial_hair = "Pelos Faciais",
        lipstick = "Batom",
        blush = "Blush",
        makeup = "Maquiagem",
        mask = "Máscaras",
        hat = "Chapéus",
        glasses = "Óculos",
        ear_accessories = "Acessórios de Ouvido",
        watch = "Relógios",
        bracelet = "Pulseiras",
        btn_confirm = "Confirmar",
        btn_cancel = "Cancelar",
        btn_saveOutfit = "Salvar Conjunto",
        outfit_name = "Nome do Conjunto"
    },

    notify = {
        error_bracelet = "Você não pode remover sua tornozeleira...",
        info_deleteOutfit = "Você excluiu seu conjunto %{outfit}!"
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
