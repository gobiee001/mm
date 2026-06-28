.class final Lcom/inmobi/commons/core/utilities/uid/c$1;
.super Ljava/lang/Object;
.source "UidHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/utilities/uid/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/utilities/uid/b;

.field final synthetic b:Lcom/inmobi/commons/core/utilities/uid/c;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/core/utilities/uid/c;Lcom/inmobi/commons/core/utilities/uid/b;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/inmobi/commons/core/utilities/uid/c$1;->b:Lcom/inmobi/commons/core/utilities/uid/c;

    iput-object p2, p0, Lcom/inmobi/commons/core/utilities/uid/c$1;->a:Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 181
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 183
    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 185
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 186
    const-string v0, "getId"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 188
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->i()Lcom/inmobi/commons/core/utilities/uid/a;

    move-result-object v3

    .line 1024
    iput-object v0, v3, Lcom/inmobi/commons/core/utilities/uid/a;->a:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/inmobi/commons/core/utilities/uid/c$1;->a:Lcom/inmobi/commons/core/utilities/uid/b;

    .line 1030
    iget-object v3, v3, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/c/c;

    const-string v4, "adv_id"

    invoke-virtual {v3, v4, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "isLimitAdTrackingEnabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 197
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->i()Lcom/inmobi/commons/core/utilities/uid/a;

    move-result-object v1

    .line 2016
    iput-object v0, v1, Lcom/inmobi/commons/core/utilities/uid/a;->b:Ljava/lang/Boolean;

    .line 198
    iget-object v1, p0, Lcom/inmobi/commons/core/utilities/uid/c$1;->a:Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2038
    iget-object v1, v1, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/c/c;

    const-string v2, "limit_ad_tracking"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->j()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in trying to set the advertising ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
