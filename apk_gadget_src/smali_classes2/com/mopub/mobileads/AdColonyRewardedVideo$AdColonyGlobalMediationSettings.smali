.class public final Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;
.super Ljava/lang/Object;
.source "AdColonyRewardedVideo.java"

# interfaces
.implements Lcom/mopub/common/MediationSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdColonyRewardedVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdColonyGlobalMediationSettings"
.end annotation


# instance fields
.field private final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->mUserId:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyGlobalMediationSettings;->mUserId:Ljava/lang/String;

    return-object v0
.end method
