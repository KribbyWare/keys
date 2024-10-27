local exploit_thread = 2

function getthreadidentity()
    return exploit_thread
end

function identity_spoofed()
  print("Current identity is "..exploit_thread)
end

function setthreadidentity(identity)
    exploit_thread = identity
    printidentity = identity_spoofed
end

getidentity = getthreadidentity
getthreadcontext = getthreadidentity

setidentity = setthreadidentity
setthreadcontext = setthreadidentity

setthreadidentity("eggs")
setthreadcontext(6)
