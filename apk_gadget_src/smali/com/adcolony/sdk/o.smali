.class Lcom/adcolony/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:Lcom/adcolony/sdk/af;

.field private c:Landroid/app/AlertDialog;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Alert.show"

    new-instance v1, Lcom/adcolony/sdk/o$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/o$1;-><init>(Lcom/adcolony/sdk/o;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/o;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/adcolony/sdk/o;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/o;Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/af;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/adcolony/sdk/o;->b:Lcom/adcolony/sdk/af;

    return-object p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/o;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/adcolony/sdk/o;->d:Z

    return p1
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adcolony/sdk/o;->b:Lcom/adcolony/sdk/af;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/o;->b:Lcom/adcolony/sdk/af;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/o;->a(Lcom/adcolony/sdk/af;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/o;->b:Lcom/adcolony/sdk/af;

    .line 121
    :cond_0
    return-void
.end method

.method a(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/adcolony/sdk/o;->c:Landroid/app/AlertDialog;

    .line 139
    return-void
.end method

.method a(Lcom/adcolony/sdk/af;)V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->n()Lcom/adcolony/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->s()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1030226

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 46
    :goto_1
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    const-string v2, "message"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    const-string v3, "title"

    invoke-static {v1, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v4, "positive"

    invoke-static {v1, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    const-string v5, "negative"

    invoke-static {v1, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    new-instance v2, Lcom/adcolony/sdk/o$2;

    invoke-direct {v2, p0, p1}, Lcom/adcolony/sdk/o$2;-><init>(Lcom/adcolony/sdk/o;Lcom/adcolony/sdk/af;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    new-instance v2, Lcom/adcolony/sdk/o$3;

    invoke-direct {v2, p0, p1}, Lcom/adcolony/sdk/o$3;-><init>(Lcom/adcolony/sdk/o;Lcom/adcolony/sdk/af;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    :cond_1
    new-instance v1, Lcom/adcolony/sdk/o$4;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/o$4;-><init>(Lcom/adcolony/sdk/o;Lcom/adcolony/sdk/af;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v1, Lcom/adcolony/sdk/o$5;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/o$5;-><init>(Lcom/adcolony/sdk/o;Landroid/app/AlertDialog$Builder;)V

    invoke-static {v1}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103012e

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method b()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/o;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/adcolony/sdk/o;->d:Z

    return v0
.end method
