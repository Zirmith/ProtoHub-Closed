local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;

getgenv().scriptversion = "0.0.2"

function getExploit()
    return identifyexecutor()
end

function getDay()
    curTime = os.time();
	return os.date('%A', curTime)
end

local day = getDay()
local exploit = getExploit()

local library = {}

library.Icons =  {
	["activity"] = "rbxassetid://7733655755",
	["add"] = "rbxassetid://3944675151",
	["add-circle"] = "rbxassetid://3605017115",
	["AED"] = "rbxassetid://4370336019",
	["airplane"] = "rbxassetid://4483363527",
	["airplay"] = "rbxassetid://7733655834",
	["alarm-check"] = "rbxassetid://7733655912",
	["alarm-clock"] = "rbxassetid://7733656100",
	["alarm-clock-off"] = "rbxassetid://7733656003",
	["alarm-minus"] = "rbxassetid://7733656164",
	["alarm-plus"] = "rbxassetid://7733658066",
	["album"] = "rbxassetid://7733658133",
	["album-2"] = "rbxassetid://4400695581",
	["alert"] = "rbxassetid://4370336704",
	["alert-circle"] = "rbxassetid://7733658271",
	["alert-octagon"] = "rbxassetid://7733658335",
	["alert-triangle"] = "rbxassetid://7733658504",
	["align-center"] = "rbxassetid://7733909776",
	["align-justify"] = "rbxassetid://7733661326",
	["align-left"] = "rbxassetid://7733911357",
	["align-right"] = "rbxassetid://7733663582",
	["anchor"] = "rbxassetid://7733911490",
	["android"] = "rbxassetid://3944664684",
	["android-head"] = "rbxassetid://4450736564",
	["aperture"] = "rbxassetid://7733666258",
	["apps"] = "rbxassetid://4483364237",
	["archive"] = "rbxassetid://7733911621",
	["arrow-big-down"] = "rbxassetid://7733668653",
	["arrow-big-left"] = "rbxassetid://7733911731",
	["arrow-big-right"] = "rbxassetid://7733671493",
	["arrow-big-up"] = "rbxassetid://7733671663",
	["arrow-down"] = "rbxassetid://7733672933",
	["arrow-down-circle"] = "rbxassetid://7733671763",
	["arrow-down-left"] = "rbxassetid://7733672282",
	["arrow-down-right"] = "rbxassetid://7733672831",
	["arrow-left"] = "rbxassetid://7733673136",
	["arrow-left-circle"] = "rbxassetid://7733673056",
	["arrow-right"] = "rbxassetid://7733673345",
	["arrow-right-circle"] = "rbxassetid://7733673229",
	["arrow-up"] = "rbxassetid://7733673717",
	["arrow-up-circle"] = "rbxassetid://7733673466",
	["arrow-up-left"] = "rbxassetid://7733673539",
	["arrow-up-right"] = "rbxassetid://7733673646",
	["asterisk"] = "rbxassetid://7733673800",
	["at-sign"] = "rbxassetid://7733673907",
	["attachment"] = "rbxassetid://4483345278",
	["award"] = "rbxassetid://7733673987",
	["axe"] = "rbxassetid://7733674079",
	["back"] = "rbxassetid://4370337241",
	["backspace"] = "rbxassetid://4483345463",
	["backup"] = "rbxassetid://4335477481",
	["backup-restore"] = "rbxassetid://4400696294",
	["banknote"] = "rbxassetid://7733674153",
	["bar-chart"] = "rbxassetid://7733674319",
	["bar-chart-2"] = "rbxassetid://7733674239",
	["barcode"] = "rbxassetid://4384394779",
	["battery"] = "rbxassetid://7733674820",
	["battery-charging"] = "rbxassetid://7733674402",
	["battery-full"] = "rbxassetid://7733674503",
	["battery-low"] = "rbxassetid://7733674589",
	["battery-medium"] = "rbxassetid://7733674731",
	["beaker"] = "rbxassetid://7733674922",
	["bell"] = "rbxassetid://7733911828",
	["bell-minus"] = "rbxassetid://7733675028",
	["bell-off"] = "rbxassetid://7733675107",
	["bell-plus"] = "rbxassetid://7733675181",
	["bell-ring"] = "rbxassetid://7733675275",
	["bike"] = "rbxassetid://7733678330",
	["binary"] = "rbxassetid://7733678388",
	["block"] = "rbxassetid://3944675664",
	["bluetooth"] = "rbxassetid://7733687147",
	["bluetooth-connected"] = "rbxassetid://7734110952",
	["bluetooth-off"] = "rbxassetid://7733914252",
	["bluetooth-searching"] = "rbxassetid://7733914320",
	["blur"] = "rbxassetid://4400696929",
	["blur-linear"] = "rbxassetid://4400698359",
	["blur-off"] = "rbxassetid://4400697855",
	["blur-radial"] = "rbxassetid://4400698963",
	["book"] = "rbxassetid://7733914390",
	["book-2"] = "rbxassetid://4330060040",
	["book-open"] = "rbxassetid://7733687281",
	["bookmark"] = "rbxassetid://7733692043",
	["bookmark-2"] = "rbxassetid://3605522284",
	["bookmark-minus"] = "rbxassetid://7733689754",
	["bookmark-plus"] = "rbxassetid://7734111084",
	["border-all"] = "rbxassetid://4483364408",
	["bot"] = "rbxassetid://7733916988",
	["box"] = "rbxassetid://7733917120",
	["box-select"] = "rbxassetid://7733696665",
	["briefcase"] = "rbxassetid://7733919017",
	["brush"] = "rbxassetid://7733701455",
	["bug"] = "rbxassetid://7733701545",
	["building"] = "rbxassetid://7733701625",
	["bus"] = "rbxassetid://7733701715",
	["calculator"] = "rbxassetid://7733919105",
	["calendar"] = "rbxassetid://7733919198",
	["camera"] = "rbxassetid://7733708692",
	["camera-off"] = "rbxassetid://7733919260",
	["cancel"] = "rbxassetid://4400699701",
	["candle"] = "rbxassetid://4483345607",
	["car"] = "rbxassetid://7733708835",
	["cast"] = "rbxassetid://7733919326",
	["CD"] = "rbxassetid://7734110220",
	["cellphone"] = "rbxassetid://4384403999",
	["charging"] = "rbxassetid://4370338095",
	["check"] = "rbxassetid://7733715400",
	["check-circle"] = "rbxassetid://7733919427",
	["check-circle-2"] = "rbxassetid://7733710700",
	["check-square"] = "rbxassetid://7733919526",
	["chevron-down"] = "rbxassetid://7733717447",
	["chevron-left"] = "rbxassetid://7733717651",
	["chevron-right"] = "rbxassetid://7733717755",
	["chevron-up"] = "rbxassetid://7733919605",
	["chevrons-down"] = "rbxassetid://7733720604",
	["chevrons-down-up"] = "rbxassetid://7733720483",
	["chevrons-left"] = "rbxassetid://7733720701",
	["chevrons-right"] = "rbxassetid://7733919682",
	["chevrons-up"] = "rbxassetid://7733723433",
	["chevrons-up-down"] = "rbxassetid://7733723321",
	["chrome"] = "rbxassetid://7733919783",
	["circle"] = "rbxassetid://7733919881",
	["clear"] = "rbxassetid://3944676352",
	["clipboard"] = "rbxassetid://7733734762",
	["clipboard-check"] = "rbxassetid://7733919947",
	["clipboard-list"] = "rbxassetid://7733920117",
	["clipboard-x"] = "rbxassetid://7733734668",
	["clock"] = "rbxassetid://7733734848",
	["cloud"] = "rbxassetid://7733746980",
	["cloud-2"] = "rbxassetid://4384402413",
	["cloud-alert"] = "rbxassetid://4384402990",
	["cloud-check"] = "rbxassetid://4384403532",
	["cloud-drizzle"] = "rbxassetid://7733920226",
	["cloud-fog"] = "rbxassetid://7733920317",
	["cloud-hail"] = "rbxassetid://7733920444",
	["cloud-lightning"] = "rbxassetid://7733741741",
	["cloud-moon"] = "rbxassetid://7733920519",
	["cloud-off"] = "rbxassetid://7733745572",
	["cloud-rain"] = "rbxassetid://7733746651",
	["cloud-rain-wind"] = "rbxassetid://7733746456",
	["cloud-snow"] = "rbxassetid://7733746798",
	["cloud-sun"] = "rbxassetid://7733746880",
	["clover"] = "rbxassetid://7733747233",
	["code"] = "rbxassetid://7733749837",
	["code-2"] = "rbxassetid://7733920644",
	["codepen"] = "rbxassetid://7733920768",
	["codesandbox"] = "rbxassetid://7733752575",
	["coffee"] = "rbxassetid://7733752630",
	["cogs"] = "rbxassetid://4483345737",
	["coins"] = "rbxassetid://7743866529",
	["coins-2"] = "rbxassetid://4483345875",
	["columns"] = "rbxassetid://7733757178",
	["command"] = "rbxassetid://7733924046",
	["commute"] = "rbxassetid://4335478275",
	["compare"] = "rbxassetid://4483363084",
	["compass"] = "rbxassetid://7733924216",
	["contact"] = "rbxassetid://7743866666",
	["contacts"] = "rbxassetid://4384401919",
	["contrast"] = "rbxassetid://7733764005",
	["copy"] = "rbxassetid://7733764083",
	["copyleft"] = "rbxassetid://7733764196",
	["copyright"] = "rbxassetid://7733764275",
	["copyright-2"] = "rbxassetid://3944676934",
	["corner-down-left"] = "rbxassetid://7733764327",
	["corner-down-right"] = "rbxassetid://7733764385",
	["corner-left-down"] = "rbxassetid://7733764448",
	["corner-left-up"] = "rbxassetid://7733764536",
	["corner-right-down"] = "rbxassetid://7733764605",
	["corner-right-up"] = "rbxassetid://7733764680",
	["corner-up-left"] = "rbxassetid://7733764800",
	["corner-up-right"] = "rbxassetid://7733764915",
	["cpu"] = "rbxassetid://7733765045",
	["create"] = "rbxassetid://3944677737",
	["creation"] = "rbxassetid://4483362748",
	["crop"] = "rbxassetid://7733765140",
	["cross"] = "rbxassetid://7733765224",
	["crosshair"] = "rbxassetid://7733765307",
	["crosshairs"] = "rbxassetid://4483345998",
	["crown"] = "rbxassetid://7733765398",
	["cube-scan"] = "rbxassetid://4483362458",
	["currency"] = "rbxassetid://7733765592",
	["database"] = "rbxassetid://7743866778",
	["delete"] = "rbxassetid://7733768142",
	["delete-2"] = "rbxassetid://4483361337",
	["delete-outline"] = "rbxassetid://4483362299",
	["delta"] = "rbxassetid://4400700924",
	["diamond"] = "rbxassetid://7723881066",
	["diskette"] = "rbxassetid://7072729672",
	["divide"] = "rbxassetid://7733769365",
	["divide-circle"] = "rbxassetid://7733769152",
	["divide-square"] = "rbxassetid://7733769261",
	["dollar-sign"] = "rbxassetid://7733770599",
	["dollar-sign-2"] = "rbxassetid://4400700509",
	["done"] = "rbxassetid://3944680095",
	["dots-horizontal"] = "rbxassetid://4384401360",
	["download"] = "rbxassetid://7733770755",
	["download-cloud"] = "rbxassetid://7733770689",
	["dribbble"] = "rbxassetid://7733770843",
	["droplet"] = "rbxassetid://7733770982",
	["droplets"] = "rbxassetid://7733771078",
	["edit"] = "rbxassetid://7733771472",
	["edit-2"] = "rbxassetid://7733771217",
	["edit-3"] = "rbxassetid://7733771361",
	["edit-4"] = "rbxassetid://4370186570",
	["electricity"] = "rbxassetid://7733771628",
	["electricity-off"] = "rbxassetid://7733771563",
	["equal"] = "rbxassetid://7733771811",
	["equal-not"] = "rbxassetid://7733771726",
	["equalizer"] = "rbxassetid://4384400812",
	["error"] = "rbxassetid://3944669799",
	["euro"] = "rbxassetid://7733771891",
	["expand"] = "rbxassetid://7733771982",
	["explore"] = "rbxassetid://4335479121",
	["explore-off"] = "rbxassetid://4335479658",
	["export"] = "rbxassetid://4400701343",
	["extension"] = "rbxassetid://4335480353",
	["external-link"] = "rbxassetid://7743866903",
	["eye"] = "rbxassetid://7733774602",
	["eye-off"] = "rbxassetid://7733774495",
	["face"] = "rbxassetid://4335480896",
	["face-id"] = "rbxassetid://4370335364",
	["fast-forward"] = "rbxassetid://7743867090",
	["favorite"] = "rbxassetid://4370033185",
	["favorite-border"] = "rbxassetid://4335482118",
	["feather"] = "rbxassetid://7733777166",
	["figma"] = "rbxassetid://7743867310",
	["file"] = "rbxassetid://7733793319",
	["file-check"] = "rbxassetid://7733779668",
	["file-check-2"] = "rbxassetid://7733779610",
	["file-code"] = "rbxassetid://7733779730",
	["file-digit"] = "rbxassetid://7733935829",
	["file-input"] = "rbxassetid://7733935917",
	["file-minus"] = "rbxassetid://7733936115",
	["file-minus-2"] = "rbxassetid://7733936010",
	["file-output"] = "rbxassetid://7733788742",
	["file-plus"] = "rbxassetid://7733788885",
	["file-plus-2"] = "rbxassetid://7733788816",
	["file-search"] = "rbxassetid://7733788966",
	["file-text"] = "rbxassetid://7733789088",
	["file-x"] = "rbxassetid://7733938136",
	["file-x-2"] = "rbxassetid://7743867554",
	["files"] = "rbxassetid://7743867811",
	["film"] = "rbxassetid://7733942579",
	["filter"] = "rbxassetid://7733798407",
	["filter_sort"] = "rbxassetid://4370342507",
	["fingerprint"] = "rbxassetid://3944703587",
	["flag"] = "rbxassetid://7733798691",
	["flag-2"] = "rbxassetid://3944688398",
	["flag-triangle-left"] = "rbxassetid://7733798509",
	["flag-triangle-right"] = "rbxassetid://7733798634",
	["flame"] = "rbxassetid://7733798747",
	["flashlight"] = "rbxassetid://7733798851",
	["flashlight-off"] = "rbxassetid://7733798799",
	["flask-conical"] = "rbxassetid://7733798901",
	["flask-round"] = "rbxassetid://7733798957",
	["flower"] = "rbxassetid://4483346149",
	["folder"] = "rbxassetid://7733799185",
	["folder-minus"] = "rbxassetid://7733799022",
	["folder-plus"] = "rbxassetid://7733799092",
	["forest"] = "rbxassetid://4370343755",
	["form-input"] = "rbxassetid://7733799275",
	["forward"] = "rbxassetid://7733799371",
	["framer"] = "rbxassetid://7733799486",
	["frown"] = "rbxassetid://7733799591",
	["function-square"] = "rbxassetid://7733799682",
	["gamepad"] = "rbxassetid://7733799901",
	["gamepad-2"] = "rbxassetid://7733799795",
	["gamepad-3"] = "rbxassetid://4384396122",
	["gamepad-circle"] = "rbxassetid://4384396714",
	["gauge"] = "rbxassetid://7733799969",
	["gavel"] = "rbxassetid://7733800044",
	["gem"] = "rbxassetid://7733942651",
	["ghost"] = "rbxassetid://7743868000",
	["GIF"] = "rbxassetid://3610246221",
	["gift"] = "rbxassetid://7733946818",
	["gift-2"] = "rbxassetid://4370344279",
	["gift-card"] = "rbxassetid://7733945018",
	["git-branch"] = "rbxassetid://7733949149",
	["git-branch-plus"] = "rbxassetid://7743868200",
	["git-commit"] = "rbxassetid://7743868360",
	["git-merge"] = "rbxassetid://7733952195",
	["git-pull-request"] = "rbxassetid://7733952287",
	["github"] = "rbxassetid://7733954058",
	["gitlab"] = "rbxassetid://7733954246",
	["glasses"] = "rbxassetid://7733954403",
	["globe"] = "rbxassetid://7733954760",
	["globe-2"] = "rbxassetid://7733954611",
	["globe-3"] = "rbxassetid://4370344717",
	["grab"] = "rbxassetid://7733954884",
	["grade"] = "rbxassetid://4335482575",
	["graduation-cap"] = "rbxassetid://7733955058",
	["grid"] = "rbxassetid://7733955179",
	["grip-horizontal"] = "rbxassetid://7733955302",
	["grip-vertical"] = "rbxassetid://7733955410",
	["hammer"] = "rbxassetid://7733955511",
	["hand"] = "rbxassetid://7733955740",
	["hand-metal"] = "rbxassetid://7733955664",
	["hard-drive"] = "rbxassetid://7733955793",
	["hard-hat"] = "rbxassetid://7733955850",
	["hash"] = "rbxassetid://7733955906",
	["haze"] = "rbxassetid://7733955969",
	["headphones"] = "rbxassetid://7733956063",
	["heart"] = "rbxassetid://7733956134",
	["heart-pulse"] = "rbxassetid://4483346354",
	["help-circle"] = "rbxassetid://7733956210",
	["hexagon"] = "rbxassetid://7743868527",
	["hexagon-2"] = "rbxassetid://7618136617",
	["highlighter"] = "rbxassetid://7743868648",
	["history"] = "rbxassetid://7733960880",
	["home"] = "rbxassetid://7733960981",
	["home-2"] = "rbxassetid://4370345144",
	["http"] = "rbxassetid://3610248649",
	["image"] = "rbxassetid://7733964126",
	["image-minus"] = "rbxassetid://7733963797",
	["image-off"] = "rbxassetid://7733963907",
	["image-plus"] = "rbxassetid://7733964016",
	["import"] = "rbxassetid://7733964240",
	["inbox"] = "rbxassetid://7733964370",
	["indent"] = "rbxassetid://7733964452",
	["indian-rupee"] = "rbxassetid://7733964536",
	["infinity"] = "rbxassetid://7733964640",
	["infinity-2"] = "rbxassetid://4370345701",
	["info"] = "rbxassetid://7733964719",
	["inspect"] = "rbxassetid://7733964808",
	["italic"] = "rbxassetid://7733964917",
	["jersey-pound"] = "rbxassetid://7733965029",
	["key"] = "rbxassetid://7733965118",
	["king"] = "rbxassetid://4370316039",
	["knight"] = "rbxassetid://4370316596",
	["landmark"] = "rbxassetid://7733965184",
	["language"] = "rbxassetid://3610245066",
	["languages"] = "rbxassetid://7733965249",
	["laptop"] = "rbxassetid://7733965386",
	["laptop-2"] = "rbxassetid://7733965313",
	["lasso"] = "rbxassetid://7733967892",
	["lasso-select"] = "rbxassetid://7743868832",
	["layers"] = "rbxassetid://7743868936",
	["layers-2"] = "rbxassetid://4384400106",
	["layout"] = "rbxassetid://7733970543",
	["layout-dashboard"] = "rbxassetid://7733970318",
	["layout-grid"] = "rbxassetid://7733970390",
	["layout-list"] = "rbxassetid://7733970442",
	["layout-template"] = "rbxassetid://7733970494",
	["library"] = "rbxassetid://7743869054",
	["life-buoy"] = "rbxassetid://7733973479",
	["lightbulb"] = "rbxassetid://7733975185",
	["lightbulb-off"] = "rbxassetid://7733975123",
	["link"] = "rbxassetid://7733978098",
	["link-2"] = "rbxassetid://7743869163",
	["link-2-off"] = "rbxassetid://7733975283",
	["link-3"] = "rbxassetid://4503342956",
	["link-off"] = "rbxassetid://3944689656",
	["list"] = "rbxassetid://7743869612",
	["list-checks"] = "rbxassetid://7743869317",
	["list-minus"] = "rbxassetid://7733980795",
	["list-ordered"] = "rbxassetid://7743869411",
	["list-plus"] = "rbxassetid://7733984995",
	["list-x"] = "rbxassetid://7743869517",
	["loader"] = "rbxassetid://7733992358",
	["loader-2"] = "rbxassetid://7733989869",
	["locate"] = "rbxassetid://7733992469",
	["locate-fixed"] = "rbxassetid://7733992424",
	["lock"] = "rbxassetid://7733992528",
	["lock-2"] = "rbxassetid://3610239960",
	["lock-open"] = "rbxassetid://3610242099",
	["log-in"] = "rbxassetid://7733992604",
	["log-out"] = "rbxassetid://7733992677",
	["mail"] = "rbxassetid://7733992732",
	["map"] = "rbxassetid://7733992829",
	["map-pin"] = "rbxassetid://7733992789",
	["maximize"] = "rbxassetid://7733992982",
	["maximize-2"] = "rbxassetid://7733992901",
	["megaphone"] = "rbxassetid://7733993049",
	["meh"] = "rbxassetid://7733993147",
	["memory"] = "rbxassetid://4384394237",
	["menu"] = "rbxassetid://7733993211",
	["menu-2"] = "rbxassetid://4370318685",
	["menu-four"] = "rbxassetid://4370319235",
	["message-circle"] = "rbxassetid://7733993311",
	["message-square"] = "rbxassetid://7733993369",
	["mic"] = "rbxassetid://7743869805",
	["mic-off"] = "rbxassetid://7743869714",
	["minimize"] = "rbxassetid://7733997941",
	["minimize-2"] = "rbxassetid://7733997870",
	["minus"] = "rbxassetid://7734000129",
	["minus-circle"] = "rbxassetid://7733998053",
	["minus-square"] = "rbxassetid://7743869899",
	["monitor"] = "rbxassetid://7734002839",
	["monitor-off"] = "rbxassetid://7734000184",
	["monitor-speaker"] = "rbxassetid://7743869988",
	["moon"] = "rbxassetid://7743870134",
	["more-horizontal"] = "rbxassetid://7734006080",
	["more-vertical"] = "rbxassetid://7734006187",
	["mountain"] = "rbxassetid://7734008868",
	["mountain-snow"] = "rbxassetid://7743870286",
	["mouse-pointer"] = "rbxassetid://7743870392",
	["mouse-pointer-2"] = "rbxassetid://7734010405",
	["mouse-pointer-click"] = "rbxassetid://7734010488",
	["move"] = "rbxassetid://7743870731",
	["move-diagonal"] = "rbxassetid://7743870505",
	["move-diagonal-2"] = "rbxassetid://7734013178",
	["move-horizontal"] = "rbxassetid://7734016210",
	["move-vertical"] = "rbxassetid://7743870608",
	["music"] = "rbxassetid://7734020554",
	["navigation"] = "rbxassetid://7734020989",
	["navigation-2"] = "rbxassetid://7734020942",
	["network"] = "rbxassetid://7734021047",
	["notification"] = "rbxassetid://3944670656",
	["octagon"] = "rbxassetid://7734021165",
	["on-charge"] = "rbxassetid://7734021231",
	["online"] = "rbxassetid://4370317928",
	["opacity"] = "rbxassetid://4335483334",
	["option"] = "rbxassetid://7734021300",
	["outdent"] = "rbxassetid://7734021384",
	["package"] = "rbxassetid://7734021469",
	["paint"] = "rbxassetid://4384393547",
	["palette"] = "rbxassetid://7734021595",
	["palette-2"] = "rbxassetid://4335483762",
	["palette-swatch"] = "rbxassetid://4400704299",
	["palm-scan"] = "rbxassetid://4370334869",
	["paperclip"] = "rbxassetid://7734021680",
	["pause"] = "rbxassetid://7734021897",
	["pause-circle"] = "rbxassetid://7734021767",
	["pause-octagon"] = "rbxassetid://7734021827",
	["pen-tool"] = "rbxassetid://7734022041",
	["pencil"] = "rbxassetid://7734022107",
	["percent"] = "rbxassetid://7743870852",
	["person-standing"] = "rbxassetid://7743871002",
	["pets"] = "rbxassetid://3610237052",
	["phone"] = "rbxassetid://7734032056",
	["phone-2"] = "rbxassetid://4506892591",
	["phone-call"] = "rbxassetid://7734027264",
	["phone-forwarded"] = "rbxassetid://7734027345",
	["phone-incoming"] = "rbxassetid://7743871120",
	["phone-missed"] = "rbxassetid://7734029465",
	["phone-off"] = "rbxassetid://7734029534",
	["phone-outgoing"] = "rbxassetid://7743871253",
	["photo-camera"] = "rbxassetid://4335484343",
	["pie-chart"] = "rbxassetid://7734034378",
	["piggy-bank"] = "rbxassetid://7734034513",
	["pin"] = "rbxassetid://4384392959",
	["pipette"] = "rbxassetid://7743871384",
	["plane"] = "rbxassetid://7734037723",
	["play"] = "rbxassetid://7743871480",
	["play-circle"] = "rbxassetid://7734037784",
	["plus"] = "rbxassetid://7734042071",
	["plus-circle"] = "rbxassetid://7734040271",
	["plus-square"] = "rbxassetid://7734040369",
	["pocket"] = "rbxassetid://7734042139",
	["podcast"] = "rbxassetid://7734042234",
	["pointer"] = "rbxassetid://7734042307",
	["pound-sterling"] = "rbxassetid://7734042354",
	["power"] = "rbxassetid://7734042493",
	["power-off"] = "rbxassetid://7734042423",
	["print"] = "rbxassetid://4377193226",
	["printer"] = "rbxassetid://7734042580",
	["qr-code"] = "rbxassetid://7743871575",
	["QRcode-scan"] = "rbxassetid://4384395384",
	["quote"] = "rbxassetid://7734045100",
	["radar"] = "rbxassetid://4384392464",
	["radio"] = "rbxassetid://7743871662",
	["radio-2"] = "rbxassetid://4370305054",
	["radio-receiver"] = "rbxassetid://7734045155",
	["radio-tower"] = "rbxassetid://4370305588",
	["redo"] = "rbxassetid://7743871739",
	["redo-2"] = "rbxassetid://3944702361",
	["refresh"] = "rbxassetid://4335476290",
	["refresh-ccw"] = "rbxassetid://7734050715",
	["refresh-cw"] = "rbxassetid://7734051052",
	["regex"] = "rbxassetid://7734051188",
	["remove"] = "rbxassetid://4370317406",
	["repeat"] = "rbxassetid://7734051454",
	["repeat-1"] = "rbxassetid://7734051342",
	["reply"] = "rbxassetid://7734051594",
	["reply-2"] = "rbxassetid://3944691398",
	["reply-all"] = "rbxassetid://7734051524",
	["reply-all-2"] = "rbxassetid://3944691867",
	["restart"] = "rbxassetid://4370306254",
	["rewind"] = "rbxassetid://7734051670",
	["rhombus"] = "rbxassetid://4384405947",
	["rocking-chair"] = "rbxassetid://7734051769",
	["rotate-90"] = "rbxassetid://4384406773",
	["rotate-ccw"] = "rbxassetid://7734051861",
	["rotate-cw"] = "rbxassetid://7734051957",
	["rss"] = "rbxassetid://7734052075",
	["ruler"] = "rbxassetid://7734052157",
	["russian-ruble"] = "rbxassetid://7734052248",
	["save"] = "rbxassetid://7734052335",
	["scale"] = "rbxassetid://7734052454",
	["schedule"] = "rbxassetid://4335484884",
	["scissors"] = "rbxassetid://7734052570",
	["screen-share"] = "rbxassetid://7734052814",
	["screen-share-off"] = "rbxassetid://7734052653",
	["search"] = "rbxassetid://7734052925",
	["search-2"] = "rbxassetid://3605509925",
	["send"] = "rbxassetid://7734053039",
	["send-2"] = "rbxassetid://3944690667",
	["separator-horizontal"] = "rbxassetid://7734053146",
	["separator-vertical"] = "rbxassetid://7734053213",
	["server"] = "rbxassetid://7734053426",
	["server-crash"] = "rbxassetid://7734053281",
	["server-off"] = "rbxassetid://7734053361",
	["settings"] = "rbxassetid://7734053495",
	["settings-2"] = "rbxassetid://3605022185",
	["share"] = "rbxassetid://7734053697",
	["share-2"] = "rbxassetid://7734053595",
	["sheet"] = "rbxassetid://7743871876",
	["shield"] = "rbxassetid://7734056608",
	["shield-alert"] = "rbxassetid://7734056326",
	["shield-check"] = "rbxassetid://7734056411",
	["shield-close"] = "rbxassetid://7734056470",
	["shield-off"] = "rbxassetid://7734056540",
	["shirt"] = "rbxassetid://7734056672",
	["shopping-bag"] = "rbxassetid://7734056747",
	["shopping-cart"] = "rbxassetid://7734056813",
	["shovel"] = "rbxassetid://7734056878",
	["shrink"] = "rbxassetid://7734056971",
	["shuffle"] = "rbxassetid://7734057059",
	["sidebar"] = "rbxassetid://7734058260",
	["sidebar-close"] = "rbxassetid://7734058092",
	["sidebar-open"] = "rbxassetid://7734058165",
	["sigma"] = "rbxassetid://7734058345",
	["skip-back"] = "rbxassetid://7734058404",
	["skip-forward"] = "rbxassetid://7734058495",
	["skip-next"] = "rbxassetid://4384407160",
	["skip-previous"] = "rbxassetid://4384407582",
	["skull"] = "rbxassetid://7734058599",
	["slack"] = "rbxassetid://7072722471",
	["slash"] = "rbxassetid://7072722603",
	["sliders"] = "rbxassetid://7734058803",
	["smartphone"] = "rbxassetid://7734058979",
	["smartphone-charging"] = "rbxassetid://7734058894",
	["smile"] = "rbxassetid://7734059095",
	["snowflake"] = "rbxassetid://7734059180",
	["snowflake-2"] = "rbxassetid://4384392025",
	["sort"] = "rbxassetid://3944704135",
	["sort-asc"] = "rbxassetid://7734060715",
	["sort-desc"] = "rbxassetid://7743871973",
	["speaker"] = "rbxassetid://7734063416",
	["speech"] = "rbxassetid://4370313618",
	["sprout"] = "rbxassetid://7743872071",
	["square"] = "rbxassetid://7743872181",
	["stack"] = "rbxassetid://4370346095",
	["star"] = "rbxassetid://7734068321",
	["star-half"] = "rbxassetid://7734068258",
	["stop-circle"] = "rbxassetid://7734068379",
	["strikethrough"] = "rbxassetid://7734068425",
	["sun"] = "rbxassetid://7734068495",
	["sunrise"] = "rbxassetid://7743872365",
	["sunset"] = "rbxassetid://7734070982",
	["swiss-franc"] = "rbxassetid://7734071038",
	["switch"] = "rbxassetid://4400702457",
	["switch-camera"] = "rbxassetid://7743872492",
	["switch-off"] = "rbxassetid://4400702947",
	["synchronize"] = "rbxassetid://4370226511",
	["table"] = "rbxassetid://7734073253",
	["tablet"] = "rbxassetid://7743872620",
	["tag"] = "rbxassetid://7734075797",
	["target"] = "rbxassetid://7743872758",
	["taxi"] = "rbxassetid://4506892784",
	["tent"] = "rbxassetid://7734078943",
	["terminal"] = "rbxassetid://7743872929",
	["terminal-square"] = "rbxassetid://7734079055",
	["texture"] = "rbxassetid://4335485422",
	["thermometer"] = "rbxassetid://7734084149",
	["thermometer-snowflake"] = "rbxassetid://7743873074",
	["thermometer-sun"] = "rbxassetid://7734084018",
	["thumbs-down"] = "rbxassetid://7734084236",
	["thumbs-up"] = "rbxassetid://7743873212",
	["ticket"] = "rbxassetid://7734086558",
	["timer"] = "rbxassetid://7743873443",
	["timer-2"] = "rbxassetid://4335485957",
	["timer-off"] = "rbxassetid://4335486524",
	["timer-reset"] = "rbxassetid://7743873336",
	["toggle-left"] = "rbxassetid://7734091286",
	["toggle-right"] = "rbxassetid://7743873539",
	["tonality"] = "rbxassetid://4335487169",
	["tool"] = "rbxassetid://7072723685",
	["tornado"] = "rbxassetid://7743873633",
	["transform"] = "rbxassetid://4335487866",
	["translate"] = "rbxassetid://4335488543",
	["trash"] = "rbxassetid://7743873871",
	["trash-2"] = "rbxassetid://7743873772",
	["trello"] = "rbxassetid://7743873996",
	["trend-down"] = "rbxassetid://3944704985",
	["trend-flat"] = "rbxassetid://3944705374",
	["trend-up"] = "rbxassetid://3944705939",
	["trending-down"] = "rbxassetid://7743874143",
	["trending-up"] = "rbxassetid://7743874262",
	["triangle"] = "rbxassetid://7743874367",
	["truck"] = "rbxassetid://7743874482",
	["tune"] = "rbxassetid://4335489011",
	["tv"] = "rbxassetid://7743874674",
	["tv-2"] = "rbxassetid://7743874599",
	["type"] = "rbxassetid://7743874740",
	["typing"] = "rbxassetid://4370314188",
	["umbrella"] = "rbxassetid://7743874820",
	["underline"] = "rbxassetid://7743874904",
	["undo"] = "rbxassetid://7743874974",
	["undo-2"] = "rbxassetid://3944702835",
	["unfold-less"] = "rbxassetid://4400703447",
	["unfold-more"] = "rbxassetid://4400703888",
	["unlink"] = "rbxassetid://7743875149",
	["unlink-2"] = "rbxassetid://7743875069",
	["unlock"] = "rbxassetid://7743875263",
	["upgrade"] = "rbxassetid://4370346582",
	["upload"] = "rbxassetid://7743875428",
	["upload-cloud"] = "rbxassetid://7743875358",
	["user"] = "rbxassetid://7743875962",
	["user-check"] = "rbxassetid://7743875503",
	["user-minus"] = "rbxassetid://7743875629",
	["user-plus"] = "rbxassetid://7743875759",
	["user-x"] = "rbxassetid://7743875879",
	["users"] = "rbxassetid://7743876054",
	["verified"] = "rbxassetid://7743876142",
	["verified-user"] = "rbxassetid://4335489513",
	["vibrate"] = "rbxassetid://7743876302",
	["video"] = "rbxassetid://7743876610",
	["video-off"] = "rbxassetid://7743876466",
	["view"] = "rbxassetid://7743876754",
	["visibility"] = "rbxassetid://3610254229",
	["visibility-off"] = "rbxassetid://3610254425",
	["voicemail"] = "rbxassetid://7743876916",
	["volume"] = "rbxassetid://7743877487",
	["volume-1"] = "rbxassetid://7743877081",
	["volume-2"] = "rbxassetid://7743877250",
	["volume-x"] = "rbxassetid://7743877381",
	["vote"] = "rbxassetid://4400704837",
	["wallet"] = "rbxassetid://7743877573",
	["warning"] = "rbxassetid://3944668821",
	["watch"] = "rbxassetid://7743877668",
	["watch-2"] = "rbxassetid://4384391488",
	["webcam"] = "rbxassetid://7743877896",
	["wet"] = "rbxassetid://4370347078",
	["wifi"] = "rbxassetid://7743878148",
	["wifi-off"] = "rbxassetid://7743878056",
	["wind"] = "rbxassetid://7743878264",
	["wrench"] = "rbxassetid://7743878358",
	["x"] = "rbxassetid://7743878857",
	["x-circle"] = "rbxassetid://7743878496",
	["x-octagon"] = "rbxassetid://7743878618",
	["x-square"] = "rbxassetid://7743878737",
	["zoom-in"] = "rbxassetid://7743878977",
	["zoom-in-2"] = "rbxassetid://3610253578",
	["zoom-out"] = "rbxassetid://7743879082",
	["zoom-out-2"] = "rbxassetid://3610253853",
}

