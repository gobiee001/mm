.class public final enum Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
.super Ljava/lang/Enum;
.source "ExternalViewabilitySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ExternalViewabilitySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

.field public static final enum RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;


# instance fields
.field private avidMethodName:Ljava/lang/String;

.field private moatEnumName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 45
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_LOADED"

    const-string v2, "recordAdLoadedEvent"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 46
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_STARTED"

    const-string v2, "AD_EVT_START"

    const-string v3, "recordAdStartedEvent"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 47
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_STOPPED"

    const-string v2, "AD_EVT_STOPPED"

    const-string v3, "recordAdStoppedEvent"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 48
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_PAUSED"

    const-string v2, "AD_EVT_PAUSED"

    const-string v3, "recordAdPausedEvent"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 49
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_PLAYING"

    const/4 v2, 0x4

    const-string v3, "AD_EVT_PLAYING"

    const-string v4, "recordAdPlayingEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 50
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_SKIPPED"

    const/4 v2, 0x5

    const-string v3, "AD_EVT_SKIPPED"

    const-string v4, "recordAdSkippedEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 52
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_IMPRESSED"

    const/4 v2, 0x6

    const-string v3, "recordAdImpressionEvent"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 53
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_CLICK_THRU"

    const/4 v2, 0x7

    const-string v3, "recordAdClickThruEvent"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 55
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_VIDEO_FIRST_QUARTILE"

    const/16 v2, 0x8

    const-string v3, "AD_EVT_FIRST_QUARTILE"

    const-string v4, "recordAdVideoFirstQuartileEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 56
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_VIDEO_MIDPOINT"

    const/16 v2, 0x9

    const-string v3, "AD_EVT_MID_POINT"

    const-string v4, "recordAdVideoMidpointEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 57
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_VIDEO_THIRD_QUARTILE"

    const/16 v2, 0xa

    const-string v3, "AD_EVT_THIRD_QUARTILE"

    const-string v4, "recordAdVideoThirdQuartileEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 58
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "AD_COMPLETE"

    const/16 v2, 0xb

    const-string v3, "AD_EVT_COMPLETE"

    const-string v4, "recordAdCompleteEvent"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 60
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    const-string v1, "RECORD_AD_ERROR"

    const/16 v2, 0xc

    const-string v3, "recordAdError"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    .line 44
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_LOADED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STARTED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_STOPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PAUSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_PLAYING:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_SKIPPED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->AD_COMPLETE:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->$VALUES:[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "moatEnumName"    # Ljava/lang/String;
    .param p4, "avidMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->moatEnumName:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->avidMethodName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->$VALUES:[Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    return-object v0
.end method


# virtual methods
.method public getAvidMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->avidMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getMoatEnumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->moatEnumName:Ljava/lang/String;

    return-object v0
.end method
