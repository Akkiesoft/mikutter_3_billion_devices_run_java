# -*- coding: utf-8 -*-

Plugin.create(:three_billion_devices_run_java) do
  java = _('3 Billion Devices Run Java')
  command(
    :three_billion_devices_run_java,
    name: java,
    condition: lambda{ |opt| true },
    visible: true,
    role: :timeline
  ) do | opt |
    compose(opt.world, body: java)
  end
end
