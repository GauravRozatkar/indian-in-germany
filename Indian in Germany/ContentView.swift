import SwiftUI

private enum B2DStyle {
    static let ink = Color(red: 0.12, green: 0.18, blue: 0.17)
    static let muted = Color(red: 0.43, green: 0.49, blue: 0.47)
    static let green = Color(red: 0.12, green: 0.40, blue: 0.30)
    static let lime = Color(red: 0.83, green: 0.91, blue: 0.48)
    static let cream = Color(red: 0.97, green: 0.96, blue: 0.92)
    static let line = Color(red: 0.89, green: 0.90, blue: 0.86)
    static let orange = Color(red: 0.91, green: 0.43, blue: 0.21)
}

private struct City: Identifiable, Hashable {
    let id: String
    let name: String
    let region: String
    let anmeldung: String

    static let all: [City] = [
        .init(id: "MD", name: "Magdeburg", region: "Saxony-Anhalt", anmeldung: "Check locally"),
        .init(id: "BER", name: "Berlin", region: "Berlin", anmeldung: "Check locally"),
        .init(id: "MUC", name: "Munich", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "STR", name: "Stuttgart", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "FRA", name: "Frankfurt", region: "Hesse", anmeldung: "Check locally"),
        .init(id: "AC", name: "Aachen", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "AUG", name: "Augsburg", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "BAY", name: "Bayreuth", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "BIE", name: "Bielefeld", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "BOC", name: "Bochum", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "BON", name: "Bonn", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "BRA", name: "Braunschweig", region: "Lower Saxony", anmeldung: "Check locally"),
        .init(id: "BRE", name: "Bremen", region: "Bremen", anmeldung: "Check locally"),
        .init(id: "BRH", name: "Bremerhaven", region: "Bremen", anmeldung: "Check locally"),
        .init(id: "CHE", name: "Chemnitz", region: "Saxony", anmeldung: "Check locally"),
        .init(id: "COB", name: "Cottbus", region: "Brandenburg", anmeldung: "Check locally"),
        .init(id: "DAR", name: "Darmstadt", region: "Hesse", anmeldung: "Check locally"),
        .init(id: "DOR", name: "Dortmund", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "DRE", name: "Dresden", region: "Saxony", anmeldung: "Check locally"),
        .init(id: "DUI", name: "Duisburg", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "DUS", name: "Düsseldorf", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "ERF", name: "Erfurt", region: "Thuringia", anmeldung: "Check locally"),
        .init(id: "ESS", name: "Essen", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "FRE", name: "Freiburg im Breisgau", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "FUE", name: "Fürth", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "GEL", name: "Gelsenkirchen", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "GOE", name: "Göttingen", region: "Lower Saxony", anmeldung: "Check locally"),
        .init(id: "HAL", name: "Halle (Saale)", region: "Saxony-Anhalt", anmeldung: "Check locally"),
        .init(id: "HAM", name: "Hamburg", region: "Hamburg", anmeldung: "Check locally"),
        .init(id: "HAN", name: "Hanover", region: "Lower Saxony", anmeldung: "Check locally"),
        .init(id: "HEI", name: "Heidelberg", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "ING", name: "Ingolstadt", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "JEN", name: "Jena", region: "Thuringia", anmeldung: "Check locally"),
        .init(id: "KAI", name: "Kaiserslautern", region: "Rhineland-Palatinate", anmeldung: "Check locally"),
        .init(id: "KAR", name: "Karlsruhe", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "KAS", name: "Kassel", region: "Hesse", anmeldung: "Check locally"),
        .init(id: "KIE", name: "Kiel", region: "Schleswig-Holstein", anmeldung: "Check locally"),
        .init(id: "KOB", name: "Koblenz", region: "Rhineland-Palatinate", anmeldung: "Check locally"),
        .init(id: "KOL", name: "Cologne", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "KON", name: "Konstanz", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "KRE", name: "Krefeld", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "LEI", name: "Leipzig", region: "Saxony", anmeldung: "Check locally"),
        .init(id: "LUB", name: "Lübeck", region: "Schleswig-Holstein", anmeldung: "Check locally"),
        .init(id: "MAI", name: "Mainz", region: "Rhineland-Palatinate", anmeldung: "Check locally"),
        .init(id: "MAN", name: "Mannheim", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "MOE", name: "Mönchengladbach", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "MUE", name: "Münster", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "NUE", name: "Nuremberg", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "OLD", name: "Oldenburg", region: "Lower Saxony", anmeldung: "Check locally"),
        .init(id: "OSN", name: "Osnabrück", region: "Lower Saxony", anmeldung: "Check locally"),
        .init(id: "PAD", name: "Paderborn", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "POT", name: "Potsdam", region: "Brandenburg", anmeldung: "Check locally"),
        .init(id: "REG", name: "Regensburg", region: "Bavaria", anmeldung: "Check locally"),
        .init(id: "ROS", name: "Rostock", region: "Mecklenburg-Vorpommern", anmeldung: "Check locally"),
        .init(id: "SAA", name: "Saarbrücken", region: "Saarland", anmeldung: "Check locally"),
        .init(id: "SCH", name: "Schwerin", region: "Mecklenburg-Vorpommern", anmeldung: "Check locally"),
        .init(id: "TRI", name: "Trier", region: "Rhineland-Palatinate", anmeldung: "Check locally"),
        .init(id: "ULM", name: "Ulm", region: "Baden-Württemberg", anmeldung: "Check locally"),
        .init(id: "WIE", name: "Wiesbaden", region: "Hesse", anmeldung: "Check locally"),
        .init(id: "WUP", name: "Wuppertal", region: "North Rhine-Westphalia", anmeldung: "Check locally"),
        .init(id: "WUE", name: "Würzburg", region: "Bavaria", anmeldung: "Check locally")
    ]
}

private struct ArrivalTask: Identifiable {
    let id: String
    let title: String
    let detail: String
    let icon: String
    var isComplete: Bool
}

private struct Guide: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    var sourceURL: URL? = nil
}

private struct ReferralOffer: Identifiable {
    let id: String
    let category: String
    let title: String
    let description: String
    let url: String
    let promoCode: String?
    let disclosure: String
}

private struct CommunityResource: Identifiable {
    let id: String
    let name: String
    let cityCodes: Set<String>
    let focus: String
    let contact: String
    let url: String
    var isNational: Bool = false
    var isOfficial: Bool = false
    var category: String = "Culture & social"
}

struct ContentView: View {
    @AppStorage("b2d.profile.cityCode") private var selectedCityCode = "MD"
    @AppStorage("b2d.profile.stage") private var selectedStage = "Just arrived"
    @AppStorage("b2d.profile.track") private var selectedTrack = "Student"
    @State private var showingProfile = false
    @State private var showingResetConfirmation = false

    private var selectedCity: City {
        get { City.all.first(where: { $0.id == selectedCityCode }) ?? City.all[0] }
        set { selectedCityCode = newValue.id }
    }
    @State private var selectedTab = "Home"
    @State private var citySearchText = ""
    @State private var communitySearchText = ""
    @State private var selectedCommunityFilter = "All"
    @State private var showingContribution = false
    @State private var showingAllCities = false
    @State private var selectedGuide: Guide?
    @State private var contributionChoice: String?
    @AppStorage("b2d.completedChecklistItems") private var completedTaskIDsRaw = ""

    private var completedTaskIDs: Set<String> {
        Set(completedTaskIDsRaw.split(separator: ",").map(String.init))
    }

    private var filteredCities: [City] {
        let query = citySearchText.trimmingCharacters(in: .whitespacesAndNewlines)
        return City.all
            .filter {
                query.isEmpty ||
                    $0.name.localizedCaseInsensitiveContains(query) ||
                    $0.region.localizedCaseInsensitiveContains(query)
            }
            .sorted { $0.name.localizedStandardCompare($1.name) == .orderedAscending }
    }

