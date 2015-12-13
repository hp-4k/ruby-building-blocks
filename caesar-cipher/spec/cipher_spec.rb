require 'spec_helper'

RSpec.describe "caesar_cipher()" do
  it "throws an error with less than 2 arguments" do
    expect { caesar_cipher() }.to raise_error ArgumentError
  end
  
  it "throws an error with more than 2 arguments" do
    expect { caesar_cipher('text', 3, 2) }.to raise_error ArgumentError
  end
  
  it "correctly encrypts an input string" do
    expect(caesar_cipher("What a string!", 5)).to eq "Bmfy f xywnsl!"
  end
  
  it "correctly decodes an input string" do
    expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eq "What a string!"
  end
  
  it "does not encrypt punctuation marks" do
    expect(caesar_cipher('!&@,.?', 10)).to eq '!&@,.?'
  end
  
  it "does not encrypt an empty string" do
    expect(caesar_cipher('', 10)).to eq ''
  end
end