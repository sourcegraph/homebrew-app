# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sourcegraph < Formula
  desc "Code intelligence and search"
  homepage "https://github.com/sourcegraph/sourcegraph"
  version "2023.03.27+210185.ae7f75"
  license "Sourcegraph Enterprise License (portions licensed under Apache 2)"

  depends_on "git"
  depends_on "sourcegraph/src-cli/src-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/sourcegraph-app-releases/2023.03.27+210185.ae7f75/sourcegraph_2023.03.27+210185.ae7f75_darwin_arm64.zip"
      sha256 "d72625a235b776cfe80720d2c0d078e61b8427604613412291814ba6e8d35214"

      def install
        bin.install "sourcegraph"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/2023.03.27+210185.ae7f75/sourcegraph_2023.03.27+210185.ae7f75_darwin_amd64.zip"
      sha256 "0cfee5705ab3e7e4c98d4cdcf7721a014bcd96f8414d970c63e8c57d7d1e036b"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/2023.03.27+210185.ae7f75/sourcegraph_2023.03.27+210185.ae7f75_linux_amd64.zip"
      sha256 "47059a0729d748070bdbe36fbfb126c26fcc2c8b84a0e29691047b44eaa84409"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  test do
    system "#{bin}/sourcegraph --help"
  end
end
