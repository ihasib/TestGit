import UIKit


//var array = ["jeem","jeenam","nahin","farid","bappi","mrinmoy"]
//
//var str = "je"
//var set = CharacterSet(charactersIn: str)
//
//for singleStr in array{
//    if singleStr.starts(with: str){
//        print("\(singleStr)")
//    }
//}
//


class Person{
    var name: String
    var mail: String
    var address: String?
    var contact: String?
    
    init(name:String,mail: String){
        self.name = name
        self.mail = mail
    }
    
    init(name:String,mail: String,address: String){
        self.name = name
        self.mail = mail
        self.address = address
    }
    
    init(name:String,mail: String,address: String, contact: String){
        self.name = name
        self.mail = mail
        self.address = address
        self.contact = contact
    }
}


var name: String? = "Hasib"
var mail: String? = "has@gmail.com"
var address: String? = "jhenaidah"
var contact: String? = "019226"

var persons : [String : Person] = [:]
if let nam = name , let mai = mail {
    var hasib = Person(name: nam, mail: mai)
    persons[hasib.mail] = hasib
    hasib = Person(name: "Nasin", mail: mai, address: address!)
    if(persons[hasib.mail] != nil){
            print("already exist")
    }else{
        persons[hasib.mail] = hasib
    }
}

for (key,value) in  persons{
    print(key,value.name)
}
