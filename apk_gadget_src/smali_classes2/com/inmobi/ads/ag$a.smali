.class final Lcom/inmobi/ads/ag$a;
.super Ljava/lang/Object;
.source "NativeContainerAsset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/inmobi/ads/NativeAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ag;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/ag;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/inmobi/ads/ag$a;->a:Lcom/inmobi/ads/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/ag$a;->b:I

    .line 122
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/inmobi/ads/ag$a;->b:I

    iget-object v1, p0, Lcom/inmobi/ads/ag$a;->a:Lcom/inmobi/ads/ag;

    invoke-static {v1}, Lcom/inmobi/ads/ag;->a(Lcom/inmobi/ads/ag;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 116
    .line 1131
    iget-object v0, p0, Lcom/inmobi/ads/ag$a;->a:Lcom/inmobi/ads/ag;

    invoke-static {v0}, Lcom/inmobi/ads/ag;->b(Lcom/inmobi/ads/ag;)[Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/ag$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inmobi/ads/ag$a;->b:I

    aget-object v0, v0, v1

    .line 116
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
