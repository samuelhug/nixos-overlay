# Generated by carnix 0.10.0: carnix generate-nix --src ./.
{ lib, buildPlatform, buildRustCrate, buildRustCrateHelpers, cratesIO, fetchgit }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
  crates = cratesIO // rec {
# evcxr-0.3.5

    crates.evcxr."0.3.5" = deps: { features?(features_.evcxr."0.3.5" deps {}) }: buildRustCrate {
      crateName = "evcxr";
      version = "0.3.5";
      description = "An Evaluation Context for Rust";
      authors = [ "David Lattimore <dvdlttmr@gmail.com>" "Matthias Bussonnier <bussonniermatthias@gmail.com>" "Daniel Griffen <daniel@griffen.io>" "David Bernard <david.bernard.31@gmail.com>" ];
      src = include [ "Cargo.toml" " evcxr" ] ./.;
      workspace_member = "evcxr";
      dependencies = mapFeatures features ([
        (cratesIO.crates."backtrace"."${deps."evcxr"."0.3.5"."backtrace"}" deps)
        (cratesIO.crates."failure"."${deps."evcxr"."0.3.5"."failure"}" deps)
        (cratesIO.crates."json"."${deps."evcxr"."0.3.5"."json"}" deps)
        (cratesIO.crates."lazy_static"."${deps."evcxr"."0.3.5"."lazy_static"}" deps)
        (cratesIO.crates."libc"."${deps."evcxr"."0.3.5"."libc"}" deps)
        (cratesIO.crates."libloading"."${deps."evcxr"."0.3.5"."libloading"}" deps)
        (cratesIO.crates."proc_macro2"."${deps."evcxr"."0.3.5"."proc_macro2"}" deps)
        (cratesIO.crates."rand"."${deps."evcxr"."0.3.5"."rand"}" deps)
        (cratesIO.crates."regex"."${deps."evcxr"."0.3.5"."regex"}" deps)
        (cratesIO.crates."syn"."${deps."evcxr"."0.3.5"."syn"}" deps)
        (cratesIO.crates."tempfile"."${deps."evcxr"."0.3.5"."tempfile"}" deps)
      ])
        ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([
        (cratesIO.crates."sig"."${deps."evcxr"."0.3.5"."sig"}" deps)
      ]) else []);
    };
    features_.evcxr."0.3.5" = deps: f: updateFeatures f (rec {
      backtrace."${deps.evcxr."0.3.5".backtrace}".default = true;
      evcxr."0.3.5".default = (f.evcxr."0.3.5".default or true);
      failure = fold recursiveUpdate {} [
        { "${deps.evcxr."0.3.5".failure}"."std" = true; }
        { "${deps.evcxr."0.3.5".failure}".default = (f.failure."${deps.evcxr."0.3.5".failure}".default or false); }
      ];
      json."${deps.evcxr."0.3.5".json}".default = true;
      lazy_static."${deps.evcxr."0.3.5".lazy_static}".default = true;
      libc."${deps.evcxr."0.3.5".libc}".default = true;
      libloading."${deps.evcxr."0.3.5".libloading}".default = true;
      proc_macro2."${deps.evcxr."0.3.5".proc_macro2}".default = (f.proc_macro2."${deps.evcxr."0.3.5".proc_macro2}".default or false);
      rand."${deps.evcxr."0.3.5".rand}".default = true;
      regex."${deps.evcxr."0.3.5".regex}".default = true;
      sig."${deps.evcxr."0.3.5".sig}".default = true;
      syn = fold recursiveUpdate {} [
        { "${deps.evcxr."0.3.5".syn}"."clone-impls" = true; }
        { "${deps.evcxr."0.3.5".syn}"."extra-traits" = true; }
        { "${deps.evcxr."0.3.5".syn}"."full" = true; }
        { "${deps.evcxr."0.3.5".syn}"."parsing" = true; }
        { "${deps.evcxr."0.3.5".syn}"."printing" = true; }
        { "${deps.evcxr."0.3.5".syn}".default = (f.syn."${deps.evcxr."0.3.5".syn}".default or false); }
      ];
      tempfile."${deps.evcxr."0.3.5".tempfile}".default = true;
    }) [
      (cratesIO.features_.backtrace."${deps."evcxr"."0.3.5"."backtrace"}" deps)
      (cratesIO.features_.failure."${deps."evcxr"."0.3.5"."failure"}" deps)
      (cratesIO.features_.json."${deps."evcxr"."0.3.5"."json"}" deps)
      (cratesIO.features_.lazy_static."${deps."evcxr"."0.3.5"."lazy_static"}" deps)
      (cratesIO.features_.libc."${deps."evcxr"."0.3.5"."libc"}" deps)
      (cratesIO.features_.libloading."${deps."evcxr"."0.3.5"."libloading"}" deps)
      (cratesIO.features_.proc_macro2."${deps."evcxr"."0.3.5"."proc_macro2"}" deps)
      (cratesIO.features_.rand."${deps."evcxr"."0.3.5"."rand"}" deps)
      (cratesIO.features_.regex."${deps."evcxr"."0.3.5"."regex"}" deps)
      (cratesIO.features_.syn."${deps."evcxr"."0.3.5"."syn"}" deps)
      (cratesIO.features_.tempfile."${deps."evcxr"."0.3.5"."tempfile"}" deps)
      (cratesIO.features_.sig."${deps."evcxr"."0.3.5"."sig"}" deps)
    ];


