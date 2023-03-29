
// Computed Properties Playground


struct Dog {
    var age = 0
    var color = ""
    
    // name is a Computed Property
    var name: String {
        if age > 10 {
            return "Old Dog"
        }
        return "Young Dog"
    }
    
    // you can ommit the "return" keyword if the function is returning something simple
    var nickname: String {
        "test-nickname"
    }
}


// create a simple Dog

var rocky = Dog()

// because the initial value of age is 0, then name is equals to "Young Dog"
print(rocky.name)


// as soon as we update the age, the name is also automatically updated
rocky.age = 12

print(rocky.name) // now name is "Old Dog", note that we didn't update name directly, it was updated inderectly from the age change.


// Swift UI uses computed properties for rendering the elements

import SwiftUI

struct MyView: View {
    
    // computed property
    var body: some View {
        Text("Hello Nick")
    }
}


struct ContentView_Previews: PreviewProvider{
    
    static var previews: some View {
        MyView()
    }
}


