.class public final Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;
.super Ljava/lang/Object;
.source "ChartboostRewardedVideo.java"

# interfaces
.implements Lcom/mopub/common/MediationSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/ChartboostRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChartboostMediationSettings"
.end annotation


# instance fields
.field private final mCustomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "customId"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;->mCustomId:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public getCustomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/ChartboostRewardedVideo$ChartboostMediationSettings;->mCustomId:Ljava/lang/String;

    return-object v0
.end method
