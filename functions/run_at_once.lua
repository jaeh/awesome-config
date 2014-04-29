local awful = require("awful")

function run_at_once(progs)
  for prog in pairs(progs) do
    run_once(progs[prog])
  end
end


function run_once(prg, args)
  
  if not prg then
    do return nil end
  end
    
  if not args then
    args=""
  end
  
  awful.util.spawn_with_shell(awful.util.getdir("config") .."/run_once.sh " .. prg .. args )
end

-- }}}

return run_at_once