# end
# evcxr_jupyter-0.3.5

    crates.evcxr_jupyter."0.3.5" = deps: { features?(features_.evcxr_jupyter."0.3.5" deps {}) }: buildRustCrate {
      crateName = "evcxr_jupyter";
      version = "0.3.5";
      description = "An Jupyter Kernel for Rust";
      authors = [ "David Lattimore <dvdlttmr@gmail.com>" "David Bernard <david.bernard.31@gmail.com>" ];
      src = include [ "Cargo.toml" " evcxr_jupyter" ] ./.;
      workspace_member = "evcxr_jupyter";
      dependencies = mapFeatures features ([
        (cratesIO.crates."chrono"."${deps."evcxr_jupyter"."0.3.5"."chrono"}" deps)
        (cratesIO.crates."colored"."${deps."evcxr_jupyter"."0.3.5"."colored"}" deps)
        (cratesIO.crates."dirs"."${deps."evcxr_jupyter"."0.3.5"."dirs"}" deps)
        (crates."evcxr"."${deps."evcxr_jupyter"."0.3.5"."evcxr"}" deps)
        (cratesIO.crates."failure"."${deps."evcxr_jupyter"."0.3.5"."failure"}" deps)
        (cratesIO.crates."hex"."${deps."evcxr_jupyter"."0.3.5"."hex"}" deps)
        (cratesIO.crates."hmac"."${deps."evcxr_jupyter"."0.3.5"."hmac"}" deps)
        (cratesIO.crates."json"."${deps."evcxr_jupyter"."0.3.5"."json"}" deps)
        (cratesIO.crates."sha2"."${deps."evcxr_jupyter"."0.3.5"."sha2"}" deps)
        (cratesIO.crates."uuid"."${deps."evcxr_jupyter"."0.3.5"."uuid"}" deps)
        (cratesIO.crates."zmq"."${deps."evcxr_jupyter"."0.3.5"."zmq"}" deps)
      ]);
    };
    features_.evcxr_jupyter."0.3.5" = deps: f: updateFeatures f (rec {
      chrono."${deps.evcxr_jupyter."0.3.5".chrono}".default = true;
      colored."${deps.evcxr_jupyter."0.3.5".colored}".default = true;
      dirs."${deps.evcxr_jupyter."0.3.5".dirs}".default = true;
      evcxr."${deps.evcxr_jupyter."0.3.5".evcxr}".default = true;
      evcxr_jupyter."0.3.5".default = (f.evcxr_jupyter."0.3.5".default or true);
      failure = fold recursiveUpdate {} [
        { "${deps.evcxr_jupyter."0.3.5".failure}"."std" = true; }
        { "${deps.evcxr_jupyter."0.3.5".failure}".default = (f.failure."${deps.evcxr_jupyter."0.3.5".failure}".default or false); }
      ];
      hex."${deps.evcxr_jupyter."0.3.5".hex}".default = true;
      hmac."${deps.evcxr_jupyter."0.3.5".hmac}".default = true;
      json."${deps.evcxr_jupyter."0.3.5".json}".default = true;
      sha2."${deps.evcxr_jupyter."0.3.5".sha2}".default = true;
      uuid = fold recursiveUpdate {} [
        { "${deps.evcxr_jupyter."0.3.5".uuid}"."v4" = true; }
        { "${deps.evcxr_jupyter."0.3.5".uuid}".default = true; }
      ];
      zmq."${deps.evcxr_jupyter."0.3.5".zmq}".default = true;
    }) [
      (cratesIO.features_.chrono."${deps."evcxr_jupyter"."0.3.5"."chrono"}" deps)
      (cratesIO.features_.colored."${deps."evcxr_jupyter"."0.3.5"."colored"}" deps)
      (cratesIO.features_.dirs."${deps."evcxr_jupyter"."0.3.5"."dirs"}" deps)
      (features_.evcxr."${deps."evcxr_jupyter"."0.3.5"."evcxr"}" deps)
      (cratesIO.features_.failure."${deps."evcxr_jupyter"."0.3.5"."failure"}" deps)
      (cratesIO.features_.hex."${deps."evcxr_jupyter"."0.3.5"."hex"}" deps)
      (cratesIO.features_.hmac."${deps."evcxr_jupyter"."0.3.5"."hmac"}" deps)
      (cratesIO.features_.json."${deps."evcxr_jupyter"."0.3.5"."json"}" deps)
      (cratesIO.features_.sha2."${deps."evcxr_jupyter"."0.3.5"."sha2"}" deps)
      (cratesIO.features_.uuid."${deps."evcxr_jupyter"."0.3.5"."uuid"}" deps)
      (cratesIO.features_.zmq."${deps."evcxr_jupyter"."0.3.5"."zmq"}" deps)
    ];


