pragma solidity ^0.6.0;

contract SupplyChain {
    
    // Event is triggered whenever a item is added to the supplychain and includes index of the newly added item
    event Added(uint256 index);
    
    // State of the product in the supply chain. description - describes the state, person - eth address of the person associated with the state
    struct State{
        string description;
        address person;
    }
    
    // Structure which determines the product info
    struct Product{
        address creator; // Eth address of the creator
        string productName;
        uint256 productId;
        string date;
        uint256 totalStates;

        //Positions field is the mapping from state indices to State object
        mapping (uint256 => State) positions;
    }
    
    //Creates mapping(how one info set is related to other using key-value pairs) named allProducts that maps product IDs (of type uint) to Product obj..... similar to hash tables
    mapping(uint => Product) allProducts;

    // Keeps track of total number products in supply chain
    uint256 items=0;
    
    //
    function concat(string memory _a, string memory _b) public returns (string memory){

        //Converts strings into byte arrays (which allows direct access to individual bytes - for binary data processing)
        bytes memory bytes_a = bytes(_a);
        bytes memory bytes_b = bytes(_b);

        string memory length_ab = new string(bytes_a.length + bytes_b.length);
        bytes memory bytes_c = bytes(length_ab);
        uint k = 0;
        for (uint i = 0; i < bytes_a.length; i++) bytes_c[k++] = bytes_a[i];
        for (uint i = 0; i < bytes_b.length; i++) bytes_c[k++] = bytes_b[i];
        return string(bytes_c);
    }
    

    //This creates a new Product struct named newItem
    function newItem(string memory _text, string memory _date) public returns (bool) {
        Product memory newItem = Product({creator: msg.sender, totalStates: 0,productName: _text, productId: items, date: _date});
        //items act as the key to uniquely identify the product in mapping
        allProducts[items]=newItem;
        items = items+1;
        emit Added(items-1);
        return true;
    }
    


    function addState(uint _productId, string memory info) public returns (string memory) {
        require(_productId<=items);
        
        State memory newState = State({person: msg.sender, description: info});
        
        allProducts[_productId].positions[ allProducts[_productId].totalStates ]=newState;
        
        allProducts[_productId].totalStates = allProducts[_productId].totalStates +1;
        return info;
    }
    
    function searchProduct(uint _productId) public returns (string memory) {

        require(_productId<=items);
        string memory output="Product Name: ";
        output=concat(output, allProducts[_productId].productName);
        output=concat(output, "<br>Manufacture Date: ");
        output=concat(output, allProducts[_productId].date);
        
        for (uint256 j=0; j<allProducts[_productId].totalStates; j++){
            output=concat(output, allProducts[_productId].positions[j].description);
        }
        return output;
    }
    
}