    private var communityResources: [CommunityResource] {
        [
            .init(id: "dig", name: "Deutsch-Indische Gesellschaft e.V. (DIG)", cityCodes: ["BER", "FRA", "KOL", "HAM", "HEI", "MAI", "STR"], focus: "Indo-German cultural exchange · local branches", contact: "dig-ev.de", url: "https://www.dig-ev.de", isNational: true),
            .init(id: "isg", name: "Indian Students in Germany (ISG)", cityCodes: [], focus: "Student association network and newcomer connections", contact: "indianstudentsgermany.org", url: "https://indianstudentsgermany.org", isNational: true, category: "Student groups"),
            .init(id: "embassy-berlin", name: "Embassy of India, Berlin", cityCodes: ["BER"], focus: "Official embassy community directory", contact: "indianembassyberlin.gov.in", url: "https://indianembassyberlin.gov.in", isOfficial: true, category: "Official"),
            .init(id: "cgi-frankfurt", name: "Consulate General of India, Frankfurt", cityCodes: ["FRA"], focus: "Official consulate community information", contact: "cgifrankfurt.gov.in", url: "https://cgifrankfurt.gov.in", isOfficial: true, category: "Official"),
            .init(id: "cgi-munich", name: "Consulate General of India, Munich", cityCodes: ["MUC"], focus: "Official consulate community information", contact: "cgimunich.gov.in", url: "https://cgimunich.gov.in", isOfficial: true, category: "Official"),
            .init(id: "cgi-hamburg", name: "Consulate General of India, Hamburg", cityCodes: ["HAM"], focus: "Official consulate community information", contact: "cgihamburg.gov.in", url: "https://cgihamburg.gov.in", isOfficial: true, category: "Official"),
            .init(id: "berlin-tamil", name: "Berlin Tamil Sangam e.V.", cityCodes: ["BER"], focus: "Tamil culture, language and community events", contact: "berlintamilsangam.com", url: "https://berlintamilsangam.com"),
            .init(id: "berlin-kannada", name: "Berlin Kannada Balaga e.V.", cityCodes: ["BER"], focus: "Kannada cultural programs, sports and festivals", contact: "berlinkannadabalaga.org", url: "https://berlinkannadabalaga.org"),
            .init(id: "tagore-centre", name: "The Tagore Centre", cityCodes: ["BER"], focus: "Indian cultural centre · arts, dance and yoga", contact: "Embassy of India, Berlin", url: "https://indianembassyberlin.gov.in"),
            .init(id: "india-club-berlin", name: "India Club Berlin e.V.", cityCodes: ["BER"], focus: "Pan-Indian festivals and community gatherings", contact: "Local event listings", url: "https://www.google.com/search?q=India+Club+Berlin+e.V."),
            .init(id: "bharat-verein", name: "Bharat Verein e.V.", cityCodes: ["FRA"], focus: "Indian cultural and social association", contact: "bharatverein.org", url: "https://bharatverein.org"),
            .init(id: "kerala-frankfurt", name: "Kerala Samajam Frankfurt e.V.", cityCodes: ["FRA"], focus: "Malayali events, Malayalam school and newcomer support", contact: "keralasamajam-frankfurt.com", url: "https://keralasamajam-frankfurt.com"),
            .init(id: "dia-darmstadt", name: "Darmstadt Indian Association e.V. (DIA)", cityCodes: ["DAR"], focus: "Student and diaspora support, accommodation guidance and festivals", contact: "dia-darmstadt.de", url: "https://dia-darmstadt.de", category: "Student groups"),
            .init(id: "dig-mainz", name: "DIG Mainz e.V.", cityCodes: ["MAI", "WIE"], focus: "Indo-German cultural exchange in the Mainz/Wiesbaden area", contact: "dig-mainz.de", url: "https://dig-mainz.de"),
            .init(id: "misa", name: "Munich Indian Students’ Association (MISA)", cityCodes: ["MUC"], focus: "Student networking, arrival guidance and campus events", contact: "misa.hsg.fs.tum.de", url: "https://misa.hsg.fs.tum.de", category: "Student groups"),
            .init(id: "igca-munich", name: "Indo-German Cultural Association Munich (IGCA)", cityCodes: ["MUC"], focus: "Cultural performances, festivals and bilateral events", contact: "igcamunichevents@gmail.com", url: "mailto:igcamunichevents@gmail.com"),
            .init(id: "kerala-munich", name: "Kerala Samajam Munich e.V.", cityCodes: ["MUC"], focus: "Malayali cultural celebrations and family meetups", contact: "info@keralasamajammunich.de", url: "mailto:info@keralasamajammunich.de"),
            .init(id: "anivasi-hamburg", name: "Anivasi Bharathi", cityCodes: ["HAM"], focus: "Cultural heritage, sports, arts and community events", contact: "anivasi-bharathi.org", url: "https://anivasi-bharathi.org"),
            .init(id: "girt-hamburg", name: "German-Indian Round Table (GIRT Hamburg)", cityCodes: ["HAM"], focus: "India-Germany business and professional networking", contact: "girt.de", url: "https://www.girt.de"),
            .init(id: "dig-luebeck", name: "DIG Lübeck / Northern Chapters", cityCodes: ["LUB", "HAM"], focus: "Regional cultural programs and art exhibitions", contact: "dig-luebeck.de", url: "https://dig-luebeck.de"),
            .init(id: "iab-bonn", name: "Indian Association Bonn e.V. (IAB)", cityCodes: ["BON"], focus: "Cultural festivals and social gatherings", contact: "iab-bonn.com", url: "https://iab-bonn.com"),
            .init(id: "isabc", name: "Indian Students Association Bonn-Cologne (ISABC)", cityCodes: ["BON", "KOL"], focus: "Student network and events across Bonn and Cologne", contact: "info@isa-bonncologne.org", url: "mailto:info@isa-bonncologne.org", category: "Student groups"),
            .init(id: "aisa-aachen", name: "Association of Indian Students in Aachen (AISA)", cityCodes: ["AC"], focus: "Student welfare, orientation and cultural festivals", contact: "events.aisa@gmail.com", url: "mailto:events.aisa@gmail.com", category: "Student groups"),
            .init(id: "dig-heidelberg", name: "DIG Heidelberg", cityCodes: ["HEI"], focus: "Classical music, dance and regional cultural networking", contact: "dig-heidelberg.de", url: "https://dig-heidelberg.de"),
            .init(id: "isak-kaiserslautern", name: "Indian Students Association Kaiserslautern (ISAK)", cityCodes: ["KAI"], focus: "Student community support and events at RPTU", contact: "uni-kl.de/hochschulgruppen/isak", url: "https://www.uni-kl.de/hochschulgruppen/isak", category: "Student groups"),
            .init(id: "isa-stuttgart", name: "Indian Students Association Stuttgart", cityCodes: ["STR"], focus: "Student and young professional networking", contact: "University of Stuttgart international groups", url: "https://www.google.com/search?q=Indian+Students+Association+Stuttgart", category: "Student groups")
        ]
    }

    private var selectedCityCommunities: [CommunityResource] {
        communityResources.filter { $0.isNational || $0.isOfficial || $0.cityCodes.contains(selectedCity.id) }
    }

    private var localCommunityResources: [CommunityResource] {
        selectedCityCommunities.filter { !$0.isNational && !$0.isOfficial }
    }

    private var officialMissionResources: [CommunityResource] {
        matchingCommunityResources.filter { $0.isOfficial && $0.cityCodes.contains(selectedCity.id) }
    }

    private var matchingCommunityResources: [CommunityResource] {
        let query = communitySearchText.trimmingCharacters(in: .whitespacesAndNewlines)
        return selectedCityCommunities.filter { resource in
            let matchesFilter = selectedCommunityFilter == "All" ||
                (selectedCommunityFilter == "Official" && resource.isOfficial) ||
                (selectedCommunityFilter == "Student groups" && resource.category == "Student groups") ||
                (selectedCommunityFilter == "Culture & social" && resource.category == "Culture & social" && !resource.isOfficial)
            let matchesSearch = query.isEmpty ||
                resource.name.localizedCaseInsensitiveContains(query) ||
                resource.focus.localizedCaseInsensitiveContains(query) ||
                resource.contact.localizedCaseInsensitiveContains(query)
            return matchesFilter && matchesSearch
        }
    }

    private var visibleLocalCommunities: [CommunityResource] {
        matchingCommunityResources.filter { !$0.isNational && !$0.isOfficial && $0.cityCodes.contains(selectedCity.id) }
    }

    private var visibleNationalCommunities: [CommunityResource] {
        matchingCommunityResources.filter { $0.isNational && !$0.isOfficial }
    }

    private var tasks: [ArrivalTask] {
        let definitions: [(String, String, String, String)]
        if selectedTrack == "Visitor (Schengen)" && selectedStage != "Still in India" {
            definitions = [
                ("tripConditions", "Check your permitted stay", "Follow the dates and conditions on your visa; short-stay limits apply across Schengen", "calendar"),
                ("travelCover", "Keep travel insurance current", "Maintain valid cover for every trip and the full travel period", "cross.case"),
                ("tripDocuments", "Keep your trip documents handy", "Carry accommodation, return travel and invitation details where relevant", "doc.text")
            ]
        } else {
            switch selectedStage {
        case "Still in India":
            if selectedTrack == "Student" {
                definitions = [
                    ("identity", "Passport, application & photos", "Check passport validity, blank pages, signed forms and current photo count on your mission checklist", "person.text.rectangle"),
                    ("studyRecords", "APS, admission & education records", "APS is generally required for Indian academic records on this route; exceptions and document sets apply", "graduationcap"),
                    ("studentFunding", "Funding, language & study plan", "Prepare accepted funding proof, language evidence, CV and motivation letter as your checklist requires", "eurosign"),
                    ("travelCover", "Insurance & appointment pack", "Confirm travel cover dates, fees, originals and copies with the current student checklist", "cross.case")
                ]
            } else if selectedTrack == "Opportunity Card" {
                definitions = [
                    ("identity", "Passport, application & photos", "Follow the current national-visa checklist for validity, forms, photos and copies", "person.text.rectangle"),
                    ("qualification", "Qualification, recognition & language", "Use the skilled-professional or points route shown by the Consular Services Portal", "doc.text.magnifyingglass"),
                    ("opportunityFunding", "Funds, insurance & accommodation", "Check current monthly funds, health cover and address requirements for your application", "eurosign"),
                    ("experience", "CV & work evidence", "Collect certificates, reference letters and language evidence relevant to your route", "briefcase")
                ]
            } else if selectedTrack == "Working / Blue Card" {
                definitions = [
                    ("identity", "Passport, application & photos", "Use the applicable employment checklist for validity, declarations, photos and copies", "person.text.rectangle"),
                    ("employmentOffer", "Employment contract & employer forms", "Prepare your signed offer or contract and employer declarations requested for the route", "briefcase"),
                    ("qualification", "Degree & recognition evidence", "Check Anabin requirements or whether a ZAB Statement of Comparability is needed", "graduationcap"),
                    ("workEvidence", "CV, experience & insurance", "Gather CV and experience records; confirm coverage from your entry or employment start date", "doc.text")
                ]
            } else if selectedTrack == "Visitor (Schengen)" {
                definitions = [
                    ("identity", "Passport, form & biometrics", "Use the current short-stay checklist for passport validity, form, photos and appointment rules", "person.text.rectangle"),
                    ("visitPurpose", "Trip purpose, itinerary & stay", "Prepare flight reservation and hotel booking or host invitation for your full trip", "airplane"),
                    ("visitFinance", "Funds, work & ties to India", "Gather financial and employment or business evidence requested by your exact checklist", "eurosign"),
                    ("visitInsurance", "Schengen travel medical insurance", "Cover the full trip across Schengen with at least €30,000 medical coverage", "cross.case")
                ]
            } else if selectedTrack == "Couple / Family" {
                definitions = [
                    ("familyDocuments", "Gather family documents", "Check which originals, translations and relationship evidence your case requires", "doc.text"),
                    ("residence", "Review the family residence route", "Use the official checklist for the sponsor’s status and your household situation", "person.2"),
                    ("travelCover", "Insurance & appointment pack", "Confirm forms, insurance, fees, copies and appointment steps with the responsible mission", "cross.case"),
                    ("housing", "Plan your first accommodation", "Verify the offer and agreement before paying", "house")
                ]
            } else {
                definitions = [
                    ("qualification", "Check qualification requirements", "Use the official portal for your visa route", "doc.text"),
                    ("funds", "Plan your arrival budget", "Confirm current requirements with the responsible authority", "eurosign"),
                    ("housing", "Plan your first accommodation", "Never send a deposit before verifying the offer", "house")
                ]
            }
        case "Living in Germany", "Student life":
            if selectedTrack == "Student" {
                definitions = [
                    ("enrollment", "Complete university enrollment", "Check your university portal for deadlines", "graduationcap"),
                    ("work", "Understand your work conditions", "Confirm rules for your residence permit", "briefcase"),
                    ("exam", "Save exam and registration dates", "Use your faculty’s official calendar", "calendar")
                ]
            } else if selectedTrack == "Couple / Family" {
                definitions = [
                    ("familyCoverage", "Review family insurance options", "Ask providers how coverage applies to your household", "cross.case"),
                    ("childcare", "Explore childcare and school options", "Check your municipality for local processes and timelines", "figure.2"),
                    ("mobility", "Plan everyday mobility", "Review local transport and driving options", "car")
                ]
            } else {
                definitions = [
                    ("permit", "Check your residence permit conditions", "Confirm your individual conditions with the authority", "person.text.rectangle"),
                    ("work", "Organize your job search", "Keep applications and appointments in one place", "briefcase"),
                    ("recognition", "Check qualification recognition", "Use the official recognition service if relevant", "doc.text.magnifyingglass")
                ]
            }
        default:
            definitions = [
                ("anmeldung", "Arrange your city registration", "Check the local Bürgeramt for the current process", "building.2"),
                ("bank", "Set up everyday banking", "Compare account terms before choosing", "creditcard"),
                ("insurance", "Confirm your health coverage", selectedTrack == "Student" ? "Ask your university or insurer what applies to you" : "Confirm coverage for your individual situation with a provider", "cross.case")
            ]
            }
        }

        return definitions.map { id, title, detail, icon in
            ArrivalTask(id: id, title: title, detail: detail, icon: icon, isComplete: completedTaskIDs.contains("\(selectedStage):\(selectedTrack):\(id)") || completedTaskIDs.contains("\(selectedStage):\(id)"))
        }
    }