local exec_request
local exec_requestfont



local workspace = game:GetService("Workspace")
local repl = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local marketplace = game:GetService("MarketplaceService")
local runss = game:GetService("RunService")
local https = game:GetService("HttpService")
local UIS = game:GetService("UserInputService")

local player = players.LocalPlayer
local char = player.Character

repeat wait() until char:FindFirstChild("HumanoidRootPart")

local mouse = player:GetMouse()
local camera = workspace.CurrentCamera

local whitelists = {}
local loop_eject = {}
local toggl = {}
local client = {}
local doors = {}
local sounds = {}
local bruhmodeXD = {}


local anti_kick = getsenv(player.PlayerScripts.LocalScript)
local real_pcall = anti_kick.pcall

if game.PlaceId ~= 606849621 then return end

local getupvalue = debug.getupvalue or getupvalue or nil
local getupvalues = debug.getupvalues or getupvalues or nil
local setupvalue = debug.setupvalue or setupvalue or nil
local getconstants = debug.getconstants or getconstants or nil
local setconstant = debug.setconstant or setconstant or nil
local getproto = debug.getproto or getproto or nil
local islclosure = islclosure or is_l_closure or nil
local setreadonly = setreadonly or make_writeable or nil

anti_kick.pcall = function(f)
    for i,v in next, getupvalues(f) do
        if v == false then
            setupvalue(f,i,true)
        end
        anti_kick.pcall = real_pcall
        break
    end
    return real_pcall(f)
