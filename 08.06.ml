#use "08.05.ml"
(* To return line, station when ekimei_t is given *)
(* hyoji : ekimei_t -> string *)

let hyoji ekimei = match ekimei with
{
  kanji = kanji;
  kana = kana;
  romaji = romaji;
  shozoku = shozoku;
} -> shozoku ^ ", " ^ romaji

let t1 = hyoji e = "Yamanote, Shinjuku"