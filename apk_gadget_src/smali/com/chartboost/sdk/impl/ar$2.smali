.class Lcom/chartboost/sdk/impl/ar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ar;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ar;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ar;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ar$2;->a:Lcom/chartboost/sdk/impl/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ar$2;->a:Lcom/chartboost/sdk/impl/ar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->a(Landroid/view/MotionEvent;)V

    .line 130
    return-void
.end method
