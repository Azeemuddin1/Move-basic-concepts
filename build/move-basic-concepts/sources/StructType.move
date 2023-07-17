module my_addrx::StructType{
        use std::debug::print;
        use std::vector;
        use std::string::{String,utf8};

        struct Person has store,copy,drop{
            name:String,
            age:u64
        }

        struct List has key,drop{
            list_of_person:vector<Person>
        }

        fun addperson(newperson:Person, oldperson: &mut List):Person{
            vector::push_back(&mut oldperson.list_of_person, newperson);
            print(&newperson);
            newperson
        }

        #[test]

        fun test_checkperson(){
            let firstperson = Person{
                name:utf8(b"Azeem"),
                age:32
            };
            let list_of_persons =List{
                list_of_person:vector::empty<Person>()
            };
         
            let newper = addperson(firstperson, &mut list_of_persons);
            print(&newper.name);
    
        }
}