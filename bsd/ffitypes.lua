-- ffi definitions of BSD types

local abi = require "syscall.abi"

local cdef = require "ffi".cdef

local ok, arch = pcall(require, "syscall." .. abi.arch .. ".ffitypes") -- architecture specific definitions
if not ok then arch = {} end

cdef[[

// typedefs for word size independent types

// 16 bit
typedef uint16_t in_port_t;

// 32 bit
typedef uint32_t mode_t;
typedef uint32_t uid_t;
typedef uint32_t gid_t;
typedef uint32_t socklen_t;
typedef uint32_t id_t;
typedef int32_t pid_t;
typedef int32_t clockid_t;
typedef int32_t daddr_t;
typedef uint32_t le32; /* this is little endian */
// 64 bit
typedef uint64_t dev_t;
typedef uint64_t loff_t;
typedef uint64_t off64_t;
typedef uint64_t rlim64_t;

// posix standards
typedef unsigned short int sa_family_t;

// typedefs which are word length
typedef unsigned long size_t;
typedef long ssize_t;
typedef long off_t;
typedef long time_t;
typedef long blksize_t;
typedef long blkcnt_t;
typedef long clock_t;
typedef unsigned long ino_t;
typedef unsigned long nlink_t;
typedef unsigned long aio_context_t;
typedef unsigned long nfds_t;

]]
end

