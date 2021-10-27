# Candao PR Demo

This repository demonstrates how to use Github Actions to send install proposals to a [CanDAO](https://github.com/ocluf/Candao) canister.

## How to set up in a new repository

1. Create a new dfx identity locally and print the principal ID.

   ```
   dfx identity new candao-github-bot
   dfx identity use candao-github-bot
   dfx identity get-principal
   ```

   Don't forget to switch back to your regular identity.

1. Add a new member to the CanDAO canister with the above principal ID and disallowed voting. The bot member is just there to create proposals, no need for any voting power.

1. Add the private key of the bot identity to a github secret.
   ```
   cat ~/.config/dfx/identity/candao-github-bot/identity.pem
   ```

This implementation uses [ic-repl](https://github.com/chenyan2002/ic-repl) to connect to the IC and send the proposal. See how it's done in the [workflow file](.github/workflows/send-proposal.yaml).
