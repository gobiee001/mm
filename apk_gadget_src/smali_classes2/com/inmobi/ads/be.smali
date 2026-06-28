.class Lcom/inmobi/ads/be;
.super Lcom/inmobi/ads/bv;
.source "PollingVisibilityTracker.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/inmobi/ads/b$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/inmobi/ads/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/be;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/b$h;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/inmobi/ads/bv;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/inmobi/ads/be;->f:Lcom/inmobi/ads/b$h;

    .line 22
    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/bv$a;Lcom/inmobi/ads/b$h;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/inmobi/ads/bv;-><init>(Lcom/inmobi/ads/bv$a;)V

    .line 27
    iput-object p2, p0, Lcom/inmobi/ads/be;->f:Lcom/inmobi/ads/b$h;

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inmobi/ads/be;->f:Lcom/inmobi/ads/b$h;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/be;->f:Lcom/inmobi/ads/b$h;

    .line 1745
    iget v0, v0, Lcom/inmobi/ads/b$h;->c:I

    goto :goto_0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/inmobi/ads/be;->g()V

    .line 36
    return-void
.end method