    private func visaGuide(for task: ArrivalTask) -> Guide {
        let nationalVisaURL = URL(string: "https://india.diplo.de/in-en/service/2755482-2755482")
        let sourceURL: URL?
        let message: String

        switch selectedTrack {
        case "Student":
            sourceURL = URL(string: "https://india.diplo.de/in-en/service/2756350-2756350")
            switch task.id {
            case "identity":
                message = "Prepare your passport, application forms, declarations, passport-data copies and biometric photos exactly as the current student checklist specifies. The mission’s student checklist asks for a passport issued within the last 10 years with at least two blank pages; other visa routes can require longer validity or different photo counts. If the application is handled in the Consular Services Portal, follow its generated form and upload instructions."
            case "studyRecords":
                message = "Prepare your German university admission letter, previous school/university certificates and marksheets. APS is generally required for Indian academic records in the student visa process, but the German Missions in India list exceptions, including some PhD/postdoc, public scholarship, and non-Indian qualification cases. Confirm whether an exception applies to you."
            case "studentFunding":
                message = "The current study guidance lists €11,904 for the first year (€992 per month) in a blocked account, or a Verpflichtungserklärung or German/EU scholarship; it also mentions education-loan evidence where applicable. Also gather language evidence if the admission letter does not confirm sufficient proficiency, plus your CV and signed motivation letter. Recheck the current amount and checklist before applying."
            default:
                message = "The current Consular Services Portal asks for health insurance from your intended arrival date. If your statutory or private cover starts later, confirm whether temporary travel cover is needed. Check the fee, payment method and exact number of originals/copies with the generated checklist. The currently published national visa fee for adults in India is €75, paid in INR at the applicable rate; additional VFS service charges may apply."
            }
        case "Opportunity Card":
            sourceURL = URL(string: "https://india.diplo.de/in-en/service/2756118-2756118")
            switch task.id {
            case "identity":
                message = "The Opportunity Card checklist currently asks for a passport issued within the last 10 years with at least two empty pages, plus the forms, declaration, biometric photos and copies shown in the Consular Services Portal. The portal provides a route-specific document list after the score-counter questionnaire."
            case "qualification":
                message = "The portal determines whether you apply as a skilled professional with a recognized qualification or through the points route. Prepare qualification and recognition evidence (Anabin or ZAB where applicable), and evidence for the criteria you claim. The official India guidance names recognized providers for language evidence; requirements depend on your route."
            case "opportunityFunding":
                message = "The German Missions in India currently state at least €1,091 per month for living costs. Evidence may include a blocked account or a formal Verpflichtungserklärung; the checklist may also require return-flight funds. Upload health insurance valid from entry and accommodation proof with the complete address. Recheck the current amount and accepted evidence."
            default:
                message = "Prepare a CV and employer references/contracts that show the exact duration and nature of relevant work experience, plus recognized language evidence where relevant to your points route. The portal will tell you which records apply to your individual score and qualification."
            }
        case "Working / Blue Card":
            sourceURL = nationalVisaURL
            switch task.id {
            case "identity":
                message = "Use the employment or EU Blue Card route shown by the Consular Services Portal. Prepare the passport, signed forms/declarations, biometric photos and copies exactly as requested. Some employment checklists require a passport valid for at least another year at application, so do not rely on a generic three-month rule."
            case "employmentOffer":
                message = "Prepare your signed German employment contract or binding offer with role, working time and salary. The employer may also need to complete and sign the Erklärung zum Beschäftigungsverhältnis. Upload the forms requested for your exact employment category through the portal."
            case "qualification":
                message = "Check both your institution and degree in Anabin when the route calls for it. If the qualification cannot be established there, the mission may request a ZAB Statement of Comparability. Regulated professions can have separate licensing or recognition requirements."
            default:
                message = "Prepare a concise CV, proof of qualifications and relevant work experience. Confirm German health insurance from the correct start date; if cover does not begin on arrival, the mission may require separate travel health insurance for the gap. The current adult national visa fee published for India is €75, payable in INR at the applicable rate, plus any VFS service charges."
            }
        case "Visitor (Schengen)":
            sourceURL = URL(string: "https://india.diplo.de/in-en/2674158-2674158")
            switch task.id {
            case "identity":
                message = "Use the current Schengen checklist for your travel purpose. It specifies the application form, passport validity and blank pages, photos, copies, appointment and biometrics. The adult Schengen visa fee published for India is currently €90, payable in INR; VFS service charges may be additional."
            case "visitPurpose":
                message = "Prepare a flight reservation and proof of accommodation for the whole trip, or the relevant host invitation and sponsorship documents. Do not purchase non-refundable tickets before the visa decision. A business visit has additional invitation and employer-dispatch documents."
            case "visitFinance":
                message = "The mission checklist varies by employment status and trip purpose. It may request recent bank statements, salary slips, employer leave approval/NOC, business registration, company records, income-tax acknowledgments and evidence of ties to India. Use the exact checklist for your case rather than assuming every item applies."
            default:
                message = "For a Schengen visa, travel medical insurance must cover the full intended trip throughout the Schengen area and provide at least €30,000 coverage, including emergency treatment and repatriation. German Missions in India require eligible policies from accepted insurers; check the mission’s current accepted-insurer list."
            }
        default:
            sourceURL = nationalVisaURL
            message = "Family reunification documents depend on the sponsor’s residence status and your family relationship. Use the Consular Services Portal when your route is available there, and follow the personalized list it generates. Check translations, civil-status evidence, insurance and any language requirement against the competent mission’s current checklist."
        }

        let feeNote = "General preparation only. VIDEX is not a universal form: the Consular Services Portal integrates forms for many national-visa routes, while other routes may use different forms. Photo count, passport validity, copies and appointment procedures also vary. APS is not a universal requirement for all visas. Always follow the latest checklist from your responsible German mission."
        return Guide(title: task.title, message: "\(message)\n\n\(feeNote)", sourceURL: sourceURL)
    }

    private var completedCount: Int { tasks.filter(\.isComplete).count }

    private func toggleTask(_ task: ArrivalTask) {
        var updated = completedTaskIDs
        let key = "\(selectedStage):\(selectedTrack):\(task.id)"
        if updated.contains(key) {
            updated.remove(key)
        } else {
            updated.insert(key)
        }
        completedTaskIDsRaw = updated.sorted().joined(separator: ",")
    }

    var body: some View {
        ZStack {
            B2DStyle.cream.ignoresSafeArea()
            VStack(spacing: 0) {
                tabContent
                bottomBar
            }
            .sheet(isPresented: $showingContribution) { contributionSheet }
            .sheet(isPresented: $showingAllCities) { cityPickerSheet }
            .sheet(isPresented: $showingProfile) { profileSheet }
            .sheet(item: $selectedGuide) { guide in
                guideSheet(guide)
            }
        }
        .preferredColorScheme(.light)
    }

