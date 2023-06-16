Tokens that combine fungibility with non-fungible aspects. By incorporating elements of both ERC-20 and ERC-721 or ERC-1155 standards, you can create tokens that have fungible properties but also unique inscriptions or characteristics.

To implement this hybrid token, you can modify the standard ERC-20 token contract to include an additional mapping that associates an inscription or metadata with each token ID.

Here’s an example of how you could modify the contract: In this contract, we have added a mapping called tokenInscription, which associates a token ID (represented by a uint256 value) with an inscription (represented by a string value).

The setInscription function allows the owner to set an inscription for a given token ID, and the getInscription function retrieves the inscription for a given token ID.

Note that this contract is still compliant with the ERC-20 standard, as it includes the basic functionality for balance tracking and transfers.

However, it extends the standard by providing methods for setting and retrieving inscriptions associated with each token.

Remember to thoroughly test and audit any smart contract code before deploying it to the blockchain.

-----
You can query Etherscan for the token inscriptions by using the Etherscan API. However, the inscriptions stored in the `tokenInscriptions` mapping are not directly accessible on Etherscan by default as Etherscan will need to enhance its system to make this accessible. 

If you want to display the token inscriptions by default if Etherscan fails to adopt this enhancement to the ERC20 standard, you would need to create a custom frontend or UI that interacts with the Etherscan API to fetch the inscription data from your contract and display it on a website or application.

Here are the general steps you can follow to display token inscriptions on alternatives to Etherscan:

1. Deploy your `MyToken` contract on the Ethereum network and obtain the contract address.

2. Create a frontend application or website that uses the Etherscan API to fetch data from your contract. You can use dev frameworks like React, Angular, or Vue.js to build your frontend.

3. Use the Etherscan API to query the `tokenInscriptions` mapping in your contract. You'll need to provide the contract address and the specific token ID to retrieve the inscription for that token, in our example(s) there are two versions, one is a standard inscribe, the other is inscribe+.avif-nft_links + inscribe+URL(s), the following is the finalised version (there was many versions on live/test nets with failures). 

Final version: https://etherscan.io/address/0x9fb8a19e1e903a13c321179cb884ddadd7288069

4. Parse the API response and display the token inscription on your frontend UI.

Note that you'll need to properly configure and manage the API requests, including authentication if required by the Etherscan API. Make sure to review the Etherscan API documentation for details on the specific endpoints and parameters you need to use.

Keep in mind that Etherscan is a third-party service, and it may have limitations or restrictions on the data it provides. Therefore, it's important to review the Etherscan API documentation and any usage guidelines or restrictions they have in place.

Alternatively, you can consider building a custom frontend that directly interacts with your deployed contract using web3.js or ethers.js libraries. This approach would allow you to retrieve the token inscriptions directly from the contract without relying on Etherscan.
