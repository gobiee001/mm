.class final Lcom/inmobi/signals/LocationInfo$a;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/inmobi/signals/LocationInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 190
    if-eqz p3, :cond_1

    .line 191
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->g()Ljava/lang/String;

    .line 1177
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/inmobi/signals/LocationInfo;->b(Z)Z

    .line 202
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConnectionSuspended"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/inmobi/signals/LocationInfo;->b(Z)Z

    .line 1182
    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->g()Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
