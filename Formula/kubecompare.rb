class Kubecompare < Formula
    desc "A tool to compare Kubernetes rollout histories"
    url "https://github.com/wozniakpl/kubecompare/archive/v0.1.5.tar.gz"
    sha256 "258f9899d8e027b2b8690237751ee6b91946f845e3e8a3fd64d480188595153c"
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
  