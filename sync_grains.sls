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
  grains.present:
   - value: {{ pillar["foo"] }}

Echo Grain:
  cmd.run:
    - name: echo {{ grains['os'] }}
    - require:
      - grains: "Present Grain"
