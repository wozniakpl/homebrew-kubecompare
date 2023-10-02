class Kubecompare < Formula
    desc "A tool to compare Kubernetes rollout histories"
    url "https://github.com/wozniakpl/kubecompare/archive/v0.1.3.tar.gz"
    sha256 "ad03fe1002515ee2d4347f94bf59ffa30f86f6f6e8500e666148a9e105fb7bae"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args, "-o", bin/"kubecompare"
    end
  
    test do
      system "#{bin}/kubecompare", "-h"
    end
  end
  