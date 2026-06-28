.class public final Lcom/inmobi/rendering/mraid/c;
.super Ljava/lang/Object;
.source "MraidExpandProcessor.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Lcom/inmobi/rendering/RenderView;

.field public b:Z

.field public c:Landroid/view/ViewGroup;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/rendering/mraid/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/c;->a:Lcom/inmobi/rendering/RenderView;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/c;->b:Z

    .line 38
    return-void
.end method