end

local mt = getrawmetatable(game)
local oldnewindex = mt.__newindex
local oldnc = mt.__namecall
setreadonly(mt, false)

local network = getupvalue(require(repl.Module.AlexChassis).SetEvent,1)
local isTeleporting = false
local crashchance = 10


require(repl.Game.ItemSystem.ItemSystem).Fake = function() end
getrenv().nigg = function() return 0/0 end

for i,v in next, require(repl.Resource.Settings).Sounds do
    table.insert(sounds, i)
end

local bread = require(repl.Game.Item.PlasmaPistol).ShootOther
local nigga1 = require(repl.Game.Item.Donut).InputBegan

for i,v in next, getconstants(nigga1) do
    if type(v):match("number") then
        setconstant(nigga1,19,"nigg")
    end
end

for i,v in next, getgc(true) do
    if type(v):match("function") then
        if getfenv(v).script == repl.Module.AlexChassis then
            for i2,v2 in next, getupvalues(v) do
                if type(v2):match("table") and rawget(v2, "OnAction") then
                    client.AutoDrive = v2.OnAction
                end
            end
        end
        if getfenv(v).script == player.PlayerScripts.LocalScript then
            for i2,v2 in next, getupvalues(v) do
                if type(v2):match("table") then
                    if rawget(v2, "IsFlying") then
                        local backup = v2.IsFlying
                        v2.IsFlying = function(...)
                            if toggl.antiragdoll or isTeleporting then
                                return tostring(getfenv(2).script) == "Falling"
                            end
                            return backup(...)
                        end
                    end
                end
            end
            local con = getconstants(v)
            if table.find(con, "Play") and table.find(con, "Source") and table.find(con, "FireServer") then
                client.PlaySounds = v
            end
            if table.find(con, "PlusCash") then
                client.GiveCash = v
            end
            if table.find(con, "OnVehicleExited") then
                client.LeaveVehicle = v
            end
            if table.find(con, "ShouldBreakout") and #con == 3 then
                client.Cops = v
                client.Breakout = getupvalue(getupvalue(client.Cops,3),2)
                client.Arrest = getupvalue(getupvalue(client.Cops,1),7)
            end
            if table.find(con, "SequenceRequireState") then 
                client.OpenDoor = v
            end
            if table.find(con, "Eject") and table.find(con, "MouseButton1Down") then
                client.Eject = getproto(v,1)
            end
        end
        if getfenv(v).script == repl.Game.TeamChooseUI then
            local con = getconstants(v)
            if table.find(con, "delay") and table.find(con, "assert") then
                local proto = getproto(v,6)
                client.changeteam = proto
            end
        end
       
        if getfenv(v).script == repl.Game.NukeControl then
            local con = getconstants(v)
            if table.find(con, "Nuke") and table.find(con, "Shockwave") then
                client.Nuke = v
            end
        end
    end
    if type(v):match("table") then
        if rawget(v, "MaxHeight") then
            client.MaxHeight = v
        end
        if rawget(v, "GetVehiclePacket") then
            client.gv = v.GetVehiclePacket
        end
        if rawget(v, "Nitro") and rawget(v, "NitroLastMax") then
            client.Nitro = v
        end
        if rawget(v, "Ragdoll") then
            client.rag = v
        end
        if rawget(v, "Part") and type(rawget(v, "Fun")):match("function") then
            if v.Part.Name == "Donut" then
                client.Donut = v.Fun
            elseif v.Part.Name == "JetPackGiver" then
                client.JetpackGiver = v.Fun
            end
        end
        if rawget(v, "Part") and type(rawget(v, "Callback")):match("function") then
            if v.Part.Name == "LiftGate" then
                client.LiftGate = v
            end
            if v.Part.Name == "ExplodeWall" then
                client.ExplodeWall = v
            end
            if v.Part.Name == "SewerHatch" then
                client.SewerHatch = v
            end
        end
        if rawget(v, "OpenFun") and rawget(v, "State") then
            table.insert(doors,v)
        end
        if rawget(v, "ItemData") then
            client.Guns = v.ItemData
        end
    end
