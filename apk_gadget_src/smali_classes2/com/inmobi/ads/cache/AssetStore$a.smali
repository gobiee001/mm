.class final Lcom/inmobi/ads/cache/AssetStore$a;
.super Landroid/os/Handler;
.source "AssetStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/cache/AssetStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/cache/AssetStore;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/inmobi/ads/cache/e;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/inmobi/ads/cache/AssetStore;)V
    .locals 1

    .prologue
    .line 704
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 705
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    .line 706
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore$a$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/cache/AssetStore$a$1;-><init>(Lcom/inmobi/ads/cache/AssetStore$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->b:Lcom/inmobi/ads/cache/e;

    .line 753
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 889
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/cache/AssetStore$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 893
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in Asset fetch handler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore$a;Lcom/inmobi/ads/cache/a;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore$a;->a(Lcom/inmobi/ads/cache/a;)V

    return-void
.end method

.method private a(Lcom/inmobi/ads/cache/a;)V
    .locals 3

    .prologue
    .line 876
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 877
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 878
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 879
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/cache/AssetStore$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 883
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in Asset fetch handler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 899
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/cache/AssetStore$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 903
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in Asset fetch handler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/ads/cache/AssetStore$a;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/cache/AssetStore$a;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->b()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 757
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 761
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/AssetStore;

    .line 763
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->h(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;

    move-result-object v1

    .line 764
    if-nez v1, :cond_b

    .line 765
    new-instance v1, Lcom/inmobi/ads/b;

    invoke-direct {v1}, Lcom/inmobi/ads/b;-><init>()V

    .line 766
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 1560
    iget-object v1, v1, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    move-object v3, v1

    .line 771
    :goto_1
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->i(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    .line 1823
    iget v1, v3, Lcom/inmobi/ads/b$a;->b:I

    .line 772
    invoke-static {v1}, Lcom/inmobi/ads/cache/d;->a(I)Ljava/util/List;

    move-result-object v1

    .line 773
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/cache/a;

    .line 774
    invoke-virtual {v1}, Lcom/inmobi/ads/cache/a;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 779
    :goto_2
    if-nez v1, :cond_2

    .line 780
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 782
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->d(Lcom/inmobi/ads/cache/AssetStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 870
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 784
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 785
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 786
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2232
    iget-object v2, v1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 787
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 788
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/inmobi/ads/cache/a;->f:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v4, v6

    .line 2823
    :try_start_2
    iget v1, v3, Lcom/inmobi/ads/b$a;->b:I

    .line 790
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 3823
    iget v1, v3, Lcom/inmobi/ads/b$a;->b:I

    .line 792
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    sub-long/2addr v2, v4

    .line 791
    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/ads/cache/AssetStore$a;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 796
    :catch_1
    move-exception v0

    .line 799
    :try_start_3
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in Asset fetch handler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 794
    :cond_3
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/cache/AssetStore$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 806
    :pswitch_1
    :try_start_5
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/AssetStore;

    .line 808
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 809
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->i(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    invoke-static {v1}, Lcom/inmobi/ads/cache/d;->b(Ljava/lang/String;)Lcom/inmobi/ads/cache/a;

    move-result-object v1

    .line 812
    if-nez v1, :cond_4

    .line 813
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->b()V

    goto/16 :goto_0

    .line 817
    :cond_4
    invoke-virtual {v1}, Lcom/inmobi/ads/cache/a;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 818
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->h(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;

    move-result-object v2

    .line 4819
    iget v2, v2, Lcom/inmobi/ads/b$a;->a:I

    .line 818
    iget v3, v1, Lcom/inmobi/ads/cache/a;->c:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 821
    iget v3, v1, Lcom/inmobi/ads/cache/a;->c:I

    if-nez v3, :cond_5

    .line 5305
    const/16 v2, 0xb

    iput v2, v1, Lcom/inmobi/ads/cache/a;->l:I

    .line 823
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    .line 824
    invoke-direct {p0, v1}, Lcom/inmobi/ads/cache/AssetStore$a;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 828
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v3

    if-nez v3, :cond_6

    .line 829
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    .line 830
    invoke-static {v0}, Lcom/inmobi/ads/cache/AssetStore;->d(Lcom/inmobi/ads/cache/AssetStore;)V

    goto/16 :goto_0

    .line 834
    :cond_6
    iget-object v3, p0, Lcom/inmobi/ads/cache/AssetStore$a;->b:Lcom/inmobi/ads/cache/e;

    invoke-static {v0, v1, v3}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Lcom/inmobi/ads/cache/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cache miss in handler; attempting to cache asset: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6232
    iget-object v3, v1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 836
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Download attempt # "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in handler  to cache asset ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7232
    iget-object v1, v1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 842
    :cond_7
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cache miss in handler; but already attempting: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8232
    iget-object v1, v1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->b()V

    goto/16 :goto_0

    .line 848
    :cond_8
    invoke-static {}, Lcom/inmobi/ads/cache/AssetStore;->d()Ljava/lang/String;

    .line 849
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->a()V

    .line 851
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V

    goto/16 :goto_0

    .line 856
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/ads/cache/a;

    .line 857
    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/cache/AssetStore;

    .line 858
    if-eqz v1, :cond_9

    .line 859
    invoke-static {v1}, Lcom/inmobi/ads/cache/AssetStore;->i(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;

    .line 860
    invoke-static {v0}, Lcom/inmobi/ads/cache/d;->c(Lcom/inmobi/ads/cache/a;)V

    .line 862
    :cond_9
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->b()V

    .line 865
    :pswitch_3
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore$a;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto/16 :goto_2

    :cond_b
    move-object v3, v1

    goto/16 :goto_1

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
