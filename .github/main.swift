//
//  main.swift
//  rps_game
//
//  Created by Amir on 01/12/2021.
//

import Foundation

print("Select your hero: Rock, Paper, Scissor")

let MyChoice = readLine()

var ComputerChoice:String

print ("You selected \(MyChoice) ")


let randomnumber = Int.random(in: 1..<3)

if (randomnumber == 1){
    ComputerChoice = "Rock"
}
else if (randomnumber == 2){
    ComputerChoice = "Paper"
}
else{
    ComputerChoice = "Scissors"
}

print("Lets see who won?")

if (ComputerChoice == MyChoice){
    print("It's a Draw")
}


else if ((MyChoice == "Rock" && ComputerChoice == "Scissors") || (MyChoice == "Scissors" && ComputerChoice == "Paper") || (MyChoice == "Paper" && ComputerChoice == "Rock")){
    print ("You Win")
}


else {
    print ("You Loose")
}
    







