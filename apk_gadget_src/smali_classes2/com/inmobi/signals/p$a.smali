.class public final Lcom/inmobi/signals/p$a;
.super Ljava/lang/Object;
.source "SignalsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/p$a;->a:Z

    .line 274
    const-string v0, "http://dock.inmobi.com/carb/v1/i"

    iput-object v0, p0, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 275
    const-string v0, "http://dock.inmobi.com/carb/v1/o"

    iput-object v0, p0, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 276
    const v0, 0x15180

    iput v0, p0, Lcom/inmobi/signals/p$a;->d:I

    .line 277
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/signals/p$a;->e:I

    .line 278
    iput v1, p0, Lcom/inmobi/signals/p$a;->f:I

    .line 279
    iput v1, p0, Lcom/inmobi/signals/p$a;->g:I

    .line 280
    const-wide/32 v0, 0x4b000

    iput-wide v0, p0, Lcom/inmobi/signals/p$a;->h:J

    return-void
.end method
