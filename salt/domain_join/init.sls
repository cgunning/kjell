join_domain:
  cmd.run:
    - name: echo "{{ salt['pillar.get']('domain_join:password') }}" | realm join --user {{ salt['pillar.get']('domain_join:user') }} {{ salt['pillar.get']('domain_join:domain') }}
    - unless: realm list | grep {{ salt['pillar.get']('domain_join:domain') }}