end


client.Notify = function(callback)
    return require(game:GetService("ReplicatedStorage").Game.Notification).new(callback)
end

client.opendoors = (function()
    for i,v in next, getgc() do
        if type(v):match("function") and getfenv(v).script == player.PlayerScripts.LocalScript then
            local con = getconstants(v)
            if table.find(con, "SequenceRequireState") then
                return v
            end
        end
    end
end)()

spawn(function()
            while runss.Stepped:Wait() do
                if toggl.doors == true then
                    wait(1)
                    for i,v in next, doors do
                        client.opendoors(v)
                    end
                end
                if toggl.liftgate == true then
                    client.LiftGate:Callback(true)
                end
                if toggl.explodewall == true then
                    client.ExplodeWall:Callback(true)
                end
                if toggl.sewerhatch == true then
                    client.SewerHatch:Callback(true)
                end
                if toggl.carlights == true then
                    setupvalue(client.AutoDrive,3,true)
                    wait()
                    setupvalue(client.AutoDrive,3,false)
                end
                if toggl.annoyserver == true then
                    client.PlaySounds("FireworkBang", {
                        Source = workspace,
                        Volume = math.huge,
                        Multi = true
                    }, false)
                    client.PlaySounds("Horn", {
                        Source = workspace,
                        Pitch = math.huge,
                        Volume = math.huge,
                        Multi = true,
                        MaxTime = 0.1
                    }, false)
                end
            end
        end)



