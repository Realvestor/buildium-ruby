module Buildium
  module Resources
    class Accounting < Base
      def self.retrieve_all_bank_accounts
        request do
          @path = "/bank_accounts"
        end
      end

      def self.retrieve_bank_account(bank_account_id:)
        request do
          @path = "/bankaccounts/#{bank_account_id}"
        end
      end

      def self.retrieve_general_ledger_transactions
        request do
          @path = "/generalledger/transactions"
        end
      end

      def self.retrieve_general_ledger_transaction(transaction_id:)
        request do
          @path = "/generalledger/transactions/#{transaction_id}"
        end
      end

      def self.retrieve_general_ledger_accounts
        request do
          @path = "/glaccounts"
        end
      end

      def self.retrieve_ledger_account_balances
        request do
          @path = "/glaccounts/balances"
        end
      end

      def self.retrieve_general_ledger_account(gl_account_id:)
        request do
          @path = "/glaccounts/#{gl_account_id}"
        end
      end
    end
  end
end
