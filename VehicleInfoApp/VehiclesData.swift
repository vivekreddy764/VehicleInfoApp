//
//  VehiclesData.swift
//  VehicleInfoApp
//
//  Created by Saivivek Reddy on 23/04/2022.
//

import Foundation
import UIKit


struct Vehicle{
    
    var name = ""
    var model = ""
    var make = ""
    var imageData = Data()
    var image = ""
    var description = ""
}


struct Category {
    
    var categoryName = ""
    var vehicles: [Vehicle] = []
}


class VehicleData {
    
    public static func saveVehicles() -> [VehicleInfo] {
                
        var imgData = UIImage(named: "Audi")?.pngData() ?? Data()
        let vehicle1 = Vehicle(name: "Audi A4/S4",
                               model: "2022",
                               make: "AUDI",
                               imageData: imgData,
                               image: "Audi",
                               description: "A4 45 TFSI comes with standard sport suspension that lowers vehicle height nearly an inch. It costs between $40,195 and $50,495.\n\nThe 2022 Audi A4 is a quintessential compact luxury sports sedan, with a richly appointed cabin, lively handling, upscale styling, and plenty of tech features. All models come with the brand's signature Quattro all-wheel-drive system, and buyers can choose between two turbocharged four-cylinder engines, the more powerful of which makes a stout 261 horsepower. The A4 expertly blends a fun-to-drive nature with a forgiving ride, so buyers who want both sports sedan moves and a luxury-car demeanor will find it here. Like other Audi models, the A4's cabin is dotted with digital displays, including the optional Virtual Cockpit gauge cluster. Rivals such as the Genesis G70 and the Mercedes-Benz C-class have more style, but the A4 is a well-rounded package that is designed to satisfy a broad range of buyers.")
        DataBaseHelper.shareInstance.saveVehicle(vehicle: vehicle1)
        
        
        imgData = UIImage(named: "CyberTruck")?.pngData() ?? Data()
        let vehicle2 = Vehicle(name: "CyberTruck",
                               model: "Yet to confirm",
                               make: "Tesla",
                               imageData: imgData,
                               image: "CyberTruck",
                               description: "Cybertruck is built with an exterior shell made for ultimate durability and passenger protection. Starting with a nearly impenetrable exoskeleton, every component is designed for superior strength and endurance, from Ultra-Hard 30X Cold-Rolled stainless-steel structural skin to Tesla armor glass.\nVERSATILE UTILITY\nWith up to 3,500 pounds of payload capacity and adjustable air suspension, Cybertruck is the most powerful tool we have ever built, engineered with 100 cubic feet of exterior, lockable storage — including a magic tonneau cover that is strong enough to stand on.\nVAULT-LIKE STORAGE\nSpace for your toolbox, tire and Cyberquad, with room to spare. Utilize 100 cubic feet of exterior, lockable storage — including the under-bed, frunk and sail pillars. And much more")
        DataBaseHelper.shareInstance.saveVehicle(vehicle: vehicle2)
        
        
        imgData = UIImage(named: "S_Plaid")?.pngData() ?? Data()
        let vehicle3 = Vehicle(name: "Model S Plaid",
                               model: "2022",
                               make: "Tesla",
                               imageData: imgData,
                               image: "S_Plaid",
                               description: "Model S Plaid has the quickest acceleration of any vehicle in production. Updated battery architecture for all Model S trims enables back-to-back track runs without performance degradation.\nElectric Powertrain\nModel S platforms unite powertrain and battery technologies for unrivaled performance, range and efficiency. New module and pack thermal architecture allows faster charging and gives you more power and endurance in all conditions.\nMaintain 1,000+ horsepower all the way to 200 mph with Tri-Motor All-Wheel Drive, featuring torque vectoring and three independent carbon-sleeved rotors.")
        DataBaseHelper.shareInstance.saveVehicle(vehicle: vehicle3)
        
        imgData = UIImage(named: "Phantom")?.pngData() ?? Data()
        let vehicle4 = Vehicle(name: "Phantom",
                               model: "2022",
                               make: "Rolls-royce",
                               imageData: imgData,
                               image: "Phantom",
                               description: "Phantom is single-minded, abrupt and unapologetic – a rejection of rules, preconceptions and everything that’s expected of it. So reinvent the wheel. Disrupt the norms.\nRip up the rule book. Phantom will be there for the ride. Ensure your Phantom is clean and presentable Unleash your inner renegade. Phantom invigorates those who defy convention.\nWith its rebellious aura, it’s the ultimate icon, reinterpreted by icons. Discreet placement of cutting‑edge technology ensures nothing detracts from the sheer pleasure of the exquisitely appointed Phantom Suite.\nSavour the rough with the smooth. Engineering and technology perform in harmonious collaboration, insulating from even the most challenging road conditions. Delivering a magnificently graceful drive for you to test the limits of your fearlessness.")
        DataBaseHelper.shareInstance.saveVehicle(vehicle: vehicle4)
        
        imgData = UIImage(named: "Culinan")?.pngData() ?? Data()
        let vehicle5 = Vehicle(name: "Culinan",
                               model: "2022",
                               make: "Rolls-royce",
                               imageData: imgData,
                               image: "Culinan",
                               description: "Cullinan is an all-terrain, all-season SUV. Drivers journey in confidence, knowing that Cullinan’s limitless performance capability underpins every excursion. Within Cullinan’s generous cabin, passengers are safe, secure, and supremely comfortable.\nThis is freedom absolute. The first all-terrain SUV from Rolls-Royce makes luxury off-road travel a reality for the first time. Pinnacle luxury is now effortless, everywhere. Share unforgettable adventures in the company of friends. With its spacious interior, Cullinan accommodates every traveller in unparalleled comfort. From Scottish highlands to Arabian deserts. From Austrian mountains to the epic landscapes of the United States. Cullinan conquers three continents and 12,000 miles of the world’s toughest terrain to showcase its supreme capability – in partnership with National Geographic. Discover new horizons with ease. Venture beyond your comfort zone – in uncompromised comfort. Within Cullinan’s palatial Suite, you are cosseted from the elements in pure luxury.")
        DataBaseHelper.shareInstance.saveVehicle(vehicle: vehicle5)
        
        let vehicles = DataBaseHelper.shareInstance.fetchVehicles()
        return vehicles
        
    }
    
