class offat < Formula
    desc "OWASP OFFAT (OFFensive Api Tester) is created to automatically test API for common vulnerabilities after generating tests from openapi specification file. It provides feature to automatically fuzz inputs and use user provided inputs during tests specified via YAML config file."
    homepage "https://owasp.org/OFFAT"
    url "https://github.com/OWASP/OFFAT/archive/v0.11.0.tar.gz"
    sha256 "3f6dcd1d482a580e2f0e8484a0c1772281d1c723983d428824df1fd76114dec2"
  
    depends_on "python"
  
    def install
      venv = virtualenv_create(libexec)
      venv.pip_install "offat==0.11.0"
      bin.install_symlink libexec/"bin/offat"
    end
  
    test do
      # OFFAT package test script to ensure it's installed correctly
      system bin/"offat", "--version"
    end
  end
  