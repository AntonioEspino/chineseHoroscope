//
//  structHoroscopo.swift
//  chineseCalendar
//
//  Created by user164220 on 20/02/2020.
//  Copyright © 2020 Antonio Espino. All rights reserved.
//

import Foundation

struct Horoscope {
    var dateStart: Date
    var dateEnd: Date
    var animalSymbol: Symbol
    
    enum Symbol{
        case horse
        case monkey
        case dragon
        case rat
        case ox
        case snake
        case rabbit
        case dog
        case rooster
        case swine
        case goat
        case tiger
        
        var message: String {
            
            switch self{
            case .horse:
                return "(1942, 1954, 1966, 1978, 1990, 2002, 2014) Populares, optimistas, llenos de alegría, aventureros, elocuentes, impacientes, emprendedores, entusiastas con la vida, grandes amantes y amigos. Su gran pasión es el dinero y los viajes. Les gusta conocer gente nueva, distintas culturas, hablar idiomas y son el alma de las fiestas. Su atractivo físico y su belleza hace que les sea fácil encontrar el amor: trampa en la que caen sin remedio."
            case .monkey:
                return "(1944, 1956, 1968, 1980, 1992, 2004, 2016) Animal más parecido al ser humano, es ingenioso, divertido, simpático, de mente rápida y despierta, comprador, persuasivo, sociable, capaces de resolver cualquier problema por difícil que sea con soltura. Sus relaciones amorosas y con los amigos suelen ser conflictivas, pues no soporta que no lo valoren. Gozan de buena salud, aunque sus excesos en las fiestas, alcohol y drogas podrían pasarle factura."
            case .dragon:
                return "(1940, 1952, 1964, 1976, 1988, 2000, 2012) Símbolo del Emperador en China, el dragón es imaginativo, magnánimo, emprendedor, afortunado y poderoso. Está lleno de fuerza y vitalidad. Es un verdadero acumulador de energía y si le enojas, se enfurecerá de tal manera que perderá los estribos. Será difícil calmarle, pues no cree ni a nadie ni en nadie. Suelen dar buenos consejos y son afortunados tanto en el dinero como en el amor. Son muy sentimentales y se enamoran locamente."
            case .rat:
                return "(1936, 1948, 1960, 1972, 1984, 1996, 2008) Los nacidos bajo el signo de la Rata son persona sabias a las que les gusta rodearse de familiares y amigos, a quienes ayudan en sus quehaceres y problemas diarios. Buenas trabajadoras, ahorradores y buenos administradores de su economía."
            case .ox:
                return "(1937, 1949, 1961, 1973, 1985, 1997, 2009) Los búfalos o bueyes son animales pacientes y tranquilos, que irradian mucho cariño y amor e infunden respeto. Grandes trabajadores, se sienten a gusto rodeados del orden y la limpieza y logran el éxito gracias a su esfuerzo. Para ellos lo más importante es la familia, aunque son celosos con su pareja. Aman el arte y la música. No les gusta discutir, aunque sí que le obedezcan."
            case .snake:
                return "(1941, 1953, 1965, 1977, 1989, 2001, 2013) Las personas Serpientes son astutas, saben lo que quieren y cómo conseguirlo. Su conversación es elegante y fluida. Son intensos y prudentes a la vez. Son celosas y posesivas con su familia pero leales. Les gusta mimar a sus amigos y esperan de ellos una actitud recíproca. Si se sienten desdeñados o fracasan en sus tentativas, pueden estar enfadados durante horas, aunque son buenas para mantener la calma y parecer tranquilas en situaciones difíciles."
            case .rabbit:
                return "(1939, 1951, 1963, 1975, 1987, 1999, 2011) Los que nacen en el Año del Conejo reúnen extraordinarias cualidades humanas: son prudentes, inteligentes, afables, discretos, previsores, atentos y benevolentes. Por eso, el signo del conejo es ampliamente aceptado por la gente.\n  De carácter moderado e indulgente, amante de la paz y la concordia, el conejo odia la guerra y la violencia. Le gusta la vida tranquila, la ternura y la armonía."
            case .dog:
                return "(1946, 1958, 1970, 1982, 1994, 2006, 2018)  El perro es un ser dedicado al trabajo, honesto, confiable, diligente, con un gran sentido de la justicia y la lealtad. Cautiva a todos con su personalidad excitante, su buen humor y su gran capacidad para escuchar los problemas de los demás y dar buenos consejos. En el amor son fieles y leales, aunque muy celoso cuando su pareja no está en casa. Los nervios son su mayor problema de salud."
            case .rooster:
                return "(1945, 1957, 1969, 1981, 1993, 2005, 2017) Atractivo y seductor, con talento y apreciado. Son meticulosos, eficientes, ordenados, buenos conversadores, observadores, egoístas, usureros, pragmáticos y muy familiares. En el amor son románticos, obstinados y luchan por el control de su pareja. Suelen destacar como relaciones públicas o como artistas. No prestan demasiada atención a su salud."
            case .swine:
                return "(1947, 1959, 1971, 1983 1995, 2007, 2019) Es un animal sincero, honesto, confiado, educado, cariñoso, servicial, valiente, decidido, con gran fuerza de voluntad, sin grandes pretensiones ni vanidad, con los pies en la tierra. Son muy agradables y tienen gusto y modales impecables. En el amor son sensuales, apasionado y pacientes, pero hasta un punto. Son muy trabajadores, aunque la falta de atracción por el deporte y la apatía harán que su físico se resienta y engorde en exceso."
            case .goat:
                return "(1943, 1955, 1967, 1979, 1991, 2003, 2015)  La cabra es creativa, artística, positiva, elegante, femenina, afable, compasiva, llorona, sensible, soñadora, orgullosa y triste. No persiguen la riqueza material y prefieren vivir de sus ensoñaciones. Aman la familia, los niños, el hogar y estar en contacto con la naturaleza. Son muy trabajadoras, aunque no les gusta la presión ni de una fecha límite, ni de un jefe."
            case .tiger:
                return "(1938, 1950, 1962, 1974, 1986, 1998, 2010) Las personas de este signo son muy pasionales y llenas de energía. No pasan desapercibidas, son aventureros, independientes, ingeniosos, impulsivos y les gusta la diversión. Son amigos para toda la vida, aunque les gusta ser el líder del grupo. En el mundo de las relaciones de pareja se muestran el más fuerte, sexy y seductor, aunque de comportamiento excesivo."
            }
        }
            
