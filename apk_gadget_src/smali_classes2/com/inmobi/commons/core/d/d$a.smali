.class final Lcom/inmobi/commons/core/d/d$a;
.super Ljava/lang/Object;
.source "TelemetryComponentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput-object p1, p0, Lcom/inmobi/commons/core/d/d$a;->a:Ljava/lang/String;

    .line 1151
    iput p2, p0, Lcom/inmobi/commons/core/d/d$a;->b:I

    .line 1155
    iput-boolean p3, p0, Lcom/inmobi/commons/core/d/d$a;->c:Z

    .line 136
    return-void
.end method
