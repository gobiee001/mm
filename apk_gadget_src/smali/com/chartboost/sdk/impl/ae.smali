.class public Lcom/chartboost/sdk/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/impl/ac;

.field final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/chartboost/sdk/impl/ab;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/ac;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ae;->c:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ae;->d:Lcom/chartboost/sdk/impl/ab;

    .line 45
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ae;->a:Lcom/chartboost/sdk/impl/ac;

    .line 46
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ae;->b:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/ad;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    .line 147
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/ae$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae$1;-><init>(Lcom/chartboost/sdk/impl/ae;Ljava/lang/String;Lcom/chartboost/sdk/Model/c;Landroid/app/Activity;Lcom/chartboost/sdk/impl/ad;)V

    .line 146
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ae;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/content/Context;Lcom/chartboost/sdk/impl/ad;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x5

    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 159
    :cond_0
    if-nez p3, :cond_1

    .line 160
    sget-object p3, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 161
    :cond_1
    if-nez p3, :cond_2

    .line 162
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    .line 192
    :goto_0
    return-void

    .line 167
    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    instance-of v1, p3, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 169
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p2

    .line 191
    :goto_1
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://market.android.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    instance-of v1, p3, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 178
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p2

    .line 185
    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    move-object v3, p2

    .line 182
    const-string v1, "CBURLOpener"

    const-string v4, "Exception raised openeing an inavld playstore URL"

    invoke-static {v1, v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    goto :goto_0

    .line 187
    :cond_5
    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V

    move-object v3, p2

    goto :goto_1
.end method

.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/ad;)V
    .locals 1

    .prologue
    .line 218
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->g:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/chartboost/sdk/impl/ae;->a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Landroid/app/Activity;Lcom/chartboost/sdk/impl/ad;)V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/ad;)V
    .locals 2

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->x:Z

    .line 56
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x4

    iput v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    .line 61
    :cond_0
    if-nez p2, :cond_2

    .line 62
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    invoke-interface {v0, p3, p4}, Lcom/chartboost/sdk/a;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/ad;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ae;->d:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->w:Lcom/chartboost/sdk/impl/ad;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    goto :goto_0

    .line 67
    :cond_3
    if-eqz p5, :cond_1

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ae;->d:Lcom/chartboost/sdk/impl/ab;

    invoke-virtual {v0, p5}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 196
    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 199
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 208
    :cond_1
    :goto_0
    return v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    const-string v2, "CBURLOpener"

    const-string v3, "Cannot open URL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    const-class v2, Lcom/chartboost/sdk/impl/ae;

    const-string v3, "canOpenURL"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
