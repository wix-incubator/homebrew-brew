cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/0.9.4539/DetoxInstruments-v0.9.b4539.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  app 'Detox Instruments.app'
end
