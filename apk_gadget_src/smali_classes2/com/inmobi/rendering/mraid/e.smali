.class public Lcom/inmobi/rendering/mraid/e;
.super Ljava/lang/Object;
.source "MraidJsFetcher.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/inmobi/rendering/mraid/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/e;->a:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/inmobi/rendering/mraid/e;->d:I

    .line 35
    iput p3, p0, Lcom/inmobi/rendering/mraid/e;->e:I

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/e;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inmobi/rendering/mraid/e;->d:I

    return v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/rendering/mraid/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/e;)Lcom/inmobi/commons/core/network/NetworkRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/rendering/mraid/e;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inmobi/rendering/mraid/e;->e:I

    return v0
.end method

.method static synthetic d(Lcom/inmobi/rendering/mraid/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->a:Ljava/lang/String;

    return-object v0
.end method
