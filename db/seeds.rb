# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

klima = Category.create!({
name: "Klimatyzacja",
description: "Oferujemy montaż, naprawę i konserwację klimatyzacji. Posiadamy
najnowocześniejszy na rynku sprzęt do diagnostyki i konserwacji i naprawy
układów klimatyzacji w pojazdach samochodowych. Wykonujemy kompleksowe naprawy
oraz prowadzimy odkażanie układów nawiewnych. <br> Producenci klimatyzacji
samochodowych zalecają wykonywanie okresowych kontroli i konserwacji układu klimatyzacyjnego pojazdu raz w roku.
Dbałość użytkownika o swój samochód powoduje wzrost trwałości i wydajności
urządzeń oraz zapewnia sprawne i bezpieczne dla zdrowia działanie. Obsługujemy
instalacje z czynnikiem oraz oraz R 1234yf",
photo: Rails.root.join("app/assets/images/klima.jpg").open,
icon: Rails.root.join("app/assets/images/wind.svg").open
})

gps = Category.create!({
name: "GPS",
description: "Prowadzimy montaż satelitarnych systemów lokalizacji i monitoringu GPS w zakresie ochrony pojazdów oraz logistyki.",
photo: Rails.root.join("app/assets/images/mapa.jpg").open,
icon: Rails.root.join("app/assets/images/map.svg").open
})

zabezpieczenia = Category.create!({
name: "Zabezpieczenia",
description: "Oferujemy instalację i obsługę systemów alarmowych i
lokalizacji pojazdów.<br><br> W oparciu o wieloletnie doświadczenie zajmujemy się
elektronicznymi blokadami przedziwkradzieżowymi oraz mechanicznymi blokadami
skrzyni biegów.",
photo: Rails.root.join("app/assets/images/klucze.jpg").open,
icon: Rails.root.join("app/assets/images/taxi.svg").open
})

em = Category.create!({
name: "Elektromechanika",
description: "Prowadzimy naprawy z zakresu elektromechaniki pojazdowej (naprawy instalacji
elektrycznych, rozruszników, alternatorów instalacji oświetleniowej itp.). <br><br>
Wykonujemy diagnostykę komputerową układów elektrycznych pojazdu, sterowników
silnika, układów ABS, układów poduszek powietrznych itp. <br><br>
<h4>Szybki serwis</h4><br>
Prowadzimy podstawową obsługę serwisową z zakresu wymiany klocków i tarcz
hamulcowych, olejów i filtrów w silniku, kontroli płynów eksploatacyjnych czy
wymiany amortyzatorów i elementów zawieszenia.",
photo: Rails.root.join("app/assets/images/mechanik.jpg").open,
icon: Rails.root.join("app/assets/images/tool.svg").open
})

opony = Category.create!({
name: "Wymiana opon",
description: "W zakładzie mogą Państwo wymienić opony. <br><br>Zajmujemy się także sprzedażą i
naprawą. Sprzęt wysokiej klasy pozwala na szybką obsługę i gwarantuje
bezpieczeństwo jazdy. ",
photo: Rails.root.join("app/assets/images/kolo.jpg").open,
icon: Rails.root.join("app/assets/images/gear.svg").open
})

akcesoria = Category.create!({
name: "Akcesoria",
description: "W zakładzie można nabyć akcesoria samochodowe różnego rodzaju.
Zajmujemy się sprzedażą i montażem między innymi takich produktów jak
czujniki parkowania, światła do jazdy dziennej LED, zestawy głośnomówiące,
haki holownicze, czy akumulatory. ",
photo: Rails.root.join("app/assets/images/uchwyt.jpg").open,
icon: Rails.root.join("app/assets/images/open-box.svg").open
})

