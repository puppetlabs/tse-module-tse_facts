Facter.add('domain_test') do
  confine :osfamily => :windows
  setcode do
    begin
      require 'win32ole'
      wmi = WIN32OLE.connect("winmgmts:\\\\.\\root\\cimv2")
      enclosure = wmi.ExecQuery("SELECT * FROM Win32_SystemEnclosure").each.first

      enclosure.ChassisTypes
    rescue
    end
  end
end
