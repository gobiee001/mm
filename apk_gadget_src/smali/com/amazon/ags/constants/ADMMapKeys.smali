.class public final Lcom/amazon/ags/constants/ADMMapKeys;
.super Ljava/lang/Object;
.source "ADMMapKeys.java"


# static fields
.field public static final FOLLOWER_ALIAS_KEY:Ljava/lang/String; = "com.amazon.gamecircle.FollowerAlias"

.field public static final FOLLOWER_PLAYER_ID_KEY:Ljava/lang/String; = "com.amazon.gamecircle.FollowerPlayerId"

.field public static final GAME_ID_KEY:Ljava/lang/String; = "com.amazon.gamecircle.sync.GameId"

.field public static final HANDLER_TYPE_KEY:Ljava/lang/String; = "com.amazon.gamecircle.adm.Handler"

.field public static final NOTIFY_HANDLER_VALUE:Ljava/lang/String; = "com.amazon.gamecircle.adm.NotifyMessageHandler"

.field public static final NOTIFY_TYPE_FOLLOW:Ljava/lang/String; = "FOLLOW"

.field public static final NOTIFY_TYPE_KEY:Ljava/lang/String; = "com.amazon.gamecircle.NotifyType"

.field public static final PACKAGE_NAME_KEY:Ljava/lang/String; = "com.amazon.gamecircle.sync.PackageName"

.field public static final SYNC_HANDLER_VALUE:Ljava/lang/String; = "com.amazon.gamecircle.adm.SyncMessageHandler"

.field public static final SYNC_TYPE_FRIENDS_VALUE:Ljava/lang/String; = "FRIENDS"

.field public static final SYNC_TYPE_GAME_SUMMARY_VALUE:Ljava/lang/String; = "GAME_SUMMARY"

.field public static final SYNC_TYPE_KEY:Ljava/lang/String; = "com.amazon.gamecircle.sync.SyncType"

.field public static final SYNC_TYPE_LIBRARY_SINGLE_GAME_VALUE:Ljava/lang/String; = "LIBRARY_SINGLE_GAME"

.field public static final SYNC_TYPE_LIBRARY_VALUE:Ljava/lang/String; = "LIBRARY"

.field public static final SYNC_TYPE_PROCESS_GAMECIRCLE_EVENTS_VALUE:Ljava/lang/String; = "PROCESS_GAMECIRCLE_EVENTS"

.field public static final SYNC_TYPE_PROFILE_VALUE:Ljava/lang/String; = "PROFILE"

.field public static final SYNC_TYPE_SDK_SINGLE_GAME_VALUE:Ljava/lang/String; = "SDK_SINGLE_GAME"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
