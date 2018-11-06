cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/1.4.7527/DetoxInstruments-v1.4.b7527.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  depends_on macos: '>= :high_sierra'
  
  app 'Detox Instruments.app'
end
