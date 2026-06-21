project(
	'meson-nix-test',
	['cpp'],
	meson_version: '>=1.4.0',
	default_options: {
		'cpp_std': ['c++26', 'c++23', 'c++latest'],
		'warning_level': '3',
		'werror': false,
	},
)

if get_option('hewwo')
	add_project_arguments(
		'-DHEWWO',
		language: ['cpp'])
endif

executable(
	'nix-test',
	[
		'src'/'main.cpp',
	],
	install: true,
)
