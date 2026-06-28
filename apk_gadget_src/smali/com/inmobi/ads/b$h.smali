.class public final Lcom/inmobi/ads/b$h;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field public g:I

.field h:I

.field i:Z

.field j:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x32

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput v1, p0, Lcom/inmobi/ads/b$h;->a:I

    .line 704
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/ads/b$h;->b:I

    .line 705
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/ads/b$h;->c:I

    .line 706
    const/16 v0, 0xfa

    iput v0, p0, Lcom/inmobi/ads/b$h;->d:I

    .line 707
    const/16 v0, 0x43

    iput v0, p0, Lcom/inmobi/ads/b$h;->e:I

    .line 709
    iput v1, p0, Lcom/inmobi/ads/b$h;->f:I

    .line 710
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/inmobi/ads/b$h;->g:I

    .line 711
    iput v1, p0, Lcom/inmobi/ads/b$h;->h:I

    .line 713
    iput-boolean v2, p0, Lcom/inmobi/ads/b$h;->i:Z

    .line 714
    iput-boolean v2, p0, Lcom/inmobi/ads/b$h;->j:Z

    return-void
.end method
