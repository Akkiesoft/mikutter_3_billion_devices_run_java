# -*- coding: utf-8 -*-

Plugin.create(:mikutter_3_billion_devices_run_java) do
  java = _('3 Billion Devices Run Java')
  command(
    :mikutter_3_billion_devices_run_java_cmd,
    name: java,
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    strs = java
    Post.primary_service.update(:message => strs)
  end
end
