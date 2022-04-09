#!/bin/bash
 
# GrabPHONENUMBER
# Coded By AnnaQitty
 
# text style
 
BOLD='\e[1m'
 
#===== text color =====#
 
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAENTA='\033[0;35m'
 
LIGHTRED='\033[0;91m'
LIGHTGREEN='\033[0;92m'
LIGHTCYAN='\033[0;96m'
 
#===== background color =====#
 
BACKGREEN='\033[0;42m'
BACKBLUE='\033[0;44m'
 
#===== no style =====#
 
NC='\033[0m'
 
 
header(){
  printf "    ${LIGHTGREEN}       ___ ${NC}\n"
  printf "    ${LIGHTGREEN}     o|* *|o  ╔╦═╦╗╔╦╗╔╦═╦╗ ${NC}\n"
  printf "    ${LIGHTGREEN}     o|* *|o  ║║╔╣╚╝║║║║║║║ ${NC}\n"
  printf "    ${LIGHTGREEN}     o|* *|o  ║║╚╣╔╗║╚╝║╩║║ ${NC}\n"
  printf "    ${LIGHTGREEN}      \===/   ║╚═╩╝╚╩══╩╩╝║ ${NC}\n"
  printf "    ${LIGHTGREEN}       |||    ╚═══════════╝ ${NC}\n"
  printf "    ${LIGHTGREEN}       ||| ${NC}\n"
  printf "    ${LIGHTGREEN}       |||    ╔═╦═╦╦═╦╦═╗╔═╦╦══╦══╦╦╗ ${NC}\n"
  printf "    ${LIGHTGREEN}       |||    ║╩║║║║║║║╩║║╚║╠╗╔╩╗╔╩╗║ ${NC}\n"
  printf "    ${LIGHTGREEN}    ___|||___ ╚╩╩╩═╩╩═╩╩╝╚═╩╝╚╝ ╚╝ ╚╝ ${NC}\n"
}
 
#-----
clear
header
#-----
 
echo ""
echo "__________________________________________________________________________________"
echo ""
echo "Grab PHONE NUMBER"
echo "Coded By : AnnaQitty ( chua )"
echo "Date     : 28 July 2010"
echo "__________________________________________________________________________________"
echo ""
 
# end of banyol
 
echo "List of file on this directory : "
echo ""
 
ls
 
echo ""
echo "__________________________________________________________________________________"
 
# ---
 
echo ""
printf "[+] DB File List : ${LIGHTCYAN}"
read phonelist
printf "${NC}"
# ---
 
printf "[+] Result will save in : ${LIGHTCYAN}"
read save
printf "${NC}"
 
# ---
 
printf "[+] Making directory : "
 
if [[ ! -d "$save" ]]; then
  mkdir $save
  echo -e "${GREEN}[OK]${NC}"
else
  echo -e "${RED}[ERR]${NC} | ${RED}File Already Exists${NC}"
fi
 
echo ""
 
# ---
 
counter=$(wc -l < $phonelist)
echo -e "${NC}[+] Total lines : [${LIGHTGREEN}$counter${NC}]"
echo "[+] Cleaning your Phone Number list & removing duplicates Phone Number , Please wait ..."
 
# Code for cleaning phone list
grep -Eiorh '\(?\b[2-9][0-9]{2}\)?[-. ]?[2-9][0-9]{2}[-. ]?[0-9]{4}\b' $phonelist | sort | uniq > temp_list && mv temp_list $phonelist
# Lowering the word
cat $phonelist | awk '{print tolower($0)}' | sort | uniq > temp_list && mv temp_list $phonelist
# Removing duplicates line
sort -u $phonelist | uniq > temp_list && mv temp_list $phonelist
 
counter=$(wc -l < $phonelist)
 
echo ""
echo "[+] Done ~"
echo ""
echo -e "[+] You have [${LIGHTGREEN}$counter${NC}] Phone Number"
echo ""


#===== Country list here =====#

