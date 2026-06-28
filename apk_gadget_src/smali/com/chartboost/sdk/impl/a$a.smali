.class public Lcom/chartboost/sdk/impl/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p2, p0, Lcom/chartboost/sdk/impl/a$a;->b:I

    .line 268
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a$a;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 270
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget v0, p0, Lcom/chartboost/sdk/impl/a$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/a$a;->d:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 296
    :pswitch_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a$a;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
