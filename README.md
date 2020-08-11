# Flatpak manifests
Manifest files for missing flatpak apps.


## Transmission

A GTK3 BitTorrent client:

- https://transmissionbt.com/
- https://github.com/transmission/transmission

This manifest is obsolete:

- Since April 2017, my manifest [was published on Flathub](https://flathub.org/apps/details/com.transmissionbt.Transmission) and is maintained on [a Flathub repository](https://github.com/flathub/com.transmissionbt.Transmission).

## Gradio
A GTK3 app for finding and listening to internet radio stations:

- https://github.com/haecker-felix/gradio

This manifest is obsolete:

- Since september 2017, Gradio has an [official flatpak manifest](https://github.com/flathub/de.haeckerfelix.gradio).
- Since november 2019, Gradio is unmaintained and replaced by [Shortwave](https://gitlab.gnome.org/World/Shortwave).

## Ludo

A minimalist frontend for emulators.

- https://ludo.libretro.com/
- https://github.com/libretro/ludo/

Dependencies:

- org.freedesktop.Platform 19.08
- org.freedesktop.Sdk 19.08
- org.freedesktop.Sdk.Extension.golang

Build as a Flatpak package:

```bash
git clone https://github.com/pdureau/flatpak-manifests.git
cd flatpak-manifests
make ludo
```

Deploy from your local repository:

```bash
flatpak remote-add --user local "file://`pwd`/repo" --no-gpg-verify
flatpak install --user local com.libretro.Ludo
```

Because this manifest expects a network access during building, it may not be accepted by flathub team.

# Colophon

From Oct 2015 to Dec 2016, this repository was a fork of [alexlarsson/nightly-build-apps](https://github.com/alexlarsson/nightly-build-apps) known as pdureau/nightly-build-apps. With the advent of [flatpak builder](https://docs.flatpak.org/en/latest/flatpak-builder.html), it became cleaner to keep it as a new repository.
