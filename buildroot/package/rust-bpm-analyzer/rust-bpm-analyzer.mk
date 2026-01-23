################################################################################
#
# rust-bpm-analyzer (Binary Download)
#
################################################################################

# Mettez ici le tag précis de votre release sur GitHub
RUST_BPM_ANALYZER_VERSION = v0.1.1

# Le nom exact du fichier archive dans les assets de la release
RUST_BPM_ANALYZER_SOURCE = rust-bpm-analyzer-aarch64-unknown-linux-gnu.tar.gz

# L'URL de base pour le téléchargement
RUST_BPM_ANALYZER_SITE = https://github.com/kiki442002/rust-bpm-analyzer/releases/download/$(RUST_BPM_ANALYZER_VERSION)


define RUST_BPM_ANALYZER_EXTRACT_CMDS
    mkdir -p $(@D)
    tar -xf $(RUST_BPM_ANALYZER_DL_DIR)/$(RUST_BPM_ANALYZER_SOURCE) -C $(@D)
endef

# Installation : on suppose que l'archive contient un binaire nommé "rust-bpm-analyzer"
define RUST_BPM_ANALYZER_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/rust-bpm-analyzer $(TARGET_DIR)/usr/bin/rust-bpm-analyzer
endef

$(eval $(generic-package))

