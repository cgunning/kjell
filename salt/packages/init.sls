{% for package in salt['pillar.get']('packages', {}) %}
install_{{ package }}:
  pkg.installed:
    - name: {{ package }}
{% endfor %}
