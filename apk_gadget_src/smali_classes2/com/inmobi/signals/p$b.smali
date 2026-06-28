.class public final Lcom/inmobi/signals/p$b;
.super Ljava/lang/Object;
.source "SignalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field i:Z

.field public j:I

.field k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field q:Z

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->a:Z

    .line 176
    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/signals/p$b;->b:I

    .line 177
    iput v2, p0, Lcom/inmobi/signals/p$b;->c:I

    .line 178
    iput v3, p0, Lcom/inmobi/signals/p$b;->d:I

    .line 179
    const-string v0, "https://sdkm.w.inmobi.com/user/e.asm"

    iput-object v0, p0, Lcom/inmobi/signals/p$b;->e:Ljava/lang/String;

    .line 180
    iput v2, p0, Lcom/inmobi/signals/p$b;->f:I

    .line 181
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/signals/p$b;->g:I

    .line 182
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->h:Z

    .line 183
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->i:Z

    .line 184
    iput v1, p0, Lcom/inmobi/signals/p$b;->j:I

    .line 185
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->k:Z

    .line 186
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->l:Z

    .line 187
    iput v1, p0, Lcom/inmobi/signals/p$b;->m:I

    .line 188
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->n:Z

    .line 189
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->o:Z

    .line 190
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->p:Z

    .line 191
    iput-boolean v1, p0, Lcom/inmobi/signals/p$b;->q:Z

    .line 192
    const/16 v0, 0xb4

    iput v0, p0, Lcom/inmobi/signals/p$b;->r:I

    .line 193
    iput v3, p0, Lcom/inmobi/signals/p$b;->s:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/inmobi/signals/p$b;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/inmobi/signals/p$b;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
