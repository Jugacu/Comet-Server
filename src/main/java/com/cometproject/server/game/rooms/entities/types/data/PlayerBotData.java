package com.cometproject.server.game.rooms.entities.types.data;

import com.cometproject.server.game.bots.BotData;

public class PlayerBotData extends BotData {
    private int botId;

    public PlayerBotData(int botId, String username, String motto, String figure, String gender, String ownerName, int ownerId) {
        super(botId, username, motto, figure, gender, ownerName, ownerId);
    }

    public int getBotId() {
        return this.botId;
    }
}