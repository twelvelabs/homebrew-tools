# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stamp < Formula
  desc "A project and file scaffolding tool"
  homepage "https://github.com/twelvelabs/stamp"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/twelvelabs/stamp/releases/download/v0.6.0/stamp_0.6.0_darwin_amd64.tar.gz"
      sha256 "9428b422a6832e68b88957cb6378477ff07b175c8a016a89536c10856eb3beee"

      def install
        bin.install "stamp"
        bash_completion.install "completions/stamp.bash" => "stamp"
        zsh_completion.install "completions/stamp.zsh" => "_stamp"
        fish_completion.install "completions/stamp.fish"
        man1.install "manpages/stamp.1.gz"
      end
    end
    on_arm do
      url "https://github.com/twelvelabs/stamp/releases/download/v0.6.0/stamp_0.6.0_darwin_arm64.tar.gz"
      sha256 "fe3efb725b7be45e09dd0e8ebb502a1064ddcf977ae77fbdd6765701d6941e9e"

      def install
        bin.install "stamp"
        bash_completion.install "completions/stamp.bash" => "stamp"
        zsh_completion.install "completions/stamp.zsh" => "_stamp"
        fish_completion.install "completions/stamp.fish"
        man1.install "manpages/stamp.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/twelvelabs/stamp/releases/download/v0.6.0/stamp_0.6.0_linux_amd64.tar.gz"
        sha256 "bba45883e736e2536401b50195b487cde8d3222abf0625e0603bf6ee905e20fc"

        def install
          bin.install "stamp"
          bash_completion.install "completions/stamp.bash" => "stamp"
          zsh_completion.install "completions/stamp.zsh" => "_stamp"
          fish_completion.install "completions/stamp.fish"
          man1.install "manpages/stamp.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/twelvelabs/stamp/releases/download/v0.6.0/stamp_0.6.0_linux_arm64.tar.gz"
        sha256 "200b809d7df19c3d9b34313741c814c8f2ee58f986a7a5c9909bc9a8c7b04528"

        def install
          bin.install "stamp"
          bash_completion.install "completions/stamp.bash" => "stamp"
          zsh_completion.install "completions/stamp.zsh" => "_stamp"
          fish_completion.install "completions/stamp.fish"
          man1.install "manpages/stamp.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/stamp --version"
  end
end
