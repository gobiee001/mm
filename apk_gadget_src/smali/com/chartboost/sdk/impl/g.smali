.class public Lcom/chartboost/sdk/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Z

.field private final b:Lcom/chartboost/sdk/impl/f;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/f;ZII)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g;->b:Lcom/chartboost/sdk/impl/f;

    .line 14
    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/g;->a:Z

    .line 15
    iput p3, p0, Lcom/chartboost/sdk/impl/g;->c:I

    .line 16
    iput p4, p0, Lcom/chartboost/sdk/impl/g;->d:I

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->b:Lcom/chartboost/sdk/impl/f;

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/g;->a:Z

    iget v2, p0, Lcom/chartboost/sdk/impl/g;->c:I

    iget v3, p0, Lcom/chartboost/sdk/impl/g;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/f;->a(ZII)V

    .line 22
    return-void
.end method
