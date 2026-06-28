.class public final enum Lcom/inmobi/ads/ViewableAd$ActivityState;
.super Ljava/lang/Enum;
.source "ViewableAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ViewableAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ViewableAd$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/ViewableAd$ActivityState;

.field public static final enum ACTIVITY_DESTROYED:Lcom/inmobi/ads/ViewableAd$ActivityState;

.field public static final enum ACTIVITY_STARTED:Lcom/inmobi/ads/ViewableAd$ActivityState;

.field public static final enum ACTIVITY_STOPPED:Lcom/inmobi/ads/ViewableAd$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/inmobi/ads/ViewableAd$ActivityState;

    const-string v1, "ACTIVITY_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ViewableAd$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_STARTED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    .line 64
    new-instance v0, Lcom/inmobi/ads/ViewableAd$ActivityState;

    const-string v1, "ACTIVITY_STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/ViewableAd$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_STOPPED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    .line 65
    new-instance v0, Lcom/inmobi/ads/ViewableAd$ActivityState;

    const-string v1, "ACTIVITY_DESTROYED"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/ViewableAd$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_DESTROYED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/ViewableAd$ActivityState;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_STARTED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_STOPPED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_DESTROYED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/ViewableAd$ActivityState;->$VALUES:[Lcom/inmobi/ads/ViewableAd$ActivityState;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ViewableAd$ActivityState;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/inmobi/ads/ViewableAd$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ViewableAd$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ViewableAd$ActivityState;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/inmobi/ads/ViewableAd$ActivityState;->$VALUES:[Lcom/inmobi/ads/ViewableAd$ActivityState;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ViewableAd$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ViewableAd$ActivityState;

    return-object v0
.end method
