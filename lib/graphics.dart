import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import "dart:convert";

class Graphics extends StatefulWidget {
  static const String routeName = "/graficos";
  @override
  _GraphicsState createState() => _GraphicsState();
}

class _GraphicsState extends State<Graphics> {
  var countryTextFieldControoler = new TextEditingController();
  var countrytwoTextFieldControoler = new TextEditingController();
  var indicatorscontrooler = new TextEditingController();
  List<String> country = [
    "Afganistán",
    "Albania",
    "Alemania",
    "Algeria",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antigua y Barbuda",
    "Antillas Holandesas",
    "Arabia Saudita",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaiyán",
    "Bahamas",
    "Bahrein",
    "Bangladesh",
    "Barbados",
    "Bélgica",
    "Belice",
    "Benín",
    "Bermudas",
    "Bielorrusia",
    "Bolivia",
    "Bosnia y Herzegovina",
    "Botsuana",
    "Brasil",
    "Brunéi",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Bután",
    "Cabo Verde",
    "Camboya",
    "Camerún",
    "Canadá",
    "Chad",
    "Chile",
    "China",
    "Chipre",
    "Colombia",
    "Comores",
    "Congo (Brazzaville)",
    "Congo (Kinshasa)",
    "Cook, Islas",
    "Corea del Norte",
    "Corea del Sur",
    "Costa de Marfil",
    "Costa Rica",
    "Croacia",
    "Cuba",
    "Dinamarca",
    "Djibouti, Yibuti",
    "Ecuador",
    "Egipto",
    "El Salvador",
    "Emiratos Árabes Unidos",
    "Eritrea",
    "Eslovaquia",
    "Eslovenia",
    "España",
    "Estados Unidos",
    "Estonia",
    "Etiopía",
    "Feroe, Islas",
    "Filipinas",
    "Finlandia",
    "Fiyi",
    "Francia",
    "Gabón",
    "Gambia",
    "Georgia",
    "Ghana",
    "Gibraltar",
    "Granada",
    "Grecia",
    "Groenlandia",
    "Guadalupe",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea Ecuatorial",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungría",
    "India",
    "Indonesia",
    "Irak",
    "Irán",
    "Irlanda",
    "Isla Pitcairn",
    "Islandia",
    "Islas Salomón",
    "Islas Turcas y Caicos",
    "Islas Virgenes Británicas",
    "Israel",
    "Italia",
    "Jamaica",
    "Japón",
    "Jersey",
    "Jordania",
    "Kazajstán",
    "Kenia",
    "Kirguistán",
    "Kiribati",
    "Kuwait",
    "Laos",
    "Lesotho",
    "Letonia",
    "Líbano",
    "Liberia",
    "Libia",
    "Liechtenstein",
    "Lituania",
    "Luxemburgo",
    "Macedonia",
    "Madagascar",
    "Malasia",
    "Malawi",
    "Maldivas",
    "Malí",
    "Malta",
    "Man, Isla de",
    "Marruecos",
    "Martinica",
    "Mauricio",
    "Mauritania",
    "México",
    "Moldavia",
    "Mónaco",
    "Mongolia",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Nicaragua",
    "Níger",
    "Nigeria",
    "Norfolk Island",
    "Noruega",
    "Nueva Caledonia",
    "Nueva Zelanda",
    "Omán",
    "Países Bajos, Holanda",
    "Pakistán",
    "Panamá",
    "Papúa-Nueva Guinea",
    "Paraguay",
    "Perú",
    "Polinesia Francesa",
    "Polonia",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reino Unido",
    "República Checa",
    "República Dominicana",
    "Reunión",
    "Ruanda",
    "Rumanía",
    "Rusia",
    "Sáhara Occidental",
    "Samoa",
    "San Cristobal y Nevis",
    "San Marino",
    "San Pedro y Miquelón",
    "San Tomé y Príncipe",
    "San Vincente y Granadinas",
    "Santa Elena",
    "Santa Lucía",
    "Senegal",
    "Serbia y Montenegro",
    "Seychelles",
    "Sierra Leona",
    "Singapur",
    "Siria",
    "Somalia",
    "Sri Lanka",
    "Sudáfrica",
    "Sudán",
    "Suecia",
    "Suiza",
    "Surinam",
    "Swazilandia",
    "Tadjikistan",
    "Tailandia",
    "Taiwan",
    "Tanzania",
    "Timor Oriental",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad y Tobago",
    "Túnez",
    "Turkmenistan",
    "Turquía",
    "Tuvalu",
    "Ucrania",
    "Uganda",
    "Uruguay",
    "Uzbekistán",
    "Vanuatu",
    "Venezuela",
    "Vietnam",
    "Wallis y Futuna",
    "Yemen",
    "Zimbabwe"
  ];

  List<String> indicators = [
    "Producto Interno Bruto (PIB)",
    "Tasa de desempleo anual (TDA)",
    "Inflación (IFL)",
    "Impuesto de Valor añadido (IVA)",
    "Presión Fiscal (PRF)",
    "Salario Mínimo (SMI)",
    "Tasa de cambio (TSC)",
    "Doing Business Index (DBI)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos Graficos"),
        backgroundColor: Colors.purple[100],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/fondo_request.jpg'),
                fit: BoxFit.fill)),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Form(
              child:
                  Column(children: [countryone(), Countrytwo(), Indicators()])),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          "Graficar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple[100],
      ),
    );
  }

  Widget countryone() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Ingrese pais uno",
      ),
    );
  }

  Widget Countrytwo() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Ingrese pais dos"),
    );
  }

  Widget Indicators() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Ingrese indicador"),
    );
  }
}