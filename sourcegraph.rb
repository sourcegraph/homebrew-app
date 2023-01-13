# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sourcegraph < Formula
  desc "Code intelligence and search"
  homepage "https://github.com/sourcegraph/sourcegraph"
  version "0.0.0-devel"
  license "Sourcegraph Enterprise License (portions licensed under Apache 2)"

  depends_on "git"
  depends_on "redis"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sourcegraph/sourcegraph-app/releases/download/v0.0.0-devel/sourcegraph_0.0.0-devel_darwin_arm64.zip"
      sha256 "d7849624557adcd7444f71a721055d36713d95d800caeaab9ae78f333cb19f24"

      def install
        bin.install "sourcegraph"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sourcegraph/sourcegraph-app/releases/download/v0.0.0-devel/sourcegraph_0.0.0-devel_darwin_amd64.zip"
      sha256 "3ddb8f634dc8d7168750faf57ece285a8835189634d6f79fedf5c2e3c496c632"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sourcegraph/sourcegraph-app/releases/download/v0.0.0-devel/sourcegraph_0.0.0-devel_linux_amd64.zip"
      sha256 "ac1f966a088bbaf71f9fe78bfdb3a70ca47358c278b2d183d8702696c25ded6d"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  test do
    system "#{bin}/sourcegraph --help"
  end
end
