# Device tree for Poco F5/Redmi Note 12 Turbo

Poco F5/Redmi Note 12 Turbo (codenamed _"marble"_) is a high-end, mid-range smartphone from Xiaomi.

It was announced & released in March 2023.

## Needed patches

Dolby Vision (hardware_qcom_sm8450-caf)
- https://github.com/Evolution-X/hardware_qcom-caf_sm8450_display/commit/a62d9a876646a76505b3dc66591eb7606530d8e8
- https://github.com/Evolution-X/hardware_qcom-caf_sm8450_display/commit/a319405d0d1eaf4fed14aeed0aba3d569a2b8779

FEAS (frameworks_native)
- https://github.com/Evolution-X/frameworks_native/commit/c063341f58b9562814db94b235c8985b10014268

HWC (frameworks_native)
- https://github.com/Evolution-X/frameworks_native/commit/10c9c18a652e113ab92cfebb32685bd3c4e6ea87

LDAC (hardware_interfaces)
- https://github.com/Evolution-X/hardware_interfaces/commit/4f9b11ee1e0ce4c902b1932f6f98502300fc343e

LTE_CA (frameworks_base)
- https://github.com/Evolution-X/frameworks_base/commit/53398e8f073c4956b11c93063eb13b8d2f1ac097

Media (frameworks_av)
- https://github.com/Evolution-X/frameworks_av/commit/b65b94b0d5fdca38712ce669ab568182c3d9819d
- https://github.com/Evolution-X/frameworks_av/commit/2e8f6aa3abbd4a82b7c96f401009fd969f6c9ad9

## Device specifications

|      Basic | Spec Sheet                                                        |
| ---------: | :---------------------------------------------------------------- |
|        SoC | Snapdragon® 7+ Gen 2 (SM7475-AB)                                  |
|        CPU | Octa-core CPU with 1x Cortex-X2 & 3x Cortex-A710 & 4x Cortex-A510 |
|        GPU | Adreno 725 (580 MHz)                                              |
|     Memory | 8/12/16 GB RAM (LPDDR5)                                           |
| Shipped OS | 13.0 with MIUI 14                                                 |
|    Storage | 256/512/1024 GB (UFS 3.1)                                         |
|    Battery | 5000 mAh, non-removable, 67W fast charge                          |
|    Display | 1080 x 2400 pixels, 20:9 ratio, 6.67 inches, 120 hz, AMOLED       |
|     Camera | 64MP (Primary), 8MP (Ultra-wide), 2MP (Macro)                     |

![Redmi Note 12 Turbo](https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1679982565.12241762.png)

## Copyright

```
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
