.class Lcom/moat/analytics/mobile/mpub/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Rect;

.field b:D

.field c:D

.field final synthetic d:Lcom/moat/analytics/mobile/mpub/b;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/mpub/b;Landroid/graphics/Rect;D)V
    .locals 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/b$a;->d:Lcom/moat/analytics/mobile/mpub/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/b$a;->a:Landroid/graphics/Rect;

    iput-wide p3, p0, Lcom/moat/analytics/mobile/mpub/b$a;->b:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/mpub/b$a;->c:D

    return-void
.end method