# end
# evcxr_repl-0.3.5

    crates.evcxr_repl."0.3.5" = deps: { features?(features_.evcxr_repl."0.3.5" deps {}) }: buildRustCrate {
      crateName = "evcxr_repl";
      version = "0.3.5";
      description = "A REPL for Rust";
      authors = [ "David Lattimore <dvdlttmr@gmail.com>" "Diogo Sousa <diogogsousa@gmail.com>" ];
      src = include [ "Cargo.toml" " evcxr_repl" ] ./.;
      workspace_member = "evcxr_repl";
      dependencies = mapFeatures features ([
        (cratesIO.crates."colored"."${deps."evcxr_repl"."0.3.5"."colored"}" deps)
        (cratesIO.crates."dirs"."${deps."evcxr_repl"."0.3.5"."dirs"}" deps)
        (crates."evcxr"."${deps."evcxr_repl"."0.3.5"."evcxr"}" deps)
        (cratesIO.crates."failure"."${deps."evcxr_repl"."0.3.5"."failure"}" deps)
        (cratesIO.crates."lazy_static"."${deps."evcxr_repl"."0.3.5"."lazy_static"}" deps)
        (cratesIO.crates."regex"."${deps."evcxr_repl"."0.3.5"."regex"}" deps)
        (cratesIO.crates."rustyline"."${deps."evcxr_repl"."0.3.5"."rustyline"}" deps)
      ]);
    };
    features_.evcxr_repl."0.3.5" = deps: f: updateFeatures f (rec {
      colored."${deps.evcxr_repl."0.3.5".colored}".default = true;
      dirs."${deps.evcxr_repl."0.3.5".dirs}".default = true;
      evcxr."${deps.evcxr_repl."0.3.5".evcxr}".default = true;
      evcxr_repl."0.3.5".default = (f.evcxr_repl."0.3.5".default or true);
      failure = fold recursiveUpdate {} [
        { "${deps.evcxr_repl."0.3.5".failure}"."std" = true; }
        { "${deps.evcxr_repl."0.3.5".failure}".default = (f.failure."${deps.evcxr_repl."0.3.5".failure}".default or false); }
      ];
      lazy_static."${deps.evcxr_repl."0.3.5".lazy_static}".default = true;
      regex."${deps.evcxr_repl."0.3.5".regex}".default = true;
      rustyline."${deps.evcxr_repl."0.3.5".rustyline}".default = true;
    }) [
      (cratesIO.features_.colored."${deps."evcxr_repl"."0.3.5"."colored"}" deps)
      (cratesIO.features_.dirs."${deps."evcxr_repl"."0.3.5"."dirs"}" deps)
      (features_.evcxr."${deps."evcxr_repl"."0.3.5"."evcxr"}" deps)
      (cratesIO.features_.failure."${deps."evcxr_repl"."0.3.5"."failure"}" deps)
      (cratesIO.features_.lazy_static."${deps."evcxr_repl"."0.3.5"."lazy_static"}" deps)
      (cratesIO.features_.regex."${deps."evcxr_repl"."0.3.5"."regex"}" deps)
      (cratesIO.features_.rustyline."${deps."evcxr_repl"."0.3.5"."rustyline"}" deps)
    ];


