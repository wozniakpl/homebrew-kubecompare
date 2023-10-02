class Kubecompare < Formula
    desc "A tool to compare Kubernetes rollout histories"
    url "https://github.com/wozniakpl/kubecompare/archive/v0.1.2.tar.gz"
    sha256 "c58e2c6420fcd65068263c38343735992c7ba6da3c7720213afdfb9f0166f662"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args, "-o", bin/"kubecompare"
    end
  
    test do
      system "#{bin}/kubecompare", "-h"
    end
  end
  