.class final Lcom/inmobi/ads/h$3;
.super Ljava/lang/Thread;
.source "AdStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/h;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/ads/h;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/inmobi/ads/h$3;->b:Lcom/inmobi/ads/h;

    iput-object p2, p0, Lcom/inmobi/ads/h$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/inmobi/ads/h$3;->b:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/c;

    iget-object v0, p0, Lcom/inmobi/ads/h$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)I

    .line 395
    return-void
.end method
