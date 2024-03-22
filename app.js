var contractAbi = [
	[
		{
			"anonymous": false,
			"inputs": [
				{
					"indexed": true,
					"internalType": "uint256",
					"name": "productId",
					"type": "uint256"
				}
			],
			"name": "Added",
			"type": "event"
		},
		{
			"inputs": [
				{
					"internalType": "uint256",
					"name": "_productId",
					"type": "uint256"
				},
				{
					"internalType": "string",
					"name": "info",
					"type": "string"
				}
			],
			"name": "addState",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "nonpayable",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "string",
					"name": "_text",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "_date",
					"type": "string"
				}
			],
			"name": "newItem",
			"outputs": [
				{
					"internalType": "bool",
					"name": "",
					"type": "bool"
				}
			],
			"stateMutability": "nonpayable",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "string",
					"name": "_a",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "_b",
					"type": "string"
				}
			],
			"name": "concat",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "pure",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "uint256",
					"name": "_productId",
					"type": "uint256"
				}
			],
			"name": "searchProduct",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "view",
			"type": "function"
		}
	]
]; // Paste Contract Here

var contractAddress ='0x0A042cff8e74B5d2F75aa32f3e52e69F0AfC8e77'; 

// Prev contract address
// '0x73CF39Fb50a0F3E1f4cbAB2ebf6c0C13fdBEBe65'