.class public final Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;
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
    name = "AdColonyInstanceMediationSettings"
.end annotation


# instance fields
.field private final mWithConfirmationDialog:Z

.field private final mWithResultsDialog:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "withConfirmationDialog"    # Z
    .param p2, "withResultsDialog"    # Z

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->mWithConfirmationDialog:Z

    .line 390
    iput-boolean p2, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->mWithResultsDialog:Z

    .line 391
    return-void
.end method


# virtual methods
.method public withConfirmationDialog()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->mWithConfirmationDialog:Z

    return v0
.end method

.method public withResultsDialog()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdColonyRewardedVideo$AdColonyInstanceMediationSettings;->mWithResultsDialog:Z

    return v0
.end method
