.PHONY: transmission gradio ludo update_repo

transmission:
	flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="Nightly build of transmission, `date`" ${EXPORT_ARGS-} app com.transmissionbt.Transmission.json

gradio:
	flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="Nightly build of gradio, `date`" ${EXPORT_ARGS-} app de.haeckerfelix.gradio.json

ludo:
	flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="Nightly build of ludo, `date`" ${EXPORT_ARGS-} app com.libretro.Ludo.yml

update_repo:
	flatpak build-update-repo --generate-static-deltas --prune --prune-depth=8  ${EXPORT_ARGS-} repo