# end
# evcxr_runtime-1.1.0

    crates.evcxr_runtime."1.1.0" = deps: { features?(features_.evcxr_runtime."1.1.0" deps {}) }: buildRustCrate {
      crateName = "evcxr_runtime";
      version = "1.1.0";
      description = "Runtime core for the evcxr crate";
      authors = [ "David Lattimore <dvdlttmr@gmail.com>" "David Bernard <david.bernard.31@gmail.com>" ];
      src = include [ "Cargo.toml" " evcxr_runtime" ] ./.;
      workspace_member = "evcxr_runtime";
      dependencies = mapFeatures features ([
      ]
        ++ (if features.evcxr_runtime."1.1.0".base64 or false then [ (cratesIO.crates.base64."${deps."evcxr_runtime"."1.1.0".base64}" deps) ] else []));
      features = mkFeatures (features."evcxr_runtime"."1.1.0" or {});
    };
    features_.evcxr_runtime."1.1.0" = deps: f: updateFeatures f (rec {
      base64."${deps.evcxr_runtime."1.1.0".base64}".default = true;
      evcxr_runtime = fold recursiveUpdate {} [
        { "1.1.0"."base64" =
          (f.evcxr_runtime."1.1.0"."base64" or false) ||
          (f.evcxr_runtime."1.1.0".bytes or false) ||
          (evcxr_runtime."1.1.0"."bytes" or false); }
        { "1.1.0".default = (f.evcxr_runtime."1.1.0".default or true); }
      ];
    }) [
      (cratesIO.features_.base64."${deps."evcxr_runtime"."1.1.0"."base64"}" deps)
    ];


