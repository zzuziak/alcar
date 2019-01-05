# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([{
  name: "Klimatyzacja",
  description: "Usługi klimatyzacyjne"
  },
  {
    name: "GPS",
    description: "Montaż, wymiana, etc"
  },
  {
    name: "Zabezpieczenia",
    description: "Autoalarmy - Montaż, wymiana, etc"
  },
  {
    name: "Elektromechanika",
    description: "Coś się zepsuło? Naprawimy!"
  },
  {
    name: "Wymiana opon",
    description: "Polecana w szczególności w okresie wiosennym i przed zimą.."
  },
  {
    name: "Akcesoria",
    description: "Czego dusza zapragnie. Od baterii po wycieraczki."
  },
    ])

products = Product.create!([{
  name: "Instalacja",
  short_description: "Montaż klimatyzacji",
  long_description: "Prowadzimy usługi montażu klimatyzacji w różnych rodzajach samochodów. Małe, duże, ciepło, zimno.",
  category_id: 1
  },
  {
    name: "Konserwacja",
    short_description: "Konserwacja klimatyzacji",
    long_description: "Prowadzimy usługi konserwacji klimatyzacji w różnych rodzajach samochodów. Małe, duże, ciepło, zimno.",
    category_id: 1
    },
    {
      name: "Naprawa",
      short_description: "Naprawa klimatyzacji",
      long_description: "Prowadzimy usługi naprawy klimatyzacji w różnych rodzajach samochodów. Małe, duże, ciepło, zimno. Nawet jeśli żona zepsła przez przypadek - naprawimy!",
      category_id: 1
      }])

options = Option.create!([{
  name: "Pakiet podstawowy",
  price: 100,
  product_id: 1
  },
  {
    name: "Pakiet rozszerzony",
    price: 200,
    product_id: 1
    },
    {
      name: "Pakiet WOW",
      price: 500,
      product_id: 1
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
