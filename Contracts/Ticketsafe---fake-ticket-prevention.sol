// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// We import the standard contracts from OpenZeppelin
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Project (TicketSafe)
 * @dev This contract uses ERC721 (NFTs) to create verifiable, non-fakeable
 * event tickets. Each ticket is a unique token.
 */
contract Project is ERC721, Ownable {

    // --- State Variables ---

    // A counter to ensure each minted ticket (NFT) has a unique ID
    uint256 private _tokenIdCounter;

    // A special address (e.g., the gate scanner's wallet) that has permission
    // to "redeem" tickets, marking them as used.
    address public validatorAddress;

    // We need to store extra info for each ticket that isn't
    // part of the standard ERC721.
    struct TicketInfo {
        uint eventId;      // Which event is this ticket for?
        string seatInfo;   // e.g., "Section 101, Row B, Seat 12"
        bool isRedeemed;   // Has this ticket been used at the gate?
    }

    // A mapping from the ticket's unique ID (tokenId) to its info
    mapping(uint256 => TicketInfo) public ticketDetails;

    // --- Events ---
    event TicketIssued(uint256 indexed tokenId, uint indexed eventId, address indexed owner, string seatInfo);
    event TicketRedeemed(uint256 indexed tokenId, address indexed validator);

    // --- Constructor ---

    /**
     * @dev Sets up the NFT collection with a name and symbol.
     * Sets the contract deployer as the Owner.
     */
    constructor() ERC721("TicketSafe", "TKS") Ownable(msg.sender) {
        // The deployer is by default the Owner
    }

    // --- Core Functions ---

    /**
     * @dev Core Function 1: Issues a new ticket.
     * Only the 'Owner' (the event organizer) can call this.
     * It mints a new NFT and assigns it to the buyer.
     * @param _to The wallet address of the ticket buyer.
     * @param _eventId A number identifying the event.
     * @param _seatInfo A string describing the seat or ticket type.
     */
    function issueTicket(address _to, uint _eventId, string memory _seatInfo) public onlyOwner {
        uint256 newItemId = _tokenIdCounter;
        
        // 1. Create the NFT and assign it to the buyer
        _safeMint(_to, newItemId);
        
        // 2. Store the ticket's information
        ticketDetails[newItemId] = TicketInfo({
            eventId: _eventId,
            seatInfo: _seatInfo,
            isRedeemed: false
        });

        // 3. Emit an event for logging
        emit TicketIssued(newItemId, _eventId, _to, _seatInfo);

        // 4. Increment the counter for the next ticket
        _tokenIdCounter++;
    }

    /**
     * @dev Core Function 2: Redeems a ticket at the gate.
     * Marks the ticket as "used" to prevent re-entry.
     * Only a pre-authorized 'validator' address can call this.
     * @param _tokenId The ID of the ticket being scanned.
     */
    function redeemTicket(uint256 _tokenId) public {
        // 1. Check if the caller is the authorized validator
        require(msg.sender == validatorAddress, "Caller is not an authorized validator");
        
        // 2. Check if the ticket has already been used
        TicketInfo storage ticket = ticketDetails[_tokenId];
        require(!ticket.isRedeemed, "Ticket has already been redeemed");

        // 3. Mark the ticket as used
        ticket.isRedeemed = true;

        // 4. Emit an event
        emit TicketRedeemed(_tokenId, msg.sender);
    }

    /**
     * @dev Core Function 3: Checks if a ticket is valid.
     * This is a public 'view' function anyone can call (e.g., a secondary
     * buyer or the validation app) to check a ticket's status *before*
     * redeeming or buying it.
     * @param _tokenId The ID of the ticket to check.
     * @return bool True if the ticket exists and has not been used.
     */
    function isValid(uint256 _tokenId) public view returns (bool) {
        // 1. Check if the token ID even exists (is owned by someone)
        // _exists() is a function from ERC721
        if (ownerOf(_tokenId) == address(0)) {
    return false;
}

        // 2. Check if it has been redeemed
        return !ticketDetails[_tokenId].isRedeemed;
    }

    // --- Helper Function ---

    /**
     * @dev Allows the Owner (organizer) to set the validator's address.
     */
    function setValidator(address _newValidator) public onlyOwner {
        validatorAddress = _newValidator;
    }
}
