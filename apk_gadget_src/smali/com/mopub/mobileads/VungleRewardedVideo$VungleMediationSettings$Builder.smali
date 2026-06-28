.class public Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
.super Ljava/lang/Object;
.source "VungleRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private closeButtonText:Ljava/lang/String;

.field private keepWatchingButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->closeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->keepWatchingButtonText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings;-><init>(Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;Lcom/mopub/mobileads/VungleRewardedVideo$1;)V

    return-object v0
.end method

.method public withCancelDialogBody(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->body:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public withCancelDialogCloseButton(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->closeButtonText:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public withCancelDialogKeepWatchingButton(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    .locals 0
    .param p1, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->keepWatchingButtonText:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public withCancelDialogTitle(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->title:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mopub/mobileads/VungleRewardedVideo$VungleMediationSettings$Builder;->userId:Ljava/lang/String;

    .line 328
    return-object p0
.end method