# end

  };

  evcxr = crates.crates.evcxr."0.3.5" deps;
  evcxr_jupyter = crates.crates.evcxr_jupyter."0.3.5" deps;
  evcxr_repl = crates.crates.evcxr_repl."0.3.5" deps;
  evcxr_runtime = crates.crates.evcxr_runtime."1.1.0" deps;
  __all = [ (evcxr {}) (evcxr_jupyter {}) (evcxr_repl {}) (evcxr_runtime {}) ];
  deps.aho_corasick."0.6.10" = {
    memchr = "2.2.0";
  };
  deps.approx."0.1.1" = {};
  deps.argon2rs."0.2.5" = {
    blake2_rfc = "0.2.18";
    scoped_threadpool = "0.1.9";
  };
  deps.arrayvec."0.4.10" = {
    nodrop = "0.1.13";
  };
  deps.autocfg."0.1.4" = {};
  deps.backtrace."0.3.32" = {
    backtrace_sys = "0.1.30";
    cfg_if = "0.1.9";
    libc = "0.2.58";
    rustc_demangle = "0.1.15";
  };
  deps.backtrace_sys."0.1.30" = {
    libc = "0.2.58";
    cc = "1.0.37";
  };
  deps.base64."0.10.1" = {
    byteorder = "1.3.2";
  };
  deps.bitflags."1.1.0" = {};
  deps.blake2_rfc."0.2.18" = {
    arrayvec = "0.4.10";
    constant_time_eq = "0.1.3";
  };
  deps.block_buffer."0.7.3" = {
    block_padding = "0.1.4";
    byte_tools = "0.3.1";
    byteorder = "1.3.2";
    generic_array = "0.12.3";
  };
  deps.block_padding."0.1.4" = {
    byte_tools = "0.3.1";
  };
  deps.byte_tools."0.3.1" = {};
  deps.byteorder."1.3.2" = {};
  deps.cc."1.0.37" = {};
  deps.cfg_if."0.1.9" = {};
  deps.cgmath."0.16.1" = {
    approx = "0.1.1";
    num_traits = "0.1.43";
    rand = "0.4.6";
  };
  deps.chrono."0.4.7" = {
    libc = "0.2.58";
    num_integer = "0.1.41";
    num_traits = "0.2.8";
    time = "0.1.42";
  };
  deps.cloudabi."0.0.3" = {
    bitflags = "1.1.0";
  };
  deps.colored."1.8.0" = {
    lazy_static = "1.3.0";
    winconsole = "0.10.0";
  };
  deps.constant_time_eq."0.1.3" = {};
  deps.crypto_mac."0.7.0" = {
    generic_array = "0.12.3";
    subtle = "1.0.0";
  };
  deps.digest."0.8.1" = {
    generic_array = "0.12.3";
  };
  deps.dirs."1.0.5" = {
    redox_users = "0.3.0";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.dirs."2.0.1" = {
    cfg_if = "0.1.9";
    dirs_sys = "0.3.3";
  };
  deps.dirs_sys."0.3.3" = {
    cfg_if = "0.1.9";
    redox_users = "0.3.0";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.error_chain."0.10.0" = {};
  deps.evcxr."0.3.5" = {
    backtrace = "0.3.32";
    failure = "0.1.5";
    json = "0.11.13";
    lazy_static = "1.3.0";
    libc = "0.2.58";
    libloading = "0.5.0";
    proc_macro2 = "0.4.27";
    rand = "0.6.5";
    regex = "1.1.2";
    syn = "0.15.27";
    tempfile = "3.0.7";
    sig = "1.0.0";
  };
  deps.evcxr_jupyter."0.3.5" = {
    chrono = "0.4.7";
    colored = "1.8.0";
    dirs = "2.0.1";
    evcxr = "0.3.5";
    failure = "0.1.5";
    hex = "0.3.2";
    hmac = "0.7.0";
    json = "0.11.13";
    sha2 = "0.8.0";
    uuid = "0.7.4";
    zmq = "0.9.1";
  };
  deps.evcxr_repl."0.3.5" = {
    colored = "1.8.0";
    dirs = "2.0.1";
    evcxr = "0.3.5";
    failure = "0.1.5";
    lazy_static = "1.3.0";
    regex = "1.1.2";
    rustyline = "4.1.0";
  };
  deps.evcxr_runtime."1.1.0" = {
    base64 = "0.10.1";
  };
  deps.failure."0.1.5" = {
    backtrace = "0.3.32";
    failure_derive = "0.1.5";
  };
  deps.failure_derive."0.1.5" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.12";
    syn = "0.15.27";
    synstructure = "0.10.2";
  };
  deps.fake_simd."0.1.2" = {};
  deps.fuchsia_cprng."0.1.1" = {};
  deps.generic_array."0.12.3" = {
    typenum = "1.10.0";
  };
  deps.hex."0.3.2" = {};
  deps.hmac."0.7.0" = {
    crypto_mac = "0.7.0";
    digest = "0.8.1";
  };
  deps.json."0.11.13" = {};
  deps.lazy_static."1.3.0" = {};
  deps.libc."0.2.58" = {};
  deps.libloading."0.5.0" = {
    cc = "1.0.37";
    winapi = "0.3.7";
  };
  deps.log."0.4.6" = {
    cfg_if = "0.1.9";
  };
  deps.memchr."2.2.0" = {};
  deps.metadeps."1.1.2" = {
    error_chain = "0.10.0";
    pkg_config = "0.3.14";
    toml = "0.2.1";
  };
  deps.nix."0.13.1" = {
    bitflags = "1.1.0";
    cfg_if = "0.1.9";
    libc = "0.2.58";
    void = "1.0.2";
  };
  deps.nodrop."0.1.13" = {};
  deps.num_integer."0.1.41" = {
    num_traits = "0.2.8";
    autocfg = "0.1.4";
  };
  deps.num_traits."0.1.43" = {
    num_traits = "0.2.8";
  };
  deps.num_traits."0.2.8" = {
    autocfg = "0.1.4";
  };
  deps.opaque_debug."0.2.2" = {};
  deps.pkg_config."0.3.14" = {};
  deps.proc_macro2."0.4.27" = {
    unicode_xid = "0.1.0";
  };
  deps.quote."0.6.12" = {
    proc_macro2 = "0.4.27";
  };
  deps.rand."0.4.6" = {
    rand_core = "0.3.1";
    rdrand = "0.4.0";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.rand."0.6.5" = {
    rand_chacha = "0.1.1";
    rand_core = "0.4.0";
    rand_hc = "0.1.0";
    rand_isaac = "0.1.1";
    rand_jitter = "0.1.4";
    rand_os = "0.1.3";
    rand_pcg = "0.1.2";
    rand_xorshift = "0.1.1";
    autocfg = "0.1.4";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.rand_chacha."0.1.1" = {
    rand_core = "0.3.1";
    autocfg = "0.1.4";
  };
  deps.rand_core."0.3.1" = {
    rand_core = "0.4.0";
  };
  deps.rand_core."0.4.0" = {};
  deps.rand_hc."0.1.0" = {
    rand_core = "0.3.1";
  };
  deps.rand_isaac."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rand_jitter."0.1.4" = {
    rand_core = "0.4.0";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.rand_os."0.1.3" = {
    rand_core = "0.4.0";
    rdrand = "0.4.0";
    cloudabi = "0.0.3";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.rand_pcg."0.1.2" = {
    rand_core = "0.4.0";
    autocfg = "0.1.4";
  };
  deps.rand_xorshift."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rdrand."0.4.0" = {
    rand_core = "0.3.1";
  };
  deps.redox_syscall."0.1.56" = {};
  deps.redox_users."0.3.0" = {
    argon2rs = "0.2.5";
    failure = "0.1.5";
    rand_os = "0.1.3";
    redox_syscall = "0.1.56";
  };
  deps.regex."1.1.2" = {
    aho_corasick = "0.6.10";
    memchr = "2.2.0";
    regex_syntax = "0.6.7";
    thread_local = "0.3.6";
    utf8_ranges = "1.0.3";
  };
  deps.regex_syntax."0.6.7" = {
    ucd_util = "0.1.3";
  };
  deps.remove_dir_all."0.5.2" = {
    winapi = "0.3.7";
  };
  deps.rgb."0.8.13" = {};
  deps.rustc_demangle."0.1.15" = {};
  deps.rustyline."4.1.0" = {
    dirs = "1.0.5";
    libc = "0.2.58";
    log = "0.4.6";
    memchr = "2.2.0";
    unicode_segmentation = "1.3.0";
    unicode_width = "0.1.5";
    nix = "0.13.1";
    utf8parse = "0.1.1";
    winapi = "0.3.7";
  };
  deps.scoped_threadpool."0.1.9" = {};
  deps.sha2."0.8.0" = {
    block_buffer = "0.7.3";
    digest = "0.8.1";
    fake_simd = "0.1.2";
    opaque_debug = "0.2.2";
  };
  deps.sig."1.0.0" = {
    libc = "0.2.58";
  };
  deps.subtle."1.0.0" = {};
  deps.syn."0.15.27" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.12";
    unicode_xid = "0.1.0";
  };
  deps.synstructure."0.10.2" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.12";
    syn = "0.15.27";
    unicode_xid = "0.1.0";
  };
  deps.tempfile."3.0.7" = {
    cfg_if = "0.1.9";
    rand = "0.6.5";
    remove_dir_all = "0.5.2";
    redox_syscall = "0.1.56";
    libc = "0.2.58";
    winapi = "0.3.7";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.3.0";
  };
  deps.time."0.1.42" = {
    libc = "0.2.58";
    redox_syscall = "0.1.56";
    winapi = "0.3.7";
  };
  deps.toml."0.2.1" = {};
  deps.typenum."1.10.0" = {};
  deps.ucd_util."0.1.3" = {};
  deps.unicode_segmentation."1.3.0" = {};
  deps.unicode_width."0.1.5" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.utf8_ranges."1.0.3" = {};
  deps.utf8parse."0.1.1" = {};
  deps.uuid."0.7.4" = {
    rand = "0.6.5";
  };
  deps.void."1.0.2" = {};
  deps.winapi."0.3.7" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.winconsole."0.10.0" = {
    cgmath = "0.16.1";
    lazy_static = "1.3.0";
    rgb = "0.8.13";
    winapi = "0.3.7";
  };
  deps.zmq."0.9.1" = {
    bitflags = "1.1.0";
    libc = "0.2.58";
    log = "0.4.6";
    zmq_sys = "0.9.1";
  };
  deps.zmq_sys."0.9.1" = {
    libc = "0.2.58";
    metadeps = "1.1.2";
  };
}
