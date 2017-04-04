enum CardinalDirection {
    case north
    case south
    case east
    case west
}



func singleDirection2(direction: CardinalDirection, distance: Int) -> (Int, Int) {
    var (eastWest, northSouth) = (0, 0)
        if direction == .north {
            northSouth += distance
        } else if direction == .south {
            northSouth -= distance
        } else if direction == .east {
            eastWest += distance
        } else {
            eastWest -= distance
        }
        return (eastWest, northSouth)
}

func coordinatesToDistance(coordinates: (Int, Int)) -> Int {
    let (eastWest, northSouth) = coordinates
    var totalDistance = 0
    if eastWest <= 0 && northSouth >= 0 {
        totalDistance = northSouth - eastWest
    } else if eastWest >= 0 && northSouth <= 0 {
        totalDistance = eastWest - northSouth
    } else if eastWest <= 0 && northSouth <= 0 {
        totalDistance = -eastWest - northSouth
    } else {
        totalDistance = eastWest + northSouth
    }
    return totalDistance
}

func fasterDirections2(directions: [(CardinalDirection, Int)]) -> Int {
    var (eastWest, northSouth) = (0, 0)
    var totalDistance = 0
    for steps in directions {
        let (direction, distance) = steps
        if direction == .north {
            northSouth += distance
        } else if direction == .south {
            northSouth -= distance
        } else if direction == .east {
            eastWest += distance
        } else {
            eastWest -= distance
        }
    }
    if eastWest <= 0 && northSouth >= 0 {
        totalDistance = northSouth - eastWest
    } else if eastWest >= 0 && northSouth <= 0 {
        totalDistance = eastWest - northSouth
    } else if eastWest <= 0 && northSouth <= 0 {
        totalDistance = -eastWest - northSouth
    } else {
        totalDistance = eastWest + northSouth
    }
    print((eastWest, northSouth))
    print("The total distance is \(totalDistance) blocks.")
    return totalDistance
}

enum DirectionChange {
    case left
    case right
}

func changeDirection(turn: DirectionChange) -> CardinalDirection {
    var currentDirection = CardinalDirection.north
    if currentDirection == .north && turn == .right {
        currentDirection = .east
    } else if currentDirection == .north && turn == .left {
        currentDirection = .west
    } else if currentDirection == .south && turn == .right {
        currentDirection = .west
    } else if currentDirection == .south && turn == .left {
        currentDirection = .east
    } else if currentDirection == .east && turn == .right {
        currentDirection = .south
    } else if currentDirection == .east && turn == .left {
        currentDirection = .north
    } else if currentDirection == .west && turn == .right {
        currentDirection = .north
    } else {currentDirection = .south
    }
    return currentDirection
}

func fasterDirections1(directions: [(DirectionChange, Int)]) -> Int {
    var (eastWest, northSouth) = (0, 0)
    var currentDirection = CardinalDirection.north
    var totalDistance = 0
    for steps in directions {
        let (turn, distance) = steps
        if currentDirection == .north && turn == .right {
            currentDirection = .east
        } else if currentDirection == .north && turn == .left {
            currentDirection = .west
        } else if currentDirection == .south && turn == .right {
            currentDirection = .west
        } else if currentDirection == .south && turn == .left {
            currentDirection = .east
        } else if currentDirection == .east && turn == .right {
            currentDirection = .south
        } else if currentDirection == .east && turn == .left {
            currentDirection = .north
        } else if currentDirection == .west && turn == .right {
            currentDirection = .north
        } else {currentDirection = .south
        }
        if currentDirection == .north {
            northSouth += distance
        } else if currentDirection == .south {
            northSouth -= distance
        } else if currentDirection == .east {
            eastWest += distance
        } else {
            eastWest -= distance
        }
    }
    if eastWest <= 0 && northSouth >= 0 {
        totalDistance = northSouth - eastWest
    } else if eastWest >= 0 && northSouth <= 0 {
        totalDistance = eastWest - northSouth
    } else if eastWest <= 0 && northSouth <= 0 {
        totalDistance = -eastWest - northSouth
    } else {
        totalDistance = eastWest + northSouth
    }
    print("The total distance is \(totalDistance) blocks.")
    return totalDistance
}

enum AllDirections {
    case north
    case south
    case east
    case west
    case right
    case left
}

func mixedDirections(facing: AllDirections) -> AllDirections {
    var currentDirection = AllDirections.north
    if currentDirection == .north && facing == .right {
        currentDirection = .east
    } else if currentDirection == .north && facing == .left {
        currentDirection = .west
    } else if currentDirection == .south && facing == .right {
        currentDirection = .west
    } else if currentDirection == .south && facing == .left {
        currentDirection = .east
    } else if currentDirection == .east && facing == .right {
        currentDirection = .south
    } else if currentDirection == .east && facing == .left {
        currentDirection = .north
    } else if currentDirection == .west && facing == .right {
        currentDirection = .north
    } else if currentDirection == .west && facing == .left {
        currentDirection = .south
    } else if facing == .north {
        currentDirection = .north
    } else if facing == .south {
        currentDirection = .south
    } else if facing == .east {
        currentDirection = .east
    } else {
        currentDirection = .west
    }
    return currentDirection
}

func fasterDirections3(directions: [(AllDirections, Int)]) -> Int {
    var (eastWest, northSouth) = (0, 0)
    var currentDirection = AllDirections.north
    var totalDistance = 0
    for steps in directions {
        let (facing, distance) = steps
        if currentDirection == .north && facing == .right {
            currentDirection = .east
        } else if currentDirection == .north && facing == .left {
            currentDirection = .west
        } else if currentDirection == .south && facing == .right {
            currentDirection = .west
        } else if currentDirection == .south && facing == .left {
            currentDirection = .east
        } else if currentDirection == .east && facing == .right {
            currentDirection = .south
        } else if currentDirection == .east && facing == .left {
            currentDirection = .north
        } else if currentDirection == .west && facing == .right {
            currentDirection = .north
        } else if currentDirection == .west && facing == .left { currentDirection = .south
        } else if facing == .north {
            currentDirection = .north
        } else if facing == .south {
            currentDirection = .south
        } else if facing == .east {
            currentDirection = .east
        } else {
            currentDirection = .west
        }
        if currentDirection == .north {
            northSouth += distance
        } else if currentDirection == .south {
            northSouth -= distance
        } else if currentDirection == .east {
            eastWest += distance
        } else {
            eastWest -= distance
        }
    }
    if eastWest <= 0 && northSouth >= 0 {
        totalDistance = northSouth - eastWest
    } else if eastWest >= 0 && northSouth <= 0 {
        totalDistance = eastWest - northSouth
    } else if eastWest <= 0 && northSouth <= 0 {
        totalDistance = -eastWest - northSouth
    } else {
        totalDistance = eastWest + northSouth
    }
    print("The total distance is \(totalDistance) blocks.")
    return totalDistance
}
