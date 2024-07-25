require_relative '../lib/cipher'

describe '#cipher' do
  it "Cipher {Hello} 6 places" do
    expect(cipher("hello",6)).to eql('nkrru')
  end
end
