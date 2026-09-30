import Foundation

struct QuizBrain {
    let quiz: [Question] = [
        Question(q: "Wednesday dizisinde Addams ailesinin kızını kim canlandırıyor?", alt: ["Sadie Sink", "Jenna Ortega", "Millie Bobby Brown"], a: "Jenna Ortega"),
        Question(q: "Barbenheimer olarak bilinen gişe savaşında Barbie filmine karşı çıkan film hangisiydi?", alt: ["Dune", "Oppenheimer", "Avatar 2"], a: "Oppenheimer"),
        Question(q: "TikTok’ta 2023'te viral olan 'Made You Look' şarkısı kime aittir?", alt: ["Meghan Trainor", "Doja Cat", "Olivia Rodrigo"], a: "Meghan Trainor"),
        Question(q: "Zamanda yolculuk, Almanya ve karanlık atmosfer temalarıyla dikkat çeken Netflix dizisi hangisidir?", alt: ["Stranger Things", "1899", "Dark"], a: "Dark"),
        Question(q: "2024'te Spotify Global listelerinde en çok dinlenen sanatçı kim oldu?", alt: ["Taylor Swift", "Bad Bunny", "Drake"], a: "Taylor Swift"),
        Question(q: "“Susamam” isimli sosyal içerikli rap parçasını kim yazdı?", alt: ["Ceza", "Şanışer", "Ezhel"], a: "Şanışer"),
        Question(q: "“You can’t see me” hareketiyle tanınan güreşçi ve oyuncu kimdir?", alt: ["John Cena", "The Rock", "Roman Reigns"], a: "John Cena"),
        Question(q: "Pedro Pascal son dönemde hangi iki büyük yapımda başrolde yer aldı?", alt: ["The Mandalorian & The Last of Us", "Game of Thrones & Stranger Things", "The Boys & The Witcher"], a: "The Mandalorian & The Last of Us"),
        Question(q: "2023 yılında vizyona giren 'The Super Mario Bros. Movie'de Mario karakterini kim seslendirdi?", alt: ["Tom Holland", "Ryan Reynolds", "Chris Pratt"], a: "Chris Pratt"),
        Question(q: "Netflix yapımı 'You' dizisinde Joe Goldberg karakterini kim canlandırmaktadır?", alt: ["Penn Badgley", "Finn Wolfhard", "Noah Centineo"], a: "Penn Badgley"),
        Question(q: "Hangi YouTuber 2023’te MrBeast ile iş birliği yaparak global çapta dikkat çekti?", alt: ["Enes Batur", "Ruhi Çenet", "Orkun Işıtmak",], a: "Orkun Işıtmak"),
        Question(q: "Hangisi 2023'te çıkış yapan bir The Weeknd şarkısıdır?", alt: ["Blinding Lights", "Double Fantasy", "Save Your Tears"], a: "Double Fantasy"),
        Question(q: "‘The Witcher’ dizisinde Geralt karakterini ilk sezonda kim canlandırmıştır?", alt: ["Henry Cavill", "Chris Hemsworth", "Kit Harington"], a: "Henry Cavill"),
        Question(q: "LoL (League of Legends) oyununda aşağıdaki karakterlerden hangisi ADC (saldırı gücü taşıyıcı) rolünde oynanır?", alt: ["Jinx", "Amumu", "Leona"], a: "Jinx"),
        Question(q: "‘Black Mirror’ dizisi genel olarak hangi temayı işler?", alt: ["Savaş tarihi", "Polisiye çözümlemeler", "Teknoloji ve toplum"], a: "Teknoloji ve toplum"),
        Question(q: "Hangi isim 2023'te TIME dergisi tarafından 'Yılın Kişisi' seçilmiştir?", alt: ["Taylor Swift", "Elon Musk", "Greta Thunberg"], a: "Taylor Swift"),
        Question(q: "Aşağıdaki filmlerden hangisi bir Christopher Nolan yapımıdır?", alt: ["Interstellar", "Inception", "Her"], a: "Inception"),
        Question(q: "Marvel evreninde Doctor Strange karakterini kim canlandırıyor?", alt: ["Benedict Cumberbatch", "Tom Hiddleston", "Robert Downey Jr."], a: "Benedict Cumberbatch"),
        Question(q: "2023 yılında çıkan ve dünyada en hızlı satan oyunlardan biri aşağıdakilerden hangisidir?", alt: ["Elden Ring", "Cyberpunk 2077", "Hogwarts Legacy"], a: "Hogwarts Legacy"),
        Question(q: "Snapchat'te 'streak' neyi ifade eder?", alt: ["Hikâye paylaşma süresi", "Arka arkaya günlerde mesajlaşma", "Profil görüntülenme sayısı"], a: "Arka arkaya günlerde mesajlaşma"),
        Question(q: "Hangisi bir Billie Eilish şarkısıdır?", alt: ["Anti-Hero", "Vampire", "Bad Guy"], a: "Bad Guy"),
        Question(q: "Netflix’in 'Squid Game' dizisinde oyunculara verilen numaralar ne işe yarar?", alt: ["Oyuna giriş sırasıdır", "Kazananları belirtir", "İsim yerine kullanılır"], a: "İsim yerine kullanılır"),
        Question(q: "Aşağıdakilerden hangisi globalde yayınlanan bir reality yarışma programıdır?", alt: ["Sherlock", "The Circle", "Mindhunter"], a: "The Circle"),
        Question(q: "Spotify'da 'Wrapped' özeti hangi ayda yayınlanır?", alt: ["Kasım", "Aralık", "Ekim"], a: "Kasım"),
        Question(q: "‘The Queen’s Gambit’ dizisi hangi sporla ilgilidir?", alt: ["Tenis", "Boks", "Satranç"], a: "Satranç"),
        Question(q: "Hangi dizi, 2023 yılında en çok izlenen yerli yapım olmuştur?", alt: ["Yalı Çapkını", "Aile", "Kızılcık Şerbeti"], a: "Kızılcık Şerbeti"),
        Question(q: "Apple Music Replay özelliği kullanıcıya ne sunar?", alt: ["Yıllık dinleme özeti", "Podcast önerileri", "Şarkı sözü paylaşma"], a: "Yıllık dinleme özeti"),
        Question(q: "Netflix’in ‘The Crown’ dizisi hangi ailenin yaşamını konu alır?", alt: ["Kennedy Ailesi", "İngiliz Kraliyet Ailesi", "Napolyon Hanedanı"], a: "İngiliz Kraliyet Ailesi"),
        Question(q: "‘Among Us’ oyununda ana amaç nedir?", alt: ["Impostor’u bulmak", "Bayrak yakalamak", "Zombi istilasından kaçmak"], a: "Impostor’u bulmak"),
        Question(q: "‘Arcane’ adlı animasyon dizisi hangi video oyununa dayanmaktadır?", alt: ["League of Legends", "Overwatch", "Valorant"], a: "League of Legends"),
        Question(q: "2023 Oscar Töreni'nde En İyi Film ödülünü kazanan yapım hangisidir?", alt: ["Top Gun: Maverick", "The Fabelmans", "Everything Everywhere All at Once"], a: "Everything Everywhere All at Once"),
        Question(q: "Eurovision 2023'ü kazanan ülke hangisidir?", alt: ["Finlandiya", "İspanya", "İsveç"], a: "İsveç"),
        Question(q: "Netflix’in 2023 çıkışlı İspanyol yapımı suç dizisi hangisidir?", alt: ["Sky Rojo", "Berlin", "White Lines"], a: "Berlin"),
        Question(q: "Meta'nın 2023’te duyurduğu yeni yapay zekâ modelinin adı nedir?", alt: ["Gemini", "Claude", "Llama 2"], a: "Llama 2"),
        Question(q: "Marvel evreninde 2023'te gösterime giren 'Guardians of the Galaxy Vol. 3' filminde Rocket karakterini kim seslendirir?", alt: ["Bradley Cooper", "Chris Pratt", "Vin Diesel"], a: "Bradley Cooper"),
        Question(q: "2023'te yayımlanan ve sosyal medyada trend olan 'The Eras Tour' belgeseli hangi sanatçıya aittir?", alt: ["Taylor Swift", "Beyoncé", "Ariana Grande"], a: "Taylor Swift"),
        Question(q: "Apple'ın 2023'te duyurduğu iPhone 15 Pro serisinin gövde malzemesi olarak kullanılan ana metal nedir?", alt: ["Paslanmaz çelik", "Alüminyum", "Titanyum"], a: "Titanyum"),
        Question(q: "2023'te yayımlanan 'One Piece' canlı-aksiyon dizisi hangi platformdadır?", alt: ["Netflix", "Prime Video", "Hulu"], a: "Netflix"),
        Question(q: "Türkiye'nin yüzölçümü bakımından en büyük ili hangisidir?", alt: ["Sivas", "Konya", "Ankara"], a: "Konya"),
        Question(q: "UNESCO tarafından Dünya Kültür Mirası Listesi’ne alınan Göbekli Tepe hangi ilimizdedir?", alt: ["Şanlıurfa", "Mardin", "Gaziantep"], a: "Şanlıurfa"),
        Question(q: "Einstein'ın meşhur formülü E=mc² ifadesinde 'c' neyi temsil eder?", alt: ["Kütle", "Enerji", "Işık hızı"], a: "Işık hızı"),
        Question(q: "Hangisi İtalya'nın resmi para birimidir?", alt: ["Lira", "Frank", "Euro"], a: "Euro"),
        Question(q: "Frida Kahlo hangi sanat dalıyla tanınır?", alt: ["Heykel", "Resim", "Fotoğrafçılık"], a: "Resim"),
        Question(q: "Hangi gezegenin halkaları vardır ve çıplak gözle görülebilir?", alt: ["Mars", "Venüs", "Satürn"], a: "Satürn"),
        Question(q: "DNA'nın çift sarmal yapısını kim keşfetmiştir?", alt: ["Watson ve Crick", "Curie ve Bohr", "Einstein ve Heisenberg"], a: "Watson ve Crick"),
        Question(q: "Hangisi bir UNESCO Dünya Doğa Mirası’dır?", alt: ["Pamukkale", "Sümela Manastırı", "Çırağan Sarayı"], a: "Pamukkale"),
        Question(q: "‘Divan-ı Lügatit Türk’ adlı eserin yazarı kimdir?", alt: ["Ali Kuşçu", "Kaşgarlı Mahmud", "Evliya Çelebi"], a: "Kaşgarlı Mahmud"),
        Question(q: "Hangisi bir dönem Osmanlı Devleti'ne başkentlik yapmamıştır?", alt: ["Edirne", "İzmir", "Bursa"], a: "İzmir"),
        Question(q: "Leonardo da Vinci aynı zamanda aşağıdaki alanlardan hangisinde de çalışmıştır?", alt: ["Tarım", "Astronomi", "Anatomi"], a: "Anatomi"),
        Question(q: "2022 FIFA Dünya Kupası hangi ülkede düzenlenmiştir?", alt: ["Katar", "Fransa", "Brezilya"], a: "Katar")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 2
            return true
        }
        else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswerButton1Title() -> String {
        return quiz[questionNumber].alternative[0]
    }
    
    func getAnswerButton2Title() -> String {
        return quiz[questionNumber].alternative[1]
    }
    
    func getAnswerButton3Title() -> String {
        return quiz[questionNumber].alternative[2]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
}
