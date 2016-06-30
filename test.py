import MeCab

#音声認識結果テキストファイル読み込み
f = open("./julius4/JuliusResult.txt","r")
texts = []
for line in f:
	if line[:10] == "sentence1:":
		texts.append("".join(line[12:-1].split(" ")))

f.close()

#テキストファイル出力
print("\n---------音声認識---------\n", end ='')
for t in texts:
  print(t)


#形態素解析


#m = MeCab.Tagger ("-Ochasen")
m = MeCab.Tagger ("-u mecab-user-dict-seed.20160627.dic")

print("\n\n---------形態素解析---------\n", end ='')

mtxt = []       #ttに入った解析結果を改行区切りでmtxt配列に入れる
for tt in texts:
  mtxt.append(m.parse(tt).split("\n"))

f = open('./getImage/Noun.txt','w' ) #print("\n\n\n") #mtxt配列から末尾のEOSを除いてmword配列に入れる
for m in mtxt:
  for mword in m[:-2]:
    wordclass = mword.split(",") #tab区切りでmwordをwordclass配列に入れる
    #print(mword)
    wordc = wordclass[0].split("\t")
    if "名詞" in wordc[1]:  
      print(wordc[0],wordc[1] ) #wordclassの3番目の要素に"名詞"が含まれる場合にその単語と品詞を表示
      f.write(wordc[0] + "\n")
f.close()

#f = open('Noun.txt','w')
#f.write(wordclass[0])
#f = close()
