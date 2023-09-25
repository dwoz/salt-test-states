Sync Grains:
  module.run:
    - name: saltutil.sync_grains
    - refresh: true

Echo Grain:
  cmd.run:
    - name: echo {{ grains['os'] }}

Append Grain:
  module.run:
   - name: grains.append
   - key: foo
   - val: bar
