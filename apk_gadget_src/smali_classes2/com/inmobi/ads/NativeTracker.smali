.class public final Lcom/inmobi/ads/NativeTracker;
.super Ljava/lang/Object;
.source "NativeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeTracker$TrackerEventType;,
        Lcom/inmobi/ads/NativeTracker$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/ads/NativeTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeTracker;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lcom/inmobi/ads/NativeTracker$TrackerEventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/inmobi/ads/NativeTracker;->f:I

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 96
    iput p3, p0, Lcom/inmobi/ads/NativeTracker;->g:I

    .line 97
    iput-object p4, p0, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 98
    iput-object p5, p0, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/inmobi/ads/NativeTracker$TrackerEventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    sget v1, Lcom/inmobi/ads/NativeTracker$a;->b:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeTracker;-><init>(ILjava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/inmobi/ads/NativeTracker$TrackerEventType;
    .locals 2

    .prologue
    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 193
    :goto_0
    return-object v0

    .line 146
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 149
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto :goto_0

    .line 146
    :sswitch_0
    const-string v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "load"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "client_fill"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "Impression"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "VideoImpression"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "page_view"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "click"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v1, "firstQuartile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "midpoint"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "thirdQuartile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v1, "complete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "creativeView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "fullscreen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "exitFullscreen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "mute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "unmute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "pause"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "resume"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "IAS_VIEWABILITY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "zMoatVASTIDs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "closeEndCard"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x17

    goto/16 :goto_1

    .line 151
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_LOAD:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 153
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLIENT_FILL:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 155
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 157
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_VIDEO_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 159
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PAGE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 161
    :pswitch_5
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 163
    :pswitch_6
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PLAY:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 165
    :pswitch_7
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q1:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 167
    :pswitch_8
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q2:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 169
    :pswitch_9
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q3:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 171
    :pswitch_a
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q4:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 173
    :pswitch_b
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CREATIVE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 175
    :pswitch_c
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 177
    :pswitch_d
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_EXIT_FULLSCREEN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 179
    :pswitch_e
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_MUTE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 181
    :pswitch_f
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNMUTE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 183
    :pswitch_10
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PAUSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 185
    :pswitch_11
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RESUME:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 187
    :pswitch_12
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 189
    :pswitch_13
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 191
    :pswitch_14
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_MOAT:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 193
    :pswitch_15
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_END_CARD_CLOSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_9
        -0x4fbdabf6 -> :sswitch_a
        -0x37b237d3 -> :sswitch_12
        -0x321793ce -> :sswitch_10
        -0x27c32ae3 -> :sswitch_15
        -0x23bacec7 -> :sswitch_b
        -0x10fa53b6 -> :sswitch_0
        -0xa609e89 -> :sswitch_2
        -0x2bc4d3f -> :sswitch_14
        0x32c4e6 -> :sswitch_1
        0x335219 -> :sswitch_f
        0x5a5c588 -> :sswitch_6
        0x5c4d208 -> :sswitch_13
        0x65825f6 -> :sswitch_11
        0x68ac462 -> :sswitch_7
        0x68f7bbb -> :sswitch_d
        0x6cac379 -> :sswitch_e
        0x151e1cc4 -> :sswitch_4
        0x21644853 -> :sswitch_8
        0x34afd255 -> :sswitch_5
        0x4fff2573 -> :sswitch_16
        0x69fcaef4 -> :sswitch_c
        0x7e026e29 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method static a(Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeTracker;
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 113
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1128
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1129
    :cond_0
    sget v0, Lcom/inmobi/ads/NativeTracker$a;->a:I

    .line 114
    :goto_0
    const-string v0, "eventType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/NativeTracker;->a(Ljava/lang/String;)Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    move-result-object v1

    .line 115
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v0, "eventId"

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 118
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 119
    new-instance v0, Lcom/inmobi/ads/NativeTracker;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 123
    :goto_1
    return-object v0

    .line 1131
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 1134
    sget v0, Lcom/inmobi/ads/NativeTracker$a;->a:I

    goto :goto_0

    .line 1131
    :sswitch_0
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_1
    const-string v2, "url_ping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v2, "html_script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v2, "webview_ping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    .line 1136
    :pswitch_0
    sget v0, Lcom/inmobi/ads/NativeTracker$a;->b:I

    goto :goto_0

    .line 1138
    :pswitch_1
    sget v0, Lcom/inmobi/ads/NativeTracker$a;->d:I

    goto :goto_0

    .line 1140
    :pswitch_2
    sget v0, Lcom/inmobi/ads/NativeTracker$a;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error building tracker from JSONObject; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 123
    const/4 v0, 0x0

    goto :goto_1

    .line 1131
    :sswitch_data_0
    .sparse-switch
        -0x72582021 -> :sswitch_2
        -0x39d57dbe -> :sswitch_1
        -0x10fa53b6 -> :sswitch_0
        0x782791f8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 273
    :try_start_0
    const-string v2, "type"

    iget v1, p0, Lcom/inmobi/ads/NativeTracker;->f:I

    .line 1198
    sget-object v3, Lcom/inmobi/ads/NativeTracker$1;->a:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1201
    const-string v1, "unknown"

    .line 273
    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v1, "url"

    iget-object v2, p0, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v2, "eventType"

    iget-object v1, p0, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 1212
    sget-object v3, Lcom/inmobi/ads/NativeTracker$1;->b:[I

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    .line 1215
    const-string v1, "unknown"

    .line 275
    :goto_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v1, "eventId"

    iget v2, p0, Lcom/inmobi/ads/NativeTracker;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v2, "extras"

    iget-object v1, p0, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_2
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    .line 1203
    :pswitch_0
    :try_start_1
    const-string v1, "url_ping"

    goto :goto_0

    .line 1205
    :pswitch_1
    const-string v1, "html_script"

    goto :goto_0

    .line 1207
    :pswitch_2
    const-string v1, "webview_ping"

    goto :goto_0

    .line 1217
    :pswitch_3
    const-string v1, "load"

    goto :goto_1

    .line 1219
    :pswitch_4
    const-string v1, "client_fill"

    goto :goto_1

    .line 1221
    :pswitch_5
    const-string v1, "Impression"

    goto :goto_1

    .line 1223
    :pswitch_6
    const-string v1, "VideoImpression"

    goto :goto_1

    .line 1225
    :pswitch_7
    const-string v1, "page_view"

    goto :goto_1

    .line 1227
    :pswitch_8
    const-string v1, "click"

    goto :goto_1

    .line 1229
    :pswitch_9
    const-string v1, "start"

    goto :goto_1

    .line 1231
    :pswitch_a
    const-string v1, "firstQuartile"

    goto :goto_1

    .line 1233
    :pswitch_b
    const-string v1, "midpoint"

    goto :goto_1

    .line 1235
    :pswitch_c
    const-string v1, "thirdQuartile"

    goto :goto_1

    .line 1237
    :pswitch_d
    const-string v1, "complete"

    goto :goto_1

    .line 1239
    :pswitch_e
    const-string v1, "creativeView"

    goto :goto_1

    .line 1241
    :pswitch_f
    const-string v1, "fullscreen"

    goto :goto_1

    .line 1243
    :pswitch_10
    const-string v1, "exitFullscreen"

    goto :goto_1

    .line 1245
    :pswitch_11
    const-string v1, "mute"

    goto :goto_1

    .line 1247
    :pswitch_12
    const-string v1, "unmute"

    goto :goto_1

    .line 1249
    :pswitch_13
    const-string v1, "pause"

    goto :goto_1

    .line 1251
    :pswitch_14
    const-string v1, "resume"

    goto :goto_1

    .line 1253
    :pswitch_15
    const-string v1, "error"

    goto :goto_1

    .line 1255
    :pswitch_16
    const-string v1, "IAS_VIEWABILITY"

    goto :goto_1

    .line 1257
    :pswitch_17
    const-string v1, "zMoatVASTIDs"

    goto :goto_1

    .line 1259
    :pswitch_18
    const-string v1, "closeEndCard"

    goto :goto_1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error serializing an "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/inmobi/ads/NativeTracker;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 283
    const-string v0, ""

    goto :goto_3

    .line 285
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1212
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
