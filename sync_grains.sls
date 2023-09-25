Sync Grains:
  module.run:
    - name: saltutil.sync_grains
    - refresh: true

Echo Grain:
  cmd.run:
    - name: echo {{ grains['os'] }}