local function to_cop()
    if tostring(player.Team) == "Police" then return end
    for i,v in next, players:GetPlayers() do
        local oldpos = player.Character.HumanoidRootPart.CFrame
        if tostring(v.Team) == "Police" then
            for i=0, 20 do
                wait()
                player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                --client.Pickpocket(v)
            end
           -- player.Character.HumanoidRootPart.CFrame = oldpos
            break
        end
    end
end





local GUI = Mercury:Create{
    Name = "Proto Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Default,
    Link = "https://discord.com/users/"..player.DisplayName
}

getgenv().ProtoHub = GUI

function SpawnNotif(options)
    local config = options or {}
    local self = {}
    self.title = config['title']
    self.Text = config['text']
    self.time = config['time']
    self.callback = config['callback'] or function() end
    GUI:Notification{
        Title = self.title,
        Text = tostring(self.Text),
        Duration = self.time,
        Callback = self.callback
    }
end

GUI:set_status('Doing Pre-Checks')



repeat
    wait(); SpawnNotif({
        ['title'] = "Waiting",
        ['text'] = "Checking Executor",
        ['callback'] = function()
        if exploit == "Synapse" then
            exec_request = syn.request
			exec_requestfont = 'syn.request'
             SpawnNotif({
                    ['title'] = "Http Request Type",
                    ['text'] = "syn.request",
                    ['time'] = 2
                })
            else
                if exploit == "ScriptWare" then
                    exec_request = request
					exec_requestfont = 'request'
                      SpawnNotif({
                    ['title'] = "Http Request Type",
                    ['text'] = "request",
                    ['time'] = 2
                })
                end
        end
		GUI:set_status('Running On: '..exploit..' | Request Type: '..exec_requestfont)
		 SpawnNotif({
            ['title'] = "Looks, like, I was executed using",
                    ['text'] = "["..exploit.."]",
                    ['time'] = math.huge
            })

        end



    })

	
