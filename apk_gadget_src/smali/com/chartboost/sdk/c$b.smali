.class Lcom/chartboost/sdk/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 667
    iput-object p1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    invoke-direct {p0}, Lcom/chartboost/sdk/c$b;->a()Lcom/chartboost/sdk/a;

    move-result-object v2

    .line 669
    iget-object v0, p1, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/chartboost/sdk/c$b;->b:I

    .line 670
    iget-object v0, p1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/chartboost/sdk/c$b;->c:I

    .line 671
    if-nez v2, :cond_2

    :goto_2
    iput v1, p0, Lcom/chartboost/sdk/c$b;->d:I

    .line 672
    return-void

    .line 669
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 670
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->hashCode()I

    move-result v0

    goto :goto_1

    .line 671
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method private a()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 664
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 675
    const-string v0, "ClearMemoryRunnable.run"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0}, Lcom/chartboost/sdk/c$b;->a()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/c$b;->c:I

    if-ne v1, v2, :cond_0

    .line 678
    iget-object v1, p0, Lcom/chartboost/sdk/c$b;->a:Lcom/chartboost/sdk/c;

    iput-object v3, v1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    .line 679
    const-string v1, "CBUIManager.clearHostActivityRef"

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 681
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/c$b;->d:I

    if-ne v0, v1, :cond_1

    .line 682
    sput-object v3, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 683
    const-string v0, "SdkSettings.clearDelegate"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 685
    :cond_1
    return-void
.end method
