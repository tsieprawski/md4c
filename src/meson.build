md4c_inc_src = include_directories('.')
md4c_src = [
    'entity.c',
    'md4c.c',
    'md4c-html.c'
]
md4c = both_libraries('md4c',
    md4c_src,
    include_directories: [
        md4c_inc_src
    ],
    install: true)
md4c_dep = declare_dependency(link_with: md4c,
    include_directories: md4c_inc_src)
libmd4c_inc = include_directories('.')
pkg.generate(md4c)

install_headers([
    'md4c.h',
    'md4c-html.h'
])
