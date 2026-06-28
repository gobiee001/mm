.class public final Lcom/inmobi/ads/AdContainer$RenderingProperties;
.super Ljava/lang/Object;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderingProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    }
.end annotation


# instance fields
.field public a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 67
    return-void
.end method
