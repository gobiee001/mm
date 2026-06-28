.class final synthetic Lcom/inmobi/ads/aa$1;
.super Ljava/lang/Object;
.source "MoatTrackedNativeVideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/inmobi/ads/ViewableAd$AdEvent;->values()[Lcom/inmobi/ads/ViewableAd$AdEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PREPARED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUME_INLINE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PAUSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAYED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUMED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_SKIPPED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_1:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_2:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_3:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAY_COMPLETED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLOSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_ENTER_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_EXIT_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method
