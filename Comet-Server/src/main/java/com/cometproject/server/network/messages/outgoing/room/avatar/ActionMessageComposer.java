package com.cometproject.server.network.messages.outgoing.room.avatar;

import com.cometproject.server.network.messages.composers.MessageComposer;
import com.cometproject.server.network.messages.headers.Composers;
import com.cometproject.server.network.messages.types.Composer;


public class ActionMessageComposer extends MessageComposer {
    private final int playerId;
    private final int actionId;

    public ActionMessageComposer(final int playerId, final int actionId) {
        this.playerId = playerId;
        this.actionId = actionId;
    }

    @Override
    public short getId() {
        return Composers.RoomUserActionMessageComposer;
    }

    @Override
    public void compose(IComposer msg) {
        msg.writeInt(playerId);
        msg.writeInt(actionId);
    }
}