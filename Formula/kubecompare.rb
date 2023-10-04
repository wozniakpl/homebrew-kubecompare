class Kubecompare < Formula
    desc "A tool to compare Kubernetes rollout histories"
    url "https://github.com/wozniakpl/kubecompare/archive/v0.1.4.tar.gz"
    sha256 "36b57c7732ba3068d737d861779ac9a150999e91ad8bfe87f610c56ccb04930f"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args, "-o", bin/"kubecompare"

      bash_completion.install "completions/kubecompare_bash_completion.sh" => "kubecompare"
      zsh_completion.install "completions/_kubecompare"
    end
  
    test do
      system "#{bin}/kubecompare", "-h"
    end
  end
  