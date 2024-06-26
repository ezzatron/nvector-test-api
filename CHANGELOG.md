# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## [v0.8.1] - 2024-05-12

[v0.8.1]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.8.1

### Fixed

- Added a workaround for a weird edge case in `n_E2lat_lon`, when `n_E` is
  `[1, 0, 0]`, and the rotation matrix is the identity matrix. When the
  Python `nvector` lib is run locally, this produces a longitude of Pi. When the
  same code was called in the context of this API, it produced a longitude of
  zero. No clue why, not worth investigating. Every other implementation also
  returns a longitude of Pi, so this API now hard-codes that value for this
  edge case.

## [v0.8.0] - 2024-05-03

[v0.8.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.8.0

### Added

- Added the `R_EL2n_E` function.
- Added the `R_EN2n_E` function.
- Added theh `n_E_and_wa2R_EL` function.

## [v0.7.3] - 2024-04-29

[v0.7.3]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.7.3

### Fixed

- Fixed the return value of the `R2zyx` function.

## [v0.7.2] - 2024-04-29

[v0.7.2]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.7.2

### Fixed

- Fixed return values of the `R2xyz` and `R2zyx` functions.

## [v0.7.1] - 2024-04-29

[v0.7.1]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.7.1

### Fixed

- Fixed the return values of the R2xyz and R2zyx functions.

## [v0.7.0] - 2024-04-29

[v0.7.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.7.0

### Added

- Added the `R2xyz` function
- Added the `R2zyx` function
- Added the `xyz2R` function
- Added the `zyx2R` function

## [v0.6.0] - 2024-04-29

[v0.6.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.6.0

- Removed `n_EA_E_and_n_EB_E2p_AB_N` function which was never actually released.

## [v0.5.0] - 2024-04-29

[v0.5.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.5.0

### Added

- Added the `n_EA_E_and_n_EB_E2p_AB_N` function.

## [v0.4.0] - 2024-04-28

[v0.4.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.4.0

### Added

- Added the `n_E2R_EN` function.

## [v0.3.1] - 2024-04-28

[v0.3.1]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.3.1

### Fixed

- Fixed issues with `n_EA_E_and_p_AB_E2n_EB_E` function.

## [v0.3.0] - 2024-04-28

[v0.3.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.3.0

### Added

- Added `n_EA_E_and_n_EB_E2p_AB_E` function.
- Added `n_EA_E_and_p_AB_E2n_EB_E` function.
  \

## [v0.2.2] - 2024-04-27

[v0.2.2]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.2.2

### Fixed

- Fixed `p_EB_E2n_EB_E` return values.

## [v0.2.1] - 2024-04-27

[v0.2.1]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.2.1

### Fixed

- Fixed optional argument handling.

## [v0.2.0] - 2024-04-26

[v0.2.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.2.0

### Added

- Added the `n_EB_E2p_EB_E` function.
- Added the `p_EB_E2n_EB_E` function.

## [v0.1.7] - 2024-04-26

[v0.1.7]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.7

### Added

- Added support for rotation matrix (`R_Ee`) arguments to the `lat_lon2n_E` and
  `n_E2lat_lon` functions.

## [v0.1.6] - 2023-09-30

[v0.1.6]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.6

### Added

- Added a `latest` tag.

## [v0.1.5] - 2023-09-30

[v0.1.5]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.5

### Fixed

- Setup Docker buildx to attempt to fix multi-platform image building.

## [v0.1.4] - 2023-09-30

[v0.1.4]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.4

### Added

- Tried to add an ARM64 version of the image.

## [v0.1.3] - 2023-09-30

[v0.1.3]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.3

### Fixed

- Explicitly auth to GHCR before attempting to push image.

## [v0.1.2] - 2023-09-30

[v0.1.2]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.2

### Added

- Add Docker labels to associate the image with the repo.

## [v0.1.1] - 2023-09-30

[v0.1.1]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.1

### Fixed

- Attempted to fix image publishing workflow.

## [v0.1.0] - 2023-09-30

[v0.1.0]: https://github.com/ezzatron/nvector-test-api/releases/tag/v0.1.0

### Added

- Initial release.
