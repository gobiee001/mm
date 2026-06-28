.class public Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;
.super Ljava/lang/Object;
.source "OfferwallConfigurations.java"


# instance fields
.field private mDefaultOWPlacement:Lcom/supersonic/mediationsdk/model/OfferwallPlacement;

.field private mOWPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/model/OfferwallPlacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;->mOWPlacements:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public addOfferwallPlacement(Lcom/supersonic/mediationsdk/model/OfferwallPlacement;)V
    .locals 1
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/OfferwallPlacement;

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;->mOWPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/OfferwallPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;->mDefaultOWPlacement:Lcom/supersonic/mediationsdk/model/OfferwallPlacement;

    .line 25
    :cond_0
    return-void
.end method
