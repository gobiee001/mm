.class public final enum Lcom/inmobi/ads/AdContainer$EventType;
.super Ljava/lang/Enum;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/AdContainer$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/AdContainer$EventType;

.field public static final enum EVENT_TYPE_AD_LOADED:Lcom/inmobi/ads/AdContainer$EventType;

.field public static final enum EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

.field public static final enum EVENT_TYPE_FILL_REQUEST:Lcom/inmobi/ads/AdContainer$EventType;

.field public static final enum EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/AdContainer$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/inmobi/ads/AdContainer$EventType;

    const-string v1, "EVENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdContainer$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/AdContainer$EventType;

    .line 52
    new-instance v0, Lcom/inmobi/ads/AdContainer$EventType;

    const-string v1, "EVENT_TYPE_AD_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/AdContainer$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_LOADED:Lcom/inmobi/ads/AdContainer$EventType;

    .line 53
    new-instance v0, Lcom/inmobi/ads/AdContainer$EventType;

    const-string v1, "EVENT_TYPE_AD_SERVED"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/AdContainer$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    .line 54
    new-instance v0, Lcom/inmobi/ads/AdContainer$EventType;

    const-string v1, "EVENT_TYPE_FILL_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/AdContainer$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_FILL_REQUEST:Lcom/inmobi/ads/AdContainer$EventType;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/AdContainer$EventType;

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/AdContainer$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_LOADED:Lcom/inmobi/ads/AdContainer$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_FILL_REQUEST:Lcom/inmobi/ads/AdContainer$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/ads/AdContainer$EventType;->$VALUES:[Lcom/inmobi/ads/AdContainer$EventType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/AdContainer$EventType;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/inmobi/ads/AdContainer$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdContainer$EventType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/AdContainer$EventType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/inmobi/ads/AdContainer$EventType;->$VALUES:[Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/AdContainer$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/AdContainer$EventType;

    return-object v0
.end method
