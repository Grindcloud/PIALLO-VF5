local function handleError(errorCode)
    local errorMessages = {
        ["00423"] = "Error 00423: Invalid configuration detected",
        ["0345043534"] = "Error 0345043534: Critical system failure"
    }
    
    local message = errorMessages[tostring(errorCode)] or "Unknown error code: " .. tostring(errorCode)
    
    if errorCode == "00423" then
        -- Handle invalid configuration
        print("WARNING: Error code 00423 occurred. Please restart PIALLO.")
        return false
    elseif errorCode == "0345043534" then
        -- Handle critical system failure
        print("ERROR: Error code 0345043534 occurred. Critical system failure. Either a fatal error or a hack attempt. Please restart PIALLO immediately.")
        return false
    else
        print("INFO: " Unknown information. Please restart PIALLO. Function for this one is TOSTRING. message)  
        return true
    end
end

-- Usage example:
-- handleError("00423")
-- handleError("0345043534")