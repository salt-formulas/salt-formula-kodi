{%- from "kodi/map.jinja" import server with context %}
{%- if server.enabled %}

{#
kodi_packages:
  pkg.installed:
  - names: {{ server.pkgs }}
#}

{%- if grains.cpuarch == "armv7l" %}

input:
  group.present:
  - system: True

kodi_input_config:
  file.managed:
  - name: /etc/udev/rules.d/99-input.rules
  - template: jinja
  - source: salt://kodi/files/99-input.rules
  - mode: 644

{%- endif %}

{%- for user_name, user in server.user.iteritems() %}

{#
kodi_config:
  file.managed:
  - name: /home/{{ user_name }}/.kodi/addon
  - template: jinja
  - source: {{ server.config_template }}
  - mode: 644
#}

{%- for plugin_name, plugin in user.plugin.iteritems() %}

kodi_{{ user_name }}_{{ plugin_name }}:
  archive.extracted:
  - name: /home/{{ user_name }}/.kodi/addons/
  - source: {{ plugin.source.address }}
  - source_hash: {{ plugin.source.hash }}
  - archive_format: {{ plugin.source.format }}
  - if_missing: /home/{{ user_name }}/.kodi/addons/{{ plugin_name }}/

{%- endfor %}

{%- endfor %}

{%- endif %}