    public static func getCategoriesVehicles() -> [Category] {
        
        
        var imgData = UIImage(named: "AcuraCSX")?.pngData() ?? Data()
        var v1 = Vehicle(name: "Acura CSX",
                         model: "2006",
                         make: "Acura (Honda)",
                         imageData: imgData,
                         image: "AcuraCSX",
                         description: "Honda chose the Canadian-designed CSX styling as the template for the Civic sold in the Japanese and international markets, instead of the opposite.[2][3][4] The CSX uses the same chassis as the 2006-2011 North American market Honda Civic Sedan.[5] Differentiating the Acura from its mainstream North American counterpart include a slightly longer nose with shaped headlamp clusters, a full-width lower air intake and a slight crease up the hood's centreline. At the rear, jewelled taillamps and the shaping of the trunk's sheet metal contrast the upscale-marketed CSX from the Civic.\n\nThe CSX shares some features with the JDM Civic, most notably the 2.0 L DOHC i-VTEC engine rated at 155 hp (116 kW) at 6,000 rpm and 139 lb⋅ft (188 N⋅m) at 4500 rpm. Also shared with the JDM Civic are the front and rear fascias; the steering wheel design is used in Japanese, European, and American-market Civic models.")
        
        
        imgData = UIImage(named: "Baojun630")?.pngData() ?? Data()
        var v2 = Vehicle(name: "Baojun 630",
                         model: "2011",
                         make: "SAIC-GM-Wuling",
                         imageData: imgData,
                         image: "Baojun630",
                         description: "The 630 is powered by a 1.5-litre 4-cylinder 109 bhp (81 kW; 111 PS) 1.5-litre (1,485 cc) engine producing 146 N⋅m (108 lb⋅ft) and mated to a five-speed transmission. A 1.8-litre (1,796 cc) version, producing 141 bhp (105 kW; 143 PS) and 177 N⋅m (131 lb⋅ft)[11] was added to the range in November 2012.\n\nIt can be equipped with front airbags, ABS with EBD, leather seats, power windows, remote central locking, air conditioning, trip computer, a CD player and rear parking sensors. The Baojun 630 is currently using pull-out door handles, similar to the facelifted Daewoo Lacetti.")
        
        
        imgData = UIImage(named: "CadillacCimarron")?.pngData() ?? Data()
        var v3 = Vehicle(name: "Cadillac Cimarron",
                         model: "1981",
                         make: "General Motors",
                         imageData: imgData,
                         image: "CadillacCimarron",
                         description: "The Cimarron used the front-wheel drive GM J platform with a 101.2 in (2,570 mm) wheelbase. Employing unibody construction, the suspension used front MacPherson struts (mounted to a subframe) with a torsion-beam rear axle, along with front and rear stabilizer bars.\nTo distinguish the Cimarron from the Chevrolet Cavalier and its Buick, Oldsmobile, and Pontiac counterparts, Cadillac standardized many of the available features offered on J-platform cars at the time, including air conditioning, leather seats, alloy wheels, power mirrors, full instrumentation (including tachometer; the only Cadillac to do so at the time), courtesy lights, intermittent wipers, rear window defogger, and AM/FM stereo.[11] Its interior featured simulated aluminum trim, notably foregoing simulated wood trim.\nAvailable options for 1982 included automatic transmission, cruise control, tilt steering wheel, power windows, power door locks, power driver and passenger seats, sunroof, and a cassette player.[12][13] With the exception of its upholstery and model-specific special suspension tuning, J-platform sedans from other GM divisions could be optioned nearly identically to a Cimarron, though doing so would raise prices close to the Cimarron's $12,131 base price (equivalent to $36,200 in 2021).")
        
        
        imgData = UIImage(named: "Dacia1300")?.pngData() ?? Data()
        var v4 = Vehicle(name: "Dacia 1300",
                         model: "1969",
                         make: "Dacia",
                         imageData: imgData,
                         image: "Dacia1300",
                         description: "The Romanian government of the 1960s had decided to acquire the tooling and basic design of a western car to decrease Romania's reliance on imported consumer goods. Terms stated that the vehicle had to be inexpensive, large enough for a family, and powered by an engine displacing not more than 1.3 litres. Offers came from Alfa Romeo, Fiat, Austin, DKW, Peugeot among others, but the winner was the Renault 12.[2] The choice of a French design was not only political but also technical; Romania was attempting to cultivate economic relationships with Western Europe, particularly France, and to demonstrate its economic capabilities.")
        
        
        imgData = UIImage(named: "EagleTalon")?.pngData() ?? Data()
        var v5 = Vehicle(name: "Eagle Talon",
                         model: "1989",
                         make: "Eagle+DaimlerChrysler",
                         imageData: imgData,
                         image: "EagleTalon",
                         description: "The first generation Talon was released in mid-1989 as a 1990 model and ran through 1994. This era of DSM vehicles is commonly referred to as the first generation, or \"1G\" for short. However, there were two 1G styles. The \"1GA\" models of 1990–1991 featured pop-up headlights lights and a \"6-bolt\" engine, while the \"1GB\" model of 1992–1994 featured composite style headlights with integrated turn signals.\nThe 1993–1994 base model DL was front-wheel drive and used a 92-horsepower 1.8 L engine (4G37). The ES model (or just the base Talon before 1993) sported a naturally aspirated 2.0 L 135 hp Mitsubishi 4G63 engine. The TSi and TSi AWD models used the same engine but added an intercooled Mitsubishi 14b turbocharger producing 11.06 psi of peak boost from the factory, resulting in 195 horsepower (145 kW) on TSi AWD models. The front-drive TSi produced only 190 hp due to a more restrictive exhaust system, and the automatics produced 180 horsepower (130 kW) due to a 13g turbo.\nThe \"six-bolt\" engine on all Talons built before April 1992 refers to the number of bolts connecting the flywheel to the crankshaft. All 1G Talons built after April 1992 received a freer revving \"7-bolt\" engine borrowed from the 1992 Mitsubishi Lancer Evolution's lighter rods and seven-bolt crankshaft.")
        
        
        imgData = UIImage(named: "Fiat128")?.pngData() ?? Data()
        var v6 = Vehicle(name: "Fiat 128",
                         model: "1969",
                         make: "Fiat",
                         imageData: imgData,
                         image: "Fiat128",
                         description: "Initially, the 128 was available as a two-door or four-door sedan. At the 1970 Turin Motor Show a three-door station wagon model called \"Familiare\" was added to the line-up.[10] The car was only available with a 1116 cc engine on launch, though the two-door-only 128 Rally edition launched in 1971 used a 1,290 cc unit. Also in 1971, the Sport Coupé, an all-new coupé body on a shortened 128 platform, was unveiled at the Turin Show. On launch it was available with both existing 128 engines.\nThe 128 range underwent a facelift in 1972, featuring a revised grille. 1974 saw the launch of the 128 Special, which used the Rally engine in a four-door sedan body. In 1975 the 128 3P (3-door) Berlinetta replaced the Sport Coupé. In 1976, the range received new bumpers, rectangular headlights, tail lights and dashboard as well as modifications to the engines. At this time, the wagon was also renamed the \"Panorama\".\nProduction of all 128s except that of the base 1,100 cc powered model ended in 1979 after the introduction of the Fiat Ritmo/Strada in 1978. In 1980 production of the small three-door station wagon Panorama was dropped from the range and 128 production finally ended in 1985.")
        
        
        imgData = UIImage(named: "GeelyEmgrand")?.pngData() ?? Data()
        var v7 = Vehicle(name: "Geely Emgrand",
                         model: "2010",
                         make: "Geely",
                         imageData: imgData,
                         image: "GeelyEmgrand",
                         description: "The car was developed from the outset as an export model. Geely engaged a range of mainly global suppliers, including: Siemens for electronic control system; Lear Corporation for seats; Saint-Gobain for all glass. The production line was equipped with products from Fuji, PDE and Dürr AG.[citation needed]\nIn preparation for its introduction into the European market, the EC7 scored 4 stars in the Euro NCAP tests,[5][6] the first Chinese-designed and produced car to do so.[citation needed] As of October 2015, it is the best selling Chinese brand sedan in China.\nPrices are estimated at £10,000 for the 1.5 model on launch.")
        
        
        imgData = UIImage(named: "Haima3")?.pngData() ?? Data()
        var v8 = Vehicle(name: "Haima 3",
                         model: "2007",
                         make: "Haima",
                         imageData: imgData,
                         image: "Haima3",
                         description: "The Haima 3 was based on the same platform as the ninth generation Mazda Familia/323 with a completely restyled body still heavily inspired by the Mazda3 but is unrelated. A 1.6 and 1.8 litre engine was available paired to a 5 speed manual or CVT gearbox.[1] The Haima 3 replaced the Haima Family sedan which is a rebadged Mazda 323 produced by Haima. However, the facelift model in 2011 was renamed to Haima Family again with prices ranging from 79,800 yuan to 84,800 yuan.")
        
        let cat1 = Category(categoryName: "CompactCars", vehicles: [v1, v2, v3, v4, v5, v6, v7, v8])
        
        
        imgData = UIImage(named: "Lincoln_Navigator")?.pngData() ?? Data()
        v1 = Vehicle(name: "Navigator",
                     model: "First Produced 1997 - Present",
                     make: "Lincoln",
                     imageData: imgData,
                     image: "Lincoln_Navigator",
                     description: "The Lincoln Navigator is a full-size luxury SUV marketed and sold by the Lincoln brand of Ford Motor Company since the 1998 model year. Sold primarily in North America, the Navigator is the Lincoln counterpart of the Ford Expedition. While not the longest vehicle ever sold by the brand, it is the heaviest production Lincoln ever built. It is also the Lincoln with the greatest cargo capacity and the first non-limousine Lincoln to offer seating for more than six people.\n\nLincoln Navigator production was sourced from 1997 to 2009 at the Michigan Assembly Plant in Wayne, Michigan. Since 2009, production has also been sourced from the Kentucky Truck Plant in Louisville, Kentucky.\n\nIt costs around: 76, 710 $")
        
        
        imgData = UIImage(named: "Chevrolet_Sub_Urban")?.pngData() ?? Data()
        v2 = Vehicle(name: "Suburban",
                     model: "First entered to US in 1935",
                     make: "Chevrolet",
                     imageData: imgData,
                     image: "Chevrolet_Sub_Urban",
                     description: "The Chevrolet Suburban is a series of automobiles built by the Chevrolet division of General Motors. The name started in 1934 for the 1935 U.S. model year, making it the longest continuously used automobile nameplate in production. It has traditionally been one of General Motors' most profitable vehicles. The 1935 first generation Carryall Suburban was one of the first production all-metal bodied station wagons. It now has a full-size SUV body style and comes with three engine options: a 5.3 liter V8, 6.2 liter V8 or a 3.0 liter Inline-6 turbo diesel.\n\nPrice: From 53, 200 $")
        
        
        
        imgData = UIImage(named: "Toyota_Land_Cruiser")?.pngData() ?? Data()
        v3 = Vehicle(name: "Land Cruiser",
                     model: "1958 - Present",
                     make: "Toyota",
                     imageData: imgData,
                     image: "Toyota_Land_Cruiser",
                     description: "The Toyota Land Cruiser is a series of four-wheel drive vehicles produced by the Japanese automobile manufacturer Toyota. It is Toyota's longest running series of models. As of 2019, the sales of the Land Cruiser totalled more than 10 million units worldwide.\nProduction of the first generation of the Land Cruiser began in 1951. The Land Cruiser has been produced in convertible, hardtop, station wagon and cab chassis body styles. The Land Cruiser's reliability and longevity have led to huge popularity, especially in Australia, where it is the best-selling body-on-frame, four-wheel drive vehicle. Toyota also extensively tests the Land Cruiser in the Australian outback – considered to be one of the toughest operating environments in both temperature and terrain. In Japan, the Land Cruiser was once exclusive to Toyota Japanese dealerships called Toyota Store.\n\nIt costs around 85, 665 $")
        
        let cat2 = Category(categoryName: "Large Size SUV's", vehicles: [v1, v2, v3])
        
        
        imgData = UIImage(named: "Ford_Edge")?.pngData() ?? Data()
        v1 = Vehicle(name: "Edge",
                     model: "First Produced 2007",
                     make: "Ford",
                     imageData: imgData,
                     image: "Ford_Edge",
                     description: "The Ford Edge is a range of crossover SUVs manufactured by the Ford Motor Company. Introduced for the 2007 model year, the Edge is the first mid-size CUV marketed by Ford in North America; the model line is currently in its second generation. Deriving its name from a trim package of the Ford Ranger, the Ford Edge is positioned between the Ford Escape and the Ford Explorer within the Ford product line.\nSharing its underpinnings with the Ford Fusion sedan, Ford has also produced the model line as the Lincoln MKX the first generation was also produced as the Mazda CX-9. The second generation is also marketed by Ford of Europe, positioned between the Kuga (Escape) and the Explorer PHEV.")
        
        
        imgData = UIImage(named: "Hyundai_Santa_Fe")?.pngData() ?? Data()
        v2 = Vehicle(name: "Santa FE",
                     model: "2001",
                     make: "Hyundai",
                     imageData: imgData,
                     image: "Hyundai_Santa_Fe",
                     description: "The Hyundai Santa Fe is a sport utility vehicle (SUV) produced by the South Korean manufacturer Hyundai since 2000. It is named after the city of Santa Fe, New Mexico, and was introduced for the 2001 model year as Hyundai's first SUV. The Santa Fe was a milestone in the company's restructuring program of the late 1990s because the SUV was a hit with American buyers. Between 2006 and 2012, the Santa Fe was positioned between the smaller Tucson compact crossover and the larger Veracruz.\nThe third-generation Santa Fe introduced in 2012 was available in two versions, which are regular (short) and extended long-wheelbase version. The short model was sold as the Santa Fe Sport in North America (three-row seating was not available) and simply Santa Fe in global markets (three-row seating was standard or optional), while the extended long-wheelbase model is called the Santa Fe in the USA, Santa Fe XL in Canada and called the Hyundai Maxcruz in South Korea.\nPrice: From 27,200 $")
        
        
        
        imgData = UIImage(named: "Jeep_Grand_Cherokee")?.pngData() ?? Data()
        v3 = Vehicle(name: "Grand Cherokee",
                     model: "2014",
                     make: "Jeep",
                     imageData: imgData,
                     image: "Jeep_Grand_Cherokee",
                     description: "The Jeep Grand Cherokee is a range of mid-size SUVs produced by the American manufacturer Jeep. At its introduction, while most SUVs were still manufactured with body-on-frame construction, the Grand Cherokee has used a unibody chassis from the start.\nThe fifth generation Grand Cherokee was revealed as the three-row LWB version, Grand Cherokee L on January 7, 2021. The two-row version was revealed on September 30, 2021. The Grand Cherokee L is assembled at the new Mack Avenue Assembly Complex, which is built on the grounds of the Mack Avenue Engine Complex in Detroit, Michigan. The two-row Grand Cherokee will continue to be assembled at the nearby Jefferson North Assembly Plant, where it has been assembled since its introduction in 1992 for the 1993 model year.\n\nIt costs around 38, 325 $")
        
        
        imgData = UIImage(named: "Volkswagen_Touareg")?.pngData() ?? Data()
        v4 = Vehicle(name: "Touareg",
                     model: "2003 - Present",
                     make: "Volkswagen",
                     imageData: imgData,
                     image: "Volkswagen_Touareg",
                     description: "The Volkswagen Touareg is a two-row mid-size luxury crossover SUV produced by German automaker Volkswagen Group since 2002 at the Volkswagen Bratislava Plant. The vehicle was named after the nomadic Tuareg people, inhabitants of the Saharan interior in North Africa. As of its first generation, the Touareg was developed together with the Porsche Cayenne and the Audi Q7, and As of October 2020, the Touareg was developed together with the Audi Q8, the Bentley Bentayga and the Lamborghini Urus. The vehicles were developed as unibody SUVs with independent suspension. The initial generation (2002–2010) offered five-, six-, eight-, ten- and twelve-cylinder engine choices.\n\nIt costs around: 49, 495 $")
        
        
        imgData = UIImage(named: "Volvo_XC90")?.pngData() ?? Data()
        v5 = Vehicle(name: "XC 90",
                     model: "2002 - Present",
                     make: "Volvo",
                     imageData: imgData,
                     image: "Volvo_XC90",
                     description: "The Volvo XC90 is a mid-size luxury SUV manufactured and marketed by Volvo Cars since 2002 and now in its second generation.\n\nThe first generation was introduced at the 2002 North American International Auto Show and used the Volvo P2 platform shared with the first generation Volvo S80 and other large Volvo cars. It was manufactured at Volvo's Torslandaverken. Volvo moved production equipment of the first generation to China and ended Swedish production at the end of 2014, renaming the car as the Volvo XC Classic (or Volvo XC90 Classic).\nAt the end of 2014, the second generation XC90 was introduced. It is based on a new global platform, the Scalable Product Architecture (SPA). Both generations of the XC90 have won Motor Trend's SUV of the Year award in their debuts.\n\nIt costs around : 50, 900$")
        
        let cat3 = Category(categoryName: "Mid Size SUV's", vehicles: [v1, v2, v3, v4, v5])
        
        
        imgData = UIImage(named: "AcuraLegend")?.pngData() ?? Data()
        v1 = Vehicle(name: "Acura Legend",
                     model: "1985",
                     make: "Honda",
                     imageData: imgData,
                     image: "AcuraLegend",
                     description: "Honda introduced the model in Japan on October 22, 1985, to be their premier luxury model, and in North America for the 1986 model year, as the top of the line model for its then-new Acura lineup. Sedan models came to the market first, powered by a 151 hp (113 kW) 2.5 L C25A V6, with coupes making their first appearance in 1987, powered by a new 161 hp (120 kW) 2.7 L C27A engine. Sedans received the new engine for 1988.\nThe Legend was the first production Honda vehicle to offer a V6 engine. The Legend was a result of a joint venture with Britain's Austin Rover Group called Project XX that started in November 1981 with the Austin Rover-Honda XX letter of intent signed by the two companies to replace the Rover SD1 and to provide a luxury vehicle for Honda. The Rover Company had a long established reputation as a luxury car in the United Kingdom and Europe, demonstrated with the Rover P6, and Honda wanted to introduce a luxury car for both domestic Japanese and the United States markets. The joint development produced the Legend and the corresponding British version was the Rover 800-series, which was badged under the Sterling brand in the United States and competed with the Legend.")
        
        
        imgData = UIImage(named: "Beaumont")?.pngData() ?? Data()
        v2 = Vehicle(name: "Beaumont",
                     model: "1969",
                     make: "General Motors",
                     imageData: imgData,
                     image: "Beaumont",
                     description: "Beaumont started out as a trim level of the Acadian line from 1962 to 1965. The Acadian from 1962 to 1969 was based on the contemporary Chevrolet Chevy II (Nova). Beaumonts were sold at Pontiac-Buick Dealers primarily for the Canadian market, but were also made and sold in some countries outside of North America.\n\nIn 1962, the Acadian was offered in eight models with either base Invader or deluxe Beaumont series. The Beaumont provided extra quality trim, identifications, and luxury. Items such as foam-cushioned rear seats, horn ring on steering wheel, rear armrests, and automatic front door dome light switches were standard Beaumont features.")
        
        
        imgData = UIImage(named: "CadillacATS")?.pngData() ?? Data()
        v3 = Vehicle(name: "Cadillac ATS",
                     model: "2013",
                     make: "General Motors",
                     imageData: imgData,
                     image: "CadillacATS",
                     description: "During the early development of the ATS, GM engineers determined that downsizing the GM Sigma II platform that underpinned the second-generation CTS would result in a vehicle that was too heavy and that using an economical, front-wheel drive platform would sacrifice performance. Under the leadership of Dave Leone, GM engineers created a brand-new platform which was designed to be light and compact, to be capable of handling both rear- and all-wheel drive configurations and to have a near 50/50 weight distribution. The new platform developed by the GM engineers for the ATS is now called the GM Alpha platform.\n\nFor 2015 model year, the refreshed Cadillac ATS gained most of its styling from its Coupe version, the two-bar grille, redesigned Cadillac emblem, seen on the ATS coupe first, and will eventually be placed on every Cadillac lineup. Exterior tweaks for the 2015 Cadillac ATS front fascia has been lowered, and more exterior paint choices have been made. The ATS interior is a carryover for 2015, but has seen some modest technology updates for 2015 as well.")
        
        
        
        imgData = UIImage(named: "DaewooEspero")?.pngData() ?? Data()
        v4 = Vehicle(name: "Daewoo Espero",
                     model: "1990",
                     make: "Daewoo",
                     imageData: imgData,
                     image: "DaewooEspero",
                     description: "There was also a prototype that looked very similar to the Espero. This prototype is called DEV 2 (DEV meaning Daewoo Electric Vehicle) and was presented in 1995 at the Korea Motor Show in Seoul together with the Daewoo Bucrane concept, Tico concept, Nexia, Arcadia and the NGV3 concept. It was basically a version of the Espero but made out of recyclable materials which did not impact the environment. The DEV 2 had a redesigned front. This prototype was shown only in South Korea and only once at these fairs. It was painted white pearl and had 'DEV' badges in blue at the rear doors, its interior was white and the rims where a three spoke design and white as well.\n\n Under the hood it was powered by an electric motor which was a water-cooled AC induction motor (86 kW) with performance figures with 0–100 km (0-60 mph) acceleration of 13 seconds. Top speed was around 85 mph. 22 new lead acid batteries were laid on the floor of the body, and one charge distance of 80 km (49.7 miles) was carried out.\n\nIt was said that the perfection was high but the performance and the range as an electric car was low.")
        
        
        imgData = UIImage(named: "EmgrandEC8")?.pngData() ?? Data()
        v5 = Vehicle(name: "Emgrand EC8",
                     model: "2010",
                     make: "Emgrand(Geely)",
                     imageData: imgData,
                     image: "EmgrandEC8",
                     description: "The Emgrand EC8 debuted at the 2010 Beijing Auto Show. Formerly known as Emgrand EC825, Geely decided simply name the car Emgrand EC8.\n The EC8 is Geely's first entry to the D-segment mid-size sedan or Large family car market. Styling heavily resembles the Toyota Camry (XV40) as the EC8 was benchmarked against and reverse engineered from the Toyota Camry. The Geely EC8 will compete with mid-size rivals such as the Toyota Camry, Volkswagen Magotan, Honda Accord, Nissan Teana and Chery-Riich G5 in the Chinese market.")
        
        
        imgData = UIImage(named: "Fiat124")?.pngData() ?? Data()
        v6 = Vehicle(name: "Fiat 124",
                     model: "1996",
                     make: "Fiat",
                     imageData: imgData,
                     image: "Fiat124",
                     description: "In October 1968 Fiat launched the 124 Special; like Fiat's other Special models, it was an upmarket, better appointed and higher performance variant of the standard saloon. A month after, in November, it was displayed at the 50th Turin Motor Show alongside its larger sibling, the new 125 Special.[13] In addition to a 1.4-litre overhead valve engine, the 124 Special notably introduced all-new 5-link (four longitudinal, one transverse) solid axle rear suspension in place of the original 3-link design.[14] Starting from late 1968 the same improved rear axle was adopted by both Sport models.")
        
        
        imgData = UIImage(named: "GeelyBorui")?.pngData() ?? Data()
        v7 = Vehicle(name: "Geely Borui",
                     model: "2015",
                     make: "Geely",
                     imageData: imgData,
                     image: "GeelyBorui",
                     description: "The Borui facelifted model had minor changes to the exterior. The only thing had changed outward is the intake grille. The facelifted Borui carries a Geely G-Power 1.8 Turbo Engine (petrol) which increased the power. The maximum power output reached 135 kW (181 hp) and the peak torque reaches 300 N⋅m (221 lbf⋅ft). Geely official said the 0-100 km/h (0-62 mph) acceleration of New Borui takes 9.5 seconds. Additionally, the facelifted Geely improved the energy output but had reduced fuel consumption by 4.8 percent. The chassis adjustment had access to resources from Volvo and Lean Nova and switched 46 of the bushings, together with 8 of the pads. The braking system was also switched which shortened the braking distance. The official 100-0 km/h (62-0 mph) braking distance was cut down to 37.14 metres.")
        
        
        imgData = UIImage(named: "HaimaM8")?.pngData() ?? Data()
        v8 = Vehicle(name: "Haima M8",
                     model: "2013",
                     make: "Haima",
                     imageData: imgData,
                     image: "HaimaM8",
                     description: "The Haima M8 Turbo debuted in October 2014 featuring a 1.8 liter turbo engine that later became the remaining option at the end of its lifecycle.[3] The pricing of the Haima M6 ranges from 126,800 yuan to 166,800 yuan.")
        
        
        imgData = UIImage(named: "IKA-RenaultTorino")?.pngData() ?? Data()
        var v9 = Vehicle(name: "IKA-Renault Torino",
                         model: "1966",
                         make: "IKA + Renault Argentina",
                         imageData: imgData,
                         image: "IKA-RenaultTorino",
                         description: "The IKA Torino's most notable international success was in the Maraton de la Route race of 1969, with a Torino finishing in fourth place.[4] The factory shipped three cars to Germany and after the three and a half days of racing, the No. 3 Torino that was driven by Eduardo Copello, Alberto Rodriguez Larreta, and Oscar Mauricio Franco, had covered the most laps of all - 334, but lost the top position because they accumulated various penalties during the race. The IKA Torino became \"the pride and joy of Argentine car enthusiasts\" when their country's team \"showed that it could run with the best of Europe on Europe’s toughest circuit.\" The No. 3 car is displayed in the Juan Manuel Fangio Museum located in Balcarce, Buenos Aires Province, the birthplace of Argentina's Juan Manuel Fangio who dominated the first decade of Formula One racing.\n\nThe IKA Torino won the Turismo Carretera, a popular touring car racing series in Argentina in 1967 with Eduardo Copello, 1969 with Gastón Perkins, 1970 and 1971 with Rubén Luis di Palma.\n\nThe Torino is still being raced, albeit in silhouette form with Jeep Cherokee engines, in the Argentinian Turismo Carretera and others series.")
        
        
        imgData = UIImage(named: "JACBinyue")?.pngData() ?? Data()
        var v10 = Vehicle(name: "JAC Binyue",
                          model: "2008",
                          make: "JAC motors",
                          imageData: imgData,
                          image: "JACBinyue",
                          description: "The exterior design is controversial as the rear end of the Binyue is heavily inspired by the Merecedes-Benz C-class W203. Originally launched as the JAC Binyue C20 with prices ranging from 88,800 yuan to 149,700 yuan, a facelift version was revealed in 2011 called the JAC Binyue C18 and was powered by a A new 1.8L engine replacing the old 2.0L engine. [2] Original plans for the pricing after the facelift was from 95,900 yuan to 139,800 yuan, but the final prices after the facelift was from 91,800 yuan to 132,800 yuan.")
        
        
        imgData = UIImage(named: "KiaK5")?.pngData() ?? Data()
        let v11 = Vehicle(name: "Kia K5",
                          model: "2000",
                          make: "kia",
                          imageData: imgData,
                          image: "KiaK5",
                          description: "From 2000–2005, Optimas were a rebadged variant of the Hyundai Sonata, differing from the Sonata only in minor exterior styling details and equipment content. It was first shown in South Korea in July 2000 and was the first product of the Kia-Hyundai platform integration plan.\n\nIn Australia, the Optima was introduced in May 2001, offered only with a 2.5 L V6 engine, and choice of manual or automatic transmission. The updated Optima was offered with a new 2.7 L engine, 4-speed automatic (the manual was dropped), and features such as full leather interior and alloy wheels were made standard. Thanks in part to better marketing, sales increased to 41,289 units in 2005, an all-time high. The Optima was sold until 2006, when it was replaced by the Magentis.")
        
       
        imgData = UIImage(named: "LanciaAprilia")?.pngData() ?? Data()
        let v12 = Vehicle(name: "Lancia Aprilia",
                          model: "1937",
                          make: "Lancia",
                          imageData: imgData,
                          image: "LanciaAprilia",
                          description: "Production commenced in February 1937, the month in which the firm's founder died: this was the last of Vincenzo Lancia's designs, featuring four pillarless doors. The first series (mod. 238, 10,354 units, 1937–39) featured a 1,352 cc V4 motor providing 47 PS (35 kW). The second series (mod. 438, 9,728 units, 1939–49) had its engine capacity increased to 1,486 cc which provided 48 PS (35 kW). A Lusso model of this second series was also offered as well as a lungo (lengthened) version (706 made, 1946–49). A total of 20,082 cars and 7,554 additional chassis for coach built bodies were produced in Turin along with about 700 in France.")
        
        
        imgData = UIImage(named: "MaseratiGhibliM157")?.pngData() ?? Data()
        let v13 = Vehicle(name: "Maserati Ghibli (M157)",
                          model: "2013",
                          make: "Maserati",
                          imageData: imgData,
                          image: "MaseratiGhibliM157",
                          description: "The Ghibli marks Maserati's comeback in the mid-size luxury car segment after two decades of absence, since the last of the Biturbo family saloons went out of production in 1994; it is a key model in Maserati's plan of reaching a production target of 50,000 units by 2015, expanding its lineup to cover all segments in the luxury car market.[4] Assembly of the Ghibli takes place alongside that of the Quattroporte VI at the new Giovanni Agnelli Plant in Grugliasco near Turin, Italy. On September 24, 2019, the 100,000th Ghibli rolled off the production line as announced by Maserati.")
        
        let cat4 = Category(categoryName: "Mid-Size Cars", vehicles: [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13])
        
        
        imgData = UIImage(named: "Aixam400")?.pngData() ?? Data()
        v1 = Vehicle(name: "Aixam 400",
                     model: "1983",
                     make: "Automotive Microcars",
                     imageData: imgData,
                     image: "Aixam400",
                     description: "Aixam-Mega is a French automobile manufacturer based in Aix-les-Bains, Savoie. It was founded in 1983 to make microcars following the acquisition of Arola. On 11 April 2013, US based Polaris Industries announced that it had acquired Aixam-Mega from previous owners Axa Private Equity.\nThe Aixam 400, 500 and 500.5 are very basic vehicles mechanically by today's standards. There were a variety of engines offered over the years. The diesel is fitted with a Kubota Z402 two-cylinder 400 cc industrial engine rated at 4 to 6 kW (5 to 8 PS). The petrol versions used a Lombardini 505 cc twin-cylinder of approx 20 PS (15 kW), later petrol cars were fitted with fuel-injection. Steering is by rack and pinion and has a comparatively low ratio. MacPherson strut suspension is used at the front and semi-trailing arms at the rear. Brakes are by disc and single-piston calipers at the front, with drums at the rear also serving for handbrake function, via cables. Transmission is by a continuously-variable transmission (CVT) made and supplied by CVTech-IBC[citation needed]. The reversing gearbox and combined differential unit of 8:1 forward ratio, is supplied by the Italian company COMEX, which also supplies many of the other running-gear, steering, suspension and braking system components[citation needed]. The gearbox is designed for small town runabout or delivery van of less than 8 PS (6 kW) and limited to 30 mph (48 km/h).")
        
        
        imgData = UIImage(named: "AltaA200")?.pngData() ?? Data()
        v2 = Vehicle(name: "Alta A200",
                     model: "1968",
                     make: "Alta",
                     imageData: imgData,
                     image: "AltaA200",
                     description: "The Alta A200 was a three-wheel passenger car introduced in 1968, produced by Alta, a Greek vehicle manufacturer. The car was largely based on the German Fuldamobil (licence produced in Greece by Attica), but it was an altogether more modern design. Powered by a Heinkel 200 cc engine, the car had modest success in the Greek market and was soon considered outdated. Produced until 1974, it is often cited as the last derivative of the Fuldamobil and is seen by many as a collectible item.")
        
        
        imgData = UIImage(named: "Attica200")?.pngData() ?? Data()
        v3 = Vehicle(name: "Attica 200",
                     model: "1971",
                     make: "Bioplastic S.A.",
                     imageData: imgData,
                     image: "Attica200",
                     description: "Attica 200 was nonetheless produced until 1971. In 1968 Bioplastic utilized the Attica 200 design to create a light three-wheeler truck brand named Delta (oddly enough, the rear-half of the 200 had become the front-half of Delta!), sold with modest success.\n\nIn 1965 Attica had already made an effort to enter the market of four-wheel automobiles, introducing the Carmel 12; the car was built under licence of Israeli Autocars company (which, in turn, had used British Reliant technology). In fact, the term \"manufacture\" is probably not appropriate in this case, as most parts were imported. Despite a publicity campaign, the car did not sell well and only about 100 Attica Carmel 12's were actually produced. In 1977 Dimitriadis transformed Bioplastic into a new company (DIM Motor) to produce the DIM, an entirely new passenger automobile designed and developed by his company. The car was presented in the Geneva Motor Show in 1977 but its life was very brief: only a few were produced.")
        
        
        imgData = UIImage(named: "AtticaDIM652")?.pngData() ?? Data()
        v4 = Vehicle(name: "Attica DIM 652",
                     model: "1977",
                     make: "Bioplastic S.A",
                     imageData: imgData,
                     image: "AtticaDIM652",
                     description: "DIM Motor Company, a Greek automobile maker, was created by Georgios Dimitriadis as a successor to his earlier company, Bioplastic S.A., which had produced the Attica automobile. The DIM represented one more effort by Mr. Dimitriadis to design and develop a modern car entirely by his company's own means. A 400cc, air-cooled, 2-cylinder, 30-hp engine was also developed in-house to power the vehicle, but due to delays in the engine development, the car was introduced with a 600cc engine and other mechanical parts of the Fiat 126 model. A 650cc Fiat engine was also used, in an improved version. The car was finally introduced at the Geneva Motor Show in 1977, and for this reason received more publicity than most Greek vehicles, appearing in many international publications. All development work had been made in a factory intended for its production in Acharnes, while the company was advertised in the Greek press; plans were also made for more versions, including a sports coupe. However, the costs involved and the car's poor prospects in the Greek market (despite an effort to facelift the model) resulted in termination of production after only about ten had been produced. The whole project was abandoned in 1982, having been Georgios Dimitriadis' last venture in the automotive industry.")
        
        
        imgData = UIImage(named: "AutobianchiBianchina")?.pngData() ?? Data()
        v5 = Vehicle(name: "Autobianchi Bianchina",
                     model: "1957",
                     make: "Autobianchi",
                     imageData: imgData,
                     image: "AutobianchiBianchina",
                     description: "Initially, the car was equipped with the smallest Fiat engine, air-cooled 479 cc, producing 15 PS (11 kW). In 1959, the engine power was increased to 17 PS (13 kW) and in 1960, the cabriolet version was launched.\n\nIn the same year, the Trasformabile, whose engine cylinder capacity was increased to 499 cc (18 hp), was made available in a Special version with bicolour paint, and an engine enhanced to 21 PS (15 kW). This body style featured a fixed B-pillar and partial roof, like the rest of the opening was covered with a foldable fabric hood, while the Cabriolet version had no B-pillar. The Trasformabile was the only version to feature suicide doors, and in 1962, it was replaced by a four-seat saloon. The engine and chassis were the same in both.")
        
        
        imgData = UIImage(named: "Minissima")?.pngData() ?? Data()
        v6 = Vehicle(name: "Minissima",
                     model: "1973",
                     make: "Townscar",
                     imageData: imgData,
                     image: "Minissima",
                     description: "In common with the Mini it was designed around 10\" wheels and the BMC A-Series engine. It is 30\" (75 cm) shorter than the Mini and designed to park end-on to the curb (like the Smart Fortwo), having only one door - at the rear. It has four seats, two at the front, front facing, and two facing inwards at the rear.\n\nThe Minissina design re-emerged a few years later as a prototype car for the disabled, adapted by engineering firm GKN Sankey by ex-Ford engineer Fred Hart. During the engineering process, the layout changed to feature a central driving position in which a wheelchair user would enter through the back door using a fold-down rear ramp, and drive off. The styling was simplified by William Towns to suit mass production and won a Design Council award in 1978, it did not gain government support due to high costs and the project was cancelled.")
        
        
        imgData = UIImage(named: "Isetta")?.pngData() ?? Data()
        v7 = Vehicle(name: "Isetta",
                     model: "1952",
                     make: "Iso Autoveicoli + BMW + VELAM + Romi",
                     imageData: imgData,
                     image: "Isetta",
                     description: "The Isetta caused a sensation when it was introduced to the motoring press in Turin in November 1953.[10] It was unlike anything seen before. Small (only 2.29 m (7.5 ft) long by 1.37 m (4.5 ft) wide) and egg-shaped, with bubble-type windows, the entire front end of the car hinged outwards to allow entry. In the event of an accident, the driver and passenger were to exit through the canvas sunroof. The steering wheel and instrument panel swung out with the single door, simplifying access to the single bench seat. The seat provided reasonable comfort for two occupants, and perhaps a small child. Behind the seat was a large parcel shelf with a spare wheel located below. A heater was optional. Ventilation was provided by turning out the front triangle windows and or opening the fabric sunroof.\nPower came from a 236 cc (14.4 cu in), 7.1 kW (9.5 hp) split-single two-stroke motorcycle engine.[12] The engine was started by a combination generator-starter known as Dynastart. A manual gearbox provided four forward speeds and reverse. A chain drive connected the gearbox to a solid rear axle with a pair of closely spaced 25 cm (10 in) rear wheels. The first prototypes had one wheel at the rear, but having a single rear wheel made the car prone to roll-overs,[13] so the rear wheel layout was changed to two wheels set 48 cm (19 in) apart from each other. This narrow track eliminated the need for a differential. The front axle was a modified version of a Dubonnet independent front suspension.")
        
        
        imgData = UIImage(named: "Biscuter100")?.pngData() ?? Data()
        v8 = Vehicle(name: "Biscuter100",
                     model: "1953",
                     make: "Auto Nacional, SA",
                     imageData: imgData,
                     image: "Biscuter100",
                     description: "The Zapatilla was minimal indeed, with no doors or windows or reverse gear. The 1 cylinder, 197 cc, two-stroke motor produced 9 horsepower (7 kW), had a crank starter, and drove only the right front wheel. It had a large, oil-filled cylinder head, to compensate overheating during traffic light arrests, and avoid overcooling while on road at higher speeds, producing a: 'Temperature Buffer' effect. Braking was by an unusual three-point system involving the transmission and cable ties to the two rear wheels. One genuinely advanced feature was an all-aluminum body, although steel was later used. In 1950 the Spanish auto maker SEAT was set up as the country's national car manufacturer, but at first even the most inexpensive of its designs were considered luxury cars, out of reach of the average Spanish consumer. As time went on and a greater degree of prosperity developed, though, SEATs began to take more of the market and crowd out the cheaper marques. In 1957 the company attempted to produce a sports car, the Biscuter Pegasin in an attempt to attract the wealthier buyers. The styling was similar to the Pegaso Z-102, but it didn't help much. By the early 60s, Biscúter sales and production stopped, after a total production run of about 12,000. It is thought that almost all of the cars were eventually scrapped.")
        
        
        imgData = UIImage(named: "BondBug")?.pngData() ?? Data()
        v9 = Vehicle(name: "Bond Bug",
                     model: "1970",
                     make: "Reliant Motor Company",
                     imageData: imgData,
                     image: "BondBug",
                     description: "Following the purchase of Bond Cars Ltd. in 1969, Reliant commissioned Tom Karen of Ogle Design to alter the Reliant Rogue design; the car would now become a Bond vehicle. The Bond Bug was based on chief engineer John Crosthwaite's newly designed chassis,[4][5] and used a mixture of Reliant Regal parts, and running gear which had been designed for the Reliant Robin 750, which was due to be launched in 1974. The original concept was explored by chopping down a production Regal vehicle, the rear of the car being shortened to end over the rear axle.\n\nThe engine is the front-mounted 700 cc Reliant light-alloy four-cylinder unit. At launch, 29 bhp (22 kW; 29 PS) was claimed for the less expensive 700 and 700E models. The more upmarket 700ES incorporates a redesigned cylinder head, which permitted the compression ratio to be increased from 7.35:1 to 8.4:1. This provided a power increase to 31 bhp (23 kW; 31 PS) as well as improved torque for the then range-topping 700ES.\nThe Bond Bug 700ES also offers more ergonomic seats, as well as more padding over the engine cowl, twin mudflaps, an ashtray, a rubber front bumper and a spare wheel.")
        
        
        imgData = UIImage(named: "CityEl")?.pngData() ?? Data()
        v10 = Vehicle(name: "City El",
                     model: "1988",
                     make: "Citycom GmbH",
                      imageData: imgData,
                     image: "CityEl",
                     description: "The older version had a 36-volt, 0.8 kW motor and in 1990 a 2.5 kW motor with three 80 Ah lead acid batteries, a 40 km/h (25 mph) (Series1) to 55 km/h (34 mph) (Series2 and up) top speed and a range of 60 to 70 km (37 to 43 mi) (Series1) or 40 to 50 km (25 to 31 mi) (Series2). The consumption from Series2 and up was 7 to 9 kW·h/100 km. The new version FactFour has four lead acid batteries, a much better 4 kW electric motor that provides a 63 km/h (39 mph) top speed and 70 to 90 km (43 to 56 mi) range. The consumption is 3.5 to 5 kW·h/100 km. When the FactFour was introduced, Smilies started to offer a lithium-ion battery as an alternative, giving the vehicle a range of more than 120 km (75 mi). The City El is regularly modified by enthusiasts and it is common to see City Els powered by alternative batteries, such as the nickel-cadmium battery or a different lithium-ion battery. The improved performance and range given to the City El by using such batteries make them a viable town commuting vehicle with enough acceleration to keep up with city traffic. 43V 100Ah lithium-ion upgraded City El. A City El weighs 280 kg (620 lb), and the front end can be lifted quite easily. When the batteries are removed it is possible for three people to lift a City El off the ground. When a City El is retrofitted with 100 Ah Thunder-sky lithium-ion batteries, the car becomes approximately 70 kg (150 lb) lighter, bringing the weight of the City El well under that of some motorbikes. At this point the driver has to take extreme care driving at 5 0 km/h (31 mph) or more in moderate cross-winds to prevent the City El from being blown about.")
        
        let cat5 = Category(categoryName: "Mini Car's", vehicles: [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10])
        
        
        imgData = UIImage(named: "Daihatsu_Terios")?.pngData() ?? Data()
       v1 = Vehicle(name: "Terios",
                    model: "First Produced 1997",
                    make: "Daihatsu",
                    imageData: imgData,
                    image: "Daihatsu_Terios",
                    description: "The Daihatsu Terios is a mini-SUV produced by the Japanese automobile manufacturer Daihatsu since 1997 as the successor to the F300 series Rocky. It was initially offered in both short and long-wheelbase configurations before the former stopped production in 2016. The long-wheelbase variant is available mainly for the Indonesian market with three-row seating options.\nRear-wheel drive is standard across all generations, while four-wheel drive option was available for the first and second-generation models.\nSince August 2016, the Terios has been sold exclusively in Indonesia. Throughout three generations, it has also been marketed by Toyota under various nameplates as well.")

        
        imgData = UIImage(named: "Ford_Ecosport")?.pngData() ?? Data()
        v2 = Vehicle(name: "Eco Sport",
                     model: "2018",
                     make: "Ford",
                     imageData: imgData,
                     image: "Ford_Ecosport",
                     description: "The Ford EcoSport is a subcompact crossover SUV, originally built in Brazil by Ford Brazil since 2003, at the Camaçari plant. A second generation concept model was launched in 2012, and is also assembled in new factories in India, Thailand, Russia and Romania. The vehicle entered the North American market for the first time in 2018.\nPrice: From 22,040 $")
        
        
        imgData = UIImage(named: "jeep_renegade")?.pngData() ?? Data()
        v3 = Vehicle(name: "Renegade",
                     model: "2014",
                     make: "Jeep",
                     imageData: imgData,
                     image: "jeep_renegade",
                     description: "The Jeep Renegade is a subcompact crossover SUV produced by FCA US under their Jeep marque. It was first shown to the public in March 2014 at the Geneva Motor Show and production started in late August of that year. As of 2022, the Renegade is the smallest vehicle that is currently marketed by Jeep, slotting below the Compass. It is based on the FCA Small 4X4 wide platform which is also shared with other FCA models, including from Fiat and Alfa Romeo brands.\nThe Renegade came standard with front-wheel drive, with optional four, both of which are paired with Jeep's selec terrain system.\nIt costs around 25,195 $")
        
        
        imgData = UIImage(named: "Honda_CR-V")?.pngData() ?? Data()
        v4 = Vehicle(name: "CR-V",
                     model: "1997 - Present",
                     make: "Honda",
                     imageData: imgData,
                     image: "Honda_CR-V",
                     description: "The Honda CR-V is a compact crossover SUV manufactured by the Japanese automaker Honda since 1996 and introduced in the North American market in 1997. It uses the Civic platform with an SUV body design. The CR-V is Honda's mid-range utility vehicle, slotting between the smaller HR-V and the larger North American market pilot. Honda states \"CR-V\" stands for \"Comfortable Runabout Vehicle\" while the term \"Compact Recreational Vehicle\" is used in a British car review article that was republished by Honda.\nHonda began producing the CR-V in Sayama, Japan, and United Kingdom, for worldwide markets, adding North American manufacturing sites in Ohio, United States, in 2007; Mexico, in late 2007. The CR-V is also produced in Wuhan for the Chinese a joint venture with Dongfeng Motor Corporation, and also marketed as the Honda Breeze .\nIt costs around: 26,400 $")
        
        
        imgData = UIImage(named: "Subaru Forester")?.pngData() ?? Data()
        v5 = Vehicle(name: "Forester",
                     model: "2022",
                     make: "Subaru",
                     imageData: imgData,
                     image: "Subaru Forester",
                     description: "The 2022 Subaru Forester is one of the most spacious compact SUVs around, with plenty of passenger space and decent off-road ability, but its engine feels weak at times.\n\nThe 2022 Subaru Forester's #5 ranking is based on its score within the Compact SUVs category. It is a finalist for our 2022 Best Compact SUV for the Money award. Currently the Subaru Forester has a score of 8.3 out of 10, which is based on our evaluation of 31 pieces of research and data elements using various sources\n\nIt costs around : 25, 195$")
        
        let cat6 = Category(categoryName: "Small SUV's", vehicles: [v1, v2, v3, v4, v5])
        
        
        return [cat1, cat2, cat3, cat4, cat5, cat6]
    }
}
