{% for name, group in salt['pillar.get']('sudoers:groups', {}).iteritems() %}
add_{{ name }}_to_sudoers:
  file.managed:
    - name: /etc/sudoers.d/{{ name }}
    - source: salt://sudoers/files/group
    - template: jinja
    - context:
        group: {{ group }}
{% endfor %}

{% for name, user in salt['pillar.get']('sudoers:user', {}).iteritems() %}
add_{{ name }}_to_sudoers:
  file.managed:
    - name: /etc/sudoers.d/{{ name }}
    - source: salt://sudoers/files/user
    - template: jinja
    - context:
        user: {{ user }}
{% endfor %}
