local Translations = {
    store = {
        barber = "Kuaför",
        surgeon = "Plastik Cerrah",
        clothing = "Giysi Mağazası",
        outfitchanger = "Kıyafet Değiştirici"
    },

    outfits = {
        roomOutfits = "Önceden Ayarlanmışlar",
        myOutfits = "Kendi Kıyafetlerim",
        character = "Giysi",
        accessoires = "Aksesuarlar"
    },

    menu = {
        hair = "Saç",
        character = "Giysi",
        accessoires = "Aksesuarlar",
        features = "Özellikler"
    },

    ui = {
        select = "Seç",
        delete = "Sil",
        select_outfit = "Kıyafet Seç",
        player_model = "Oyuncu Modeli",
        model = "Model",
        mother = "Anne",
        father = "Baba",
        texture = "Doku",
        type = "Tür",
        item = "Öğe",
        skin_color = "Ten Rengi",
        parent_mixer = "Ebeveyn Karıştırıcı",
        shape_mix = "Şekil Karıştırma",
        skin_mix = "Ten Karıştırma",
        arms = "Kollar",
        undershirt = "Atlet/Kemerler",
        color = "Renk",
        jacket = "Ceketler/Üstler",
        vests = "Yelekler",
        decals = "Stickerlar",
        acessory = "Boyun Aksesuarları",
        bags = "Çantalar",
        pants = "Pantolonlar",
        shoes = "Ayakkabılar",
        eye_color = "Göz Rengi",
        moles = "Benler/Efendiler",
        opacity = "Saydamlık",
        nose_width = "Burun Genişliği",
        width = "Genişlik",
        nose_peak_height = "Burun Tepe Yüksekliği",
        height = "Yükseklik",
        nose_peak_length = "Burun Tepe Uzunluğu",
        length = "Uzunluk",
        nose_bone_height = "Burun Kemik Yüksekliği",
        nose_peak_lowering = "Burun Tepe Düşürme",
        lowering = "Düşürme",
        nose_bone_twist = "Burun Kemik Burma",
        twist = "Burma",
        eyebrow_height = "Kaş Yüksekliği",
        eyebrow_depth = "Kaş Derinliği",
        depth = "Derinlik",
        cheeks_height = "Yanaklar Yüksekliği",
        cheeks_width = "Yanaklar Genişliği",
        cheeks_depth = "Yanaklar Derinliği",
        eyes_opening = "Göz Açıklığı",
        opening = "Açıklık",
        lips_thickness = "Dudak Kalınlığı",
        thickness = "Kalınlık",
        jaw_bone_width = "Çene Kemik Genişliği",
        jaw_bone_length = "Çene Kemik Uzunluğu",
        chin_height = "Çene Kemik Yüksekliği",
        chin_width = "Çene Kemik Genişliği",
        butt_chin  ="Popo Çenesi",
        size = "Boyut",
        neck_thickness = "Boyun Kalınlığı",
        ageing = "Yaşlanma",
        hair = "Saç",
        eyebrow = "Kaşlar",
        facial_hair = "Sakal",
        lipstick = "Ruj",
        blush = "Allık",
        makeup = "Makyaj",
        mask = "Maskeler",
        hat = "Şapkalar",
        glasses = "Gözlükler",
        ear_accessories = "Kulak Aksesuarları",
        watch = "Saatler",
        bracelet = "Bilezikler",
        btn_confirm = "Onayla",
        btn_cancel = "İptal",
        btn_saveOutfit = "Kıyafet Kaydet",
        outfit_name = "Kıyafet Adı"
    },

    notify = {
        error_bracelet = "Ayak bileğinizi çıkaramazsınız...",
        info_deleteOutfit = "%{outfit} kıyafetinizi sildiniz!"
    }
}


if GetConvar('qb_locale', 'en') == 'tr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
