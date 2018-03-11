cask 'wixtestapp' do
  version '1.0'
  sha256 :no_check

  url "https://raw.githubusercontent.com/wix/homebrew-brew/master/TestApp/TestApp.#{version}.zip"
  name 'TestApp'
  homepage 'https://github.com/wix/homebrew-brew'

  app 'TestApp.app'
end