.class public final enum Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;
.super Ljava/lang/Enum;
.source "NativeVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

.field public static final enum PLAYBACK_EVENT_FIRE_Q4:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

.field public static final enum PLAYBACK_EVENT_PAUSE:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

.field public static final enum PLAYBACK_EVENT_PLAY:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

.field public static final enum PLAYBACK_EVENT_PREPARED:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

.field public static final enum PLAYBACK_EVENT_RESUME:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

.field public static final enum PLAYBACK_EVENT_STOP:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    const-string v1, "PLAYBACK_EVENT_PREPARED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PREPARED:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    .line 110
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    const-string v1, "PLAYBACK_EVENT_PLAY"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PLAY:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    .line 111
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    const-string v1, "PLAYBACK_EVENT_PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PAUSE:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    .line 112
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    const-string v1, "PLAYBACK_EVENT_RESUME"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_RESUME:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    .line 113
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    const-string v1, "PLAYBACK_EVENT_STOP"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_STOP:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    .line 114
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    const-string v1, "PLAYBACK_EVENT_FIRE_Q4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_FIRE_Q4:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PREPARED:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PLAY:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PAUSE:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_RESUME:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_STOP:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_FIRE_Q4:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->$VALUES:[Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->$VALUES:[Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    return-object v0
.end method
