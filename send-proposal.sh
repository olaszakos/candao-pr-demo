dfx canister create candao_pr_demo

set -e

dfx build

echo "$BOT_IDENTITY" > identity.pem

ic-repl --replica ic send-proposal.repl