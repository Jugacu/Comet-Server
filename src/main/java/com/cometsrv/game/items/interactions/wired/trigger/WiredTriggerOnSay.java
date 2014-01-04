package com.cometsrv.game.items.interactions.wired.trigger;

import com.cometsrv.game.items.interactions.Interactor;
import com.cometsrv.game.rooms.avatars.Avatar;
import com.cometsrv.game.rooms.items.FloorItem;
import com.cometsrv.game.rooms.items.RoomItem;
import com.cometsrv.game.rooms.types.Room;
import com.cometsrv.network.messages.headers.Composers;
import com.cometsrv.network.messages.types.Composer;

public class WiredTriggerOnSay extends Interactor {
    @Override
    public boolean onWalk(boolean state, RoomItem item, Avatar avatar) {
        return false;
    }

    @Override
    public boolean onInteract(int request, RoomItem item, Avatar avatar) {
        Composer msg = new Composer(Composers.WiredTriggerMessageComposer);

        msg.writeBoolean(false);
        msg.writeInt(0);
        msg.writeInt(0); // item amount
        msg.writeInt(item.getDefinition().getSpriteId());
        msg.writeInt(item.getId());
        msg.writeString(item.getExtraData());
        msg.writeInt(0);
        msg.writeInt(0);
        msg.writeInt(0);
        msg.writeInt(0);
        msg.writeInt(0);
        msg.writeInt(0);

        avatar.getPlayer().getSession().send(msg);
        return false;
    }

    @Override
    public boolean onPlace(RoomItem item, Avatar avatar, Room room) {
        return false;
    }

    @Override
    public boolean onPickup(RoomItem item, Avatar avatar, Room room) {
        return false;
    }

    @Override
    public boolean onTick(RoomItem item) {
        return false;
    }

    @Override
    public boolean requiresRights() {
        return true;
    }
}
