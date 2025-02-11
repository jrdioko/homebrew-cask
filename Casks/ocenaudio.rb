cask "ocenaudio" do
  version "3.8.1"

  if MacOS.version <= :high_sierra
    sha256 "ada05788335a285029d7474e6989775dcdf63c56fa3d1f8fa1577c5142d7c96d"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "2439f8a425a17e8d751a217e61ee9a96cfe3da0f963be637829fa794088e48d8"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
