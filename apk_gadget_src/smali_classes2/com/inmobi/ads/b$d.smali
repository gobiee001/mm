.class public final Lcom/inmobi/ads/b$d;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const-wide/32 v0, 0x69780

    iput-wide v0, p0, Lcom/inmobi/ads/b$d;->a:J

    .line 676
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/b$d;->b:I

    .line 677
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/b$d;->c:I

    .line 678
    const-string v0, "https://i.l.inmobicdn.net/sdk/sdk/500/android/mraid.js"

    iput-object v0, p0, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    return-void
.end method
