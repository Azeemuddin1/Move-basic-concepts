module my_addrx::StringData{
    use std::debug::print;
    use std::string::{String,utf8};

    fun StringType(){
        let hello:String=utf8(b"This is how Strings are defined");
        print(&hello);
    }

    #[test]

    fun test_string(){
        StringType();
    }
}

module my_addrx::StringTypeInVector{
    use std::debug::print;
    use std::string::utf8;

fun greeting():vector<u8>{
    let greet:vector<u8> = b"Wellcome to Move";
    return greet
}

#[test]

fun test_greeting(){
    let greet = greeting();
    print(&greet);
    print(&utf8(greet));
}

}