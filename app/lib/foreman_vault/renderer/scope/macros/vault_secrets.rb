# frozen_string_literal: true

module ForemanVault
  module Renderer
    module Scope
      module Macros
        module VaultSecrets
          def vault_secret(vault_connection, secret_path)
            vault = VaultConnection.find_by(name: vault_connection)
            vault.fetch_secret(secret_path) if vault&.token_valid?
          end
        end
      end
    end
  end
end