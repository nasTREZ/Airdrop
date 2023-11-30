#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;

//new event 
    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}

// hellp me get starknet pls
    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }
//new mod starknet
}//can i be th efirst one to receive the drop?
