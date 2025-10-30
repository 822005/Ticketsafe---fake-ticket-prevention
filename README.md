# 🎟️ TicketSafe – Fake Ticket Prevention System

### 🧩 Project Title
TicketSafe (TKS) – A Decentralized Ticketing Platform

### 🧾 Project Description
TicketSafe is a decentralized application (DApp) built on the blockchain to eliminate ticket fraud, prevent scalping, and ensure a transparent and secure event ticketing process for both organizers and attendees.

The current ticketing market is plagued with fake tickets, scalpers, and a lack of trust. TicketSafe solves this by **representing every event ticket as a unique Non-Fungible Token (NFT)** on the blockchain. This creates a **single source of truth** for ticket ownership, making it impossible to counterfeit and providing a fully auditable history for every ticket.

### 🎯 Project Vision
Our vision is to revolutionize the event industry by creating a **single, secure, and transparent global standard for ticketing**. By leveraging blockchain, we aim to put power back into the hands of artists, organizers, and legitimate fans, ensuring that every ticket is authentic and every entry is verified.

---

## 💡 How It Works (User Flow)

1.  **Event Creation:** The `Event Organizer` (Admin) deploys the contract and "mints" a specific number of unique tickets (NFTs) for an event, setting a price and name.
2.  **Ticket Purchase:** A `Fan` connects their wallet to the platform and purchases a ticket. The `TicketSafe (TKS)` NFT is transferred to their wallet, proving their ownership.
3.  **Secure Resale (Optional):** If a fan can't attend, they can sell or transfer their ticket NFT to another person through a secure, on-chain transaction. This history is fully traceable.
4.  **Venue Verification:** At the event entrance, the fan presents their NFT (e.g., as a QR code in their wallet). The `Verifier` (venue staff) scans it to instantly confirm its authenticity and ownership against the smart contract, preventing duplicate or fake entries.
5.  **Redemption:** Once verified, the ticket NFT is "redeemed" or marked as used by the verifier, so it cannot be used again.

---

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

* An Ethereum wallet like [MetaMask](https://metamask.io/)
* A code editor like [VS Code](https://code.visualstudio.com/)
* [Remix IDE](https://remix.ethereum.org/) for development & deployment

### Installation & Deployment

1.  **Clone the repo (Optional, you can also just copy the `.sol` file):**
    ```sh
    git clone [https://github.com/your-username/TicketSafe.git](https://github.com/your-username/TicketSafe.git)
    ```
2.  **Open in Remix:**
    * Go to [Remix IDE](https://remix.ethereum.org/).
    * Load the `TicketSafe.sol` contract file.
3.  **Compile the Contract:**
    * Go to the "Solidity compiler" tab.
    * Select compiler version `0.8.0` (or as specified in your `pragma`).
    * Click "Compile."
4.  **Deploy the Contract:**
    * Go to the "Deploy & run transactions" tab.
    * Select "Injected Provider - MetaMask" as your environment (make sure you're on a testnet like Core, Sepolia, etc.).
    * Click "Deploy."
    * Approve the transaction in your MetaMask wallet.

---

## ⚙️ Key Features

* 🛡️ **Fraud-Proof:** Each ticket is a unique NFT (likely ERC-721) that cannot be duplicated or counterfeited.
* 🧾 **Verifiable Ownership:** A public, on-chain ledger proves who owns a ticket at any given moment.
* 🔄 **Controlled & Traceable Transfers:** Securely transfer or resell tickets. The entire history is recorded, helping to mitigate scalping.
* 🔐 **Admin-Controlled Minting:** Only the `Event Organizer` (admin) can create and issue new, authentic tickets for an event.
* ✅ **One-Time Verification:** Tickets are "redeemed" upon use, preventing a single ticket from being used by multiple people.
* 🌐 **Decentralized & Transparent:** No single intermediary controls the ticketing process. All rules are enforced by the smart contract.

---

## 📸 Project Showcase

Here is the contract successfully deployed and verified on the Core Testnet:

*(**Note:** This is the image from your screenshot. Make sure you have it in an `assets` folder in your repository for this link to work!)*

![Core Testnet Contract Details](assets/contract-details.jpg)

---

## 🛠️ Tech Stack

* **Smart Contract Language:** Solidity (v0.8.0+)
* **Blockchain Network:** Core Testnet, Ethereum (EVM compatible)
* **Token Standard:** ERC-721 (assumed, for unique NFTs)
* **Development Tools:** Remix IDE, MetaMask
* **Token Tracker:** TicketSafe (TKS)


## 🚀 Future Scope

* 📱 **Mobile DApp Interface:** A user-friendly mobile app for fans to store, view, and present their NFT tickets as QR codes.
* 💸 **Secondary Market with Royalties:** Build a dedicated secondary marketplace where artists/organizers can earn a percentage of all resale profits.
* 🎟️ **Ticket Bundling:** Allow for "ticket + merchandise" bundles or multi-day passes represented as a single NFT.
* 🔗 **Event Platform Integration:** Create APIs for platforms like Eventbrite or Ticketmaster to mint tickets using the TicketSafe contract.
* 🆔 **Decentralized ID (DID) Integration:** Link tickets to a user's decentralized identity for enhanced security and personalization.

---

## 🧠 Learning Outcomes

* Mastered the development and deployment of **Solidity smart contracts**.
* Gained practical experience with the **ERC-721 (NFT) standard** for creating unique, non-fungible assets.
* Understood how to design and implement **role-based access control** (e.g., `onlyAdmin` for minting).
* Explored a powerful **real-world use case for blockchain** in solving the complex problem of ticket fraud.

* CONTRACT ADDRESS:0x58e06f475F76F565D4730E47A5F354BB6e7B09F7

* file:///Users/harshitlodhi/Desktop/Screenshot%202025-10-30%20at%2010.49.40%E2%80%AFPM.png
* <img width="1680" height="1050" alt="Screenshot 2025-10-30 at 10 49 40 PM" src="https://github.com/user-attachments/assets/15393344-676f-4122-b9d4-75d54ee63877" />

