cask 'detox-instruments' do
  version :latest
  sha256 :no_check

  url 'https://github.com/wix/DetoxInstruments/releases/download/0.9.1.6378/DetoxInstruments-v0.9.1.b6378.zip'
  name 'Detox Instruments'
  homepage 'https://github.com/wix/DetoxInstruments'

  depends_on macos: '>= :high_sierra'
  
  app 'Detox Instruments.app'
end
