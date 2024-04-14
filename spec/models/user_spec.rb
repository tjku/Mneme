# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  it { is_expected.to have_secure_password }

  it { is_expected.to normalize(:name).from(" John SMITH\n").to('John SMITH') }
  it { is_expected.to normalize(:email).from(" test@EXAMPLE.com\n").to('test@example.com') }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
end
