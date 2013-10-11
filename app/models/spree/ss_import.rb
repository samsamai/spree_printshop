require 'spreadsheet'

Spreadsheet.client_encoding = 'UTF-8'



class Spree::SS_Import

@@combi_data = [ 
  ["Magazines & Booklets Portrait ", 1, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 2, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 3, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 4, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 5, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 6, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 7, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 8, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 9, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 10, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 11, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "115 gsm Coated Paper" }],
  
  ["Magazines & Booklets Portrait ", 12, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 13, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 14, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 15, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 16, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 17, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 18, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 19, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 20, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 21, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 22, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm Coated Paper" }],

  ["Magazines & Booklets Portrait ", 23, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 24, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 25, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 26, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 27, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 28, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 29, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 30, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 31, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 32, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 33, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "115 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Portrait ", 34, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 35, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 36, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 37, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 38, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 39, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 40, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 41, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 42, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 43, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 44, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Portrait ", 45, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 46, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 47, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 48, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 49, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 50, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 51, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 52, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 53, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 54, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 55, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  
  ["Magazines & Booklets Portrait ", 56, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 57, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 58, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 59, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 60, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 61, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 62, 25, 10000, "Booklets", { Size: "A4", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  
  ["Magazines & Booklets Portrait ", 63, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 64, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 65, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 66, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 67, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 68, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 69, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 70, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 71, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 72, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 73, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "115 gsm Coated Paper" }],
  
  ["Magazines & Booklets Portrait ", 74, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 75, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 76, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 77, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 78, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 79, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 80, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 81, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 82, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 83, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 84, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm Coated Paper" }],

  ["Magazines & Booklets Portrait ", 85, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 86, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 87, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 88, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 89, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 90, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 91, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 92, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 93, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 94, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Magazines & Booklets Portrait ", 95, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm Recycled Satin Artpaper" }],

  ["Magazines & Booklets Portrait ", 96, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 97, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 98, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 99, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 100, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 101, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 102, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 103, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 104, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 105, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 106, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "115 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Portrait ", 107, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 108, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 109, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 110, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 111, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 112, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 113, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 114, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 115, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 116, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 117, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Portrait ", 118, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 119, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 120, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 121, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 122, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "28pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 123, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "32pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 124, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "36pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 125, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "40pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 126, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "44pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Portrait ", 127, 25, 10000, "Booklets", { Size: "A5", Orientation: "Portrait", "Printed Pages" => "48pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  
  ["Magazines & Booklets Portrait ", 128, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 129, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 130, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 131, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 132, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "115 gsm Coated Paper" }],
  
  ["Magazines & Booklets Portrait ", 133, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "08pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 134, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "12pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 135, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "16pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 136, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "20pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Portrait ", 137, 25, 10000, "Booklets", { Size: "DL", Orientation: "Portrait", "Printed Pages" => "24pp", Paper: "150 gsm Coated Paper" }],
  
  ["Magazines & Booklets Landscape", 1, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "08pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 2, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 3, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 4, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 5, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 6, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 7, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 8, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "36pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 9, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "40pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 10, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "44pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 11, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "48pp", Paper: "115 gsm Coated Paper" }],
  
  ["Magazines & Booklets Landscape", 12, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "08pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 13, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 14, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 15, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 16, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 17, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 18, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 19, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "36pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 20, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "40pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 21, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "44pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 22, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "48pp", Paper: "150 gsm Coated Paper" }],

  ["Magazines & Booklets Landscape", 23, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 24, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 25, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 26, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 27, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 28, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "115 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Landscape", 29, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 30, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 31, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 32, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 33, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 34, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "150 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Landscape", 35, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 36, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 37, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 38, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 39, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 40, 25, 10000, "Booklets", { Size: "A4", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "150 gsm text, Laminated 250 gsm cover" }],

  ["Magazines & Booklets Landscape", 41, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "08pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 42, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 43, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 44, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 45, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 46, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "115 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 47, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "115 gsm Coated Paper" }],
  
  ["Magazines & Booklets Landscape", 48, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "08pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 49, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 50, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 51, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 52, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 53, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "150 gsm Coated Paper" }],
  ["Magazines & Booklets Landscape", 54, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "150 gsm Coated Paper" }],

  ["Magazines & Booklets Landscape", 55, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 56, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 57, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 58, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 59, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "115 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 60, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "115 gsm text, 250 gsm cover" }],
  
  ["Magazines & Booklets Landscape", 61, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "12pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 62, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "16pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 63, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "20pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 64, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "24pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 65, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "28pp", Paper: "150 gsm text, 250 gsm cover" }],
  ["Magazines & Booklets Landscape", 66, 25, 10000, "Booklets", { Size: "A5", Orientation: "Landscape", "Printed Pages" => "32pp", Paper: "150 gsm text, 250 gsm cover" }],
  
  ["Folded Brochures", 1, 25, 10000, "Brochures", { Size: "A4 folded", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["Folded Brochures", 2, 25, 10000, "Brochures", { Size: "A4 folded", "Double sided" => "No", Paper: "250 gsm" }],
  ["Folded Brochures", 3, 25, 10000, "Brochures", { Size: "A4 folded", "Double sided" => "Yes", Paper: "310 gsm" }],
  ["Folded Brochures", 4, 25, 10000, "Brochures", { Size: "A3 folded to A4", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["Folded Brochures", 5, 25, 10000, "Brochures", { Size: "A3 folded to A4", "Double sided" => "Yes", Paper: "170 gsm" }],
  ["Folded Brochures", 6, 25, 10000, "Brochures", { Size: "A3 folded to A4", "Double sided" => "Yes", Paper: "250 gsm" }],
  ["Folded Brochures", 7, 25, 10000, "Brochures", { Size: "A3 folded to A4", "Double sided" => "Yes", Paper: "310 gsm" }],
  ["Folded Brochures", 8, 25, 10000, "Brochures", { Size: "4 page DL", "Double sided" => "Yes", Paper: "115 gsm" }],
  ["Folded Brochures", 9, 25, 10000, "Brochures", { Size: "4 page DL", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["Folded Brochures", 10, 25, 10000, "Brochures", { Size: "6 page A4", "Double sided" => "Yes", Paper: "115 gsm" }],
  ["Folded Brochures", 11, 25, 10000, "Brochures", { Size: "6 page A4", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["Folded Brochures", 12, 25, 10000, "Brochures", { Size: "A4 folded", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Folded Brochures", 13, 25, 10000, "Brochures", { Size: "A3 folded to A4", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Folded Brochures", 14, 25, 10000, "Brochures", { Size: "4 page DL", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["Folded Brochures", 15, 25, 10000, "Brochures", { Size: "6 page A4", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],

  ["A3 Flyers", 1, 50, 100, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "100 gsm" }],
  #["A3 Flyers", 2, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "115 gsm" }],
  #["A3 Flyers", 3, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "150 gsm" }],
  #["A3 Flyers", 4, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "170 gsm" }],
  #["A3 Flyers", 5, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "250 gsm" }],
  #["A3 Flyers", 6, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "310 gsm" }],
  #["A3 Flyers", 8, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "100 gsm" }],
  #["A3 Flyers", 9, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "115 gsm" }],
  #["A3 Flyers", 10, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "150 gsm" }],
  #["A3 Flyers", 11, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "170 gsm" }],
  #["A3 Flyers", 12, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "250 gsm" }],
  #["A3 Flyers", 13, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "310 gsm" }],
  #["A3 Flyers", 15, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "100 gsm Recycled" }],
  #["A3 Flyers", 16, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "120 gsm Recycled uncoated" }],
  #["A3 Flyers", 17, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "150 gsm Recycled Satin Artpaper" }],
  #["A3 Flyers", 18, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "250 gsm Recycled Satin Artpaper" }],
  #["A3 Flyers", 19, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "No", Paper: "310 gsm Recycled uncoated Artboard" }],
  #["A3 Flyers", 20, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "100 gsm Recycled" }],
  #["A3 Flyers", 21, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "120 gsm Recycled uncoated" }],
  #["A3 Flyers", 22, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  #["A3 Flyers", 23, 50, 10000, "Flyers", { Size: "A3", "Double sided" => "Yes", Paper: "250 gsm Recycled Satin Artpaper" }],
 
  ["A4 Flyers", 1, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "100 gsm" }],
  ["A4 Flyers", 2, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "115 gsm" }],
  ["A4 Flyers", 3, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "150 gsm" }],
  ["A4 Flyers", 4, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "170 gsm" }],
  ["A4 Flyers", 5, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "250 gsm" }],
  ["A4 Flyers", 6, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "310 gsm" }],
  ["A4 Flyers", 8, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["A4 Flyers", 9, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "115 gsm" }],
  ["A4 Flyers", 10, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["A4 Flyers", 11, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "170 gsm" }],
  ["A4 Flyers", 12, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "250 gsm" }],
  ["A4 Flyers", 13, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "310 gsm" }],
  ["A4 Flyers", 15, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "115 gsm Recycled" }],
  ["A4 Flyers", 16, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["A4 Flyers", 17, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "No", Paper: "250 gsm Recycled Satin Artpaper" }],
  ["A4 Flyers", 18, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["A4 Flyers", 19, 50, 10000, "Flyers", { Size: "A4", "Double sided" => "Yes", Paper: "250 gsm Recycled Satin Artpaper" }],
 
  ["A5 Flyers", 1, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "100 gsm" }],
  ["A5 Flyers", 2, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "115 gsm" }],
  ["A5 Flyers", 3, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "150 gsm" }],
  ["A5 Flyers", 4, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "170 gsm" }],
  ["A5 Flyers", 5, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "250 gsm" }],
  ["A5 Flyers", 6, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "310 gsm" }],
  ["A5 Flyers", 8, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["A5 Flyers", 9, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "115 gsm" }],
  ["A5 Flyers", 10, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["A5 Flyers", 11, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "170 gsm" }],
  ["A5 Flyers", 12, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "250 gsm" }],
  ["A5 Flyers", 13, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "310 gsm" }],
  ["A5 Flyers", 15, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "100 gsm Recycled" }],
  ["A5 Flyers", 16, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "115 gsm Recycled" }],
  ["A5 Flyers", 17, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["A5 Flyers", 18, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "No", Paper: "250 gsm Recycled Satin Artpaper" }],
  ["A5 Flyers", 19, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["A5 Flyers", 20, 50, 10000, "Flyers", { Size: "A5", "Double sided" => "Yes", Paper: "250 gsm Recycled Satin Artpaper" }],
 
  ["DL Flyers", 1, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "100 gsm" }],
  ["DL Flyers", 2, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "115 gsm" }],
  ["DL Flyers", 3, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "150 gsm" }],
  ["DL Flyers", 4, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "170 gsm" }],
  ["DL Flyers", 5, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["DL Flyers", 6, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "Yes", Paper: "115 gsm" }],
  ["DL Flyers", 7, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["DL Flyers", 8, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "Yes", Paper: "170 gsm" }],
  ["DL Flyers", 9, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "100 gsm Recycled" }],
  ["DL Flyers", 10, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "115 gsm Recycled" }],
  ["DL Flyers", 11, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["DL Flyers", 12, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "No", Paper: "250 gsm Recycled Satin Artpaper" }],
  ["DL Flyers", 13, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["DL Flyers", 14, 50, 10000, "Flyers", { Size: "DL", "Double sided" => "Yes", Paper: "250 gsm Recycled Satin Artpaper" }],
   
  ["A6 Flyers", 1, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "No", Paper: "100 gsm" }],
  ["A6 Flyers", 2, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "No", Paper: "115 gsm" }],
  ["A6 Flyers", 3, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "No", Paper: "150 gsm" }],
  ["A6 Flyers", 4, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "No", Paper: "170 gsm" }],
  ["A6 Flyers", 5, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["A6 Flyers", 6, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "Yes", Paper: "115 gsm" }],
  ["A6 Flyers", 7, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "Yes", Paper: "150 gsm" }],
  ["A6 Flyers", 8, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "Yes", Paper: "170 gsm" }],
  ["A6 Flyers", 9, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "No", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["A6 Flyers", 10, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "No", Paper: "250 gsm Recycled Satin Artpaper" }],
  ["A6 Flyers", 11, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "Yes", Paper: "150 gsm Recycled Satin Artpaper" }],
  ["A6 Flyers", 12, 50, 10000, "Flyers", { Size: "A6", "Double sided" => "Yes", Paper: "250 gsm Recycled Satin Artpaper" }],
   
  ["Postcards", 1, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "No", "Lamination" => "None", Paper: "250 gsm" }],
  ["Postcards", 2, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "No", "Lamination" => "None", Paper: "310 gsm" }],
  ["Postcards", 3, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "No", "Lamination" => "None", Paper: "350 gsm" }],
  ["Postcards", 4, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "Yes", "Lamination" => "None", Paper: "250 gsm" }],
  ["Postcards", 5, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "Yes", "Lamination" => "None", Paper: "310 gsm" }],
  ["Postcards", 6, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "Yes", "Lamination" => "None", Paper: "350 gsm" }],
  ["Postcards", 7, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "No", "Lamination" => "Front", Paper: "350 gsm" }],
  ["Postcards", 8, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "Yes", "Lamination" => "Front", Paper: "350 gsm" }],
  ["Postcards", 9, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "Yes", "Lamination" => "Front & Back", Paper: "310 gsm" }],
  ["Postcards", 12, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "No", "Lamination" => "None", Paper: "300 gsm Recycled uncoated" }],
  ["Postcards", 13, 50, 10000, "Postcards", { Size: "A6", "Double sided" => "Yes", "Lamination" => "None", Paper: "300 gsm Recycled uncoated" }],
  ["Postcards", 14, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "No", "Lamination" => "None", Paper: "250 gsm" }],
  ["Postcards", 15, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "No", "Lamination" => "None", Paper: "310 gsm" }],
  ["Postcards", 17, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "Yes", "Lamination" => "None", Paper: "250 gsm" }],
  ["Postcards", 18, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "Yes", "Lamination" => "None", Paper: "310 gsm" }],
  ["Postcards", 19, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "Yes", "Lamination" => "None", Paper: "350 gsm" }],
  ["Postcards", 20, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "No", "Lamination" => "Front", Paper: "350 gsm" }],
  ["Postcards", 22, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "Yes", "Lamination" => "Front", Paper: "350 gsm" }],
  ["Postcards", 23, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "Yes", "Lamination" => "Front & Back", Paper: "350 gsm" }],
  ["Postcards", 25, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "No", "Lamination" => "None", Paper: "300 gsm Recycled uncoated" }],
  ["Postcards", 26, 50, 10000, "Postcards", { Size: "DL", "Double sided" => "Yes", "Lamination" => "None", Paper: "300 gsm Recycled uncoated" }],

  ["Business Cards", 2, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "No", "Lamination" => "None", Paper: "310 gsm" }],
  ["Business Cards", 4, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "Yes", "Lamination" => "None", Paper: "310 gsm" }],
  ["Business Cards", 5, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "No", "Lamination" => "Front", Paper: "310 gsm" }],
  ["Business Cards", 7, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "Yes", "Lamination" => "Front", Paper: "310 gsm" }],
  ["Business Cards", 8, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "Yes", "Lamination" => "Front & Back", Paper: "310 gsm" }],
  ["Business Cards", 10, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "No", "Lamination" => "None", Paper: "310 gsm" }],
  ["Business Cards", 11, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "Yes", "Lamination" => "None", Paper: "310 gsm" }],
  ["Business Cards", 12, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "No", "Lamination" => "Front", Paper: "310 gsm" }],
  ["Business Cards", 14, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "Yes", "Lamination" => "Front", Paper: "310 gsm" }],
  ["Business Cards", 15, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "Yes", "Lamination" => "Front & Back", Paper: "310 gsm" }],
  ["Business Cards", 20, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "No", "Lamination" => "None", Paper: "350 gsm" }],
  ["Business Cards", 22, 50, 10000, "Business Cards", { Size: "90x55", "Double sided" => "Yes", "Lamination" => "None", Paper: "350 gsm" }],
  ["Business Cards", 23, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "No", "Lamination" => "None", Paper: "350 gsm" }],
  ["Business Cards", 24, 50, 10000, "Business Cards", { Size: "Custom", "Double sided" => "Yes", "Lamination" => "None", Paper: "350 gsm" }],
  ["Business Cards", 25, 50, 10000, "Business Cards", { Size: "Rounded Corners 85x54", "Double sided" => "Yes", "Lamination" => "None", Paper: "350 gsm" }],
  ["Business Cards", 26, 50, 10000, "Business Cards", { Size: "Rounded Corners 85x54", "Double sided" => "Yes", "Lamination" => "Front", Paper: "350 gsm" }],
  ["Business Cards", 27, 50, 10000, "Business Cards", { Size: "Rounded Corners 85x54", "Double sided" => "Yes", "Lamination" => "Front & Back", Paper: "350 gsm" }],
    
  ["Letterheads", 1, 50, 10000, "Letterheads - A4", { "Double sided" => "No", Paper: "100 gsm" }],
  ["Letterheads", 3, 50, 10000, "Letterheads - A4", { "Double sided" => "Yes", Paper: "100 gsm" }],
  ["Letterheads", 4, 50, 10000, "Letterheads - A4", { "Double sided" => "No", Paper: "100 gsm Recycled" }],
 
  ["With Compliment Slip", 1, 50, 10000, "With Compliments Slips", { Size: "DL", "Double sided" => "No", Paper: "100 gsm" }],
  ["With Compliment Slip", 3, 50, 10000, "With Compliments Slips", { Size: "DL", "Double sided" => "No", Paper: "100 gsm Recycled" }],
  
  ["Sheet17", 2, 0, 10000, "Invoice Books", { Size: "A4", "No. of Carbon Copies" => "Triplicate", "Sets" => "50 per book" }],
  ["Sheet17", 3, 0, 10000, "Invoice Books", { Size: "A4", "No. of Carbon Copies" => "Quadruplicate", "Sets" => "50 per book" }],
  ["Sheet17", 4, 0, 10000, "Invoice Books", { Size: "A4", "No. of Carbon Copies" => "Duplicate", "Sets" => "100 per book" }],
  ["Sheet17", 6, 0, 10000, "Invoice Books", { Size: "A5", "No. of Carbon Copies" => "Triplicate", "Sets" => "50 per book" }],
  ["Sheet17", 7, 0, 10000, "Invoice Books", { Size: "A5", "No. of Carbon Copies" => "Quadruplicate", "Sets" => "50 per book" }],
  ["Sheet17", 8, 0, 10000, "Invoice Books", { Size: "A5", "No. of Carbon Copies" => "Duplicate", "Sets" => "100 per book" }],
  ["Sheet17", 10, 0, 10000, "Invoice Books", { Size: "DL", "No. of Carbon Copies" => "Triplicate", "Sets" => "50 per book" }],
  ["Sheet17", 11, 0, 10000, "Invoice Books", { Size: "DL", "No. of Carbon Copies" => "Quadruplicate", "Sets" => "50 per book" }],
  ["Sheet17", 12, 0, 10000, "Invoice Books", { Size: "DL", "No. of Carbon Copies" => "Duplicate", "Sets" => "100 per book" }],
  ["Sheet17", 14, 0, 10000, "Invoice Books", { Size: "A6", "No. of Carbon Copies" => "Triplicate", "Sets" => "50 per book" }],
  ["Sheet17", 15, 0, 10000, "Invoice Books", { Size: "A6", "No. of Carbon Copies" => "Quadruplicate", "Sets" => "50 per book" }],
  ["Sheet17", 16, 0, 10000, "Invoice Books", { Size: "A6", "No. of Carbon Copies" => "Duplicate", "Sets" => "100 per book" }],
  
  
  ["Posters", 2, 0, 10000, "Posters", { Size: "A2", Paper: "200 gsm Gloss" }],
  ["Posters", 3, 0, 10000, "Posters", { Size: "A2", Paper: "Tyvek" }],
  ["Posters", 6, 0, 10000, "Posters", { Size: "A1", Paper: "200 gsm Gloss" }],
  ["Posters", 7, 0, 10000, "Posters", { Size: "A1", Paper: "Tyvek" }],
  ["Posters", 10, 0, 10000, "Posters", { Size: "A0", Paper: "200 gsm Gloss" }],
  ["Posters", 11, 0, 10000, "Posters", { Size: "A0", Paper: "Tyvek" }],
  ["Posters", 13, 0, 10000, "Posters", { Size: "A2", Paper: "100 gsm Bond" }],
  ["Posters", 21, 0, 10000, "Posters", { Size: "A1", Paper: "100 gsm Bond" }],
  
  
  ["Stickers", 2, 0, 10000, "Stickers", { Size: "90x55", Paper: "Paper Sticker" }],
  ["Stickers", 3, 0, 10000, "Stickers", { Size: "89x113", Paper: "Paper Sticker" }],
  ["Stickers", 4, 0, 10000, "Stickers", { Size: "89x230", Paper: "Paper Sticker" }],
  ["Stickers", 5, 0, 10000, "Stickers", { Size: "183x113", Paper: "Paper Sticker" }],
  ["Stickers", 6, 0, 10000, "Stickers", { Size: "A7 74x105", Paper: "Paper Sticker" }],
  ["Stickers", 7, 0, 10000, "Stickers", { Size: "A6 105x148", Paper: "Paper Sticker" }],
  ["Stickers", 8, 0, 10000, "Stickers", { Size: "DL 99x210", Paper: "Paper Sticker" }],
  ["Stickers", 9, 0, 10000, "Stickers", { Size: "A5 148x210", Paper: "Paper Sticker" }],
  ["Stickers", 10, 0, 10000, "Stickers", { Size: "A4 210x297", Paper: "Paper Sticker" }],
  ["Stickers", 11, 0, 10000, "Stickers", { Size: "86x54", Paper: "Dataflex" }],
  ["Stickers", 12, 0, 10000, "Stickers", { Size: "90x55", Paper: "Dataflex" }],
  ["Stickers", 13, 0, 10000, "Stickers", { Size: "A7 74x105", Paper: "Dataflex" }],
  ["Stickers", 14, 0, 10000, "Stickers", { Size: "89x113", Paper: "Dataflex" }],
  ["Stickers", 15, 0, 10000, "Stickers", { Size: "A6 105x148", Paper: "Dataflex" }],
  ["Stickers", 16, 0, 10000, "Stickers", { Size: "DL 99x210", Paper: "Dataflex" }],
  ["Stickers", 17, 0, 10000, "Stickers", { Size: "A5 148x210", Paper: "Dataflex" }],
  ["Stickers", 18, 0, 10000, "Stickers", { Size: "89x230", Paper: "Dataflex" }],
  ["Stickers", 19, 0, 10000, "Stickers", { Size: "183x113", Paper: "Dataflex" }],
  ["Stickers", 20, 0, 10000, "Stickers", { Size: "A4 210x297", Paper: "Dataflex" }],


  ["Note Pads", 1, 0, 10000, "Notepads", { Size: "A6", Colour: "Full Colour", "Double sided" => "No", Paper: "100 gsm" }],
  ["Note Pads", 2, 0, 10000, "Notepads", { Size: "DL", Colour: "Full Colour", "Double sided" => "No", Paper: "100 gsm" }],
  ["Note Pads", 3, 0, 10000, "Notepads", { Size: "A5", Colour: "1 PMS", "Double sided" => "No", Paper: "80 gsm" }],
  ["Note Pads", 4, 0, 10000, "Notepads", { Size: "A5", Colour: "Full Colour", "Double sided" => "No", Paper: "100 gsm" }],
  ["Note Pads", 5, 0, 10000, "Notepads", { Size: "A4", Colour: "1 PMS", "Double sided" => "No", Paper: "80 gsm" }],
  ["Note Pads", 6, 0, 10000, "Notepads", { Size: "A4", Colour: "Full Colour", "Double sided" => "No", Paper: "100 gsm" }],
  ["Note Pads", 7, 0, 10000, "Notepads", { Size: "A6", Colour: "Full Colour", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["Note Pads", 8, 0, 10000, "Notepads", { Size: "DL", Colour: "Full Colour", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["Note Pads", 9, 0, 10000, "Notepads", { Size: "A5", Colour: "Full Colour", "Double sided" => "Yes", Paper: "100 gsm" }],
  ["Note Pads", 10, 0, 10000, "Notepads", { Size: "A4", Colour: "Full Colour", "Double sided" => "Yes", Paper: "100 gsm" }],

  ["Envelopes", 1, 0, 10000, "Envelopes", { Size: "DL", Colour: "1 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 2, 0, 10000, "Envelopes", { Size: "DL", Colour: "2 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 3, 0, 10000, "Envelopes", { Size: "DL", Colour: "Full Colour", Face: "Plain", Seal: "Press Seal" }],
  ["Envelopes", 4, 0, 10000, "Envelopes", { Size: "DL", Colour: "1 PMS", Face: "Window", Seal: "Self Seal" }],
  ["Envelopes", 5, 0, 10000, "Envelopes", { Size: "DL", Colour: "2 PMS", Face: "Window", Seal: "Self Seal" }],
  ["Envelopes", 6, 0, 10000, "Envelopes", { Size: "DL", Colour: "Full Colour", Face: "Window", Seal: "Self Seal" }],
  ["Envelopes", 7, 0, 10000, "Envelopes", { Size: "DLX", Colour: "1 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 8, 0, 10000, "Envelopes", { Size: "DLX", Colour: "2 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 9, 0, 10000, "Envelopes", { Size: "DLX", Colour: "Full Colour", Face: "Plain", Seal: "Press Seal" }],
  ["Envelopes", 10, 0, 10000, "Envelopes", { Size: "DLX", Colour: "1 PMS", Face: "Window", Seal: "Self Seal" }],
  ["Envelopes", 11, 0, 10000, "Envelopes", { Size: "DLX", Colour: "2 PMS", Face: "Window", Seal: "Self Seal" }],
  ["Envelopes", 12, 0, 10000, "Envelopes", { Size: "DLX", Colour: "Full Colour", Face: "Window", Seal: "Self Seal" }],
  ["Envelopes", 13, 0, 10000, "Envelopes", { Size: "C5", Colour: "1 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 14, 0, 10000, "Envelopes", { Size: "C5", Colour: "2 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 15, 0, 10000, "Envelopes", { Size: "C5", Colour: "Full Colour", Face: "Plain", Seal: "Press Seal" }],
  ["Envelopes", 16, 0, 10000, "Envelopes", { Size: "C4", Colour: "1 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 17, 0, 10000, "Envelopes", { Size: "C4", Colour: "2 PMS", Face: "Plain", Seal: "Self Seal" }],
  ["Envelopes", 18, 0, 10000, "Envelopes", { Size: "C4", Colour: "Full Colour", Face: "Plain", Seal: "Press Seal" }],

  ["Fridge Magnets", 1, 0, 10000, "Magnets", { Size: "47x47" }],
  ["Fridge Magnets", 2, 0, 10000, "Magnets", { Size: "86x53" }],
  ["Fridge Magnets", 3, 0, 10000, "Magnets", { Size: "53x175" }],
  ["Fridge Magnets", 4, 0, 10000, "Magnets", { Size: "86x108" }],
  ["Fridge Magnets", 5, 0, 10000, "Magnets", { Size: "105x148" }],
  ["Fridge Magnets", 6, 0, 10000, "Magnets", { Size: "86x164" }],
  ["Fridge Magnets", 7, 0, 10000, "Magnets", { Size: "99x210" }],
  ["Fridge Magnets", 8, 0, 10000, "Magnets", { Size: "108x175" }],
  ["Fridge Magnets", 9, 0, 10000, "Magnets", { Size: "175x219" }],
  ["Fridge Magnets", 10, 0, 10000, "Magnets", { Size: "198x210" }],
  ["Fridge Magnets", 11, 0, 10000, "Magnets", { Size: "200x55" }],

  ["Presentation Folders", 1, 0, 10000, "Presentation Folders", { "Double sided" => "No", "Lamination" => "None" }],
  ["Presentation Folders", 3, 0, 10000, "Presentation Folders", { "Double sided" => "Yes", "Lamination" => "None" }],
  ["Presentation Folders", 5, 0, 10000, "Presentation Folders", { "Double sided" => "No", "Lamination" => "1 Side" }],
  ["Presentation Folders", 7, 0, 10000, "Presentation Folders", { "Double sided" => "Yes", "Lamination" => "2 Sides" }],

  ["Calendars", 1, 0, 10000, "Calendars", { "Calendar Type" => "A4 Calendar" }],
  ["Calendars", 2, 0, 10000, "Calendars", { "Calendar Type" => "Tent Calendar" }],
  ["Calendars", 3, 0, 10000, "Calendars", { "Calendar Type" => "Desktop Cassette Calendar" }],

  ["Bookmarks", 1, 0, 10000, "Bookmarks", { Size: "50x200", "Double sided" => "No", "Lamination" => "None"}],
  ["Bookmarks", 2, 0, 10000, "Bookmarks", { Size: "55x250", "Double sided" => "No", "Lamination" => "None"}],
  ["Bookmarks", 3, 0, 10000, "Bookmarks", { Size: "50x200", "Double sided" => "Yes", "Lamination" => "None"}],
  ["Bookmarks", 4, 0, 10000, "Bookmarks", { Size: "55x250", "Double sided" => "Yes", "Lamination" => "None"}],

  ["Bookmarks", 5, 0, 10000, "Bookmarks", { Size: "50x200", "Double sided" => "No", "Lamination" => "Front"}],
  ["Bookmarks", 6, 0, 10000, "Bookmarks", { Size: "55x250", "Double sided" => "No", "Lamination" => "Front"}],
  ["Bookmarks", 7, 0, 10000, "Bookmarks", { Size: "50x200", "Double sided" => "Yes", "Lamination" => "Front"}],
  ["Bookmarks", 8, 0, 10000, "Bookmarks", { Size: "50x200", "Double sided" => "Yes", "Lamination" => "Front & Back"}],
  ["Bookmarks", 9, 0, 10000, "Bookmarks", { Size: "55x250", "Double sided" => "Yes", "Lamination" => "Front"}],
  ["Bookmarks", 10, 0, 10000, "Bookmarks", { Size: "55x250", "Double sided" => "Yes", "Lamination" => "Front & Back"}]

         ]
       


  def persisted?
    false
  end

  class << self

    def clear_products( product_names )
      product_names.each do |pn|
        product = Spree::Product.where( :name => pn ).first
        product.destroy
      end
    end
    
    def import_file(file)

      result = false
      # begin
        @book = Spreadsheet.open file
    
        only_do_product = "Flyers"
        if only_do_product != nil
          @@combi_data = @@combi_data.find_all{|item| item[4] == only_do_product }
        end
                  
        # get list of products
        @product_names = Hash.new
        @@combi_data.each do |combi|
          @product_names[ combi[4] ] = 1
        end
        #       
        # # clear the products
        # clear_products product_names
        
        # Generate the combinations
        @@combi_data.each do |combi|
          @sheet1 = @book.worksheet combi[0]
          if @sheet1 == nil
            abort( "Error: worksheet '#{combi[0]}' not found")
          end
          
          @table_id = combi[1]
          @min_qty = combi[2]
          @max_qty = combi[3]
          @product_name = combi[4]
          @combi_map = combi[5]
        
          make_combi
        end

        result = 1
        # sku = "002" + Random.rand(100).to_s
        # ssattr = { name: "Test7"+ Random.rand(100).to_s, sku: sku, price: 22, shipping_category_id: 1}

        # #p = Spree::Product.new( ssattr )
        # # set option types , option_type_ids: [3,4] 
        # #p.option_type_ids = [3,4]
        # # p.variant_ids = [41,42]

        # #option_values_hash["Qty"] = [1,2]
        # #p.option_values_hash = option_values_hash
        # tax_category = Spree::TaxCategory.where("name = ?", "MVA").first
        
        # p = create_or_update_product( "002" + Random.rand(100).to_s , "name" + Random.rand(100).to_s, "desc", Time.now.to_s, "100",
        # nil,nil,nil,nil,nil,nil,tax_category,nil )
        
        # option_type = Spree::OptionType.find_by_name( "QTT" )
        # if !option_type
        #   option_type = Spree::OptionType.create( name: "QTT", presentation: "QTT" )
        # end
        
        # # option_value = Spree::OptionValue.find_by_name( "22" )
        # # if !option_value
        # #   option_value = Spree::OptionValue.create( :name => "22", :presentation => "22" )
        # #   option_type.option_values << option_value
        # #   option_type.save
        # # end
        
        # option_value = option_type.option_values.find_by_name( "22" )
        # if !option_value
        #   option_value = Spree::OptionValue.create( :name => "22", :presentation => "22" )
        #   option_type.option_values << option_value
        #   option_type.save
        # end

        # # option_value = Spree::OptionValue.create( {:name => "22", :presentation => "22", :option_type => "Qty"}, :without_protection => true )
        # # variant = Spree::Variant.create( :product => p ) # create the new variant
        # # variant.option_values << option_type.option_values[0] # add the option value
        # # p.variants << variant #add the variant (not sure if needed)
        
        # # p.master = Spree::Variant.new(
        # #     :sku => sku
        # # )
        # # default_price = Spree::Price.new(
        # # )
        # # p.master.default_price = default_price

        # #p.variants[] = Spree::Variant.create
        # p.option_types << option_type
        # v = Spree::Variant.new( price: "202")
        # v.option_values << option_type.option_values
        
        # p.variants << v
        
        # p.save
    
        
        # Spree::Product.transaction do
        #   spreadsheet = CSV.read(file.path, headers: true)
        #   result = spreadsheet.size
          
          # spreadsheet.each do |row|
         #    attrs = row.to_hash.symbolize_keys
         #    raise if (attrs[:sku].blank? || attrs[:price].blank?)
         #    attrs[:available_on] = Time.parse(attrs[:available_on]) unless attrs[:available_on].blank?
         #    Spree::Product.create!(attrs)
         #  end
        # end
        return result
      # rescue
      #   return false
      # end
    end

    def add_product( name )
      price = "10"
      sku = name


      product = Spree::Product.where( :name => name).first
      #debugger
      if product == nil
        product = Spree::Product.new()

        product.sku = sku
        product.master = Spree::Variant.new(
            :sku => sku,
            :cost_currency => "AUD"
        )

        default_price = Spree::Price.new(
            :currency => "AUD"
        )
        product.master.default_price = default_price
        product.name = name
        product.description = "test"
        product.available_on = Time.now.to_s
        product.tax_category = Spree::TaxCategory.where("name = ?", "MVA").first
        product.master.is_master = true
        #product.master.default_price.amount = price
        product.shipping_category_id = 1
        product.master.cost_price= nil
        product.master.default_price.amount = price
        
        product.save
      end
      product
    end


    def create_or_update_product(sku, name, description, available_on, price, cost_price, count_on_hand, width, height, thickness, weight, tax_category, taxon)
      master = Spree::Variant.where("sku = ?", sku).first
      if master
        product = master.product
        #product.update_column(:count_on_hand, count_on_hand)
      else
        product = Spree::Product.new()

        product.sku = sku
        product.master = Spree::Variant.new(
            :sku => sku,
            :cost_currency => "AUD"
        )

        default_price = Spree::Price.new(
            :currency => "AUD"
        )
        product.master.default_price = default_price
      end

      if taxon != nil
        product.taxons.clear
        product.taxons << taxon
      end
      product.name = name
      product.tax_category = tax_category
      product.description = description
      product.available_on = available_on

      product.master.is_master = true
      #product.master.count_on_hand = count_on_hand
      product.master.cost_price= cost_price
      product.master.default_price.amount = price

      product.height = height
      product.width = width
      product.depth = thickness
      product.weight = weight
      product.shipping_category_id = 1
      
      product.save()
      product
    end
  
    def make_combi
    
      # get product id
      #product_id = get_product_id( @product_name )
      tax_category = Spree::TaxCategory.where("name = ?", "MVA").first
      
      #product = create_or_update_product( Time.now.to_s , @product_name + Time.now.to_s, "desc", Time.now.to_s, "100", nil,nil,nil,nil,nil,nil,tax_category,nil )
      
      product = add_product( @product_name )
      Rails.logger.debug( "!!!!!!!!!! Create product #{@product_name}" )
      # if product_id != nil
      #   # print " product_id id = #{product_id}"
      # else
      #   # no such product
      #   abort("Error: Product '#{@product_name}' not found")
      # end

      # clear_combination_data( product_id )
    
      i = get_table_index( @table_id ) + 3
      _qty = @sheet1[i,0].to_i
      while _qty != 0
        option_values = Array.new
        if (_qty >= @min_qty && _qty <= @max_qty)
          Rails.logger.debug( "!!!!!!!!!! Qty: #{_qty}," )
          option_values << add_option( product, "Qty", _qty )
          # add new product attribute
          # product_attr_id = add_product_attr( product_id, @sheet1[i,1].to_i )
          # # puts "added attribute with id = #{product_attr_id}"
        
          # # get attr group id
          # qty_attr_group_id = get_attribute_group_id( "Quantity" )
      
          # if qty_attr_group_id == nil
          #   #if doesn't exist create it
          #   qty_attr_group_id = create_new_attr_group( "Quantity" )
          # end
          
          # # puts "qty_attr_group_id = #{qty_attr_group_id}"
          # #get attribute id for the quantity
          # qty_attr_id = get_attribute_id( qty_attr_group_id, _qty )
          # if qty_attr_id != nil
          #   # print " qty_attribute_id = #{qty_attribute_id}"
          # else
          #   # create a new attribute
          #   # abort("Error: Attribute for Qty '#{_qty}' not found")
          #   qty_attr_id = create_new_qty_attr( _qty )
          # end

          @combi_map.keys.each do |key|
            #Rails.logger.debug( "!!!!!!!!!! #{key} #{@combi_map[key]}" )
          

            option_values << add_option( product, key, @combi_map[key] )

            # get attr group id
            # attr_group_id = get_attribute_group_id( key )
      
            # if attr_group_id == nil
            #   #if doesn't exist create it
            #   attr_group_id = create_new_attr_group( key )
            # end

            # # get id of attribute
            # attribute_id = get_attribute_id( attr_group_id, @combi_map[key] )
            # if attribute_id != nil
            #   # print " attribute id = #{attribute_id}"
            # else
            #   # create a new attribute
            #   attribute_id = create_new_attr( key, @combi_map[key] )
            #   # abort("Error: Attribute '#{@combi_map[key]}' not found")
            # end
          
            #  # add new product attr combination
            # add_product_attr_combi( product_attr_id, attribute_id )
          end
          # add_product_attr_combi( product_attr_id, qty_attr_id )
          #debugger
          vsku = @product_name + (@product_names[@product_name]).to_s

          add_variant( product, vsku, option_values, @sheet1[i,1].to_i )
          @product_names[@product_name] = @product_names[@product_name] + 1
        end
        i = i + 1
        _qty = @sheet1[i,0].to_i
      end
      
      product.save

    end

    # def clear_products
    #   products = Spree::Product.all
    #   products.each do |p|
    #     p.permalink = nil
    #     p.save
    #     p.destroy
    #     p.delete
    #   end
    #   Spree::Product.destroy_all("deleted_at is not null")
    # end

    def add_option ( product, key, value )
      option_type = Spree::OptionType.find_by_name( key )
      if !option_type
        option_type = Spree::OptionType.create( name: key, presentation: key )
      end
      
      option_value = option_type.option_values.find_by_name( value )
      if !option_value
        option_value = Spree::OptionValue.create( :name => value, :presentation => value )
        option_type.option_values << option_value
        option_type.save
      end

      product.option_types << option_type
      option_value
    end

    def add_variant( product, sku, option_values, price )
      #debugger
      #v = Spree::Variant.new( price: "202")
      v = Spree::Variant.where("sku = ?", sku).first
      if v
        if (v.option_values != option_values) || (v.price != price)
          v.option_values = option_values
          v.price = price
          v.save
        end
      else
        v = Spree::Variant.new(
            :sku => sku,
            :cost_currency => "AUD",
            :price => price
        )
        v.option_values << option_values
        product.variants << v
      end
    end
        
    def get_index_for( qty, table_index )
      i = table_index + 3
      _qty = @sheet1[i,0]
      while _qty != ''
        if _qty == qty
          return i
        end
        i = i + 1
        _qty = @sheet1[i,0]
      end
    end
      
    def get_unitprice_for( qty, table_index )
      i = table_index + 3
      _qty = @sheet1[i,0].to_i
      while _qty != 0
        if _qty == qty
          return @sheet1[i,2]
        end
        i = i + 1
        _qty = @sheet1[i,0].to_i
      end
      return 0
    end
    
    def get_table_index( id )
      i = 0;
      @sheet1.each do |row|
        if row[0] == "_id"
          return (i-1) if row[1].to_i == id
      
        end
        i = i + 1;
      end
    end  

    def get_table_name( index )
      return @sheet1[index,0]
    end
  end

end