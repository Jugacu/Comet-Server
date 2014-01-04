package com.cometsrv.game.rooms.items;

import com.cometsrv.game.items.interactions.InteractionAction;
import com.cometsrv.game.items.interactions.InteractionQueueItem;
import com.cometsrv.game.items.types.ItemDefinition;
import com.cometsrv.game.rooms.avatars.Avatar;
import com.cometsrv.game.rooms.avatars.misc.Position;
import com.cometsrv.game.utilities.DistanceCalculator;
import com.cometsrv.network.messages.types.Composer;

import java.util.LinkedList;
import java.util.NoSuchElementException;
import java.util.Queue;

public abstract class RoomItem implements GenericRoomItem, InteractableRoomItem {
    private static final int MAX_INTERACTION_QUEUE = 1;

    protected int id;
    protected int itemId;
    protected int ownerId;

    protected int x;
    protected int y;

    protected int rotation;

    protected boolean state;

    private Queue<InteractionQueueItem> interactionQueue = new LinkedList<>();
    protected InteractionQueueItem curInteractionItem;

    @Override
    public int getId() {
        return this.id;
    }

    @Override
    public int getItemId() {
        return this.itemId;
    }

    @Override
    public int getOwner() {
        return this.ownerId;
    }

    @Override
    public int getX() {
        return this.x;
    }

    @Override
    public int getY() {
        return this.y;
    }

    @Override
    public int getRotation() {
        return this.rotation;
    }

    @Override
    public boolean getState() {
        return this.state;
    }

    @Override
    public boolean hasInteraction() {
        return (this.interactionQueue.size() > 0 || (this.curInteractionItem != null && this.curInteractionItem.getUpdateCycles() > 1));
    }

    @Override
    public InteractionQueueItem getNextInteraction() {
        if (this.curInteractionItem != null) {
            if (this.curInteractionItem.getUpdateCycles() > 0 && this.curInteractionItem.needsCycling()) {
                return this.curInteractionItem;
            } else {
                this.curInteractionItem = null;
            }
        }

        try {
            this.curInteractionItem = this.interactionQueue.remove();
        } catch (NoSuchElementException e) {
            this.curInteractionItem = null;
        }

        return this.curInteractionItem;
    }

    @Override
    public void queueInteraction(InteractionQueueItem interaction) {
        // check the queue size
        if (this.interactionQueue.size() > MAX_INTERACTION_QUEUE) {
            return; // ignore the interaction
        }

        this.interactionQueue.add(interaction);
    }

    public int distance(Avatar avatar) {
        int avatarX = avatar.getPosition().getX();
        int avatarY = avatar.getPosition().getY();

        return DistanceCalculator.calculate(avatarX, avatarY, this.getX(), this.getY());
    }

    public boolean touching(Avatar avatar) {
        int avatarX = avatar.getPosition().getX();
        int avatarY = avatar.getPosition().getY();

        return DistanceCalculator.tilesTouching(avatarX, avatarY, this.getX(), this.getY());
    }

    public Position squareInfront() {
        Position pos = new Position(getX(), getY(), 0);

        int posX = pos.getX();
        int posY = pos.getY();

        if(getRotation() == 0) {
            posX--;
        } else if(getRotation() == 2) {
            posX++;
        } else if(getRotation() == 4) {
            posY++;
        } else if(getRotation() == 6) {
            posX--;
        }

        pos.setX(posX);
        pos.setY(posY);

        return pos;
    }

    public abstract void serialize(Composer msg);
    public abstract ItemDefinition getDefinition();

    @Deprecated
    public abstract boolean handleInteraction(boolean state);

    public abstract boolean toggleInteract(boolean state);
    public abstract void sendUpdate();
    public abstract void saveData();

    public abstract String getExtraData();
    public abstract void setExtraData(String data);
}