    @ViewBuilder
    private var tabContent: some View {
        switch selectedTab {
        case "Explore":
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    header
                    pageTitle("Explore your city", subtitle: "Local help for your next step in \(selectedCity.name).")
                    citySnapshot
                    sectionHeading("Helpful services for your stage", trailing: "Optional")
                    Text("Compare providers before signing up. Referral benefits and eligibility can change.")
                        .font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                    ForEach(contextualOffers) { offer in
                        referralOfferCard(offer)
                    }
                    sectionHeading("Find what you need", trailing: nil)
                    exploreRow("Housing & scam checks", detail: "Safer ways to find a room", icon: "house", color: B2DStyle.orange)
                    exploreRow("Work & study", detail: "Student jobs, HiWi and career tips", icon: "briefcase", color: B2DStyle.green)
                    exploreRow("Indian groceries", detail: "Shops, fresh stock and essentials", icon: "basket", color: .orange)
                    exploreRow("Community & culture", detail: "Associations, temples and events", icon: "person.2", color: .purple)
                    footer
                }.padding(.horizontal, 20).padding(.top, 9).padding(.bottom, 24)
            }
        case "Passport":
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    header
                    pageTitle("Your German journey", subtitle: "Milestones from first preparations through settled life.")
                    passportProgress
                    sectionHeading("Your journey milestones", trailing: "5 steps")
                    lifecycleRoadmap
                    nextChapterCard
                    Button {
                        selectedTab = "Home"
                    } label: {
                        HStack {
                            Image(systemName: "checklist")
                            Text("Continue current checklist")
                            Spacer()
                            Image(systemName: "arrow.right")
                        }
                        .font(.system(size: 12, weight: .bold)).foregroundStyle(.white)
                        .padding(15).background(B2DStyle.green, in: RoundedRectangle(cornerRadius: 15))
                    }.buttonStyle(.plain)
                    footer
                }.padding(.horizontal, 20).padding(.top, 9).padding(.bottom, 24)
            }
        case "Community":
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    header
                    pageTitle("You belong here", subtitle: "Find associations, student groups and official community directories.")
                    Text("Starter directory based on the links provided. Confirm current activity and contact details directly with each organization.")
                        .font(.system(size: 11)).foregroundStyle(B2DStyle.muted)
                        .fixedSize(horizontal: false, vertical: true)
                    HStack(spacing: 11) {
                        Image(systemName: "mappin.and.ellipse").foregroundStyle(B2DStyle.green)
                            .frame(width: 38, height: 38).background(B2DStyle.lime.opacity(0.55), in: RoundedRectangle(cornerRadius: 11))
                        VStack(alignment: .leading, spacing: 3) {
                            Text("YOUR CITY").font(.system(size: 8, weight: .heavy)).tracking(0.7).foregroundStyle(B2DStyle.muted)
                            Text(selectedCity.name).font(.system(size: 14, weight: .bold)).foregroundStyle(B2DStyle.ink)
                        }
                        Spacer()
                        Button { showingAllCities = true } label: {
                            Label("Change", systemImage: "chevron.down")
                                .font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.green)
                        }
                    }
                    .padding(13).background(.white, in: RoundedRectangle(cornerRadius: 15))
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(B2DStyle.line, lineWidth: 1))
                    HStack(spacing: 9) {
                        Image(systemName: "magnifyingglass").foregroundStyle(B2DStyle.muted)
                        TextField("Search groups, focus or contact", text: $communitySearchText)
                            .font(.system(size: 12))
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        if !communitySearchText.isEmpty {
                            Button { communitySearchText = "" } label: {
                                Image(systemName: "xmark.circle.fill").foregroundStyle(B2DStyle.muted)
                            }.accessibilityLabel("Clear community search")
                        }
                    }
                    .padding(.horizontal, 13).frame(height: 44)
                    .background(.white, in: RoundedRectangle(cornerRadius: 13))
                    .overlay(RoundedRectangle(cornerRadius: 13).stroke(B2DStyle.line, lineWidth: 1))
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(["All", "Student groups", "Culture & social", "Official"], id: \.self) { filter in
                                Button { selectedCommunityFilter = filter } label: {
                                    Text(filter).font(.system(size: 10, weight: .semibold))
                                        .foregroundStyle(selectedCommunityFilter == filter ? .white : B2DStyle.ink)
                                        .padding(.horizontal, 12).padding(.vertical, 9)
                                        .background(selectedCommunityFilter == filter ? B2DStyle.green : .white, in: Capsule())
                                        .overlay(Capsule().stroke(selectedCommunityFilter == filter ? B2DStyle.green : B2DStyle.line, lineWidth: 1))
                                }.buttonStyle(.plain)
                            }
                        }
                    }
                    sectionHeading("In \(selectedCity.name)", trailing: "\(visibleLocalCommunities.count) groups")
                    if visibleLocalCommunities.isEmpty {
                        Text(communitySearchText.isEmpty
                             ? "No city-specific groups are listed here yet. Try the nationwide networks or check with your university’s international office."
                             : "No local groups match this search and filter.")
                            .font(.system(size: 12)).foregroundStyle(B2DStyle.muted)
                            .padding(15).frame(maxWidth: .infinity, alignment: .leading)
                            .background(.white, in: RoundedRectangle(cornerRadius: 16))
                    } else {
                        ForEach(visibleLocalCommunities) { resource in
                            communityResourceCard(resource)
                        }
                    }
                    if !visibleNationalCommunities.isEmpty {
                        sectionHeading("Nationwide networks", trailing: nil)
                        ForEach(visibleNationalCommunities) { resource in
                            communityResourceCard(resource)
                        }
                    }
                    if !officialMissionResources.isEmpty {
                        sectionHeading("Official Indian mission", trailing: nil)
                        ForEach(officialMissionResources) { resource in
                            communityResourceCard(resource)
                        }
                    }
                    if visibleLocalCommunities.isEmpty && visibleNationalCommunities.isEmpty && officialMissionResources.isEmpty {
                        Text("Try a different search or choose another category.")
                            .font(.system(size: 12)).foregroundStyle(B2DStyle.muted)
                    }
                    exploreRow("Share a local tip", detail: "Help someone arriving after you", icon: "heart.text.square", color: B2DStyle.orange)
                    sectionHeading("Community guidelines", trailing: nil)
                    Text("Be kind, protect personal information, and report suspicious offers. Community listings are starting points—please verify details before acting.")
                        .font(.system(size: 12)).foregroundStyle(B2DStyle.muted).padding(15)
                        .background(.white, in: RoundedRectangle(cornerRadius: 16))
                    footer
                }.padding(.horizontal, 20).padding(.top, 9).padding(.bottom, 24)
            }
        default:
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 23) {
                    header
                    welcomeCard
                    journeyPicker
                    readinessSection
                    localPulseSection
                    safetyCard
                    communityCard
                    contributionCard
                    footer
                }.padding(.horizontal, 20).padding(.top, 9).padding(.bottom, 24)
            }
        }
    }

    private var contextualOffers: [ReferralOffer] {
        let referralDisclosure = "Referral link: the person who shared this may receive a reward. Any benefit for you, eligibility and terms are set by the provider."
        let expatrio = ReferralOffer(
            id: "expatrio",
            category: "BEFORE DEPARTURE · BLOCKED ACCOUNT",
            title: "Compare Expatrio",
            description: "Review current blocked-account fees, release conditions and any bundled services before applying.",
            url: "https://www.expatrio.com?f=gauravr2",
            promoCode: nil,
            disclosure: referralDisclosure
        )
        let n26 = ReferralOffer(
            id: "n26",
            category: "ARRIVAL · EVERYDAY BANKING",
            title: "N26 invitation",
            description: "Compare account features, fees and eligibility with other German banking options.",
            url: "https://n26.com/r/gauravlr0033?cid=R46&lang=en",
            promoCode: nil,
            disclosure: "Referral invitation: the inviter may receive a reward. Any new-customer offer is subject to N26’s current terms."
        )
        let voi = ReferralOffer(
            id: "voi",
            category: "VOI",
            title: "Get around your city",
            description: "The invitation advertises a free ride. Service availability, eligibility and terms depend on your city and VOI’s current offer.",
            url: "https://lqfa.adj.st/redeemReferral?adj_campaign=referral&adj_deep_link=https%3A%2F%2Fopen.voi.com%2FredeemReferral%3Fgiss%3DQbKQOPeJOHaPafdaadfLbIQPLNcJaecQ&adj_label=QbKQOPeJOHaPafdaadfLbIQPLNcJaecQ&adj_t=15ia4lhx&giss=QbKQOPeJOHaPafdaadfLbIQPLNcJaecQ",
            promoCode: nil,
            disclosure: referralDisclosure
        )
        let taptap = ReferralOffer(
            id: "taptap",
            category: "TAPTAP SEND",
            title: "Send money to India",
            description: "Potential €5 reward after you send €100 or more. Check the current offer terms, transfer fee and exchange rate before sending.",
            url: "https://taptapsend.onelink.me/Lrab/appreferral",
            promoCode: "GAURAV822",
            disclosure: "Referral link: the inviter may also receive a reward. Terms and eligibility apply."
        )
        let scalable = ReferralOffer(
            id: "scalable",
            category: "SCALABLE",
            title: "Invest with Scalable",
            description: "Explore the account and investment options. Check fees and risks; investments can lose value.",
            url: "https://de.scalable.capital/en/invitation/bvhwkt",
            promoCode: nil,
            disclosure: "Referral link: the inviter may receive a benefit. This is not investment advice."
        )

        let stageOffers: [ReferralOffer]
        switch selectedStage {
        case "Still in India":
            stageOffers = selectedTrack == "Visitor (Schengen)" ? [] : [expatrio]
        case "Just arrived":
            stageOffers = [n26, voi]
        default:
            stageOffers = [voi]
        }
        return [taptap, scalable] + stageOffers
    }

    private func referralOfferCard(_ offer: ReferralOffer) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(offer.category)
                    .font(.system(size: 9, weight: .heavy)).tracking(0.6)
                    .foregroundStyle(B2DStyle.green)
                Spacer()
                Label("Referral link", systemImage: "arrowshape.turn.up.right")
                    .font(.system(size: 10, weight: .semibold)).foregroundStyle(B2DStyle.ink.opacity(0.75))
            }
            Text(offer.title).font(.system(size: 14, weight: .bold)).foregroundStyle(B2DStyle.ink)
            Text(offer.description).font(.system(size: 11)).foregroundStyle(B2DStyle.muted)
                .fixedSize(horizontal: false, vertical: true)
            if let promoCode = offer.promoCode {
                HStack(spacing: 6) {
                    Image(systemName: "tag.fill")
                    Text("Code")
                    Text(promoCode).fontWeight(.bold).textSelection(.enabled)
                }
                .font(.system(size: 10)).foregroundStyle(B2DStyle.green)
                .padding(.horizontal, 10).padding(.vertical, 7)
                .background(B2DStyle.green.opacity(0.08), in: Capsule())
            }
            Text(offer.disclosure)
                .font(.system(size: 11, weight: .medium)).foregroundStyle(B2DStyle.ink.opacity(0.78))
                .fixedSize(horizontal: false, vertical: true)
            if let url = URL(string: offer.url) {
                Link(destination: url) {
                    HStack(spacing: 6) {
                        Text(offer.id == "taptap" ? "Get the €5 offer" :
                             offer.id == "scalable" ? "Explore Scalable" :
                             offer.id == "voi" ? "View VOI offer" : "View provider offer")
                        Image(systemName: "arrow.up.right")
                    }
                    .font(.system(size: 10, weight: .bold)).foregroundStyle(.white)
                    .padding(.horizontal, 13).padding(.vertical, 9)
                    .background(B2DStyle.green, in: Capsule())
                }
                .accessibilityHint("Opens the provider’s referral link")
            }
        }
        .padding(14).frame(maxWidth: .infinity, alignment: .leading)
        .background(.white, in: RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(B2DStyle.line, lineWidth: 1))
    }

    private func pageTitle(_ title: String, subtitle: String) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).font(.system(size: 27, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
            Text(subtitle).font(.system(size: 13)).foregroundStyle(B2DStyle.muted)
        }
    }

    private var citySnapshot: some View {
        VStack(alignment: .leading, spacing: 13) {
            HStack {
                Label(selectedCity.name, systemImage: "mappin.and.ellipse")
                    .font(.system(size: 15, weight: .bold)).foregroundStyle(B2DStyle.ink)
                Spacer()
                Button("Change") { showingAllCities = true }
                    .font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.green)
            }
            Text(selectedCity.region).font(.system(size: 11)).foregroundStyle(B2DStyle.muted)
            HStack(spacing: 10) {
                pulseCard(icon: "calendar", title: "Anmeldung", value: selectedCity.anmeldung, detail: "community estimate", tint: B2DStyle.lime.opacity(0.45))
                pulseCard(icon: "shield", title: "Housing", value: "Stay alert", detail: "Never pay unseen", tint: Color.orange.opacity(0.14))
            }
        }.padding(15).background(.white, in: RoundedRectangle(cornerRadius: 17))
    }

    private func exploreRow(_ title: String, detail: String, icon: String, color: Color) -> some View {
        Button {
            if title == "Share a local tip" {
                showingContribution = true
            } else {
                selectedGuide = Guide(
                    title: title,
                    message: "\(detail). This preview contains starter guidance only. Check the relevant official or provider source before making a decision."
                )
            }
        } label: {
            HStack(spacing: 12) {
                Image(systemName: icon).font(.system(size: 16, weight: .semibold)).foregroundStyle(color)
                    .frame(width: 40, height: 40).background(color.opacity(0.12), in: RoundedRectangle(cornerRadius: 12))
                VStack(alignment: .leading, spacing: 4) {
                    Text(title).font(.system(size: 13, weight: .bold)).foregroundStyle(B2DStyle.ink)
                    Text(detail).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                }
                Spacer()
                Image(systemName: "chevron.right").font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.muted)
            }.padding(13).background(.white, in: RoundedRectangle(cornerRadius: 16))
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(B2DStyle.line.opacity(0.8), lineWidth: 1))
                .contentShape(RoundedRectangle(cornerRadius: 16))
        }
        .buttonStyle(.plain)
    }

    private var passportProgress: some View {
        VStack(alignment: .leading, spacing: 13) {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(currentStageDisplayName.uppercased()).font(.system(size: 9, weight: .heavy)).tracking(0.9).foregroundStyle(B2DStyle.lime)
                    Text("\(selectedCity.name)").font(.system(size: 22, weight: .bold, design: .rounded)).foregroundStyle(.white)
                }
                Spacer()
                Image(systemName: "airplane.arrival").font(.system(size: 20, weight: .semibold)).foregroundStyle(B2DStyle.lime)
            }
            GeometryReader { proxy in
                ZStack(alignment: .leading) {
                    Capsule().fill(.white.opacity(0.2)).frame(height: 7)
                    Capsule().fill(B2DStyle.lime).frame(width: proxy.size.width * CGFloat(completedCount) / CGFloat(tasks.count), height: 7)
                }.frame(maxHeight: .infinity)
            }.frame(height: 8)
            Text("\(Int(Double(completedCount) / Double(tasks.count) * 100))% complete · Keep going, you’re building a life here.")
                .font(.system(size: 11, weight: .medium)).foregroundStyle(.white.opacity(0.83))
        }.padding(18).background(B2DStyle.green, in: RoundedRectangle(cornerRadius: 19))
    }

    private var currentLifecyclePhaseIndex: Int {
        switch selectedStage {
        case "Still in India":
            return 0
        case "Living in Germany", "Student life":
            if selectedTrack == "Student" { return 2 }
            if selectedTrack == "Couple / Family" { return 4 }
            return 3
        default:
            return 1
        }
    }

    private var currentStageDisplayName: String {
        selectedStage == "Student life" ? "Living in Germany" : selectedStage
    }

    private var lifecycleRoadmap: some View {
        let phases: [(title: String, subtitle: String, icon: String)] = [
            ("Pre-departure", "Visa, documents, funding and housing", "airplane"),
            ("First weeks in Germany", "Registration, banking and getting set up", "building.2"),
            (
                selectedTrack == "Student" ? "Study, work and community" : "Work and community",
                selectedTrack == "Student" ? "Campus life, jobs and local connections" : "Build local connections and plan your next steps",
                selectedTrack == "Student" ? "graduationcap" : "person.2"
            ),
            (
                selectedTrack == "Student" ? "Graduation and career" : "Career and work transition",
                selectedTrack == "Student" ? "Plan your transition into work" : "Job search, recognition and permit planning",
                "briefcase"
            ),
            ("Settled life", "Family, mobility and long-term planning", "house.and.flag")
        ]

        return VStack(spacing: 9) {
            ForEach(0..<phases.count, id: \.self) { index in
                phaseRoadmapRow(
                    index: index,
                    title: phases[index].title,
                    subtitle: phases[index].subtitle,
                    icon: phases[index].icon
                )
            }
        }
    }

    private func phaseRoadmapRow(index: Int, title: String, subtitle: String, icon: String) -> some View {
        let isCurrent = index == currentLifecyclePhaseIndex
        let status: String
        if isCurrent {
            status = "YOU ARE HERE"
        } else if index < currentLifecyclePhaseIndex {
            status = "EARLIER STAGE"
        } else if index == currentLifecyclePhaseIndex + 1 {
            status = "UP NEXT"
        } else {
            status = "LATER"
        }

        return HStack(spacing: 12) {
            ZStack {
                Circle().fill(isCurrent ? B2DStyle.lime : B2DStyle.cream).frame(width: 38, height: 38)
                Image(systemName: icon).font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(isCurrent ? B2DStyle.green : B2DStyle.muted)
            }
            VStack(alignment: .leading, spacing: 4) {
                if isCurrent {
                    Text(status).font(.system(size: 8, weight: .heavy)).tracking(0.6)
                        .foregroundStyle(B2DStyle.green)
                }
                Text(title).font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.ink)
                Text(subtitle).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
            }
            Spacer(minLength: 2)
            if !isCurrent {
                Text(status).font(.system(size: 7, weight: .bold)).foregroundStyle(B2DStyle.muted)
                    .multilineTextAlignment(.trailing)
            } else {
                Image(systemName: "location.fill").font(.system(size: 10)).foregroundStyle(B2DStyle.green)
            }
        }
        .padding(12)
        .background(isCurrent ? B2DStyle.green.opacity(0.08) : .white, in: RoundedRectangle(cornerRadius: 15))
        .overlay(RoundedRectangle(cornerRadius: 15).stroke(isCurrent ? B2DStyle.green.opacity(0.25) : B2DStyle.line, lineWidth: 1))
    }

    private var nextChapterCard: some View {
        let title: String
        let detail: String
        switch currentLifecyclePhaseIndex {
        case 0:
            title = "Your next chapter: arriving"
            detail = "Use your selected city and track to prepare a practical arrival plan."
        case 1:
            title = "Your next chapter: building a routine"
            detail = "Work through the essentials, then explore study, work and local community resources."
        case 2:
            title = "Your next chapter: career transition"
            detail = "Keep your experience, career goals and next-step planning organized as your studies progress."
        case 3:
            title = "Your next chapter: settled life"
            detail = "Keep longer-term work, family and mobility plans connected to your changing situation."
        default:
            title = "Your next chapter: keep plans current"
            detail = "Review family, mobility and cross-border priorities as your circumstances change."
        }

        return HStack(alignment: .top, spacing: 12) {
            Image(systemName: "arrow.turn.down.right").font(.system(size: 15, weight: .bold))
                .foregroundStyle(B2DStyle.green).frame(width: 34, height: 34)
                .background(B2DStyle.lime.opacity(0.45), in: RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading, spacing: 5) {
                Text(title).font(.system(size: 13, weight: .bold)).foregroundStyle(B2DStyle.ink)
                Text(detail).font(.system(size: 11)).foregroundStyle(B2DStyle.muted).fixedSize(horizontal: false, vertical: true)
            }
            Spacer(minLength: 0)
        }
        .padding(15).background(.white, in: RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(B2DStyle.line, lineWidth: 1))
    }

    private var header: some View {
        HStack {
            HStack(spacing: 9) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12).fill(B2DStyle.green).frame(width: 38, height: 38)
                    Image(systemName: "arrow.trianglehead.branch").font(.system(size: 17, weight: .bold)).foregroundStyle(B2DStyle.lime)
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text("Indian in Germany").font(.system(size: 14, weight: .bold, design: .rounded))
                    Text("YOUR GERMANY GUIDE").font(.system(size: 8, weight: .bold)).tracking(1.2).foregroundStyle(B2DStyle.muted)
                }.foregroundStyle(B2DStyle.ink)
            }
            Spacer()
            Button {
                selectedGuide = Guide(title: "Updates", message: "You’re all caught up. When you enable live services, important deadline and regulation updates can appear here.")
            } label: {
                ZStack(alignment: .topTrailing) {
                    Circle().fill(.white).frame(width: 40, height: 40)
                    Image(systemName: "bell").font(.system(size: 16, weight: .medium)).foregroundStyle(B2DStyle.ink).frame(width: 40, height: 40)
                    Circle().fill(B2DStyle.orange).frame(width: 7, height: 7).offset(x: -8, y: 8)
                }
            }
            .buttonStyle(.plain)
            Button { showingProfile = true } label: {
                Circle().fill(B2DStyle.lime).frame(width: 40, height: 40)
                    .overlay(Text("G").font(.system(size: 15, weight: .bold)).foregroundStyle(B2DStyle.green))
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Open profile and preferences")
        }
    }

    private var welcomeCard: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack {
                Label("YOUR NEXT CHAPTER", systemImage: "sparkle")
                    .font(.system(size: 10, weight: .bold)).tracking(1.1)
                    .foregroundStyle(B2DStyle.lime)
                Spacer()
                Text("YOUR JOURNEY").font(.system(size: 8, weight: .heavy)).tracking(0.8).foregroundStyle(B2DStyle.green)
                    .padding(.horizontal, 10).padding(.vertical, 7)
                    .background(B2DStyle.lime, in: Capsule())
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(selectedStage == "Still in India" ? "Getting ready for" : "You made it to").font(.system(size: 25, weight: .medium, design: .rounded)).foregroundStyle(.white)
                Text(selectedCity.name + ".").font(.system(size: 33, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.lime)
            }
            Text("One step at a time. Here’s what matters next.")
                .font(.system(size: 13)).foregroundStyle(.white.opacity(0.76))
            HStack(spacing: 10) {
                Label(selectedCity.name, systemImage: "mappin.and.ellipse")
                Rectangle().fill(.white.opacity(0.25)).frame(width: 1, height: 16)
                Label(selectedTrack, systemImage: "person")
                Spacer()
                Button { showingAllCities = true } label: {
                    Image(systemName: "chevron.down").font(.system(size: 11, weight: .bold))
                        .foregroundStyle(B2DStyle.ink).frame(width: 28, height: 28).background(B2DStyle.lime, in: Circle())
                }.buttonStyle(.plain)
            }
            .font(.system(size: 11, weight: .semibold)).foregroundStyle(.white.opacity(0.86))
        }
        .padding(20)
        .background {
            ZStack(alignment: .topTrailing) {
                RoundedRectangle(cornerRadius: 23).fill(B2DStyle.green)
                Circle().stroke(.white.opacity(0.08), lineWidth: 1).frame(width: 170, height: 170).offset(x: 45, y: -70)
                Circle().stroke(.white.opacity(0.08), lineWidth: 1).frame(width: 125, height: 125).offset(x: 10, y: -48)
            }.clipShape(RoundedRectangle(cornerRadius: 23))
        }
    }

    private var journeyPicker: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Your journey").font(.system(size: 17, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
                Spacer()
                Menu {
                    ForEach(["Still in India", "Just arrived", "Living in Germany"], id: \.self) { stage in
                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) { selectedStage = stage }
                        } label: {
                            if selectedStage == stage {
                                Label(stage, systemImage: "checkmark")
                            } else {
                                Text(stage)
                            }
                        }
                    }
                } label: {
                    Label("Change", systemImage: "chevron.down")
                        .font(.system(size: 10, weight: .semibold)).foregroundStyle(B2DStyle.green)
                }
            }
            HStack(spacing: 8) {
                journeyChip("Still in India", icon: "airplane", active: selectedStage == "Still in India")
                journeyChip("Just arrived", icon: "figure.walk", active: selectedStage == "Just arrived")
                journeyChip("Living in Germany", icon: "house", active: selectedStage == "Living in Germany" || selectedStage == "Student life")
            }
            HStack {
                Text("I’m here as").font(.system(size: 10, weight: .medium)).foregroundStyle(B2DStyle.muted)
                Menu {
                    ForEach(["Student", "Opportunity Card", "Working / Blue Card", "Couple / Family", "Visitor (Schengen)"], id: \.self) { track in
                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) { selectedTrack = track }
                        } label: {
                            if selectedTrack == track {
                                Label(track, systemImage: "checkmark")
                            } else {
                                Text(track)
                            }
                        }
                    }
                } label: {
                    HStack(spacing: 5) {
                        Text(selectedTrack).font(.system(size: 10, weight: .bold))
                        Image(systemName: "chevron.down").font(.system(size: 8, weight: .bold))
                    }.foregroundStyle(B2DStyle.green).padding(.horizontal, 10).padding(.vertical, 7)
                        .background(B2DStyle.green.opacity(0.08), in: Capsule())
                }
                Spacer()
            }
        }
    }

    private func journeyChip(_ title: String, icon: String, active: Bool) -> some View {
        Button { selectedStage = title } label: {
            VStack(spacing: 8) {
                Image(systemName: icon).font(.system(size: 16, weight: .semibold))
                Text(title).font(.system(size: 10, weight: .semibold)).lineLimit(1).minimumScaleFactor(0.8)
            }
            .foregroundStyle(active ? .white : B2DStyle.muted)
            .frame(maxWidth: .infinity).frame(height: 65)
            .background(active ? B2DStyle.green : .white, in: RoundedRectangle(cornerRadius: 14))
            .overlay(RoundedRectangle(cornerRadius: 14).stroke(active ? B2DStyle.green : B2DStyle.line, lineWidth: 1))
        }.buttonStyle(.plain)
    }

    private var readinessSection: some View {
        VStack(alignment: .leading, spacing: 13) {
            sectionHeading(
                selectedStage == "Just arrived" ? "Your arrival checklist" :
                    selectedStage == "Still in India" ? "Before you go" :
                    selectedTrack == "Student" ? "Your student life checklist" : "Your work & settlement checklist",
                trailing: "\(completedCount) of \(tasks.count) done"
            )
            if selectedTrack == "Student" {
                studentFundingSection
            }
            if selectedTrack == "Student" && selectedStage == "Still in India" {
                studentUniversityFinder
            }
            VStack(spacing: 0) {
                ForEach(Array(tasks.enumerated()), id: \.element.id) { index, task in
                    HStack(spacing: 6) {
                        Button {
                            if selectedStage == "Still in India" {
                                selectedGuide = visaGuide(for: task)
                            } else {
                                selectedGuide = Guide(
                                    title: task.title,
                                    message: "\(task.detail). Check the official source or provider for current, individual requirements. This preview does not verify live rules."
                                )
                            }
                        } label: {
                            HStack(spacing: 12) {
                                Image(systemName: task.icon)
                                    .font(.system(size: 17, weight: .medium))
                                    .foregroundStyle(B2DStyle.green)
                                    .frame(width: 30)
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(task.title).font(.system(size: 13, weight: .semibold)).foregroundStyle(B2DStyle.ink)
                                    Text(task.detail).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                                }
                                Spacer(minLength: 4)
                                Image(systemName: "chevron.right").font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.muted.opacity(0.7))
                            }
                            .padding(.leading, 14).padding(.vertical, 13)
                            .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        .accessibilityHint("Opens guidance for this checklist item")

                        Button {
                            withAnimation(.spring(response: 0.3)) { toggleTask(task) }
                        } label: {
                            Image(systemName: task.isComplete ? "checkmark.circle.fill" : "circle")
                                .font(.system(size: 22, weight: .medium))
                                .foregroundStyle(task.isComplete ? B2DStyle.green : B2DStyle.muted.opacity(0.65))
                                .frame(width: 44, height: 48)
                                .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                        .accessibilityLabel(task.isComplete ? "Mark \(task.title) incomplete" : "Mark \(task.title) complete")
                    }
                    .padding(.trailing, 8)
                    if index < tasks.count - 1 { Rectangle().fill(B2DStyle.line).frame(height: 1).padding(.leading, 55) }
                }
                HStack(spacing: 8) {
                    Image(systemName: "info.circle")
                    Text(selectedStage == "Just arrived" && selectedTrack == "Student" ? "Check official mail after registration for tax correspondence." : "Requirements and timings vary; check the responsible official source.")
                    Spacer()
                }.font(.system(size: 10, weight: .medium)).foregroundStyle(B2DStyle.green)
                    .padding(13).background(B2DStyle.green.opacity(0.06))
            }
            .background(.white, in: RoundedRectangle(cornerRadius: 17))
            .overlay(RoundedRectangle(cornerRadius: 17).stroke(B2DStyle.line.opacity(0.8), lineWidth: 1))
            HStack(spacing: 9) {
                GeometryReader { proxy in
                    ZStack(alignment: .leading) {
                        Capsule().fill(B2DStyle.line).frame(height: 5)
                        Capsule().fill(B2DStyle.green).frame(width: proxy.size.width * CGFloat(completedCount) / CGFloat(tasks.count), height: 5)
                    }.frame(maxHeight: .infinity)
                }.frame(height: 6)
                Text("\(Int(Double(completedCount) / Double(tasks.count) * 100))%").font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.green)
            }
        }
    }

    private var studentUniversityFinder: some View {
        let universities: [(name: String, city: String, url: String)] = [
            ("Technical University of Munich (TUM)", "Munich", "https://www.tum.de/en/studies"),
            ("Ludwig Maximilian University of Munich (LMU)", "Munich", "https://www.lmu.de/en/study/"),
            ("Heidelberg University", "Heidelberg", "https://www.uni-heidelberg.de/en/study"),
            ("RWTH Aachen University", "Aachen", "https://www.rwth-aachen.de/go/id/bie/?lidx=1"),
            ("Karlsruhe Institute of Technology (KIT)", "Karlsruhe", "https://www.sle.kit.edu/english/vorstudium/"),
            ("Freie Universität Berlin", "Berlin", "https://www.fu-berlin.de/en/studium/index.html"),
            ("University of Bonn", "Bonn", "https://www.uni-bonn.de/en/studying"),
            ("University of Stuttgart", "Stuttgart", "https://www.uni-stuttgart.de/en/study/")
        ]

        return VStack(alignment: .leading, spacing: 13) {
            sectionHeading("Explore universities", trailing: "Student")
            Text("A starting list of well-known German universities. Choose by subject, course language, admission fit, costs and location—not ranking alone.")
                .font(.system(size: 11)).foregroundStyle(B2DStyle.muted)
                .fixedSize(horizontal: false, vertical: true)

            VStack(spacing: 0) {
                ForEach(Array(universities.enumerated()), id: \.offset) { index, university in
                    if let url = URL(string: university.url) {
                        Link(destination: url) {
                            HStack(spacing: 11) {
                                Image(systemName: "building.columns.fill")
                                    .font(.system(size: 14)).foregroundStyle(B2DStyle.green)
                                    .frame(width: 34, height: 34)
                                    .background(B2DStyle.lime.opacity(0.45), in: RoundedRectangle(cornerRadius: 10))
                                VStack(alignment: .leading, spacing: 3) {
                                    Text(university.name).font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.ink)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Text(university.city).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                                }
                                Spacer(minLength: 4)
                                Image(systemName: "arrow.up.right").font(.system(size: 9, weight: .bold)).foregroundStyle(B2DStyle.green)
                            }
                            .padding(.horizontal, 12).padding(.vertical, 9)
                            .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                    }
                    if index < universities.count - 1 {
                        Rectangle().fill(B2DStyle.line).frame(height: 1).padding(.leading, 56)
                    }
                }
            }
            .background(.white, in: RoundedRectangle(cornerRadius: 15))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(B2DStyle.line, lineWidth: 1))

            HStack(spacing: 9) {
                officialStudyLink(
                    title: "Search courses",
                    subtitle: "DAAD programme database",
                    icon: "magnifyingglass",
                    url: "https://www.daad.de/en/studying-in-germany/universities/all-degree-programmes/"
                )
                officialStudyLink(
                    title: "Apply with uni-assist",
                    subtitle: "My assist portal",
                    icon: "paperplane",
                    url: "https://my.uni-assist.de/"
                )
            }

            Link(destination: URL(string: "https://www.uni-assist.de/en/tools/uni-assist-universities/")!) {
                Label("Check which universities and courses use uni-assist", systemImage: "info.circle")
                    .font(.system(size: 10, weight: .semibold)).foregroundStyle(B2DStyle.green)
            }
            Text("Not every university or programme uses uni-assist. Confirm the route and deadline on the chosen programme’s official admissions page.")
                .font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(14).background(.white.opacity(0.65), in: RoundedRectangle(cornerRadius: 17))
        .overlay(RoundedRectangle(cornerRadius: 17).stroke(B2DStyle.line, lineWidth: 1))
    }

    private func officialStudyLink(title: String, subtitle: String, icon: String, url: String) -> some View {
        Link(destination: URL(string: url)!) {
            HStack(spacing: 8) {
                Image(systemName: icon).font(.system(size: 12, weight: .semibold))
                VStack(alignment: .leading, spacing: 2) {
                    Text(title).font(.system(size: 10, weight: .bold))
                    Text(subtitle).font(.system(size: 9)).opacity(0.78)
                }
                Spacer(minLength: 0)
            }
            .foregroundStyle(.white).padding(11)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(B2DStyle.green, in: RoundedRectangle(cornerRadius: 12))
        }
        .buttonStyle(.plain)
    }

    private var studentFundingSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            sectionHeading("Fund your studies", trailing: "Student")
            Text("Scholarships are competitive and often tied to a specific degree, subject or applicant profile. Check the call itself before relying on funding.")
                .font(.system(size: 11)).foregroundStyle(B2DStyle.muted)
                .fixedSize(horizontal: false, vertical: true)

            VStack(alignment: .leading, spacing: 8) {
                Text("BEFORE YOU START · PROGRAMME-SPECIFIC FUNDING")
                    .font(.system(size: 8, weight: .heavy)).tracking(0.5).foregroundStyle(B2DStyle.green)
                fundingOpportunity(
                    title: "DAAD Scholarship Database",
                    detail: "Filter by India, degree level and subject. Many awards support graduates, research or selected programmes—not every Bachelor’s or Master’s applicant.",
                    url: "https://www2.daad.de/deutschland/stipendium/datenbank/en/21148-scholarship-database/"
                )
                fundingOpportunity(
                    title: "Options for applicants from India",
                    detail: "Explore EPOS for selected development-related postgraduate courses, Helmut-Schmidt for public policy and governance, and KOSPIE for eligible IIT engineering students.",
                    url: "https://www.daad.in/en/study-research-in-germany/daad-verticals-in-south-asia/daad-scholarships-to-and-from-germany/scholarships-for-germany/"
                )
            }
            .padding(13).background(.white, in: RoundedRectangle(cornerRadius: 15))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(B2DStyle.line, lineWidth: 1))

            VStack(alignment: .leading, spacing: 8) {
                Text("AFTER YOU RECEIVE AN OFFER · UNIVERSITY FUNDING")
                    .font(.system(size: 8, weight: .heavy)).tracking(0.5).foregroundStyle(B2DStyle.green)
                fundingOpportunity(
                    title: "Deutschlandstipendium",
                    detail: "A competitive €300/month award at participating universities. Students of any nationality may be eligible; apply directly through your university.",
                    url: "https://www2.daad.de/deutschland/stipendium/datenbank/en/21148-scholarship-database/?detail=10000207"
                )
                Text("Also check your university’s scholarships, emergency grants and faculty awards; deadlines and eligibility are set locally.")
                    .font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(13).background(.white, in: RoundedRectangle(cornerRadius: 15))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(B2DStyle.line, lineWidth: 1))

            VStack(alignment: .leading, spacing: 7) {
                Label("Your application steps", systemImage: "checklist")
                    .font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.ink)
                fundingStep(number: "1", text: "Check nationality, degree, subject and experience requirements.")
                fundingStep(number: "2", text: "Note the scholarship deadline—it may be earlier than university admission.")
                fundingStep(number: "3", text: "Prepare the requested CV, transcripts, motivation letter and references.")
                fundingStep(number: "4", text: "Confirm award amount, duration and remaining visa funding with the official mission.")
            }
            .padding(13).background(B2DStyle.green.opacity(0.06), in: RoundedRectangle(cornerRadius: 14))
        }
        .padding(14).background(.white.opacity(0.65), in: RoundedRectangle(cornerRadius: 17))
        .overlay(RoundedRectangle(cornerRadius: 17).stroke(B2DStyle.line, lineWidth: 1))
    }

    private func fundingStep(number: String, text: String) -> some View {
        HStack(alignment: .top, spacing: 8) {
            Text(number).font(.system(size: 9, weight: .bold)).foregroundStyle(.white)
                .frame(width: 18, height: 18).background(B2DStyle.green, in: Circle())
            Text(text).font(.system(size: 10)).foregroundStyle(B2DStyle.ink)
                .fixedSize(horizontal: false, vertical: true)
            Spacer(minLength: 0)
        }
    }

    private func fundingOpportunity(title: String, detail: String, url: String) -> some View {
        Link(destination: URL(string: url)!) {
            HStack(alignment: .top, spacing: 10) {
                Image(systemName: "graduationcap.fill")
                    .font(.system(size: 13)).foregroundStyle(B2DStyle.green)
                    .frame(width: 30, height: 30)
                    .background(B2DStyle.lime.opacity(0.45), in: RoundedRectangle(cornerRadius: 9))
                VStack(alignment: .leading, spacing: 3) {
                    Text(title).font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.ink)
                    Text(detail).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer(minLength: 0)
                Image(systemName: "arrow.up.right").font(.system(size: 9, weight: .bold)).foregroundStyle(B2DStyle.green)
            }
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }

    private var localPulseSection: some View {
        VStack(alignment: .leading, spacing: 13) {
            HStack(alignment: .firstTextBaseline) {
                sectionHeading("Local pulse", trailing: nil)
                Spacer()
                Text("COMMUNITY SIGNALS").font(.system(size: 8, weight: .bold)).tracking(0.8).foregroundStyle(B2DStyle.muted)
            }
            HStack(spacing: 10) {
                pulseCard(icon: "calendar", title: "Anmeldung", value: selectedCity.anmeldung, detail: "not live data", tint: Color(red: 0.92, green: 0.95, blue: 0.82))
                pulseCard(icon: "house", title: "Housing tip", value: "Never pay", detail: "before viewing", tint: Color(red: 0.98, green: 0.90, blue: 0.83))
            }
        }
    }

    private func pulseCard(icon: String, title: String, value: String, detail: String, tint: Color) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: icon).font(.system(size: 14, weight: .semibold)).foregroundStyle(B2DStyle.green)
                .frame(width: 31, height: 31).background(tint, in: RoundedRectangle(cornerRadius: 10))
            Text(title).font(.system(size: 10, weight: .medium)).foregroundStyle(B2DStyle.muted)
            Text(value).font(.system(size: 16, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
            Text(detail).font(.system(size: 9, weight: .medium)).foregroundStyle(B2DStyle.muted)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(14).background(.white, in: RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(B2DStyle.line.opacity(0.8), lineWidth: 1))
    }

    private var safetyCard: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "shield.lefthalf.filled").font(.system(size: 17, weight: .semibold)).foregroundStyle(B2DStyle.orange)
                .frame(width: 36, height: 36).background(B2DStyle.orange.opacity(0.12), in: RoundedRectangle(cornerRadius: 11))
            VStack(alignment: .leading, spacing: 5) {
                Text("Rental scam shield").font(.system(size: 13, weight: .bold)).foregroundStyle(B2DStyle.ink)
                Text("No viewing? No deposit. A landlord asking for money before you see the flat is a red flag.")
                    .font(.system(size: 11)).foregroundStyle(B2DStyle.muted).fixedSize(horizontal: false, vertical: true)
                Button {
                    selectedGuide = Guide(
                        title: "Before you send a deposit",
                        message: "View the room in person or by live video, verify who you are paying, read the full contract, and confirm how the landlord will provide the Wohnungsgeberbestätigung. Never rely on a courier story or pressure to pay immediately. This checklist is general information, not legal advice."
                    )
                } label: {
                    HStack(spacing: 5) { Text("See all safety checks"); Image(systemName: "arrow.up.right") }
                        .font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.orange)
                }.buttonStyle(.plain).padding(.top, 2)
            }
            Spacer(minLength: 0)
        }
        .padding(15).background(Color(red: 1.0, green: 0.96, blue: 0.92), in: RoundedRectangle(cornerRadius: 17))
        .overlay(RoundedRectangle(cornerRadius: 17).stroke(B2DStyle.orange.opacity(0.16), lineWidth: 1))
    }

    private var communityCard: some View {
        let featured = localCommunityResources.first

        return VStack(alignment: .leading, spacing: 13) {
            sectionHeading("Find your people", trailing: "Explore")
            if let featured {
                communityResourceCard(featured)
            } else {
                HStack(spacing: 12) {
                    Image(systemName: "person.2.fill")
                        .font(.system(size: 19)).foregroundStyle(B2DStyle.green)
                        .frame(width: 48, height: 48).background(B2DStyle.lime.opacity(0.55), in: RoundedRectangle(cornerRadius: 13))
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Explore communities in \(selectedCity.name)")
                            .font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.ink)
                        Text("Browse nationwide networks and local student groups.")
                            .font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                    }
                }
            }
        }
        .padding(15).background(.white, in: RoundedRectangle(cornerRadius: 17))
        .overlay(RoundedRectangle(cornerRadius: 17).stroke(B2DStyle.line.opacity(0.8), lineWidth: 1))
    }

    @ViewBuilder
    private func communityResourceCard(_ resource: CommunityResource) -> some View {
        if let destination = URL(string: resource.url) {
            Link(destination: destination) {
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: resource.isNational ? "building.columns" : "hands.sparkles.fill")
                        .font(.system(size: 16, weight: .semibold)).foregroundStyle(B2DStyle.green)
                        .frame(width: 38, height: 38).background(B2DStyle.lime.opacity(0.5), in: RoundedRectangle(cornerRadius: 11))
                    VStack(alignment: .leading, spacing: 6) {
                        Text(resource.category.uppercased())
                            .font(.system(size: 8, weight: .heavy)).tracking(0.5).foregroundStyle(B2DStyle.green)
                        Text(resource.name).font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.ink)
                            .fixedSize(horizontal: false, vertical: true)
                        Text(resource.focus).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                            .fixedSize(horizontal: false, vertical: true)
                        Label(resource.contact, systemImage: resource.url.hasPrefix("mailto:") ? "envelope" : "link")
                            .font(.system(size: 9, weight: .semibold)).foregroundStyle(B2DStyle.green)
                            .textSelection(.enabled)
                    }
                    Spacer(minLength: 0)
                    Image(systemName: "arrow.up.right").font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.green)
                }
                .padding(13).background(.white, in: RoundedRectangle(cornerRadius: 15))
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(B2DStyle.line.opacity(0.8), lineWidth: 1))
                .contentShape(RoundedRectangle(cornerRadius: 15))
            }
            .buttonStyle(.plain)
            .accessibilityHint("Opens community contact or website")
        }
    }

    private var contributionCard: some View {
        HStack(spacing: 12) {
            Image(systemName: "heart.text.square.fill").font(.system(size: 21)).foregroundStyle(B2DStyle.green)
            VStack(alignment: .leading, spacing: 3) {
                Text("Help the next arrival").font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.ink)
                Text("Share what worked in your city.").font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
            }
            Spacer()
            Button { showingContribution = true } label: {
                Text("Share").font(.system(size: 10, weight: .bold)).foregroundStyle(.white)
                    .padding(.horizontal, 14).padding(.vertical, 9).background(B2DStyle.green, in: Capsule())
            }.buttonStyle(.plain)
        }.padding(15).background(B2DStyle.lime.opacity(0.35), in: RoundedRectangle(cornerRadius: 17))
    }

    private var footer: some View {
        HStack(spacing: 5) {
            Image(systemName: "checkmark.seal.fill")
            Text("Prototype sample content · Not live or verified. Confirm current rules with official sources.")
        }.font(.system(size: 9, weight: .medium)).foregroundStyle(B2DStyle.muted).frame(maxWidth: .infinity)
    }

    private func sectionHeading(_ title: String, trailing: String?) -> some View {
        HStack {
            Text(title).font(.system(size: 17, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
            Spacer()
            if let trailing {
                Text(trailing).font(.system(size: 10, weight: .semibold)).foregroundStyle(B2DStyle.green)
            }
        }
    }

    private var bottomBar: some View {
        HStack(spacing: 0) {
            tabButton("Home", icon: "square.grid.2x2.fill")
            tabButton("Explore", icon: "map")
            tabButton("Passport", icon: "rectangle.portrait")
            tabButton("Community", icon: "person.2")
        }
        .padding(.top, 10).padding(.bottom, 5)
        .background(.white)
        .overlay(alignment: .top) { Rectangle().fill(B2DStyle.line).frame(height: 1) }
    }

    private func tabButton(_ title: String, icon: String) -> some View {
        Button { selectedTab = title } label: {
            VStack(spacing: 5) {
                Image(systemName: icon).font(.system(size: 16, weight: selectedTab == title ? .semibold : .regular))
                Text(title).font(.system(size: 9, weight: selectedTab == title ? .bold : .medium))
            }
            .foregroundStyle(selectedTab == title ? B2DStyle.green : B2DStyle.muted.opacity(0.75))
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
        }.buttonStyle(.plain)
    }

    private var contributionSheet: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack {
                Text("A little local knowledge").font(.system(size: 21, weight: .bold, design: .rounded))
                Spacer()
                Button { showingContribution = false } label: {
                    Image(systemName: "xmark").font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.muted)
                        .frame(width: 32, height: 32).background(B2DStyle.cream, in: Circle())
                }.buttonStyle(.plain)
            }
            Text("What helped you settle in \(selectedCity.name)? Your quick tip can make someone else’s first week easier.")
                .font(.system(size: 14)).foregroundStyle(B2DStyle.muted)
            VStack(spacing: 10) {
                contributionOption("A housing platform", icon: "house")
                contributionOption("A local shop or community", icon: "basket")
                contributionOption("An arrival tip", icon: "lightbulb")
            }
            if let contributionChoice {
                Label("Selected: \(contributionChoice)", systemImage: "checkmark.circle.fill")
                    .font(.system(size: 11, weight: .semibold)).foregroundStyle(B2DStyle.green)
                Text("This is a preview only. Nothing is saved or shared yet.")
                    .font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
            }
            Spacer()
        }
        .padding(22).padding(.top, 16)
        .presentationDetents([.medium])
        .presentationDragIndicator(.visible)
    }

    private func contributionOption(_ title: String, icon: String) -> some View {
        Button { contributionChoice = title } label: {
            HStack(spacing: 12) {
                Image(systemName: icon).foregroundStyle(B2DStyle.green).frame(width: 32, height: 32).background(B2DStyle.lime.opacity(0.45), in: RoundedRectangle(cornerRadius: 9))
                Text(title).font(.system(size: 13, weight: .semibold)).foregroundStyle(B2DStyle.ink)
                Spacer()
                Image(systemName: "chevron.right").font(.system(size: 10, weight: .bold)).foregroundStyle(B2DStyle.muted)
            }.padding(11).background(.white, in: RoundedRectangle(cornerRadius: 13))
                .overlay(RoundedRectangle(cornerRadius: 13).stroke(B2DStyle.line, lineWidth: 1))
        }.buttonStyle(.plain)
    }

    private func guideSheet(_ guide: Guide) -> some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    Text(guide.title).font(.system(size: 21, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
                    Spacer()
                    Button { selectedGuide = nil } label: {
                        Image(systemName: "xmark").font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.muted)
                            .frame(width: 32, height: 32).background(B2DStyle.cream, in: Circle())
                    }.buttonStyle(.plain)
                }
                Text(guide.message).font(.system(size: 14)).foregroundStyle(B2DStyle.muted).fixedSize(horizontal: false, vertical: true)
                Label("Starter content · Verify current requirements", systemImage: "info.circle")
                    .font(.system(size: 10, weight: .medium)).foregroundStyle(B2DStyle.green)
                if let sourceURL = guide.sourceURL {
                    Link(destination: sourceURL) {
                        Label("Open official visa checklist", systemImage: "arrow.up.right")
                            .font(.system(size: 12, weight: .bold)).foregroundStyle(.white)
                            .padding(.horizontal, 15).padding(.vertical, 11)
                            .background(B2DStyle.green, in: Capsule())
                    }
                }
            }
            .padding(22).padding(.top, 16)
        }
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
    }

    private var profileSheet: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
            HStack(spacing: 12) {
                Circle().fill(B2DStyle.lime).frame(width: 50, height: 50)
                    .overlay(Text("G").font(.system(size: 20, weight: .bold)).foregroundStyle(B2DStyle.green))
                VStack(alignment: .leading, spacing: 4) {
                    Text("Guest profile").font(.system(size: 21, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
                    Text("Personalize your Germany guide").font(.system(size: 12)).foregroundStyle(B2DStyle.muted)
                }
                Spacer()
                Button { showingProfile = false } label: {
                    Image(systemName: "xmark").font(.system(size: 12, weight: .bold)).foregroundStyle(B2DStyle.muted)
                        .frame(width: 32, height: 32).background(B2DStyle.cream, in: Circle())
                }.buttonStyle(.plain)
            }

            profileSettingRow(title: "City", value: selectedCity.name, icon: "mappin.and.ellipse") {
                Menu {
                    ForEach(City.all) { city in
                        Button {
                            selectedCityCode = city.id
                        } label: {
                            if city == selectedCity {
                                Label(city.name, systemImage: "checkmark")
                            } else {
                                Text(city.name)
                            }
                        }
                    }
                } label: {
                    Image(systemName: "chevron.up.chevron.down").font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.green)
                }
            }

            profileSettingRow(title: "Journey stage", value: currentStageDisplayName, icon: "point.topleft.down.to.point.bottomright.curvepath") {
                Menu {
                    ForEach(["Still in India", "Just arrived", "Student life"], id: \.self) { stage in
                        Button(stage) { selectedStage = stage }
                    }
                } label: {
                    Image(systemName: "chevron.up.chevron.down").font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.green)
                }
            }

            profileSettingRow(title: "I’m here as", value: selectedTrack, icon: "person") {
                Menu {
                    ForEach(["Student", "Opportunity Card", "Working / Blue Card", "Couple / Family", "Visitor (Schengen)"], id: \.self) { track in
                        Button(track) { selectedTrack = track }
                    }
                } label: {
                    Image(systemName: "chevron.up.chevron.down").font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.green)
                }
            }

            HStack(alignment: .top, spacing: 10) {
                Image(systemName: "lock.shield").foregroundStyle(B2DStyle.green)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Saved on this device").font(.system(size: 11, weight: .bold)).foregroundStyle(B2DStyle.ink)
                    Text("There’s no account or cloud sync in this preview. Your preferences and checklist stay in this app on this device.")
                        .font(.system(size: 10)).foregroundStyle(B2DStyle.muted).fixedSize(horizontal: false, vertical: true)
                }
            }.padding(12).background(B2DStyle.green.opacity(0.07), in: RoundedRectangle(cornerRadius: 13))

            Button(role: .destructive) {
                showingResetConfirmation = true
            } label: {
                Label("Clear checklist progress", systemImage: "trash")
                    .font(.system(size: 12, weight: .semibold))
            }
            }
            .padding(22).padding(.top, 16)
        }
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
        .confirmationDialog("Clear checklist progress?", isPresented: $showingResetConfirmation, titleVisibility: .visible) {
            Button("Clear progress", role: .destructive) { completedTaskIDsRaw = "" }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("This removes the checklist ticks saved on this device.")
        }
    }

    private func profileSettingRow<Control: View>(
        title: String,
        value: String,
        icon: String,
        @ViewBuilder control: () -> Control
    ) -> some View {
        HStack(spacing: 11) {
            Image(systemName: icon).font(.system(size: 14, weight: .semibold)).foregroundStyle(B2DStyle.green)
                .frame(width: 32, height: 32).background(B2DStyle.lime.opacity(0.4), in: RoundedRectangle(cornerRadius: 9))
            VStack(alignment: .leading, spacing: 3) {
                Text(title).font(.system(size: 10, weight: .medium)).foregroundStyle(B2DStyle.muted)
                Text(value).font(.system(size: 12, weight: .semibold)).foregroundStyle(B2DStyle.ink)
            }
            Spacer()
            control()
        }
        .padding(11).background(.white, in: RoundedRectangle(cornerRadius: 13))
        .overlay(RoundedRectangle(cornerRadius: 13).stroke(B2DStyle.line, lineWidth: 1))
    }

    private var cityPickerSheet: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Choose your city")
                    .font(.system(size: 21, weight: .bold, design: .rounded)).foregroundStyle(B2DStyle.ink)
                Text("Search major cities and university towns across Germany.")
                    .font(.system(size: 13)).foregroundStyle(B2DStyle.muted)
                HStack(spacing: 9) {
                    Image(systemName: "magnifyingglass").foregroundStyle(B2DStyle.muted)
                    TextField("Search city or state", text: $citySearchText)
                        .font(.system(size: 14))
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.words)
                }
                .padding(12)
                .background(B2DStyle.cream, in: RoundedRectangle(cornerRadius: 12))

                if filteredCities.isEmpty {
                    Text("No cities found. Try another spelling or state name.")
                        .font(.system(size: 12)).foregroundStyle(B2DStyle.muted)
                        .padding(.vertical, 12)
                } else {
                    ForEach(filteredCities) { city in
                        Button {
                            selectedCityCode = city.id
                            showingAllCities = false
                            citySearchText = ""
                        } label: {
                            HStack {
                                Image(systemName: "mappin.circle.fill").foregroundStyle(B2DStyle.green)
                                VStack(alignment: .leading, spacing: 3) {
                                    Text(city.name).font(.system(size: 13, weight: .semibold)).foregroundStyle(B2DStyle.ink)
                                    Text(city.region).font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                                }
                                Spacer()
                                if city == selectedCity {
                                    Image(systemName: "checkmark.circle.fill").foregroundStyle(B2DStyle.green)
                                }
                            }
                            .padding(.vertical, 6)
                            .contentShape(Rectangle())
                        }
                        .buttonStyle(.plain)
                    }
                }
                Text("City choices are available broadly; local service details are still sample content.")
                    .font(.system(size: 10)).foregroundStyle(B2DStyle.muted)
                    .padding(.top, 4)
            }
            .padding(22).padding(.top, 16)
        }
        .presentationDetents([.medium, .large])
        .presentationDragIndicator(.visible)
        .onAppear { citySearchText = "" }
    }
}

#Preview {
    ContentView()
}
