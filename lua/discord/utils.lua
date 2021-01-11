local escape_markdown = {
    {"__", "\\__"},
    {"```", "\\`\\`\\`"},
    {"||", "\\||"},
}

function discord.escapeMarkdown(str)
    for k, v in ipairs(escape_markdown) do
        str = string.gsub(str, v[1], v[2])
    end

    return str
end

function discord.codeBlock(str, lang)
    return "```" .. (lang or "") .. "\n" .. string.gsub(str, "```", "\\`\\`\\`") .. "\n```"
end

local band = bit.band

function discord.hasPermission(bits, permission)
    return (band(bits, discord.enums.permissions.ADMINISTRATOR) == discord.enums.permissions.ADMINISTRATOR) or (band(bits, permission) == permission)
end