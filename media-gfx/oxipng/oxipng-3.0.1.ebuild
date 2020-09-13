# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
adler-0.2.3
adler32-1.1.0
ansi_term-0.11.0
atty-0.2.11
autocfg-1.0.0
bit-vec-0.6.2
bitflags-1.2.1
build_const-0.2.1
bytemuck-1.2.0
byteorder-1.3.4
cc-1.0.58
cfg-if-0.1.10
chrono-0.4.13
clap-2.33.1
cloudflare-zlib-0.2.5
cloudflare-zlib-sys-0.2.0
crc-1.8.1
crc32fast-1.2.0
crossbeam-deque-0.7.3
crossbeam-epoch-0.8.2
crossbeam-queue-0.2.3
crossbeam-utils-0.7.2
deflate-0.8.6
either-1.5.3
glob-0.3.0
hashbrown-0.8.1
hermit-abi-0.1.15
image-0.23.7
indexmap-1.5.0
itertools-0.9.0
lazy_static-0.2.11
lazy_static-1.4.0
libc-0.2.73
libdeflate-sys-0.5.0
libdeflater-0.5.0
log-0.4.11
maybe-uninit-2.0.0
memoffset-0.5.5
miniz_oxide-0.3.7
miniz_oxide-0.4.0
num-integer-0.1.43
num-iter-0.1.41
num-rational-0.3.0
num-traits-0.2.12
num_cpus-1.13.0
numtoa-0.1.0
png-0.16.7
rayon-1.3.1
rayon-core-1.7.1
redox_syscall-0.1.57
redox_termios-0.1.1
rgb-0.8.20
rustc_version-0.2.3
scopeguard-1.1.0
semver-0.9.0
semver-parser-0.7.0
stderrlog-0.4.3
strsim-0.8.0
termcolor-1.1.0
termion-1.5.5
textwrap-0.11.0
thread_local-0.3.4
time-0.1.43
typed-arena-1.7.0
unicode-width-0.1.8
unreachable-1.0.0
vec_map-0.8.2
void-1.0.2
wild-2.0.4
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
zopfli-0.4.0
"

inherit cargo

DESCRIPTION="A lossless PNG compression optimizer"
HOMEPAGE="https://github.com/shssoichiro/oxipng"
SRC_URI="https://github.com/shssoichiro/oxipng/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
# Prevent portage from trying to fetch bunch of *.crate from mirror despite they are not mirrored.
RESTRICT="mirror"
LICENSE="Apache-2.0 BSD-2 MIT ZLIB"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
	cargo_src_install

	dodoc CHANGELOG.md README.md
}
