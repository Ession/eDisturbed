-- =============================================================================
-- 
--       Filename:  eDisturbed.lua
-- 
--    Description:  Only shows the first DND and AFK message 
--                  and hides the ones following.
-- 
--        Version:  5.2.1
--         Author:  Mathias Jost (mail@mathiasjost.com)
-- 
-- =============================================================================


-- -----------------------------------------------------------------------------
-- Local array holding a list of players. Will not be saved throuout reloads.
-- -----------------------------------------------------------------------------
local data = {}

-- -----------------------------------------------------------------------------
-- Handels the events
-- -----------------------------------------------------------------------------
local function eDisturbed(_, _, _, sender)

	if data[sender] == true then
		return true
	else
		data[sender] = true
		return false
	end -- if data[sender] == true then
	
end -- function eDisturbed(_, _, _, sender)


-- -----------------------------------------------------------------------------
-- Registers the events with the DND Filter
-- -----------------------------------------------------------------------------
ChatFrame_AddMessageEventFilter("CHAT_MSG_AFK", eDisturbed)
ChatFrame_AddMessageEventFilter("CHAT_MSG_DND", eDisturbed)
