//
//  main.swift
//  hw1
//
//  Created by Amir on 13.06.2022.
//

import Foundation

let firstInput = readLine()

func checkIfInt(myFirstInput: String)->Int{
    if let num = Int(myFirstInput) {
      return(num)
  }
    else{
        return (0)
}
}

let a:Int = checkIfInt(myFirstInput: firstInput ?? "no value")

func assignPlayerChoice(mychoice: Int)->String{
    switch mychoice{
    case 1:
        return "rock"
    case 2:
        return "paper"
    case 3:
        return "scissors"
    default:
        return "wrong choice"
    }
}



let myChoice = assignPlayerChoice(mychoice: a)

print ("You have selected \(myChoice)")
//как сделать так что если readLine не Int, он выводил строку указанную в else
// как уменьшить количество вводных Int (от 1 -3)
// как если не выполняется условия того что readLine это Int и Int между 1-3
// перевызвать строки заново. print ("Try again") -> typed = readLine(). так скажем создать рекурсию

let randomnumber:Int = Int.random(in: 1...3) //declaration to Int, + initizalization to int value
var pcChoice: String //declaration

switch randomnumber{
case 1:
    pcChoice = "rock"
case 2:
    pcChoice = "paper"
default:
    pcChoice = "scissors"
}

print ("Computer selected \(pcChoice) ")

print("Lets see who won?")

if (pcChoice == myChoice){
print("It's a Draw")
}


else if ((myChoice == "rock" && pcChoice == "scissors") || (myChoice == "scissors" && pcChoice == "paper") || (myChoice == "paper" && pcChoice == "rock")){
print ("You Win")
}


else {
    print ("You Loose")}


