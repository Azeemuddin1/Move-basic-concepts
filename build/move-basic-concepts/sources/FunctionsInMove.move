module my_addrx::FunctionsInMove{
    use std::debug::print;
    use std::string::utf8;
// without input data
    fun greet(){
        print(&utf8(b"Function in Move"));
    }
 // function which take inputdata   
   fun squr(num:u64){
    let s = num*num;
    print(&s);
   }

   fun equalnumbers(num1:u64,num2:u64):(u64,bool){
    if(num1 > num2){
        return(num1 ,false)
    }
    else if(num2 > num1){
        return(num2 ,false)
    }
    else{
        return (num1 ,true)
    }
   }
   
    #[test]

    fun test_fun(){
        greet();
        squr(12);
        let(num ,status) = equalnumbers(12,12);
        print(&num);
        print(&status);
    }
    
}