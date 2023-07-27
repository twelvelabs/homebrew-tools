# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Depctl < Formula
  desc "Manage project development dependencies"
  homepage "https://github.com/twelvelabs/depctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/twelvelabs/depctl/releases/download/v0.1.0/depctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "4abb9035bde5bdd9fc642236f7b004e8ca218deff0dc5b972accfddba071c77a"

      def install
        bin.install "depctl"
        bash_completion.install "completions/depctl.bash" => "depctl"
        zsh_completion.install "completions/depctl.zsh" => "_depctl"
        fish_completion.install "completions/depctl.fish"
        man1.install "manpages/depctl.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/twelvelabs/depctl/releases/download/v0.1.0/depctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "5fc131cc0ac077e7d10c830339dab1e57b23e86415f49b3c4527e17837f05cfd"

      def install
        bin.install "depctl"
        bash_completion.install "completions/depctl.bash" => "depctl"
        zsh_completion.install "completions/depctl.zsh" => "_depctl"
        fish_completion.install "completions/depctl.fish"
        man1.install "manpages/depctl.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/twelvelabs/depctl/releases/download/v0.1.0/depctl_0.1.0_linux_amd64.tar.gz"
      sha256 "50e0a07e2ae11dce506d0b49bc250ab64385395a984178629141e8c5e9e5a468"

      def install
        bin.install "depctl"
        bash_completion.install "completions/depctl.bash" => "depctl"
        zsh_completion.install "completions/depctl.zsh" => "_depctl"
        fish_completion.install "completions/depctl.fish"
        man1.install "manpages/depctl.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/twelvelabs/depctl/releases/download/v0.1.0/depctl_0.1.0_linux_arm64.tar.gz"
      sha256 "fd77df10facd65b5852a4bbc57f44fab89d592f1dc65f0d429f1301b622ef22e"

      def install
        bin.install "depctl"
        bash_completion.install "completions/depctl.bash" => "depctl"
        zsh_completion.install "completions/depctl.zsh" => "_depctl"
        fish_completion.install "completions/depctl.fish"
        man1.install "manpages/depctl.1.gz"
      end
    end
  end

  test do
    system "#{bin}/depctl --version"
  end
end
