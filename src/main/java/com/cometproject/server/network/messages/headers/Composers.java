package com.cometproject.server.network.messages.headers;

import javolution.util.FastMap;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;

public class Composers {
    public static short InitCryptoMessageComposer = 3523;
    public static short SecretKeyMessageComposer = 893;
    public static short AuthenticationOKMessageComposer = 97;
    public static short UniqueMachineIDMessageComposer = 1790;
    public static short HomeRoomMessageComposer = 315;
    public static short MinimailCountMessageComposer = 1714;
    public static short FavouriteRoomsMessageComposer = 1974;
    public static short EffectsInventoryMessageComposer = 2687;
    public static short UserClubRightsMessageComposer = 757;
    public static short EnableNotificationsMessageComposer = 114;
    public static short EnableTradingMessageComposer = 1086;
    public static short ActivityPointsMessageComposer = 343;
    public static short LoadModerationToolMessageComposer = 2851;
    public static short BroadcastNotifMessageComposer = 2127;
    public static short SendAchievementsRequirementsMessageComposer = 1504;
    public static short NuxSuggestFreeGiftsMessageComposer = 3887;
    public static short UserObjectMessageComposer = 532;
    public static short SendPerkAllowancesMessageComposer = 2903;
    public static short CreditsBalanceMessageComposer = 2835;
    public static short SubscriptionStatusMessageComposer = 518;
    public static short LandingWidgetMessageComposer = 2684;
    public static short LandingCommunityChallengeMessageComposer = 3875;
    public static short LandingPromosMessageComposer = 3695;
    public static short FlatCategoriesMessageComposer = 1531;
    public static short OfficialRoomsMessageComposer = 1122;
    public static short NavigatorListingsMessageComposer = 2825;
    public static short FavouriteRoomsUpdateMessageComposer = 1135;
    public static short CanCreateRoomMessageComposer = 2737;
    public static short PopularRoomTagsMessageComposer = 3274;
    public static short CatalogIndexMessageComposer = 151;
    public static short CatalogPageMessageComposer = 415;
    public static short CatalogueClubPageMessageComposer = 3385;
    public static short CatalogOfferMessageComposer = 3381;
    public static short CatalogueOfferConfigMessageComposer = 1732;
    public static short PurchaseOKMessageComposer = 1475;
    public static short CatalogPurchaseNotAllowedMessageComposer = 1264;
    public static short CatalogLimitedItemSoldOutMessageComposer = 2668;
    public static short SellablePetBreedsMessageComposer = 3770;
    public static short ReloadEcotronMessageComposer = 1708;
    public static short GiftWrappingConfigurationMessageComposer = 2988;
    public static short RecyclerRewardsMessageComposer = 2750;
    public static short CatalogPromotionGetRoomsMessageComposer = 2555;
    public static short LoadCatalogClubGiftsMessageComposer = 2179;
    public static short AchievementPointsMessageComposer = 3110;
    public static short InitialRoomInfoMessageComposer = 3431;
    public static short PrepareRoomMessageComposer = 441;
    public static short HeightMapMessageComposer = 1454;
    public static short FloorMapMessageComposer = 1768;
    public static short HasOwnerRightsMessageComposer = 1204;
    public static short SetRoomUserMessageComposer = 3753;
    public static short UpdateUserStatusMessageComposer = 3128;
    public static short RoomSpacesMessageComposer = 2251;
    public static short RoomChatOptionsMessageComposer = 3495;
    public static short RoomErrorMessageComposer = 487;
    public static short RoomDataMessageComposer = 1231;
    public static short RoomEnterErrorMessageComposer = 3820;
    public static short RoomEventMessageComposer = 241;
    public static short RoomFloorItemsMessageComposer = 529;
    public static short RoomFloorWallLevelsMessageComposer = 2412;
    public static short RoomGroupMessageComposer = 1907;
    public static short RoomOwnershipMessageComposer = 2101;
    public static short RoomRatingMessageComposer = 1118;
    public static short RoomRightsLevelMessageComposer = 2004;
    public static short SendRoomCampaignFurnitureMessageComposer = 2571;
    public static short RoomForwardMessageComposer = 3581;
    public static short GroupRoomMessageComposer = 3646;
    public static short OnCreateRoomInfoMessageComposer = 1361;
    public static short RoomUpdateMessageComposer = 1919;
    public static short RoomWallItemsMessageComposer = 1276;
    public static short RoomUserActionMessageComposer = 3685;
    public static short RoomUserIdleMessageComposer = 2858;
    public static short ApplyHanditemMessageComposer = 314;
    public static short ChatMessageComposer = 803;
    public static short ShoutMessageComposer = 1419;
    public static short WhisperMessageComposer = 1430;
    public static short DanceStatusMessageComposer = 1362;
    public static short DoorbellMessageComposer = 3104;
    public static short DoorbellNoOneMessageComposer = 1;
    public static short DoorbellOpenedMessageComposer = 1;
    public static short UserProfileMessageComposer = 3031;
    public static short AddFloorItemMessageComposer = 3183;
    public static short AddWallItemMessageComposer = 2400;
    public static short DimmerDataMessageComposer = 3457;
    public static short TypingStatusMessageComposer = 989;
    public static short LoadInventoryMessageComposer = 37;
    public static short ItemAnimationMessageComposer = 215;
    public static short NewInventoryObjectMessageComposer = 1006;
    public static short LatencyTestResponseMessageComposer = 3112;
    public static short PickUpFloorItemMessageComposer = 1899;
    public static short PickUpWallItemMessageComposer = 1596;
    public static short WiredRewardAlertMessageComposer = 2640;
    public static short UpdateInventoryMessageComposer = 3351;
    public static short UpdateFloorItemExtraDataMessageComposer = 931;
    public static short UpdateRoomItemMessageComposer = 1459;
    public static short UpdateRoomWallItemMessageComposer = 853;
    public static short UpdateUserDataMessageComposer = 3464;
    public static short UpdateUserNameMessageComposer = 3121;
    public static short UserBadgesMessageComposer = 2711;
    public static short UserLeftRoomMessageComposer = 658;
    public static short UserTagsMessageComposer = 1725;
    public static short RelationshipMessageComposer = 1485;
    public static short RemoveInventoryObjectMessageComposer = 1596;
    public static short LoadBadgesWidgetMessageComposer = 2569;
    public static short UpdateFurniStackMapMessageComposer = 2264;
    public static short ModerationToolIssueChatlogMessageComposer = 2589;
    public static short ModerationRoomToolMessageComposer = 2067;
    public static short ModerationTicketResponseMessageComposer = 2128;
    public static short ModerationToolIssueMessageComposer = 641;
    public static short ModerationToolRoomVisitsMessageComposer = 1587;
    public static short ModerationToolUpdateIssueMessageComposer = 1516;
    public static short ModerationToolUserChatlogMessageComposer = 3582;
    public static short ModerationToolUserToolMessageComposer = 433;
    public static short ModerationToolRoomChatlogMessageComposer = 3827;
    public static short OpenHelpToolMessageComposer = 1245;
    public static short ConsoleChatErrorMessageComposer = 1664;
    public static short ConsoleChatMessageComposer = 793;
    public static short ConsoleInvitationMessageComposer = 1551;
    public static short ConsoleMessengerActionMessageComposer = 3335;
    public static short ConsoleSearchFriendMessageComposer = 909;
    public static short ConsoleSendFriendRequestMessageComposer = 1932;
    public static short AlertNotificationMessageComposer = 1688;
    public static short BotInventoryMessageComposer = 1346;
    public static short BotSpeechListMessageComposer = 3323;
    public static short AddEffectToInventoryMessageComposer = 2798;
    public static short ApplyEffectMessageComposer = 2683;
    public static short EnableEffectMessageComposer = 3074;
    public static short StopAvatarEffectMessageComposer = 2666;
    public static short FloodFilterMessageComposer = 3180;
    public static short PetInfoMessageComposer = 830;
    public static short PetInventoryMessageComposer = 649;
    public static short PetTrainerPanelMessageComposer = 2860;
    public static short AddPetExperienceMessageComposer = 2818;
    public static short LoadFriendsMessageComposer = 168;
    public static short QuestAbortedMessageComposer = 1673;
    public static short QuestCompletedMessageComposer = 3498;
    public static short QuestListMessageComposer = 3562;
    public static short QuestStartedMessageComposer = 813;
    public static short OutOfRoomMessageComposer = 913;
    public static short MOTDNotificationMessageComposer = 2534;
    public static short SuperNotificationMessageComposer = 3062;
    public static short SerializePetMessageComposer = 2257;
    public static short RespectPetMessageComposer = 0;
    public static short PetRespectNotificationMessageComposer = 443;
    public static short LandingRewardMessageComposer = 135;
    public static short LoadVolumeMessageComposer = 2967;
    public static short LoadWardrobeMessageComposer = 1618;
    public static short NameChangedUpdatesMessageComposer = 3992;
    public static short NotAcceptingRequestsMessageComposer = 951;
    public static short PingMessageComposer = 3972;
    public static short PublishShopMessageComposer = 1639;
    public static short RecyclingStateMessageComposer = 1;
    public static short LoadPostItMessageComposer = 1;
    public static short OpenGiftMessageComposer = 2272;
    public static short RemoveRightsMessageComposer = 1;
    public static short LoadRoomRightsListMessageComposer = 798;
    public static short RoomBannedListMessageComposer = 3997;
    public static short RoomSettingsDataMessageComposer = 1113;
    public static short RoomLoadFilterMessageComposer = 1249;
    public static short RoomSettingsSavedMessageComposer = 2881;
    public static short RoomUnbanUserMessageComposer = 2215;
    public static short SaveWiredMessageComposer = 3283;
    public static short FollowFriendErrorMessageComposer = 2204;
    public static short FriendRequestsMessageComposer = 3389;
    public static short FriendUpdateMessageComposer = 3335;
    public static short GiftErrorMessageComposer = 1342;
    public static short GiveRespectsMessageComposer = 1447;
    public static short GiveRoomRightsMessageComposer = 1;
    public static short NavigatorNewFlatCategoriesMessageComposer = 6;
    public static short RoomMuteStatusMessageComposer = 1322;
    public static short ReceiveBadgeMessageComposer = 479;
    public static short UpdateAvatarAspectMessageComposer = 2551;
    public static short UserUpdateNameInRoomMessageComposer = 2432;
    public static short UserIsPlayingFreezeMessageComposer = 2846;
    public static short UpdateFreezeLivesMessageComposer = 1633;
    public static short UpdateIgnoreStatusMessageComposer = 1996;
    public static short NotifyNewPetLevelMessageComposer = 2685;
    public static short RetrieveSongIDMessageComposer = 1473;
    public static short JukeboxNowPlayingMessageComposer = 3001;
    public static short JukeboxPlaylistMessageComposer = 186;
    public static short SongsLibraryMessageComposer = 2236;
    public static short SongsMessageComposer = 1898;
    public static short SpectatorModeMessageComposer = 822;
    public static short SendMonsterplantIdMessageComposer = 3870;
    public static short VoucherErrorMessageComposer = 1738;
    public static short VoucherValidMessageComposer = 1738;
    public static short YouTubeLoadPlaylistsMessageComposer = 3247;
    public static short YouTubeLoadVideoMessageComposer = -32;
    public static short WiredConditionMessageComposer = 1612;
    public static short WiredEffectMessageComposer = 178;
    public static short WiredTriggerMessageComposer = 3016;
    public static short ChangeFavouriteGroupMessageComposer = 2939;
    public static short FavouriteGroupMessageComposer = 3069;
    public static short GroupDataEditMessageComposer = 1572;
    public static short GroupDataMessageComposer = 2527;
    public static short GroupFurniturePageMessageComposer = 1960;
    public static short GroupMembersMessageComposer = 3717;
    public static short GroupPurchasePageMessageComposer = 2768;
    public static short GroupPurchasePartsMessageComposer = 3161;
    public static short GroupAreYouSureMessageComposer = 941;
    public static short GroupConfirmLeaveMessageComposer = 248;
    public static short GroupRequestReloadMessageComposer = 941;
    public static short GroupForumListingsMessageComposer = 3154;
    public static short GroupForumDataMessageComposer = 2470;
    public static short GroupForumThreadRootMessageComposer = 1755;
    public static short GroupForumThreadUpdateMessageComposer = 904;
    public static short GroupForumNewThreadMessageComposer = 1860;
    public static short GroupForumNewResponseMessageComposer = 1004;
    public static short GroupForumReadThreadMessageComposer = 1109;
    public static short AchievementListMessageComposer = 2172;
    public static short AchievementProgressMessageComposer = 3339;
    public static short UnlockAchievementMessageComposer = 2704;
    public static short ActivityPointsNotificationMessageComposer = 576;
    public static short BadgeCampaignMessageComposer = 2569;
    public static short CheckPetNameMessageComposer = 1073;
    public static short CitizenshipStatusMessageComposer = 1246;
    public static short TalentLevelUpMessageComposer = 1413;
    public static short TalentsTrackMessageComposer = 2829;
    public static short TradeAcceptMessageComposer = 3676;
    public static short TradeCloseMessageComposer = 2325;
    public static short TradeCompletedMessageComposer = 1748;
    public static short TradeConfirmationMessageComposer = 1518;
    public static short TradeStartMessageComposer = 858;
    public static short TradeUpdateMessageComposer = 1821;
    public static short SuggestPollMessageComposer = 1414;
    public static short PollQuestionsMessageComposer = 2525;
    public static short OpenBullyReportMessageComposer = 2548;
    public static short BullyReportSentMessageComposer = 2848;
    public static short GetFloorPlanUsedCoordsMessageComposer = 279;
    public static short SetFloorPlanDoorMessageComposer = 2844;
    public static short NuxListGiftsMessageComposer = 3629;
    public static short BuildersClubMembershipMessageComposer = 296;
    public static short LoveLockDialogueMessageComposer = 1903;
    public static short LoveLockDialogueSetLockedMessageComposer = 652;
    public static short LoveLockDialogueCloseMessageComposer = 777;
    public static short NavigatorLiftedRoomsComposer = 554;
    public static short NavigatorMetaDataComposer = 1676;
    public static short NavigatorSavedSearchesComposer = 3255;
    public static short SearchResultSetComposer = 2095;
    public static short NewNavigatorOfficialRooms = 1122;
    public static short HelperToolConfigurationMessageComposer = 1245;
    public static short OnGuideSessionStartedMessageComposer = 3738;
    public static short OnGuideSessionPartnerIsTypingMessageComposer = 3317;
    public static short OnGuideSessionMsgMessageComposer = 2948;
    public static short OnGuideSessionInvitedToGuideRoomMessageComposer = 3991;
    public static short OnGuideSessionAttachedMessageComposer = 1987;
    public static short OnGuideSessionDetachedMessageComposer = 2075;
    public static short OnGuideSessionError = 1;
    public static short InternalLinkMessageComposer = 688;
    public static short BuildersClubUpdateFurniCountMessageComposer = 862;
    public static short UpdateFloorHeightMapMessageComposer = 2264;
    public static short EnableRoomInfoMessageComposer = 1919;

    public static short WiredRewardMessageComposer = 0;
    public static short MaintenanceNotificationMessageComposer = 431;
    public static short AdvancedAlertMessageComposer = 2273;

    private static Map<Short, String> composerNames = new FastMap<>();

    static {
        try {
            for (Field field : Composers.class.getDeclaredFields()) {
                if (!Modifier.isPrivate(field.getModifiers()))
                    composerNames.put(field.getShort(field.getName()), field.getName());
            }
        } catch (Exception ignored) {

        }
    }

    public static String valueOfId(short packetId) {
        if (composerNames.containsKey(packetId)) {
            return composerNames.get(packetId);
        }

        return "UnknownMessageComposer";
    }

}
