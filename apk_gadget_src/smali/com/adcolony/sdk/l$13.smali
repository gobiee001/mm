.class Lcom/adcolony/sdk/l$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/l;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/l;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/adcolony/sdk/l$13;->a:Lcom/adcolony/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 182
    iget-object v0, p0, Lcom/adcolony/sdk/l$13;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0, v4}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/l;Z)Z

    .line 183
    iget-object v0, p0, Lcom/adcolony/sdk/l$13;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    const-string v2, "app_version"

    invoke-static {}, Lcom/adcolony/sdk/az;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    const-string v2, "app_bundle_info"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 188
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdColony.on_update"

    invoke-direct {v1, v2, v4, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 189
    iget-object v0, p0, Lcom/adcolony/sdk/l$13;->a:Lcom/adcolony/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/l;->b(Lcom/adcolony/sdk/l;Z)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l$13;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->b(Lcom/adcolony/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "AdColony.on_install"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 196
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/al;->b(Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->a()V

    .line 204
    :cond_3
    return-void
.end method