until game:IsLoaded()

  SpawnNotif({
            ['title'] = "Welcome Back | "..player.DisplayName,
                    ['text'] = "Today, feels like a ["..day.."]",
                    ['time'] = math.huge
            })


local Tab = GUI:Tab{
	Name = "Player",
	Icon = library.Icons["server"]
}





local Tab2 = GUI:Tab{
	Name = "Utilities",
	Icon = library.Icons["file"]
}


Tab2:Toggle{
	Name = "Master Switch",
	StartingState = false,
	Description = 'Toggle, Doors, Exploding Wall, Sewer, And Lift Gate to open, and close',
	Callback = function(state) 
		toggl.doors = state
	end
}

Tab2:Toggle{
	Name = "Open All Doors",
	StartingState = false,
	Description = 'Toggle, All Doors to open, and close',
	Callback = function(state) 
		 toggl.doors = state
	end
}

Tab2:Toggle{
	Name = "Open Lift Gate",
	StartingState = false,
	Description = 'Toggle, Lift Gate to open, and close',
	Callback = function(state) 
		toggl.liftgate = state
	end
}

Tab2:Toggle{
	Name = "Open Sewer Hatch",
	StartingState = false,
	Description = 'Toggle, Sewer Hatch to open, and close',
	Callback = function(state) 
		toggl.sewerhatch = state
	end
}

