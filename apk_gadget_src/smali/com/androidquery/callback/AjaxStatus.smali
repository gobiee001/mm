.class public Lcom/androidquery/callback/AjaxStatus;
.super Ljava/lang/Object;
.source "AjaxStatus.java"


# instance fields
.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private close:Ljava/io/Closeable;

.field private code:I

.field private context:Lorg/apache/http/protocol/HttpContext;

.field private data:[B

.field private done:Z

.field private duration:J

.field private error:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private headers:[Lorg/apache/http/Header;

.field private invalid:Z

.field private message:Ljava/lang/String;

.field private reauth:Z

.field private redirect:Ljava/lang/String;

.field private refresh:Z

.field private source:I

.field private start:J

.field private time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 61
    const-string v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    .line 80
    return-void
.end method


# virtual methods
.method protected client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 134
    return-object p0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->close:Ljava/io/Closeable;

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->close:Ljava/io/Closeable;

    .line 168
    return-void
.end method

.method protected closeLater(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->close:Ljava/io/Closeable;

    .line 158
    return-void
.end method

.method public code(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 94
    return-object p0
.end method

.method protected context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->context:Lorg/apache/http/protocol/HttpContext;

    .line 114
    return-object p0
.end method

.method protected data([B)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->data:[B

    .line 172
    return-object p0
.end method

.method public done()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 146
    return-object p0
.end method

.method protected error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->error:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method protected file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->file:Ljava/io/File;

    .line 177
    return-object p0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    return v0
.end method

.method protected getData()[B
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->data:[B

    return-object v0
.end method

.method protected getDone()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->error:Ljava/lang/String;

    return-object v0
.end method

.method protected getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->file:Ljava/io/File;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 353
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 353
    goto :goto_0

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected getInvalid()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->invalid:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected getReauth()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    return v0
.end method

.method protected headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 139
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method protected reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 129
    return-object p0
.end method

.method protected redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->redirect:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method protected refresh(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->refresh:Z

    .line 124
    return-object p0
.end method

.method protected reset()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    .line 152
    invoke-virtual {p0}, Lcom/androidquery/callback/AjaxStatus;->close()V

    .line 153
    return-object p0
.end method

.method protected source(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 89
    return-object p0
.end method

.method protected time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 119
    return-object p0
.end method
