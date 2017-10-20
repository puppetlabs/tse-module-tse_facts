Facter.add('domain2') do
  confine :osfamily => :windows
  setcode do
    begin
      require 'win32ole'
      wmi = WIN32OLE.connect("winmgmts:\\\\.\\root\\cimv2")
      domain = wmi.ExecQuery("SELECT * FROM Win32_ComputerSystem.domain").each.first
      domain
    rescue
    end
  end
end
