.class public Lcom/chartboost/sdk/impl/p$a;
.super Lcom/chartboost/sdk/impl/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final h:Lcom/chartboost/sdk/impl/v;

.field i:Lcom/chartboost/sdk/impl/s;

.field final j:Lcom/chartboost/sdk/impl/n;

.field final k:Lcom/chartboost/sdk/impl/q;

.field final synthetic l:Lcom/chartboost/sdk/impl/p;

.field private final m:Lcom/chartboost/sdk/impl/ar;

.field private n:Landroid/view/View;

.field private final o:Lcom/chartboost/sdk/impl/ar;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/p;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x2

    const/16 v5, 0x8

    .line 103
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/o$a;-><init>(Lcom/chartboost/sdk/impl/o;Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v3

    .line 106
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_1

    .line 114
    new-instance v0, Lcom/chartboost/sdk/impl/s;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/s;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    .line 115
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/s;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 119
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/v;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->g:Lcom/chartboost/sdk/impl/an;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->a(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/v;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 124
    new-instance v0, Lcom/chartboost/sdk/impl/n;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/n;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/n;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/n;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_b

    .line 129
    new-instance v0, Lcom/chartboost/sdk/impl/q;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/q;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/q;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 137
    :goto_0
    new-instance v0, Lcom/chartboost/sdk/impl/p$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lcom/chartboost/sdk/impl/p$a$1;-><init>(Lcom/chartboost/sdk/impl/p$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ar;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 152
    new-instance v0, Lcom/chartboost/sdk/impl/p$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p$a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, p1}, Lcom/chartboost/sdk/impl/p$a$2;-><init>(Lcom/chartboost/sdk/impl/p$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/p;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    const-string v3, "CBClose"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->addView(Landroid/view/View;)V

    .line 162
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v3, "progress"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    iget-object v3, p1, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v4, "video-controls-background"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 165
    if-eqz v0, :cond_2

    const-string v4, "background-color"

    .line 166
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "border-color"

    .line 167
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "progress-color"

    .line 168
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "radius"

    .line 169
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    iput-boolean v2, p1, Lcom/chartboost/sdk/impl/p;->M:Z

    .line 171
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/v;->c()Lcom/chartboost/sdk/impl/r;

    move-result-object v4

    .line 172
    const-string v5, "background-color"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/r;->a(I)V

    .line 173
    const-string v5, "border-color"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/r;->b(I)V

    .line 174
    const-string v5, "progress-color"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chartboost/sdk/impl/r;->c(I)V

    .line 175
    const-string v5, "radius"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/r;->b(F)V

    .line 178
    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "color"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/v;->a(I)V

    .line 182
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_4

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/p;->A:Z

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v3, "post-video-toaster"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_4

    .line 185
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    const-string v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tagline"

    .line 186
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v3, v4, v0}, Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_5

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/p;->z:Z

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v3, "confirmation"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_5

    .line 193
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    const-string v4, "text"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    .line 194
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 193
    invoke-virtual {v3, v4, v0}, Lcom/chartboost/sdk/impl/s;->a(Ljava/lang/String;I)V

    .line 198
    :cond_5
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v8, :cond_6

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/p;->B:Z

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "post-video-reward-toaster"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_c

    const-string v0, "position"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "inside-top"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 203
    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/q;->a(I)V

    .line 205
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    if-eqz v3, :cond_d

    const-string v0, "text"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/impl/q;->a(Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/p;->L:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 210
    :cond_6
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p;->g()Lorg/json/JSONObject;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_7

    const-string v0, "video-click-button"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->d()V

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v5, "video-progress-timer-enabled"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/v;->d(Z)V

    .line 216
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/p;->O:Z

    if-nez v0, :cond_9

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_a

    .line 217
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->f:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_a
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p;->a()I

    move-result v0

    .line 219
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 220
    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "video-portrait"

    :goto_3
    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_f

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p1, Lcom/chartboost/sdk/impl/p;->u:Ljava/lang/String;

    .line 222
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 223
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 237
    :goto_5
    return-void

    .line 133
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 201
    goto/16 :goto_1

    .line 205
    :cond_d
    const-string v0, ""

    goto :goto_2

    .line 220
    :cond_e
    const-string v0, "video-landscape"

    goto :goto_3

    .line 221
    :cond_f
    const-string v0, ""

    goto :goto_4

    .line 227
    :cond_10
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->t:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 228
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->q:Lcom/chartboost/sdk/Libraries/f;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/p;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/p;->t:Ljava/lang/String;

    .line 229
    :cond_11
    iget-object v0, p1, Lcom/chartboost/sdk/impl/p;->t:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 230
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/impl/p;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_5

    .line 235
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/p;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/p;Landroid/content/Context;Lcom/chartboost/sdk/impl/p$1;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/p$a;-><init>(Lcom/chartboost/sdk/impl/p;Landroid/content/Context;)V

    return-void
.end method

.method private a(IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iput p1, v0, Lcom/chartboost/sdk/impl/p;->r:I

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p$a;->f()Z

    move-result v0

    .line 464
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/p$a;->d(Z)Lcom/chartboost/sdk/impl/ar;

    move-result-object v3

    .line 465
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 466
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v4, v0, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 467
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/p$a;->d(Z)Lcom/chartboost/sdk/impl/ar;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 469
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v3, v2, v0, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 472
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->O:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_2

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 474
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->c:Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 475
    if-eqz p1, :cond_d

    :goto_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/p$a;->a(Z)V

    .line 476
    return-void

    .line 418
    :pswitch_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 419
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v5, :cond_3

    .line 420
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 425
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/v;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 418
    goto :goto_4

    .line 431
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 432
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v5, :cond_6

    .line 433
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_7

    .line 435
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 436
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 438
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 439
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->setEnabled(Z)V

    goto/16 :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 445
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    if-ne v0, v5, :cond_8

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 447
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_9

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 449
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 450
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 451
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->K:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 452
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->A:Z

    if-eqz v0, :cond_a

    move v0, v1

    .line 453
    :goto_5
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/p;->a(ZLandroid/view/View;Z)V

    .line 454
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/v;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->C:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/p$a;->e(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 452
    goto :goto_5

    :cond_b
    move v0, v2

    .line 473
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 474
    goto/16 :goto_2

    :cond_d
    move v1, v2

    .line 475
    goto/16 :goto_3

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(Z)V
    .locals 4

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->a(Z)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/p$a$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/p$a$4;-><init>(Lcom/chartboost/sdk/impl/p$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->k:Lcom/chartboost/sdk/impl/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/q;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(FFFF)V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-nez v0, :cond_2

    .line 542
    :cond_1
    :goto_0
    return-void

    .line 539
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/p$a;->b(FFFF)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 11

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/o$a;->a(II)V

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/impl/p$a;->a(IZ)V

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->a()I

    move-result v0

    .line 270
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v2

    .line 272
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 278
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->c:Lcom/chartboost/sdk/impl/aq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 285
    iget-object v8, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/p;->F:Lcom/chartboost/sdk/Libraries/h;

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v4, v1, v9}, Lcom/chartboost/sdk/impl/p;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 286
    iget-object v8, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    if-eqz v2, :cond_4

    const-string v1, "replay-portrait"

    :goto_1
    invoke-virtual {v8, v1}, Lcom/chartboost/sdk/impl/p;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 287
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v8, v8

    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 288
    iget v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v9, v9

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v0, v10

    add-float/2addr v0, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 289
    const/4 v1, 0x0

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, p1, v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 290
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->bringToFront()V

    .line 292
    if-eqz v2, :cond_5

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/p;->F:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 297
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->e:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v1

    if-nez v1, :cond_6

    .line 300
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 301
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 302
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 303
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 305
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 306
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 307
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 308
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 322
    :goto_3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 323
    const/16 v1, 0x48

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 324
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 325
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x48

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 327
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->N:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->j:Lcom/chartboost/sdk/impl/n;

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/impl/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->i:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->a()V

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->a()V

    .line 338
    return-void

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/p;->E:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_0

    .line 286
    :cond_4
    const-string v1, "replay-landscape"

    goto/16 :goto_1

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->m:Lcom/chartboost/sdk/impl/ar;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/p;->E:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    goto/16 :goto_2

    .line 311
    :cond_6
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/p;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 314
    :goto_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v1, v9}, Lcom/chartboost/sdk/impl/p;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 315
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 316
    const/4 v2, 0x0

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 317
    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 318
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ar;->a(Lcom/chartboost/sdk/Libraries/h;)V

    goto/16 :goto_3

    .line 313
    :cond_7
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/p;->m:Lcom/chartboost/sdk/Libraries/h;

    goto :goto_4
.end method

.method public b()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->n()V

    .line 503
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o$a;->b()V

    .line 504
    return-void
.end method

.method protected b(FFFF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 545
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v4, :cond_0

    .line 546
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/p$a;->c(Z)V

    .line 548
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "x"

    .line 549
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "y"

    .line 550
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "w"

    .line 551
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "h"

    .line 552
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 548
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/p;->b(Lorg/json/JSONObject;)Z

    .line 555
    return-void
.end method

.method b(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 341
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->z:Z

    if-eqz v0, :cond_2

    .line 346
    invoke-direct {p0, v2, p1}, Lcom/chartboost/sdk/impl/p$a;->a(IZ)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/chartboost/sdk/impl/p$a;->a(IZ)V

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "timer"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->s:I

    if-ge v0, v1, :cond_4

    if-eqz v3, :cond_4

    const-string v0, "delay"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 354
    const-string v4, "InterstitialVideoViewProtocol"

    const-string v5, "controls starting %s, setting timer"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->y:Z

    if-eqz v0, :cond_3

    const-string v0, "visible"

    :goto_1
    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/p;->y:Z

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/v;->b(Z)V

    .line 356
    const-wide v4, 0x408f400000000000L    # 1000.0

    const-string v0, "delay"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    new-instance v5, Lcom/chartboost/sdk/impl/p$a$3;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/impl/p$a$3;-><init>(Lcom/chartboost/sdk/impl/p$a;)V

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/p;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 371
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->e()V

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->s:I

    if-gt v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->f()V

    goto :goto_0

    .line 354
    :cond_3
    const-string v0, "hidden"

    goto :goto_1

    .line 368
    :cond_4
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->y:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/v;->b(Z)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method protected c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-super {p0}, Lcom/chartboost/sdk/impl/o$a;->c()V

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    .line 244
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/p$a;->b(Z)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/impl/p$a;->a(IZ)V

    goto :goto_0
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->f()V

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-eq v0, v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->s:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->x:Lorg/json/JSONObject;

    const-string v1, "post-video-reward-toaster"

    .line 388
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->J:Lcom/chartboost/sdk/Libraries/h;

    .line 390
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->K:Lcom/chartboost/sdk/Libraries/h;

    .line 391
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/p$a;->e(Z)V

    .line 394
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/p$a;->a(IZ)V

    .line 396
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p$a;->requestLayout()V

    goto :goto_0
.end method

.method public d(Z)Lcom/chartboost/sdk/impl/ar;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->s()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->o:Lcom/chartboost/sdk/impl/ar;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->d:Lcom/chartboost/sdk/impl/ar;

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 508
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    if-ne v0, v1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v1, :cond_1

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->c(Z)V

    .line 515
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->h()V

    .line 516
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->s:I

    if-ge v0, v1, :cond_1

    .line 517
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v1, v0, Lcom/chartboost/sdk/impl/p;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/p;->s:I

    .line 518
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->e()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/p$a$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/p$a$5;-><init>(Lcom/chartboost/sdk/impl/p$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/p$a;->c(Z)V

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->h()V

    .line 254
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v1, v0, Lcom/chartboost/sdk/impl/p;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/p;->s:I

    .line 255
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->s:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->v:I

    if-lt v0, v2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/p;->e:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->e()V

    .line 259
    :cond_0
    return-void
.end method

.method protected f()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 479
    .line 480
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->r:I

    if-ne v0, v2, :cond_4

    .line 482
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iget v0, v0, Lcom/chartboost/sdk/impl/p;->s:I

    if-ge v0, v2, :cond_4

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    .line 484
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/p;->g()Lorg/json/JSONObject;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_1

    const-string v3, "delay"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 487
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 488
    :goto_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    iput v0, v3, Lcom/chartboost/sdk/impl/p;->D:I

    .line 489
    if-ltz v0, :cond_3

    .line 490
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/v;->b()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/an$a;->d()I

    move-result v3

    if-le v0, v3, :cond_4

    move v0, v1

    .line 497
    :goto_3
    return v0

    .line 484
    :cond_0
    const-string v0, "landscape"

    goto :goto_0

    .line 486
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 487
    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 493
    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p$a;->l:Lcom/chartboost/sdk/impl/p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/p;->z:Z

    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p$a;->b(Z)V

    .line 561
    return-void
.end method
