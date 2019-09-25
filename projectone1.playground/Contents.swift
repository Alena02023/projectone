let player1: [String : String] = [ "name": "Joe Smith", "height": "42.0", "isExperienced": "true", "guardians": "Jim and Jan Smith"]


let player2: [String : String] = [ "name": "Jill Tanner", "height": "36.0", "isExperienced": "true", "guardians": "Clara Tanner"]

let player3: [String : String] = [ "name": "Bill Bon", "height": "43.0", "isExperienced": "true", "guardians": "Sara and Jenny Bon"]

let player4: [String : String] = [ "name": "Eva Gordon", "height": "45.0", "isExperienced": "false", "guardians": "Wendy and Mike Gordon"]

let player5: [String : String] = [ "name": "Matt Gill", "height": "40.0", "isExperienced": "false", "guardians": "Charles and Sylvia Gill"]

let player6: [String : String] = [ "name": "Kimmy Stein", "height": "41.0", "isExperienced": "false", "guardians": "Bill and Hillary Stein"]

let player7: [String : String] = [ "name": "Sammy Adams", "height": "45.0", "isExperienced": "false", "guardians": "Jeff Adams"]

let player8: [String : String] = [ "name": "Karl Saygan", "height": "42.0", "isExperienced": "true", "guardians": "Heather Bledsoe"]

let player9: [String : String] = [ "name": "Suzane Greenberg", "height": "44.0", "isExperienced": "true", "guardians": "Henrietta Dumas"]

let player10: [String : String] = [ "name": "Sal Dali", "height": "41.0", "isExperienced": "false", "guardians": "Gala Dali"]

let player11: [String : String] = [ "name": "Joe Kavalier", "height": "39.0", "isExperienced": "false", "guardians": "Sam and Elaine Kavalier"]

let player12: [String : String] = [ "name": "Ben Finkelstein", "height": "44.0", "isExperienced": "false", "guardians": "Aaron and Jill Finkelstein"]

let player13: [String : String] = [ "name": "Diego Soto", "height": "41.0", "isExperienced": "true", "guardians": "Robin and Sarika Soto"]

let player14: [String : String] = [ "name": "Chloe Alaska", "height": "47.0", "isExperienced": "false", "guardians": "David and Jamie Alaska"]

let player15: [String : String] = [ "name": "Arnold Willis", "height": "43.0", "isExperienced": "false", "guardians": "Claire Willis"]

let player16: [String : String] = [ "name": "Phillip Helm", "height": "44.0", "isExperienced": "true", "guardians": "Thomas Helm and Eva Jones"]

let player17: [String : String] = [ "name": "Les Clay", "height": "42.0", "isExperienced": "true", "guardians": "Wynonna Brown"]

let player18: [String : String] = [ "name": "Herschel Krustofski", "height": "45.0", "isExperienced": "true", "guardians": "Hyman and Rachel Krustofski"]


// Array with all Players inside it

var players: [[String: String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


//сreate a dictionary array and put all the data about the players in it

var isexperiencedPlayer: [[String: String]] = []
var inexperiencedPlayer: [[String: String]] = []

for player in players {
    if player["isExperienced"] == "true" {
        isexperiencedPlayer.append(player)
    } else {
        inexperiencedPlayer.append(player)
    }
}
for player in players {
    if player["isExperienced"] == "false" {
        inexperiencedPlayer.append(player)
    }else{
        isexperiencedPlayer.append(player)
    }
    
}
// create three empty arrays with the name of the commands
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []
var soccerTeams = [teamDragons, teamSharks, teamRaptors]

//sort players by team so that the teams have the same number of experienced and not experienced players

for player in players {
    if teamDragons.count <= teamSharks.count && teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamSharks.count {
        teamDragons.append(player)
    } else if teamSharks.count <= teamRaptors.count && teamRaptors.count <= teamDragons.count && teamDragons.count <= teamRaptors.count {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

// Sending letters to the Guardians - Team Dragons

var letters = [String]()

let dragonsPractice = "March 17 at 1pm"
let sharksPractice = "March 17 at 3pm"
let raptorsPractice = "March 18 at 1pm"

// creating letters for team dragons

for dragonPlayer in teamDragons {
    
    let letterForGuardians = "Dear \(dragonPlayer["guardians"]!), \(dragonPlayer["name"]!) is allowed to play in Team Dragons this season. The first training begins on \(dragonsPractice). We are looking forward to a succesful and exciting season with \(dragonPlayer["name"]!)."
    letters.append(letterForGuardians)
    
}

// creating letters for team sharks

for sharkPlayer in teamSharks {
    
    let letterForGuardians = "Dear \(sharkPlayer["guardians"]!), \(sharkPlayer["name"]!) is allowed to play in Team Sharks this season. The first training begins on \(sharksPractice). We are looking forward to a succesful and exciting season with \(sharkPlayer["name"]!)."
    letters.append(letterForGuardians)
    
}

// creating letters for team raptors

for raptorPlayer in teamRaptors {
    
    let letterForGuardians = "Dear \(raptorPlayer["guardians"]!), \(raptorPlayer["name"]!) is allowed to play in Team Raptors this season. The first training begins on \(raptorsPractice). We are looking forward to a succesful and exciting season with \(raptorPlayer["name"]!)."
    letters.append(letterForGuardians)
    
}

// print all letters in the console

for letterForGuardians in letters {
    print(letterForGuardians)
}
