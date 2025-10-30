# Project Title: Ticketsafe - fake ticket prevention

## Project Description

**Ticketsafe** is a smart contract-based system that uses blockchain technology to eliminate counterfeit event tickets. In the traditional ticketing world, it is easy to duplicate a paper ticket or a QR code, leading to fraud and disappointment for fans.

This project solves the problem by issuing each ticket as a unique **Non-Fungible Token (NFT)** on the blockchain. Each NFT's authenticity and ownership are publicly verifiable, making it impossible to counterfeit. The contract manages the lifecycle of a ticket, from initial creation by the event organizer to final redemption at the venue gate.

## Project Vision

Our vision is to create a new standard for the event ticketing industry where **trust is built-in**. We aim for a future where every fan and secondary-market buyer can be 100% confident that their ticket is authentic and valid. By putting tickets on-chain, we create transparency, security, and new opportunities for fan engagement.

## Key Features

* **Verifiable Authenticity:** Each ticket is an ERC721 NFT. Its existence on the smart contract is proof that it is legitimate.
* **Fraud-Proof Issuance:** Only the contract `Owner` (the event organizer) has the permission to `issueTicket`, or "mint," new tickets.
* **Secure Validation:** The `isValid` function allows anyone (a secondary buyer, a ticket scanner) to instantly check if a ticket ID is real and has not already been used.
* **Single-Use Redemption:** The `redeemTicket` function can only be called by an authorized `validator` address (the gate scanner). This action permanently marks the ticket as `isRedeemed`, making it impossible to be used again.
* **Secure Transfers:** As a standard ERC721 token, the ticket can be securely transferred, sold, or given away from one user's wallet to another on any compatible NFT marketplace.

## Future Scope

This contract is a strong foundation. The project can be expanded in several ways:

* **Role-Based Access Control (RBAC):** Instead of a single `Owner`, implement a more granular system (e.g., `ORGANIZER_ROLE`, `VALIDATOR_ROLE`) to allow multiple organizers or validators to use the same contract.
* **Secondary Sale Royalties (ERC2981):** Implement the NFT royalty standard so that the original event organizer can automatically receive a percentage of every secondary sale. This helps combat scalping by reclaiming a portion of the inflated profit.
* **Event Management:** Expand the contract to include an `Event` struct, allowing organizers to create and manage multiple events (each with its own `eventId`, ticket price, and date) from a single platform.
* **Frontend DApp:** Build a complete decentralized application (DApp) that provides a user interface for:
    * **Organizers:** To create events and issue (mint) tickets.
    * **Fans:** To view their tickets in their wallet (e.g., as a QR code) and transfer them.
    * **Validators:** A simple mobile interface to scan a fan's QR code, check its validity, and call the `redeemTicket` function.

* CONTRACT ADDRESS:0x58e06f475F76F565D4730E47A5F354BB6e7B09F7

* file:///Users/harshitlodhi/Desktop/Screenshot%202025-10-30%20at%2010.49.40%E2%80%AFPM.png
