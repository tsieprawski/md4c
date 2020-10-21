md4c_inc_src = include_directories('.')
md4c_src = [
    'entity.c',
    'md4c.c',
    'md4c-html.c'
]
md4c = both_libraries('menago',
    md4c_src,
    include_directories: [
        md4c_inc_src
    ],
    gnu_symbol_visibility: 'default',
    install: true)
md4c_dep = declare_dependency(link_with: md4c,
    include_directories: md4c_inc_src)
libmenago_inc = include_directories('.')

install_headers([
    'md4c.h',
    'md4c-html.h'
])
