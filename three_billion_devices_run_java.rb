# -*- coding: utf-8 -*-

Plugin.create(:three_billion_devices_run_java) do
  java = _('3 Billion Devices Run Java')
  command(
    :three_billion_devices_run_java,
    name: java,
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do
    Service.primary.post(:message => java)
  end
end
