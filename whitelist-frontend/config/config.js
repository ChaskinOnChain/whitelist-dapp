const config = {
  address: "0x44138c16D71a5AD2AA22DD9b9977174536E4dfb9",
  abi: [
    {
      inputs: [
        {
          internalType: "uint8",
          name: "_maxWhiteListedAddresses",
          type: "uint8",
        },
      ],
      stateMutability: "nonpayable",
      type: "constructor",
    },
    {
      inputs: [],
      name: "AlreadyWhiteListed",
      type: "error",
    },
    {
      inputs: [],
      name: "WhiteListMaxedOut",
      type: "error",
    },
    {
      inputs: [],
      name: "addAddressToWhitelist",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function",
    },
    {
      inputs: [],
      name: "maxWhiteListedAddresses",
      outputs: [
        {
          internalType: "uint8",
          name: "",
          type: "uint8",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [],
      name: "numAddressesWhitelisted",
      outputs: [
        {
          internalType: "uint8",
          name: "",
          type: "uint8",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
    {
      inputs: [
        {
          internalType: "address",
          name: "",
          type: "address",
        },
      ],
      name: "whitelistedAddresses",
      outputs: [
        {
          internalType: "bool",
          name: "",
          type: "bool",
        },
      ],
      stateMutability: "view",
      type: "function",
    },
  ],
};

export default config;
