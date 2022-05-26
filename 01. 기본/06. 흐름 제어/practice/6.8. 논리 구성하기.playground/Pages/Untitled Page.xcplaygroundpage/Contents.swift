// 1 막 풀어보기!
var a: Character = "🤩"

for i in 1...5 {
    if i == 1 {
        print("🤩")
        continue
    }
    if i == 2 {
        print("🤩🤩")
        continue
    }
    if i == 3 {
        print("🤩🤩🤩")
        continue
    }
    if i == 4 {
        print("🤩🤩🤩🤩")
        continue
    }
    if i == 5 {
        print("🤩🤩🤩🤩🤩")
        continue
    }
}

// 2 논리 구조 형성하기
for i in 1...5 {
    for j in 1...5 {
        if i >= j{
            print("🤩", terminator: "")
        }
    }
    print()
    // print("\n") / 한 줄 띄우기, (enter)와 같음
}