            var compatibility: String {
                
                switch self{
                case .horse:
                    return "caballo compatible con tigre y perro"
                case .monkey:
                    return "mono compatible con rata y dragón"
                case .dragon:
                    return "dragón compatible con rata y mono"
                case .rat:
                    return "rata compatible con dragón y mono"
                case .ox:
                    return "buey compatible con serpiente y gallo"
                case .snake:
                    return "serpiente compatible con gallo y buey"
                case .rabbit:
                    return "conejo compatible con cerdo y oveja"
                case .dog:
                    return "perro compatible con tigre y caballo"
                case .rooster:
                    return "gallo compatible con serpiente y buey"
                case .swine:
                    return "cerdo compatible con conejo y oveja"
                case .goat:
                    return "oveja compatible con cerdo y conejo"
                case .tiger:
                    return "tigre compatible con caballo y perro"
                }
            
        }
        var asString: String {
                     
                     switch self{
                     case .horse:
                         return "horse"
                     case .monkey:
                         return "monkey"
                     case .dragon:
                         return "dragon"
                     case .rat:
                         return "rat"
                     case .ox:
                         return "ox"
                     case .snake:
                         return "snake"
                     case .rabbit:
                         return "rabbit"
                     case .dog:
                         return "dog"
                     case .rooster:
                         return "rooster"
                     case .swine:
                         return "swine"
                     case .goat:
                         return "goat"
                     case .tiger:
                         return "tiger"
            }
        }
    }
    init(dateStart: Date, dateEnd: Date, symbol: Symbol) {
        self.dateStart = dateStart
        self.dateEnd = dateEnd
        self.animalSymbol = symbol
    }
    func isDateIncluded (date: Date) -> Bool{
        let isIncluded: Bool
        if (date >= dateStart && date <= dateEnd ){
            isIncluded = true
        } else {
            isIncluded = false
        }
        return isIncluded
    }
}