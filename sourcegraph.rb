# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sourcegraph < Formula
  desc "Code intelligence and search"
  homepage "https://github.com/sourcegraph/sourcegraph"
  version "0.0.199556-snapshot+20230217-8de683"
  license "Sourcegraph Enterprise License (portions licensed under Apache 2)"

  depends_on "git"
  depends_on "redis"
  depends_on "sourcegraph/src-cli/src-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/0.0.199556-snapshot+20230217-8de683/sourcegraph_0.0.199556-snapshot+20230217-8de683_darwin_amd64.zip"
      sha256 "05e28693b1516d5626adc60358a17217000518ffd96898734817e2d7db6c847f"

      def install
        bin.install "sourcegraph"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/sourcegraph-app-releases/0.0.199556-snapshot+20230217-8de683/sourcegraph_0.0.199556-snapshot+20230217-8de683_darwin_arm64.zip"
      sha256 "9c31ef2d5f35946d8f5b819630257eec49a8df8138890e54948b8e1a153675d1"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/sourcegraph-app-releases/0.0.199556-snapshot+20230217-8de683/sourcegraph_0.0.199556-snapshot+20230217-8de683_linux_amd64.zip"
      sha256 "806f19ae31b9913131f5b12da9e56b15d9e82fe1f50251a06e0eb0b5bbf158c5"

      def install
        bin.install "sourcegraph"
      end
    end
  end

  test do
    system "#{bin}/sourcegraph --help"
  end
end
