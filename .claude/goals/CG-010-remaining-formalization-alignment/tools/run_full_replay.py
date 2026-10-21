import subprocess, sys, os
sp = sys.argv[1]
args = open(f"{sp}/leanlib_args.txt").read().split("\n")
libs = []
it = iter(args)
for a in it:
    if a == "--lean-lib":
        libs += ["--lean-lib", next(it)]
env = dict(os.environ,
           AGDA="/Volumes/D/HoTT-toolchain-cache/agda-v2.8.0-macos-arm64/agda",
           CUBICAL_LIB="/Volumes/D/HoTT-toolchain-cache/cubical-v0.9/cubical/cubical.agda-lib",
           LEAN_SYSROOT="/Users/aurolafly/.elan/toolchains/leanprover--lean4---v4.34.0")
main = f"{sp}/rebuild-check/main"
cmd = [sys.executable, "-B", f"{main}/tools/replay.py", "--jobs", "4", *libs, "--json", f"{sp}/rebuild-check/replay-all.json"]
print("libs:", len(libs)//2, flush=True)
with open(f"{sp}/rebuild-check/replay-all.log", "w") as log:
    rc = subprocess.call(cmd, cwd=main, env=env, stdout=log, stderr=subprocess.STDOUT)
print("rc", rc)
sys.exit(rc)
