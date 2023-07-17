module my_addrx::PrimitiveDataTypes{
    use std::debug::print;

    fun primitiveData(){

        // int 
        let a:u8 =10;
        let b:u64=100;
        let c:u128=10000;

        print(&a);print(&b);print(&c);

        // bool 
        let a1:bool =true;
        let b1:bool=false;
        print(&a1);print(&b1);

        // address 
        let addr:address = @0x021;
        let adrs:address = @my_addrx;
        print(&addr);print(&adrs);
    }

    #[test]

    fun test_primitiveData(){
        primitiveData();
    }
    
}