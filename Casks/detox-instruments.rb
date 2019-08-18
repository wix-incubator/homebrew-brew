cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/1.11.10671/DetoxInstruments-v1.11.b10671.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  depends_on macos: '>= :mojave'
  
  app 'Detox Instruments.app'
end
