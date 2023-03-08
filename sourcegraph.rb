# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sourcegraph < Formula
  desc "Code intelligence and search"
  homepage "https://github.com/sourcegraph/sourcegraph"
  version "2023.03.23+204957.f499bb"
  license "Sourcegraph Enterprise License (portions licensed under Apache 2)"

  depends_on "git"
  depends_on "sourcegraph/src-cli/src-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/sourcegraph-app-releases/2023.03.23+204957.f499bb/sourcegraph_2023.03.23+204957.f499bb_darwin_arm64.zip"
      sha256 "def82a7e8ee542ca650f0689d69b3c5461f8fdcb5480192a57c993d93ddfb9a7"

      def install
        bin.install "sourcegraph"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/2023.03.23+204957.f499bb/sourcegraph_2023.03.23+204957.f499bb_darwin_amd64.zip"
      sha256 "14084d9c98d7ab5296a157052320291ca58005fc8953cd2335270c388ca85b83"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/2023.03.23+204957.f499bb/sourcegraph_2023.03.23+204957.f499bb_linux_amd64.zip"
      sha256 "a9fca597fc7a706970b5efa2d4a47708a3484bbc00f154f2afdc0aeef86d3f40"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  test do
    system "#{bin}/sourcegraph --help"
  end
end
