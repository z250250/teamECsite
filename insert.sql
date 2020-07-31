

insert into mst_category(category_name,category_description) 
    values ("春","冬の間は寒さから身を守るために、脂肪を蓄えて「冬の体」を作ります。春になると体に溜めこんだ脂肪や老廃物を排出し「春の体」にシフトチェンジする必要があります。
            その変化のカギを握るのは苦味。春に旬を迎える山菜は苦味が特徴的な野菜です。その苦味を体に取り入れて、より活動的な毎日を過ごしましょう。");
insert into mst_category(category_name,category_description) 
    values ("夏","夏野菜は、水分やビタミンが含まれている野菜が多く、夏バテや熱中症対策に効果があるといわれています。");
insert into mst_category(category_name,category_description) 
    values ("秋","旬を迎える食材を上手に使って食卓に秋を彩ってみませんか。");
insert into mst_category(category_name,category_description) 
    values ("冬","現在では冷蔵庫やハウス栽培などのおかげで年中口にできるものも増えましたが、昔は冬の寒さから身を守るために、体を温める効果がある食材や栄養豊富な食材を保存して食べていまし         た。そこで、冬に体調を崩さないような食生活のポイントを振り返ってみませんか。");


insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("いちご","いちご","甘くて美味しいフルーツとして人気のあるイチゴ(いちご・苺)です。１０個入り","1","350","https://food-foto.jp/share/v5/linkthumb_stock/img/89/13585481.jpg","2020/4/1","internous");
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("キャベツ","きゃべつ","食物繊維やビタミンをたくさん含んでいて、家計にも優しい、とっても頼りになる野菜です","1","100","https://food-foto.jp/free/img/images_thumb/fd400084.jpg","2020/4/1","internous");                                      
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("みかん","みかん","お子様もニッコリの濃厚な甘み☆本場internousのみかん3kg1,980","2","1980","https://food-foto.jp/free/img/images_big/fd401281.jpg","2020/7/1","internous");
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("トマト","トマト","太陽の恵みを浴びた真っ赤な甘いトマト","2","80","https://food-foto.jp/free/img/images_big/fd400518.jpg","2020/7/1","internous");
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("ぶどう","ぶどう","秋といえば「食欲の秋」。ブドウがおいしい季節になりました。一房","3","250","https://food-foto.jp/free/img/images_thumb/fd400963.jpg","2020/11/1","internous");
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("かぼちゃ","かぼちゃ","鮮やかなオレンジ色の外皮と甘さ、ほくほくした食感","3","150","https://food-foto.jp/free/img/images_thumb/fd400222.jpg","2020/11/1","internous");
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values ("りんご","りんご","果肉は硬めでち密。果汁豊富で甘みが強く、酸味はほとんど感じません","4","100","https://food-foto.jp/free/img/images_thumb/fd400977.jpg","2020/12/1","internous");
insert into mst_product (product_name,product_name_Kana,product_description,category_id,price,image_full_path,release_date,release_company)
    values("白菜","はくさい","お鍋に欠かせない白菜は冬の今が旬です！","4","80","https://publicdomainq.net/images/201902/15s/publicdomainq-0031463.jpghttps://publicdomainq.net/images/201902/15s/publicdomainq-0031463.jpg","2020/12/1","internous");
    
update mst_product set image_full_path =
    case
    when image_full_path ="https://food-foto.jp/share/v5/linkthumb_stock/img/89/13585481.jpg"  then "/img/itigo.jpg"
    
    when image_full_path ="https://food-foto.jp/free/img/images_thumb/fd400084.jpg" then "/img/kyabetu.jpg"
    
    when image_full_path ="https://food-foto.jp/free/img/images_big/fd401281.jpg" then "/img/orange.jpg"
    
    
    when image_full_path ="https://food-foto.jp/free/img/images_big/fd400518.jpg" then "/img/tomato.jpg"
    
    
    when image_full_path ="https://food-foto.jp/free/img/images_thumb/fd400963.jpg" then "/img/budou.jpg"
    
    when image_full_path ="https://food-foto.jp/free/img/images_thumb/fd400222.jpg" then "/img/orange.jpg"
    
    when image_full_path ="https://food-foto.jp/free/img/images_thumb/fd400977.jpg" then "/img/ringo.jpg"
    
    
    when image_full_path = "https://publicdomainq.net/images/201902/15s/publicdomainq-0031463.jpghttps://publicdomainq.net/images/201902/15s/publicdomainq-0031463.jpg" then "/img/hakusai.jpg"
    
    end
    ;
    
    update mst_product set image_full_path ="/img/panpukin.jpg" where product_name="かぼちゃ";
    
    update mst_product set release_company = "SKY";
