// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import '@statechannels/nitro-protocol/contracts/interfaces/INitroTypes.sol';

/**
 * @notice Interface
 */
interface IMarginTypes {
	enum MarginIndices {
		Initiator,
		Follower
	}

	struct MarginCall {
		uint64 version;
		uint256[2] margin;
	}

	struct SignedMarginCall {
		MarginCall marginCall;
		INitroTypes.Signature[2] sigs;
	}
}