Tab2:Toggle{
	Name = "Toggle Exploding Wall",
	StartingState = false,
	Description = 'Toggle, Exploding to explode ofc',
	Callback = function(state) 
		toggl.explodewall = state
	end
}

local Tab3 = GUI:Tab{
	Name = "Misc",
	Icon = library.Icons["screen-share"]
}

Tab3:Textbox{
	Name = "Give Money",
	Callback = function(text) 
		client.GiveCash(tonumber(text), "Collected ")
    end
}




Tab3:Button{
	Name = "Teleport To Cop",
	Description = "Ask, you're self am I really going to use this?",
	Callback = function() 
		to_cop()
	end
}


local Tab3 = GUI:Tab{
	Name = "Vehicle Mods",
	Icon = library.Icons["navigation"]
}

local Tab4 = GUI:Tab{
	Name = "Robbery",
	Icon = library.Icons["gem"]
}

local Tab5 = GUI:Tab{
	Name = "Combat",
	Icon = library.Icons["target"]
}

local Tab6 = GUI:Tab{
	Name = "Config",
	Icon = library.Icons["wrench"]
}

Tab6:Toggle{
	Name = "Notify When New Script Version",
	StartingState = false,
	Description = 'Prompts, the user when a new verison of the script is ready',
	Callback = function(state) 
		toggl.scriptautonotify = state
	end
}



GUI:Prompt{
	Followup = true,
	Title = "v.0.2 | Core Update",
	Text = "We've Fixed Minor Issues with getting the keycard from cops, please update to enjoy.",
	Buttons = {
		Update = function()

			return true
		end,
		Cancel = function()
				


GUI:Prompt{
	Followup = true,
	Title = "Cancel Update",
	Text = "Are, you sure you want to cancel? Some features in this version may not work as intended",
	Buttons = {
		Cancel = function()
		SpawnNotif({
            ['title'] = "Update Status",
                    ['text'] = "User Canceled",
                    ['time'] = 4
            })
			return true
		end,
		Update = function()

			return false
		end
	}
}



			return false
		end
	}
}
