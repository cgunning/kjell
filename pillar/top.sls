base:
  'kernel:Linux':
    - match: grain
    - packages
    - resolv_conf
    - domain_join
    - sudoers
