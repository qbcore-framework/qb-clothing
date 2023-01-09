local Translations = {
    store = {
        barber = "Salão de Beleza",
        surgeon = "Cirurgião Plástico",
        clothing = "Loja de Roupas"
    },

    outfits = {
        roomOutfits = "Uniformes",
        myOutfits = "Meus Outfits",
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
        delete = "Apagar",
        select_outfit = "Selecionar Outfit",
        player_model = "Modelo",
        model = "Modelo",
        mother = "Mãe",
        father = "Pai",
        texture = "Textura",
        type = "Tipo",
        item = "Item",
        skin_color = "Cor da pele",
        parent_mixer = "Gene predominante",
        shape_mix = "Face",
        skin_mix = "Pele",
        arms = "Braços",
        undershirt = "Camisa",
        color = "Cor",
        jacket = "Jaqueta",
        vests = "Colete",
        decals = "Decalque",
        acessory = "Acessórios",
        bags = "Bolsa/Mochila",
        pants = "Calças",
        shoes = "Sapatos",
        eye_color = "Cor dos olhos",
        moles = "Sardas",
        opacity = "Opacidade",
        nose_width = "Largura do nariz",
        width = "Largura",
        nose_peak_height = "Altura da ponta do nariz",
        height = "Altura",
        nose_peak_length = "Comprimento da ponta do nariz",
        length = "Comprimento",
        nose_bone_height = "Altura do osso do nariz",
        nose_peak_lowering = "Redução da ponta do nariz",
        lowering = "Redução",
        nose_bone_twist = "Ângulo do osso do nariz",
        twist = "Ângulo",
        eyebrow_height = "Altura da sobrancelha",
        eyebrow_depth = "Profundidade da sobrancelha",
        depth = "Profundidade",
        cheeks_height = "Altura da bochecha",
        cheeks_width = "Largura da bochecha",
        cheeks_depth = "Profundidade da bochecha",
        eyes_opening = "Abertura dos olhos",
        opening = "Abertura",
        lips_thickness = "Grossura dos lábios",
        thickness = "Grossura",
        jaw_bone_width = "Largura da mandíbula",
        jaw_bone_length = "Comprimento da mandíbula",
        chin_height = "Altura do queixo",
        chin_width = "Largura do queixo",
        butt_chin = "Covinha no queixo",
        size = "Tamanho",
        neck_thickness = "Grossura do pescoço",
        ageing = "Rugas",
        hair = "Cabelo",
        eyebrow = "Sobrancelha",
        facial_hair = "Pelos faciais",
        lipstick = "Batom",
        blush = "Blush",
        makeup = "Maquiagem",
        mask = "Máscaras",
        hat = "Chapéus",
        glasses = "Óculos",
        ear_accessories = "Acessórios de orelha",
        watch = "Relógios",
        bracelet = "Braceletes",
        btn_confirm = "Confirmar",
        btn_cancel = "Cancelar",
        btn_saveOutfit = "Salvar Outfit",
        outfit_name = "Nome do Outfit"
    },

    notify = {
        error_bracelet = "Você não pode remover sua tornozeleira ...",
        info_deleteOutfit = "Você apagou o outfit %{outfit}!"
    }
}

if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
