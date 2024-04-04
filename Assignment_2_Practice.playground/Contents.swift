

/*
 we want to be able to search for Authors by genre
 we will need to store the authors in a struct
 we will need to store the genres in an array
 and add a function that will search for authors by genre
 returning the authors that match the genre
 and add everything to a GitHub repo (I'll do this manually, old school)
 */

// a collecion of genres
let genres: [String] = ["Sci-fi", "Fiction", "Fantasy", "Non-fiction", "Sports", "Religion"]
struct Author {
    var lastName: String
    var firstName: String
    var genre: String
    var alive: Bool
    // remember that isAlive is part of a struct so it's called a method not function
    func isAlive() -> Bool {
        return alive
    }
}

var authors: [Author] = []
var auth = Author(lastName: "Asimov", firstName: "Issac", genre: "Sci-fi", alive: false)
authors.append(auth) // added to the authores array/collection
auth = Author(lastName: "Stephenson", firstName: "Neil", genre: "Sci-fi", alive: true)
authors.append(auth)
auth = Author(lastName: "Tolstoy", firstName: "Leo", genre: "Fiction", alive: false)
authors.append(auth)

func authorsByGenre(_ genre: String) -> [String] {
    var matches: [String] = []
    for author in authors { // author is a variable name AND is local to the FOR-IN
        if author.genre == genre {
            matches.append(author.lastName)
        }
    }
    return matches
}
func printMatches(_ matches: [String]) -> Void {
    if matches.count > 0 {
        for m in matches {
            print(m)
        }
    }
    else {
        print("no matches found")
    }
}
func printDeadAuthors() -> Void {
    for auth in authors {
        if !auth.isAlive() {
            print("\(auth.firstName) \(auth.lastName) is dead!")
        }
    }
}
var matches = authorsByGenre("Religion")
printMatches(matches)
printDeadAuthors()
