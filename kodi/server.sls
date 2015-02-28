{%- from "kodi/map.jinja" import server with context %}
{%- if server.enabled %}

{#
kodi_packages:
  pkg.installed:
  - names: {{ server.pkgs }}
#}

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