import MeCab
m = MeCab.Tagger ("-Ochasen")
a = m.parse ("今日もしないとね").split("\n")[:-2]
b = []
for w in a:
	b.append(w.split("\t"))

for j in b:
	print(j[0],j[3])
		
