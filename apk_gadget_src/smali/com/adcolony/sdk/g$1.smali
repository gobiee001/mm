.class Lcom/adcolony/sdk/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/g;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/g;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-virtual {v1}, Lcom/adcolony/sdk/g;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->D()Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/integralads/avid/library/adcolony/session/AvidAdSessionManager;->startAvidVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;)Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;

    .line 130
    iget-object v0, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {v1}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;)Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    const-string v1, "start_session"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->D()Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/integralads/avid/library/adcolony/session/AvidAdSessionManager;->startAvidDisplayAdSession(Landroid/content/Context;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;)Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;

    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {v1}, Lcom/adcolony/sdk/g;->b(Lcom/adcolony/sdk/g;)Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    const-string v1, "start_session"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->D()Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/integralads/avid/library/adcolony/session/AvidAdSessionManager;->startAvidManagedVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;)Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    .line 140
    iget-object v0, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {v1}, Lcom/adcolony/sdk/g;->c(Lcom/adcolony/sdk/g;)Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/g;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    const-string v1, "start_session"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/g;->a(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {v1}, Lcom/adcolony/sdk/g;->d(Lcom/adcolony/sdk/g;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {v1}, Lcom/adcolony/sdk/g;->c(Lcom/adcolony/sdk/g;)Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    invoke-static {v2}, Lcom/adcolony/sdk/g;->d(Lcom/adcolony/sdk/g;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;->injectJavaScriptResource(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/adcolony/sdk/g$1;->a:Lcom/adcolony/sdk/g;

    const-string v2, "inject_javascript"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/g;->a(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
