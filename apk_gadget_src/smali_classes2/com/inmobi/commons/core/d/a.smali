.class public final Lcom/inmobi/commons/core/d/a;
.super Ljava/lang/Object;
.source "CatchEventUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/d/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/core/d/a$a;

.field private static b:Lcom/inmobi/commons/core/b/a;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/d/a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/b/a;)Lcom/inmobi/commons/core/b/a;
    .locals 0

    .prologue
    .line 10
    sput-object p0, Lcom/inmobi/commons/core/d/a;->b:Lcom/inmobi/commons/core/b/a;

    return-object p0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 17
    sget-boolean v0, Lcom/inmobi/commons/core/d/a;->c:Z

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/inmobi/commons/core/b/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/b/a;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/a;->b:Lcom/inmobi/commons/core/b/a;

    .line 19
    new-instance v0, Lcom/inmobi/commons/core/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/d/a$a;-><init>(B)V

    sput-object v0, Lcom/inmobi/commons/core/d/a;->a:Lcom/inmobi/commons/core/d/a$a;

    .line 20
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/d/a;->b:Lcom/inmobi/commons/core/b/a;

    sget-object v2, Lcom/inmobi/commons/core/d/a;->a:Lcom/inmobi/commons/core/d/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/core/d/a;->c:Z

    .line 23
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/d/a;->b:Lcom/inmobi/commons/core/b/a;

    .line 1079
    iget-boolean v0, v0, Lcom/inmobi/commons/core/b/a;->b:Z

    .line 23
    return v0
.end method
