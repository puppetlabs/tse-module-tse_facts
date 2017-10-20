Facter.add('domain2') do
  confine :osfamily => :windows
  setcode do
    begin
      require 'win32ole'
      wmi = WIN32OLE.connect("winmgmts:\\\\.\\root\\cimv2")
      foo = wmi.ExecQuery("SELECT * FROM Win32_ComputerSystem").each.first
      foo.Domain
    rescue
    end
  end
end
