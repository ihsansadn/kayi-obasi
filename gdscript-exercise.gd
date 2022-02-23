var nama_variabel : int = 0
#contoh variabel teks
var variabel_teks : String = "Ihsan"
#contoh variabel angka
var darah_maksimal : int = 999
var darah : int = darah_maksimal
#contoh tipe resource
var sumber_daya : Resource = Resource.new()
var sumber_daya_sama : Resource = sumber_daya
#contoh tipe lainnya
var jalan : float = 320.2 #float mengizinkan angka desimal
#contoh variabel tipe TileMap
var trotoar : TileMap
#contoh variabel tipe Sprite
var tokoh_utama : Sprite
#GDScript punya teknologi yang lebih memudahkan yaitu bisa mengetahui tipe variabel tanpa perlu menyebutkannya
var uang_minus : = -999
var koma : = 333.3
var kalimat : = "kalimat"


#CONSTANT
const MAXIMUM_RUN_SPEED : float = 400.0
const MINIMUM_RUN_SPEED : = 100.0

#Penggunaan simbol matematika (operations)
var enam : = 3 + 3
var dua_belas : = enam * 2
var pembagian : = dua_belas / 3 #4
var pengurangan : = pembagian - 1

#Penggunaan simbol matematika pada nilai (values)
var nama_depan : = "Sulaiman"
var nama_belakang : = "Shah"
var nama_lengkap_sulaiman : = nama_depan + " " + nama_belakang

var contoh_objek : Object = Sprite.new()

func take_damage(amount:int) -> void:
	var health : int = 900
	health -= amount
	health = max(0, health)

