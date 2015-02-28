{%- from "kodi/map.jinja" import server with context %}
{%- if server.enabled %}

kodi_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

kodi_config:
  file.managed:
  - name: {{ server.config }}
  - template: jinja
  - source: {{ server.config_template }}
  - mode: 644
  - require:
    - pkg: kodi_packages

kodi_service:
  service.running:
  - enable: True
  - name: {{ server.service }}
  - watch:
    - file: kodi_config

{%- endif %}
