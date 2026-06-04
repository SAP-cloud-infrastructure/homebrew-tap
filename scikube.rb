# typed: true
# frozen_string_literal: true

# Scikube is a formula for installing the scikube CLI
class Scikube < Formula
  desc "CLI for managing SCI Customer Gardener clusters"
  homepage "https://github.wdf.sap.corp/sap-cloud-infrastructure/persephone"
  version "0.3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://scikube.content.eu-de-1.cloud.sap/persephone-0.3.0-darwin-arm64.tar.gz"
      sha256 "0627f658ba21df73a7607d81c64c4e51ce236e6e195f0e3bbc1b4dc6d47b7924"
    else
      url "https://scikube.content.eu-de-1.cloud.sap/persephone-0.3.0-darwin-amd64.tar.gz"
      sha256 "802400291a049e1f69aa67844dffac4699644ce080104bcb81294a9d09cb3707"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://scikube.content.eu-de-1.cloud.sap/persephone-0.3.0-linux-arm64.tar.gz"
      sha256 "8844969655025a57a50db3d5e1095d3db70be6e86414d9e457b0fac9cc6df03e"
    else
      url "https://scikube.content.eu-de-1.cloud.sap/persephone-0.3.0-linux-amd64.tar.gz"
      sha256 "8575761c18d16a885e8a0310bb4e5102470ee6d81e3c38e1c98e7c8c4e7ac72b"
    end
  end

  def install
    bin.install "scikube"
  end

  test do
    system "#{bin}/scikube", "version"
  end
end
