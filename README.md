# tokencontract-fungible-inscripted
The idea of creating tokens that combine fungibility with non-fungible aspects is indeed interesting. By incorporating elements of both ERC-20 and ERC-721 or ERC-1155 standards, you can create tokens that have fungible properties but also unique inscriptions or characteristics.

To implement this hybrid token, you can modify the standard ERC-20 token contract to include an additional mapping that associates an inscription or metadata with each token ID. Here's an example of how you could modify the contract:
---

In this contract, we have added a mapping called tokenInscription, which associates a token ID (represented by a uint256 value) with an inscription (represented by a string value). The setInscription function allows the owner to set an inscription for a given token ID, and the getInscription function retrieves the inscription for a given token ID.

Note that this contract is still compliant with the ERC-20 standard, as it includes the basic functionality for balance tracking and transfers. However, it extends the standard by providing methods for setting and retrieving inscriptions associated with each token.

Remember to thoroughly test and audit any smart contract code before deploying it to the blockchain.
