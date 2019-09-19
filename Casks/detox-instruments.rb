cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/1.11.10819/DetoxInstruments-v1.11.b10819.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  depends_on macos: '>= 10.14.4'
  
  app 'Detox Instruments.app'
end
