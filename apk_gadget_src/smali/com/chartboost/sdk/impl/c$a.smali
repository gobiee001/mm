.class public Lcom/chartboost/sdk/impl/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/chartboost/sdk/impl/d;

.field final d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field final synthetic e:Lcom/chartboost/sdk/impl/c;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/c;ILjava/lang/String;Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput p2, p0, Lcom/chartboost/sdk/impl/c$a;->a:I

    .line 987
    iput-object p3, p0, Lcom/chartboost/sdk/impl/c$a;->b:Ljava/lang/String;

    .line 988
    iput-object p4, p0, Lcom/chartboost/sdk/impl/c$a;->c:Lcom/chartboost/sdk/impl/d;

    .line 989
    iput-object p5, p0, Lcom/chartboost/sdk/impl/c$a;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 990
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 995
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/c$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1030
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 1034
    :goto_1
    return-void

    .line 998
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c;->a()V

    goto :goto_0

    .line 1030
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1002
    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/chartboost/sdk/impl/c;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 1003
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/c;->b()V

    goto :goto_0

    .line 1007
    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :pswitch_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :pswitch_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$a;->c:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->b(Lcom/chartboost/sdk/impl/d;)V

    goto :goto_0

    .line 1019
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$a;->c:Lcom/chartboost/sdk/impl/d;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/c$a;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 1023
    :pswitch_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$a;->c:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;)V

    goto :goto_0

    .line 1027
    :pswitch_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$a;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
