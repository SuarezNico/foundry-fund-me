-include .env
deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --broadcast --account sepoliaKey --sender 0x55e43543b8cde3dbf8ec9b13294df91d4d0d46fa --verifier etherscan --verifier-api-key $(ETHERSCAN_API_KEY) -vvvv