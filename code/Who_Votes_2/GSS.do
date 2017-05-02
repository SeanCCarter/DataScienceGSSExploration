#delimit ;

   infix
      year     1 - 20
      partyid  21 - 40
      vote12   41 - 60
      relig    61 - 80
      happy    81 - 100
      health   101 - 120
      trust    121 - 140
      relpersn 141 - 160
      wwwhr    161 - 180
      ballot   181 - 200
      region   201 - 220
      born     221 - 240
      id_      241 - 260
      wrkstat  261 - 280
      hrs2     281 - 300
      wrkgovt  301 - 320
      industry 321 - 340
      age      341 - 360
      educ     361 - 380
      sex      381 - 400
      race     401 - 420
      sei10    421 - 440
using GSS.dat;

label variable year     "Gss year for this respondent                       ";
label variable partyid  "Political party affiliation";
label variable vote12   "Did r vote in 2012 election";
label variable relig    "Rs religious preference";
label variable happy    "General happiness";
label variable health   "Condition of health";
label variable trust    "Can people be trusted";
label variable relpersn "R consider self a religious person    ";
label variable wwwhr    "Www hours per week";
label variable ballot   "Ballot used for interview";
label variable region   "Region of interview";
label variable born     "Was r born in this country";
label variable id_      "Respondent id number";
label variable wrkstat  "Labor force status";
label variable hrs2     "Number of hours usually work a week";
label variable wrkgovt  "Govt or private employee";
label variable industry "Rs industry code   (1970)";
label variable age      "Age of respondent";
label variable educ     "Highest year of school completed";
label variable sex      "Respondents sex";
label variable race     "Race of respondent";
label variable sei10    "R's socioeconomic index (2010)";


label define gsp001x
   9        "No answer"
   8        "Don't know"
   7        "Other party"
   6        "Strong republican"
   5        "Not str republican"
   4        "Ind,near rep"
   3        "Independent"
   2        "Ind,near dem"
   1        "Not str democrat"
   0        "Strong democrat"
;
label define gsp002x
   9        "No answer"
   8        "Don't know"
   3        "Ineligible"
   2        "Did not vote"
   1        "Voted"
   0        "Not applicable"
;
label define gsp003x
   99       "No answer"
   98       "Don't know"
   13       "Inter-nondenominational"
   12       "Native american"
   11       "Christian"
   10       "Orthodox-christian"
   9        "Moslem/islam"
   8        "Other eastern"
   7        "Hinduism"
   6        "Buddhism"
   5        "Other"
   4        "None"
   3        "Jewish"
   2        "Catholic"
   1        "Protestant"
   0        "Not applicable"
;
label define gsp004x
   9        "No answer"
   8        "Don't know"
   3        "Not too happy"
   2        "Pretty happy"
   1        "Very happy"
   0        "Not applicable"
;
label define gsp005x
   9        "No answer"
   8        "Don't know"
   4        "Poor"
   3        "Fair"
   2        "Good"
   1        "Excellent"
   0        "Not applicable"
;
label define gsp006x
   9        "No answer"
   8        "Don't know"
   3        "Depends"
   2        "Cannot trust"
   1        "Can trust"
   0        "Not applicable"
;
label define gsp007x
   9        "No answer"
   8        "Dont know"
   4        "Not religious"
   3        "Slight religious"
   2        "Modrte religious"
   1        "Very religious"
   0        "Not applicable"
;
label define gsp008x
   999      "No answer"
   998      "Don't know"
   -1       "Not applicable"
;
label define gsp009x
   4        "Ballot d"
   3        "Ballot c"
   2        "Ballot b"
   1        "Ballot a"
   0        "Not applicable"
;
label define gsp010x
   9        "Pacific"
   8        "Mountain"
   7        "W. sou. central"
   6        "E. sou. central"
   5        "South atlantic"
   4        "W. nor. central"
   3        "E. nor. central"
   2        "Middle atlantic"
   1        "New england"
   0        "Not assigned"
;
label define gsp011x
   9        "No answer"
   8        "Don't know"
   2        "No"
   1        "Yes"
   0        "Not applicable"
;
label define gsp012x
   9        "No answer"
   8        "Other"
   7        "Keeping house"
   6        "School"
   5        "Retired"
   4        "Unempl, laid off"
   3        "Temp not working"
   2        "Working parttime"
   1        "Working fulltime"
   0        "Not applicable"
;
label define gsp013x
   99       "No answer"
   98       "Don't know"
   -1       "Not applicable"
;
label define gsp014x
   9        "No answer"
   8        "Don't know"
   2        "Private"
   1        "Government"
   0        "Not applicable"