Afghanistan=( +93 )
Albania=( +355 )
Algeria=( +213 )
American_Samoa=( +1-684 )
Andorra=( +376 )
Angola=( +244 )
Anguilla=( +1-264 )
Antarctica=( +672 )
Antigua_Barbuda=( +1-268 )
Argentina=( +54 )
Armenia=( +374 )
Aruba=( +297 )
Australia=( +61 )
Austria=( +43 )
Azerbaijan=( +994 )
Bahamas=( +1-242 )
Bahrain=( +973 )
Bangladesh=( +880 )
Barbados=( +1-246 )
Belarus=( +375 )
Belgium=( +32 )
Belize=( +501 )
Benin=( +229 )
Bermuda=( +1-441 )
Bhutan=( +975 )
Bolivia=( +591 )
Bosnia_Herzegovina=( +387 )
Botswana=( +267 )
Brazil=( +55 )
Brunei=( +673 )
Bulgaria=( +359 )
Burkina_Faso=( +226 )
Burundi=( +257 )
Cambodia=( +855 )
Cameroon=( +237 )
Canada=( +1 )
Cape_Verde=( +238 )
Cayman_Islands=( +1-345 )
Central_African_Republic=( +236 )
Chad=( +235 )
Chile=( +56 )
China=( +86 )
Christmas_Island=( +53 )
Cocos=( +61 )
Colombia=( +57 )
Comoros=( +269 )
Congo=( +243 )
Congo=( +242 )
Cook_Islands=( +682 )
Costa_Rica=( +506 )
Cote_D_Ivoire=( +225 )
Croatia=( +385 )
Cuba=( +53 )
Cyprus=( +357 )
Czech_Republic=( +420 )
Denmark=( +45 )
Djibouti=( +253 )
Dominica=( +1-767 )
Dominican_Republic=( +1-809 +1-829  )
East_Timor=( +670 )
Ecuador=( +593  )
Egypt=( +20 )
El_Salvador=( +503 )
Equatorial_Guinea=( +240 )
Eritrea=( +291 )
Estonia=( +372 )
Ethiopia=( +251 )
Falkland_Islands=( +500 )
Faroe_Islands=( +298 )
Fiji=( +679 )
Finland=( +358 )
France=( +33 )
French_Guiana_or_French_Guyana=( +594 )
French_Polynesia=( +689 )
Gabon=( +241 )
Gambia=( +220 )
Georgia=( +995 )
Germany=( +49 )
Ghana=( +233 )
Gibraltar=( +350 )
Great_Britain=(  )
Greece=( +30 )
Greenland=( +299 )
Grenada=( +1-473 )
Guadeloupe=( +590 )
Guam=( +1-671 )
Guatemala=( +502 )
Guinea=( +224 )
Guinea_Bissau=( +245 )
Guyana=( +592 )
Haiti=( +509 )
Honduras=( +504 )
Hong_Kong=( +852 )
Hungary=( +36 )
Iceland=( +354 )
India=( +91 )
Indonesia=( +62 )
Iran=( +98 )
Iraq=( +964 )
Ireland=( +353 )
Israel=( +972 )
Italy=( +39 )
Jamaica=( +1-876 )
Japan=( +81 )
Jordan=( +962 )
Kazakstan_or_Kazakhstan=( +7 )
Kenya=( +254 )
Kiribati=( +686 )
Korea=( +850 )
Korea=( +82 )
Kuwait=( +965 )
Kyrgyzstan=( +996 )
Lao_People_Democratic_Republic=( +856 )
Latvia=( +371 )
Lebanon=( +961 )
Lesotho=( +266 )
Liberia=( +231 )
Libya=( +218 )
Liechtenstein=( +423 )
Lithuania=( +370 )
Luxembourg=( +352 )
Macau=( +853 )
Macedonia=( +389 )
Madagascar=( +261 )
Malawi=( +265 )
Malaysia=( +60 )
Maldives=( +960 )
Mali=( +223 )
Malta=( +356 )
Marshall_Islands=( +692 )
Martinique=( +596 )
Mauritania=( +222 )
Mauritius=( +230 )
Mayotte=( +269 )
Mexico=( +52 )
Micronesia=( +691 )
Moldova=( +373 )
Monaco=( +377 )
Mongolia=( +976 )
Montserrat=( +1-664 )
Morocco=( +212 )
Mozambique=( +258 )
Myanmar=( +95 )
Namibia=( +264 )
Nauru=( +674 )
Nepal=( +977 )
Netherlands=( +31 )
Netherlands_Antilles=( +599 )
New_Caledonia=( +687 )
New_Zealand=( +64 )
Nicaragua=( +505 )
Niger=( +227 )
Nigeria=( +234 )
Niue=( +683 )
Norfolk_Island=( +672 )
Northern_Mariana_Islands=( +1-670 )
Norway=( +47 )
Oman=( +968 )
Pakistan=( +92 )
Palau=( +680 )
Palestinian_State=( +970 )
Panama=( +507 )
Papua_New_Guinea=( +675 )
Paraguay=( +595 )
Peru=( +51 )
Philippines=( +63 )
Poland=( +48 )
Portugal=( +351 )
Puerto_Rico=( +1-787 +1-939 )
Qatar=( +974  )
Reunion=( +262 )
Romania=( +40 )
Russian_Federation=( +7 )
Rwanda=( +250 )
Saint_Helena=( +290 )
Saint_Kitts_and_Nevis=( +1-869 )
Saint_Lucia=( +1-758 )
Saint_Pierre_and_Miquelon=( +508 )
Saint_Vincent_and_the_Grenadines=( +1-784 )
Samoa=( +685 )
San_Marino=( +378 )
Sao_Tome_and_Principe=( +239 )
Saudi_Arabia=( +966 )
Senegal=( +221 )
Seychelles=( +248 )
Sierra_Leone=( +232 )
Singapore=( +65 )
Slovakia=( +421 )
Slovenia=( +386 )
Solomon_Islands=( +677 )
Somalia=( +252 )
South_Africa=( +27 )
Spain=( +34 )
Sri_Lanka=( +94 )
Sudan=( +249 )
Suriname=( +597 )
Swaziland=( +268 )
Sweden=( +46 )
Switzerland=( +41 )
Syria=( +963 )
Taiwan=( +886 )
Tajikistan=( +992 )
Tanzania=( +255 )
Thailand=( +66 )
Togo=(  )
Tokelau=( +690 )
Tonga=( +676 )
Trinidad_and_Tobago=( +1-868 )
Tunisia=( +216 )
Turkey=( +90 )
Turkmenistan=( +993 )
Turks_and_Caicos_Islands=( +1-649 )
Tuvalu=( +688 )
Uganda=( +256 )
Ukraine=( +380 )
United_Arab_Emirates=( +971 )
United_Kingdom=( +44 )
United_States=( +1 )
Uruguay=( +598 )
Uzbekistan=( +998 )
Vanuatu=( +678 )
Vatican_City_State=( +418 )
Venezuela=( +58 )
Vietnam=( +84 )
Virgin_Islands=( +1-284 )
Virgin_Islands=( +1-340 )
Wallis_Futuna_Islands=( +681 )
Western_Sahara=(  )
Yemen=( +967 )
Zambia=( +260 )
Zimbabwe=( +263 )

