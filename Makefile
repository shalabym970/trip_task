# Makefile for common Flutter development tasks (no flavors)

# Generate localization files
translate:
	@dart run easy_localization:generate -S assets/translation -f keys -o keys.g.dart && \
	dart run easy_localization:generate -S assets/translation -o codegen_loader.g.dart

# Run code generation for Freezed, JsonSerializable, etc.
pubbuild:
	@dart run build_runner build -d

# Apply Dart automatic fixes
dartFix:
	@dart fix -n && echo "Applying fixes" && dart fix --apply

# Build web release
build_web:
	@flutter build web --release

# Run all generators (translate + pubbuild)
gen: translate pubbuild
