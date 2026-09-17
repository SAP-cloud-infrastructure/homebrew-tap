# typed: true
# frozen_string_literal: true

# Scikube is a formula for installing the scikube CLI
class Scikube < Formula
  desc "CLI for managing SCI Customer Gardener clusters"
  homepage "https://github.com/SAP-cloud-infrastructure/persephone"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/SAP-cloud-infrastructure/persephone/releases/download/v1.0.0/scikube-1.0.0-darwin-arm64.tar.gz"
      sha256 "731221f4e6998494cadb9ccac28fce0d34bcfff7c053ebd4e35fd10b6b153089"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/SAP-cloud-infrastructure/persephone/releases/download/v1.0.0/scikube-1.0.0-linux-arm64.tar.gz"
      sha256 "3c5f5cf5687e9395cd1ad2c917caf93d7170fd3d05c950a5cf5808c09fbe0eb9"
    else
      url "https://github.com/SAP-cloud-infrastructure/persephone/releases/download/v1.0.0/scikube-1.0.0-linux-amd64.tar.gz"
      sha256 "c42a000ae36fe9eab4c5f572cd317dd668de897de72a83bfa9e93b3384c53e2c"
    end
  end

  def install
    bin.install "scikube"
  end

  test do
    system "#{bin}/scikube", "version"
  end
end
