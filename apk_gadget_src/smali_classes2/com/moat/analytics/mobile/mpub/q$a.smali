.class Lcom/moat/analytics/mobile/mpub/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/mpub/v$c",
        "<",
        "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/moat/analytics/mobile/mpub/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/a/b/a",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/moat/analytics/mobile/mpub/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/a/b/a",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/moat/analytics/mobile/mpub/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/a/b/a",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v2

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v3

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    const-string v4, "startTracking"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v4, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    const-string v5, "stopTracking"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v5, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    const-string v6, "setActivity"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/app/Activity;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v2

    invoke-static {v4}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v5}, Lcom/moat/analytics/mobile/mpub/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/mpub/a/b/a;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    sput-object v2, Lcom/moat/analytics/mobile/mpub/q$a;->a:Lcom/moat/analytics/mobile/mpub/a/b/a;

    sput-object v1, Lcom/moat/analytics/mobile/mpub/q$a;->b:Lcom/moat/analytics/mobile/mpub/a/b/a;

    sput-object v0, Lcom/moat/analytics/mobile/mpub/q$a;->c:Lcom/moat/analytics/mobile/mpub/a/b/a;

    return-void

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    :goto_1
    invoke-static {v3}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    return-object v0
.end method
