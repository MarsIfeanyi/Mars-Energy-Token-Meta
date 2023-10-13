// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MarsEnergyToken {
    // public variables here
    string public TokenName = "Mars Energy Token";
    string public TokenSymbol = "MET";
    uint public TotalSupply;

    // mapping variable here
    mapping(address => uint) public balances;

    error BurnerCannotBurnLessThanBalance();

    /**
     * @param _minter the address where the new token will be minted to.
     * @param _value the amount of the new token that will be minted.
     *
     * @dev here the minter is msg.sender, since this is no restriction.
     */
    function mint(address _minter, uint _value) public {
        // Update the state variables after minting
        TotalSupply += _value;

        balances[_minter] += _value;
    }

    /**
     * @param _burner the address from where the tokens will be burned
     * @param _value the amount of token that will be burned
     *
     * @dev here the burner is msg.sender, since this is no restriction.
     */
    function burn(address _burner, uint _value) public {
        if (balances[_burner] < _value) {
            revert BurnerCannotBurnLessThanBalance();
        }

        TotalSupply -= _value;
        balances[_burner] -= _value;
    }
}
