class Kubecompare < Formula
    desc "A tool to compare Kubernetes rollout histories"
    url "https://github.com/wozniakpl/kubecompare/archive/v0.1.1.tar.gz"
    sha256 "0944609aec673f233eeb585c67db007802485b88282fb329020534df92c466a4"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args, "-o", bin/"kubecompare"
    end
  
    test do
      system "#{bin}/kubecompare", "-h"
    end
  end
  