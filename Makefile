.PHONY: transmission gradio update_repo

transmission:
	flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="Nightly build of transmission, `date`" ${EXPORT_ARGS-} app com.transmissionbt.Transmission.json

gradio:
	flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="Nightly build of gradio, `date`" ${EXPORT_ARGS-} app de.haeckerfelix.gradio.json

update_repo:
	flatpak build-update-repo --generate-static-deltas --prune --prune-depth=8  ${EXPORT_ARGS-} repo
