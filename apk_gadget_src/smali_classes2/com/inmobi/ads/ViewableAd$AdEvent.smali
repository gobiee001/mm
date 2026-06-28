.class public final enum Lcom/inmobi/ads/ViewableAd$AdEvent;
.super Ljava/lang/Enum;
.source "ViewableAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ViewableAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ViewableAd$AdEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_CLICK_THRU:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_CLOSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_ENTER_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_EXIT_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_IMPRESSION_RECORDED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_ERROR:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_PAUSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_PLAYED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_PLAY_COMPLETED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_PREPARED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_QUARTILE_1:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_QUARTILE_2:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_QUARTILE_3:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_RESUMED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_RESUME_INLINE:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_SKIPPED:Lcom/inmobi/ads/ViewableAd$AdEvent;

.field public static final enum AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_IMPRESSION_RECORDED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_IMPRESSION_RECORDED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 43
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_ENTER_FULLSCREEN"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_ENTER_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 44
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_EXIT_FULLSCREEN"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_EXIT_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 45
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_CLOSED"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLOSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 46
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_CLICK_THRU"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLICK_THRU:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 47
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_PREPARED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PREPARED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 48
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_PLAYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAYED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 49
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PAUSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 50
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_RESUMED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUMED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 51
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_QUARTILE_1"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_1:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 52
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_QUARTILE_2"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_2:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 53
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_QUARTILE_3"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_3:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 54
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_PLAY_COMPLETED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAY_COMPLETED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 55
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_MUTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 56
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_UNMUTE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 57
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_SKIPPED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_SKIPPED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 58
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_RESUME_INLINE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUME_INLINE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 59
    new-instance v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    const-string v1, "AD_EVENT_VIDEO_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$AdEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_ERROR:Lcom/inmobi/ads/ViewableAd$AdEvent;

    .line 41
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/inmobi/ads/ViewableAd$AdEvent;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_IMPRESSION_RECORDED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_ENTER_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_EXIT_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLOSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLICK_THRU:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PREPARED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAYED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PAUSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUMED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_1:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_2:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_3:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAY_COMPLETED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_SKIPPED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUME_INLINE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_ERROR:Lcom/inmobi/ads/ViewableAd$AdEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->$VALUES:[Lcom/inmobi/ads/ViewableAd$AdEvent;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ViewableAd$AdEvent;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ViewableAd$AdEvent;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ViewableAd$AdEvent;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->$VALUES:[Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ViewableAd$AdEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ViewableAd$AdEvent;

    return-object v0
.end method
