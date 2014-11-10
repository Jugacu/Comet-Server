package com.cometproject.server.network.messages.incoming.room.floor;

import com.cometproject.server.game.rooms.models.RoomModel;
import com.cometproject.server.network.messages.incoming.IEvent;
import com.cometproject.server.network.messages.outgoing.room.floor.FloorPlanDoorMessageComposer;
import com.cometproject.server.network.messages.types.Event;
import com.cometproject.server.network.sessions.Session;

public class GetFloorPlanDoorMessageEvent implements IEvent {

    @Override
    public void handle(Session client, Event msg) throws Exception {
        if(client.getPlayer().getEntity() != null) {
            RoomModel model = client.getPlayer().getEntity().getRoom().getModel();

            if(model == null) return;

            client.send(FloorPlanDoorMessageComposer.compose(model.getDoorX(), model.getDoorY(), model.getDoorRotation()));
        }
    }
}