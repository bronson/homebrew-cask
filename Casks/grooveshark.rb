cask :v1 => 'grooveshark' do
  version :latest
  sha256 :no_check

  url 'http://adops-fio.grooveshark.com/desktop-app/downloads/grooveshark.zip'
  homepage 'http://www.grooveshark.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Grooveshark.app'

  caveats <<-EOS.undent
    #{token} requires Adobe Flash, available via

      brew cask install flash
  EOS
end
