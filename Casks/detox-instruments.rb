cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/0.9.4525/DetoxInstruments-v0.9.b4525.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  app 'Detox Instruments.app'
end
