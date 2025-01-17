# frozen_string_literal: true

if defined?(Sequel)
  module AttrEncrypted
    module Adapters
      module Sequel
        def self.extended(base) # :nodoc:
          base.attr_encrypted_options[:encode] = true
        end
      end
    end
  end

  if defined?(Sequel::Model)
    Sequel::Model.extend AttrEncrypted
    Sequel::Model.extend AttrEncrypted::Adapters::Sequel
  end
end
