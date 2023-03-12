class ElbLogAnalyzer < Formula
  include Language::Python::Virtualenv

  desc "Tool for analyzing AWS ELB logs"
  homepage "https://dmdhrumilmistry.github.io/elb-log-analyzer"
  url "https://files.pythonhosted.org/packages/f7/87/9992f3e566175b1e7089852780539426f8369973ad017e3403b1457c3769/elb_log_analyzer-0.4.1.tar.gz"
  sha256 "166030aef792e439b82bcbcc0c8b57ccd37107f051e110ed1ae304bc82304ab6"

  depends_on "python3"

  rresource "elb-log-analyzer" do
    url "https://files.pythonhosted.org/packages/f7/87/9992f3e566175b1e7089852780539426f8369973ad017e3403b1457c3769/elb_log_analyzer-0.4.1.tar.gz"
    sha256 "166030aef792e439b82bcbcc0c8b57ccd37107f051e110ed1ae304bc82304ab6"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
