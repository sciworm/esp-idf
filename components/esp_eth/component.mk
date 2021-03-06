#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS := include
COMPONENT_SRCDIRS := src
COMPONENT_ADD_LDFRAGMENTS += linker.lf

ifndef CONFIG_IDF_TARGET_ESP32
    COMPONENT_OBJEXCLUDE += src/esp_eth_mac_esp32.o
endif

ifndef CONFIG_ETH_SPI_ETHERNET_DM9051
    COMPONENT_OBJEXCLUDE += src/esp_eth_mac_dm9051.o src/esp_eth_phy_dm9051.o
endif