;
label define gsp015x
   17       "Agricultural production"
   18       "Agricultural services, except horticultural"
   19       "Horticultural services"
   27       "Forestry"
   28       "Fisheries"
   47       "Metal mining"
   48       "Coal mining"
   49       "Crude petroleum and natural gas extractions"
   57       "Nonmetallic mining and quarrying, except fuel"
   67       "General building contractors"
   68       "General contractors, except building"
   69       "Special trade contractors"
   77       "Not specified construction"
   107      "Logging"
   108      "Sawmills, planing mills, and  mill work"
   109      "Miscellaneous wood products"
   118      "Furniture fixtures"
   119      "Glass and glass products"
   127      "Cement concrete, gypsum, and  plaster products"
   128      "Structural clay products"
   137      "Pottery and related products"
   138      "Miscellaneous nonmetallic mineral and stone products"
   139      "Blast furnaces, steel works, rolling and finishing mills"
   147      "Other primary iron and steel industries"
   148      "Primary aluminum industries"
   149      "Other primary nonferrous industries"
   157      "Cutlery, hand tools, and other hardware"
   158      "Fabricated structural metal products"
   159      "Screw machine products"
   167      "Metal stamping"
   168      "Miscellaneous fabricated metal products"
   169      "Not specified metal industries"
   177      "Engines and turbines"
   178      "Farm machinery and equipment"
   179      "Construction and material handling machines"
   187      "Metalworking machinery"
   188      "Office and accounting machines"
   189      "Electronic computing equipment"
   197      "Machinery, except electrical, n.e.c."
   198      "Not specified machinery"
   199      "Household appliances"
   207      "Radio, T.V., and communication equipment"
   208      "Electrical machinery, equipment, and supplies, n.e.c."
   209      "Not specified electrical machinery, equipment, and supplies"
   219      "Motor vehicles and motor vehicle equipment"
   227      "Aircraft and parts"
   228      "Ship and boat building and repairing"
   229      "Railroad locomotives and equipment"
   237      "Mobile dwellings and campers"
   238      "Cycles and miscellaneous transportation equipment"
   239      "Scientific and controlling instruments"
   247      "Optical and health services supplies"
   248      "Photographic equipment and supplies"
   249      "Watches, clocks, and clockwork-operated devices"
   257      "Not specified professional equipment"
   258      "Ordinance"
   259      "Miscellaneous manufacturing industries"
   268      "Meat products"
   269      "Dairy products"
   278      "Canning and preserving fruits, vegetables, and sea foods"
   279      "Grain-mill products"
   287      "Bakery products"
   288      "Confectionery and related products"
   289      "Beverage industries"
   297      "Miscellaneous food preparation and kindred products"
   298      "Not specified food industries"
   299      "Tobacco manufactures"
   307      "Knitting mills"
   308      "Dyeing and finishing textiles, except wool and knit goods"
   309      "Floor coverings, except hard surface"
   317      "Yarn, thread, and fabric mills"
   318      "Miscellaneous textile mill products"
   319      "Apparel and accessories"
   327      "Miscellaneous fabricated textile products"
   328      "Pulp, paper and paperboard mills"
   329      "Miscellaneous paper and pulp products"
   337      "Paperboard containers and boxes"
   338      "Newspaper publishing and printing"
   339      "Printing, publishing, and allied industries, except newspapers"
   347      "Industrial chemicals"
   348      "Plastics, synthetics and resins, except fibers"
   349      "Synthetic fibers"
   357      "Drugs and medicines"
   358      "Soaps and cosmetics"
   359      "Paints, varnishes, and related products"
   367      "Agricultural chemicals"
   368      "Miscellaneous chemicals"
   369      "Not specified chemicals and allied products"
   377      "Petroleum refining"
   378      "Miscellaneous petroleum and coal products"
   379      "Rubber products"
   387      "Miscellaneous plastic products"
   388      "Tanned, curried, and finished leather"
   389      "Footwear, except rubber"
   397      "Leather products, except footwear"
   398      "Not specified manufacturing industries"
   407      "Railroads and railway express"
   408      "Street railways and bus lines"
   409      "Taxicab service"
   417      "Trucking service"
   418      "Warehousing and storage"
   419      "Water transportation"
   427      "Air transportation"
   428      "Pipe lines, except natural gas"
   429      "Services incidental to transportation"
   447      "Radio broadcasting and television"
   448      "Telephone (wire and radio)"
   449      "Telegraph and miscellaneous communication services"
   467      "Electric light and power"
   468      "Electric-gas utilities"
   469      "Gas and steam supply systems"
   477      "Water supply"
   478      "Sanitary services"
   479      "Other and not specified utilities"
   507      "Motor vehicles and equipment"
   508      "Drugs, chemicals, and allied products"
   509      "Dry goods and apparel"
   527      "Food and related products"
   528      "Farm products-raw materials"
   529      "Electrical goods"
   537      "Hardware, plumbing, and heating supplies"
   538      "Not specified electrical and hardware products"
   539      "Machinery equipment and supplies"
   557      "Metals and minerals, n.e.c."
   558      "Petroleum products"
   559      "Scrap and waste materials"
   567      "Alcoholic beverages"
   568      "Paper and its products"
   569      "Lumber and construction materials"
   587      "Wholesalers, n.e.c."
   588      "Not specified wholesale trade"
   607      "Lumber and building material retailing"
   608      "Hardware and farm equipment stores"
   609      "Department and mail order establishments"
   617      "Limited price variety stores"
   618      "Vending machine operators"
   619      "Direct selling establishments"
   627      "Misc. general merchandise stores"
   628      "Grocery stores"
   629      "Dairy product stores"
   637      "Retail bakeries"
   638      "Food stores, n.e.c."
   639      "Motor vehicle dealers"
   647      "Tire, battery, and accessory dealers"
   648      "Gasoline service stations"
   649      "Miscellaneous vehicle dealers"
   657      "Apparel and accessories stores, except shoe stores"
   658      "Shoe stores"
   667      "Furniture and home furnishing stores"
   668      "Household appliances, TV, and radio stores"
   669      "Eating and drinking places"
   677      "Drug stores"
   678      "Liquor stores"
   679      "Farm and garden supply stores"
   687      "Jewelry stores"
   688      "Fuel and ice dealers"
   689      "Retail florists"
   697      "Miscellaneous retail stores"
   698      "Not specified retail trade"
   707      "Banking"
   708      "Credit agencies"
   709      "Security, commodity brokerage, and investment companies"
   717      "Insurance"
   718      "Real estate, incl. real estate-insurance-law offices"
   727      "Advertising"
   728      "Services to dwellings and other buildings"
   729      "Commercial research, development, and testing labs"
   737      "Employment and temporary help agencies"
   738      "Business management and consulting services"
   739      "Computer programming services"
   747      "Detective and protective services"
   748      "Business services, n.e.c."
   749      "Automobile services, except repair"
   757      "Automobile repair and related services"
   758      "Electrical repair shops"
   759      "Miscellaneous repair services"
   769      "Private households"
   777      "Hotels and motels"
   778      "Lodging places, except hotels and motels"
   779      "Laundering, cleaning, and other garment services"
   787      "Beauty shops"
   788      "Barber shops"
   789      "Shoe repair shops"
   797      "Dressmaking shops"
   798      "Miscellaneous personal services"
   807      "Theaters and motion pictures"
   808      "Bowling alleys, billiard and pool parlors"
   809      "Miscellaneous entertainment and recreation services"
   828      "Offices of physicians"
   829      "Offices of dentists"
   837      "Offices of chiropractors"
   838      "Hospitals"
   839      "Convalescent institutions"
   847      "Offices of health practitioners,n.e.c."
   848      "Health services, n.e.c."
   849      "Legal services"
   857      "Elementary and secondary schools"
   858      "Colleges and universities"
   859      "Libraries"
   867      "Educational services, n.e.c."
   868      "Not specified educational services"
   869      "Museums, art galleries, and zoos"
   877      "Religious organizations"
   878      "Welfare services"
   879      "Residential welfare facilities"
   887      "Nonprofit membership organizations"
   888      "Engineering and architectural services"
   889      "Accounting, auditing, and bookkeeping services"
   897      "Miscellaneous professional and related services"
   907      "Postal service"
   917      "Federal public administration"
   927      "State public administration"
   937      "Local public administration"
   IAP      "Not Applicable and No Answer"
;
label define gsp016x
   99       "No answer"
   98       "Don't know"
   89       "89 or older"
;
label define gsp017x
   99       "No answer"
   98       "Don't know"
   97       "Not applicable"
;
label define gsp018x
   2        "Female"
   1        "Male"
;
label define gsp019x
   3        "Other"
   2        "Black"
   1        "White"
   0        "Not applicable"
;


label values partyid  gsp001x;
label values vote12   gsp002x;
label values relig    gsp003x;
label values happy    gsp004x;
label values health   gsp005x;
label values trust    gsp006x;
label values relpersn gsp007x;
label values wwwhr    gsp008x;
label values ballot   gsp009x;
label values region   gsp010x;
label values born     gsp011x;
label values wrkstat  gsp012x;
label values hrs2     gsp013x;
label values wrkgovt  gsp014x;
label values industry gsp015x;
label values age      gsp016x;
label values educ     gsp017x;
label values sex      gsp018x;
label values race     gsp019x;


