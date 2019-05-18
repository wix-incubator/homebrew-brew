cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/1.10.10258/DetoxInstruments-v1.10.b10258.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  depends_on macos: '>= :mojave'
  
  app 'Detox Instruments.app'
end
