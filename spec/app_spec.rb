require_relative '../app'

describe '#caesar_cipher' do
  context 'ascii letter less than 65' do
    let(:ascii_number) { 64 }
    let(:shift_number) { 1 }

    it 'returns the same char' do
      result = caesar_cipher(ascii_number.chr, shift_number)
      expect(result).to eq(ascii_number.chr)
    end

    it 'does not return the shifted char' do
      result = caesar_cipher(ascii_number.chr, shift_number)
      expect(result).not_to eq((ascii_number + shift_number).chr)
    end
  end

  context 'ascii letter between 65 and 90' do
    let(:ascii_number) { 65 }
    let(:shift_number) { 1 }

    it 'return shifted char' do
      result = caesar_cipher(ascii_number.chr, shift_number)
      expect(result).to eq((ascii_number + shift_number).chr)
    end
  end

  context 'shift greater than 25' do
    let(:ascii_number) { 65 }
    let(:shift_number) { 28 }

    it 'return shifted char' do
      result = caesar_cipher(ascii_number.chr, shift_number)
      expect(result).to eq('C')
    end
  end

  context 'shift greater than 50' do
    let(:ascii_number) { 65 }
    let(:shift_number) { 52 }

    it 'return shifted char' do
      result = caesar_cipher(ascii_number.chr, shift_number)
      expect(result).to eq('A')
    end
  end
end