#==================== Tanpa Country Code list here =====================#

otherpath="phone_tanpacode.txt"
cp $phonelist "$save/$otherpath"


#==================== GREPING Afghanistan Phone Number =====================#
 
# ---
 
thispath="Afghanistan_Phone.txt"
 
# ---


echo "[+] Catch Afghanistan : "
echo "[+] I have list : "
for (( i = 0; i < ${#Afghanistan[@]}; i++ )); do
  echo "      [-] ${Afghanistan[$i]}"
done
echo ""
 
# --- Looping ---- #
 
for (( i = 0; i < ${#Afghanistan[@]}; i++ )); do
  phonetogrep="${Afghanistan[$i]}"
  printf "      [+] Catch $phonetogrep : "
  cat $phonelist | grep "$phonetogrep " | sort | uniq >> "$save/$thispath"
  cat "$save/$otherpath" | grep -v "$phonetogrep" | sort | uniq > "$save/tmp_other" && mv "$save/tmp_other" "$save/$otherpath"
  counter=$(cat "$save/$thispath" | grep -c "$phonetogrep")
  if [[ $counter != 0 ]]; then
    printf "${GREEN}[OK]${NC} | ${BLUE}$counter${NC} catched\n"
  else
    printf "${RED}[NO]${NC} | There is no ${BLUE}${phonetogrep}*${NC} Phone Number\n"
  fi
done
 
# --- Looping ---- #
 
counter=$(wc -l < "$save/$thispath")
echo ""
echo -e "[+] Finally you have [${LIGHTGREEN}$counter${NC}] Afghanistan Phone Number"
echo ""
 
# ---- END OF GREPING Afghanistan Phone Number---- #

#############################

# ---- OTHER PHONE ---- #
 
echo "[+] Other Phone"
 
counter=$(wc -l < "$save/$otherpath")
echo ""
echo -e "[+] Finally you have [${LIGHTGREEN}$counter${NC}] Other Phone"
echo ""
echo "[+] Done -"
echo ""
 
# ---- OTHER MAIL ----#
