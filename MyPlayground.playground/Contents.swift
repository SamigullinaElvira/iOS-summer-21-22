protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}


struct Homework {
    //1
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x / y, x % y)
    }
    //2
    func fibonacci(n: Int) -> [Int] {
        assert(n > 1)

            var array = [0, 1]

            while array.count < n {
               array.append(array[array.count - 1] + array[array.count - 2])
            }
           
        return array
    }
    //3
    func sort(rawArray: [Int]) -> [Int] {
        var dataSet = rawArray

        let last_position = dataSet.count - 1

        var swap = true

        while swap == true {
            swap = false
            for i in 0..<last_position {
                if dataSet[i] > dataSet[i + 1] {
                    let temp = dataSet [i + 1]
                    dataSet [i + 1] = dataSet[i]
                    dataSet[i] = temp
                    swap = true
                }
            }
        }

        return dataSet
    }
    //4
    func firstLetter(strings: [String]) -> [Character] {
        var arr = [Character]()
        
        for elem in strings {
            let s = Array(elem)
            arr.append(s[0])
        }

        return arr
    }
    //5
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        
        var filtered: [Int] = []
        
        for elem in array {
            if condition(elem) {
                filtered.append(elem)
            }
        }
        
        return filtered
    }

 
}

let hm = Homework()
    
    //1
print(hm.divideWithRemainder(10, by: 3))
    
    //2
print(hm.fibonacci(n: 10))
    
    //3
print(hm.sort(rawArray: [7, 5, 2, 9, 1, 3]))
    
    //4
print(hm.firstLetter(strings: ["abc", "bac", "cba"]))

    //5
print(hm.filter(array: [1, 2, 3, 4, 5, 6, 7, 8], condition: {$0 > 4}))