products = Product.create!([{
name: "Sterowniki zamków centralnych",
description: "Sterowanie zamkiem centralnym dodatkowymi pilotami.",
category_id: akcesoria.id
},
{
name: "Automatyczne włączniki świateł",
description: "Moduł elektroniczny włącza światła pozycyjne i mijania pojazdu po jego uruchomieniu.",
category_id: akcesoria.id
},
{
name: "Światła do jazdy dziennej LED",
description: "Po włączeniu stacyjki pojazdu włączają się dodatkowe światłą LED montowane z przodu pojazdu. Zintegrowane z automatem zmierzchowym pozwalają na całkowite zautomatyzawanie pracy instalacji oświetleniowej w porze dziennej i nocnej",
category_id: akcesoria.id
},
{
name: "Czujniki parkowania",
description: "Zainstalowane czujniki pozwalają na precyzyjne i bezkolizyjne cofanie pojazdu. Odległość od przeszkody sygnalizowana jest dźwiękiem i  diodami na wyświetlaczu LED",
category_id: akcesoria.id
},
{
name: "Zestawy głośnomówiące GSM",
description: "Zestawy głośnomówiące zapewniają bezpieczeństwo podczas  prowadzenia rozmowy w trakcie jazdy pojazdem",
category_id: akcesoria.id
},
{
name: "Elektryczne podnośniki szyb",
description: "",
category_id: akcesoria.id
},
{
name: "Radia cb",
description: "Sprzedajemy i montujemy zestawy CB – radia CB  wraz z antenami ",
category_id: akcesoria.id
},
{
name: "Akcesoria do montażu alarmów",
description: "Posiadamy w sprzedaży akcesoria tj : baterie do pilotów, węże peszla, taśmy izolacyjne , włączniki dodatkowe, czujniki wstrzasowe, ultradźwiękowe, położenia , syrenki, opaski zaciskowe itp.",
category_id: akcesoria.id
},
{
name: "Kamery cofania",
description: "Sprzedajemy i montujemy kamery cofania w pojazdach osobowych, dostawczych, ciężarowych. ",
category_id: akcesoria.id
},
{
name: "Naprawy",
description: "- instalacje elektryczne pojazdów<br>- instalacje oświetleniowe <br>- alternatory , rozruszniki",
category_id: em.id
},
{
name: "Diagnostyka",
description: "Wykonujemy diagnostykę komputerową i naprawę instalacji elektrycznych tj :        -  sterowniki silnika                                -  układy poduszek powietrznych            -  układy ABS, ARS",
category_id: em.id
},
{
name: "Szybki serwis mechaniczny",
description: "Sprzedaż i wymiana olejów silnikowych
Sprzedaż i wymiana filtrów powietrza i kabinowych
Sprzedaż i wymiana fitrów olej i paliwa

Wymiana klocków i tarcz hamulcowych
Wymiana amortyzatorów
Wymiana drobnych elementów zawieszeń tj:                                                 - końcówki układu kierowniczego,            -  łączniki drążków reakcyjnych               -  przeguby kuliste                                  -  wahacze",
category_id: em.id
},
{
name: "Systemy GPS",
description: "Zasada działania<br>
W skład satelitarnego systemu lokalizacji i monitoringu GPS wchodzą układy nadawczo odbiorcze montowane w pojeździe ( antena odbioru sygnału GPS, elektroniczny moduł przetwarzający wraz z nadajnikiem telefonii komórkowej GSM ) Transmisja pomiędzy pojazdem a bazą odbywa się za pomocą telefonii komórkowej z wykorzystanie transmisji GPRS<br><br>
Zakres dostępnych informacji<br>
Za pośrednictwem internetu operator ma dostęp do szeregu informacji o monitorowanym pojeździe. Dane przesyłane są z pojazdu do serwera umieszczonego w centrum monitoringu gdzie dane są przetwarzane i obrabiane w zależności od potrzeb. Istnieje możliwość generowania raportów z przebytych tras, czasu pracy pojazdu i kierowcy, kierunku jazdy, prędkości, stanu  paliwa, postojów, stanu zabezpieczeń przeciwkradzieżowych wraz z ich sygnałami alarmowymi oraz pozycji z dokładnością do kilku metrów.<br><br>
Zastosowanie systemu <br>
- ochrona pojazdów przed kradzieżą
- ochrona samochodów wraz z ładunkiem przed napadem i kradzieżą
- kontrola pracy kierowców z możliwością rozliczenia czasu pracy
- kontrola zużycia paliwa
- zarządzanie flotą pojazdów specjalnych ( służby energetyczne, gazownicze, wodociągowe, bankowozy, karetki pogotowia ratunkowego, służby utrzymania ruchu drogowego

",
category_id: gps.id
},
{
name: "Systemy lokalizacji",
description: "Zasada działania <br>
system działa w oparciu o radiową sieć nadawczo-odbiorczą . Specyfika sygnału jest tak skonstruowana, że jest praktycznie nie do namierzenia i neutralizacji dla ewentualnego złodzieja. Sygnał jest możliwy do namierzenia przez stacje monitorowania z garaży podziemnych i metalowych kontenerów. Moduł nadawczy nie wymaga zewnętrznego zasilania . Dobrze zainstalowany jest praktycznie nie do wykrycia.<br><br>
Zastosowanie systemu<br>
System informuje o kradzieży lub naruszeniu systemu alarmowego . Montowany jest w  pojazdach mechanicznych, maszynach budowlanych, sprzęcie turystycznym tj: kampery, jachty, motorówki itp. ) ",
category_id: gps.id
},
{
  name: "Konserwacja",
  description: "wymiana czynnika,
dodanie nowego oleju i barwnika
czyszczenie układu zamkniętego
sprawdzenie szczelności
sprawdzenie poprawności działania
wymiana filtrów kabinowych ( czyste powietrze, brak parowania szyb )",
category_id: klima.id
},
{
name: "Odkażanie",
description: "odkażanie ma na celu usunięcie z układu wentylacyjnego pojazdu nieprzyjemnych zapachów, grzybów i bakterii, przeprowadzane jest metodą ultradźwiękową lub ozonem",
category_id: klima.id
},
{
name: "Mycie układu",
description: "prowadzimy mycie układu klimatyzacji wyspecjalizowaną maszyną serwisową, myjemy parowniki oraz skraplacze",
category_id: klima.id
},
{
name: "Naprawa",
description: "Zajmujemy się diagnostyką układów klimatyzacji ( część mechaniczna i elektryczna ) w celu wykrycia usterek i usunięcia ich. Naprawiamy przewody klimatyzacji, sprężarki, wymieniamy skraplacze oraz parowniki, naprawiamy instalacje elektryczne klimatyzacji",
category_id: klima.id
},
{
name: "Montaż",
description: "montujemy nowe i powierzone układy klimatyzacji",
category_id: klima.id
},
{
name: "Autoalarmy",
description: "Montujemy autoalarmy sterowane pikotem fabrycznym pojazdu lub niezależnym. Alarmy posiadają sygnalizację dźwiękową i optyczną. Alarm reaguje na otwarcie drzwi i pokryw oraz uderzenia. Każdy z alarmów może być doposażony w dowolne czujniki i syreny alarmowe.",
category_id: zabezpieczenia.id
},
{
name: "Immobilizery",
description: "Urządzenia blokujące nie posiadające zewnętrznej sygnalizacji optycznej i dźwiękowej. Rozblokowanie następuje przez zbliżenie transpondera do ukrytego czytnika. Skutecznie zabezpieczają przed nieautoryzowanym uruchomieniem silnika.",
category_id: zabezpieczenia.id
},
{
name: "Blokady mechaniczne",
description: "Blokada unieruchamia pojazd na biegu wstecznym lub w skrzyni automatyczne w pozycji Parking. Zabezpieczają pojazd przed zmianą biegu",
category_id: zabezpieczenia.id
},
{
name: "Układy autoryzacji",
description: "Układy autoryzacji lub antyporwaniowe zabezpieczają pojazd przed nieautoryzowanym „ odjazdem „ - brak możliwości uruchomienia pojazdu przy braku kontaktu pojazdu z transponderem ( porwanie , napad itp., )",
category_id: zabezpieczenia.id
},
{
name: "Kontrola zabezpieczeń",
description: "Na potrzeby firm ubezpieczeniowych i użytkowników wykonujemy kontrolę zabezpieczeń w pojazdach, samochodowych, maszynach budowlanych, bankowozach, pojazdach specjalnych  itp.             Kontrolujemy i usprawniamy zainstalowane systemy przeciwkradzieżowe",
category_id: zabezpieczenia.id
},
{
name: "Wymiana opon z odważaniem",
description: "",
category_id: opony.id
},
{
name: "Sprzedaż",
description: "Sprzedaż nowych opon",
category_id: opony.id
},
{
name: "Felgi",
description: "Stalowe i alumniowe w sprzedaży.",
category_id: opony.id
},
{
name: "Naprawa",
description: "naprawa uszkodzeń bocznych i pogwoździowych",
category_id: opony.id
}])


hours = Hour.create!([{
day: "Pon - Pt",
hours: "8.00 - 16.00"
},
{
day: "Sobota",
hours: "8.00 - 13.00"
},
{
day: "Niedziela",
hours: "Nieczynne"
}])
