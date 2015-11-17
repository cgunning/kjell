manage_resolr_conf:
  file.managed:
    - name: /etc/resolv.conf
    - source: salt://resolv_conf/files/resolv.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - context:
        search_domains: {{ salt['pillar.get']('resolv_conf:search_domains', {}) }}
        name_servers: {{ salt['pillar.get']('resolv_conf:name_servers', {}) }}
