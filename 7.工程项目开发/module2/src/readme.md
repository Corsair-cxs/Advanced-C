文件(FILE)
格式 | 含义
--- | ---
`file.c`  C 源文件
`file.h`  C 头文件(预处理文件)
`file.i`  预处理后的 C 源文件
`file.C`  C++源文件
`file.cc` C++源文件
`file.cxx` C++源文件
`file.m` Objective-C 源文件
`file.s` 汇编语言文件
`file.o` 目标文件
`a.out` 连接的输出文件
`TMPDIR/cc*` 临时文件
`LIBDIR/cpp` 预处理器
`LIBDIR/cc1` C 编译器
`LIBDIR/cc1plus` C++编译器
`LIBDIR/collect` 某些机器需要的连接器前端(front end)程序
`LIBDIR/libgcc.a` GCC 子例程(subroutine)库
`/lib/crt[01n].o` 启动例程(start-up)
`LIBDIR/ccrt0` C++的附加启动例程
`/lib/libc.a` 标准 C 库,另见 intro (3)
`/usr/include #include` 文件的标准目录
`LIBDIR/include` #include 文件的标准 gcc 目录
`LIBDIR/g++-include #include` 文件的附加 g++目录
`LIBDIR` 通常为/usr/local/lib/machine/version.
`TMPDIR` 来自环境变量 TMPDIR (如果存在,缺省为/usr/tmp ,否则为 /tmp).