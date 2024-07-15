class Rgbds < Formula
  desc "Rednex GameBoy Development System"
  homepage "https://rgbds.gbdev.io"
  license "MIT"
  url "https://github.com/gbdev/rgbds/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "7097e713384376c324bb001707b4d3924dc7051358a54069eb0bfd424ebe3c4e"
  head "https://github.com/gbdev/rgbds.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    sha256 cellar: :any,                 arm64_sonoma:   "644ff192797102456f26f9513540de9ce86765c1177ae24fe6619a2b07c2ad32"
    sha256 cellar: :any,                 arm64_ventura:  "5f8011ddf89542afdf952b5d834fc376cf7e6690988a498426bced15ce6a9200"
    sha256 cellar: :any,                 arm64_monterey: "b263ebc8a8e41690a7e94689d6434bf647d94e362691e591ed6a7d0138990126"
    sha256 cellar: :any,                 sonoma:         "e91b064c360fa310ba66e30722e088e4cbbb49ca17600945aadae3553d879c01"
    sha256 cellar: :any,                 ventura:        "a4dd6e7e0b556d48aebb97befd45473a29828eef7fc0a82c63d4fd13cece9986"
    sha256 cellar: :any,                 monterey:       "2d1008de0fbf9ec18d5d42d08adc1451db21a3f644de7057d07d346922dbe122"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "4a5f81b9c7ae0f312183e29b08faeb27da936ec5c443db3c404e1fcea782b316"
  end

  depends_on "bison" => :build
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "libpng"

  def install
    ENV["CFLAGS"] = "-O3 -flto -DNDEBUG -mmacosx-version-min=10.9"
    ENV["CXXFLAGS"] = "-O3 -flto -DNDEBUG -mmacosx-version-min=10.9"

    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
