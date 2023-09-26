Sync Grains:
  module.run:
    - name: saltutil.sync_grains
    - refresh: true


Append Grain:
  module.run:
   - name: grains.append
   - key: foo
   - val: {{ pillar["foo"] }}


Present Grain:
  module.run:
   - name: grains.present
   - key: foo
   - val: {{ pillar["foo"] }}
    - require:
      - Append Grain

Echo Grain:
  cmd.run:
    - name: echo {{ grains['os'] }}
    - require:
      - Present Grain
