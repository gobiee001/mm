.class Lorg/go3k/utilities/ZYWebView$1$1;
.super Landroid/webkit/WebViewClient;
.source "ZYWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/go3k/utilities/ZYWebView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/go3k/utilities/ZYWebView$1;


# direct methods
.method constructor <init>(Lorg/go3k/utilities/ZYWebView$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/go3k/utilities/ZYWebView$1;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/go3k/utilities/ZYWebView$1$1;->this$1:Lorg/go3k/utilities/ZYWebView$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 21
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v17, "market://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    const/16 v17, 0x1

    .line 166
    :goto_0
    return v17

    .line 101
    :cond_0
    const-string v17, "mailto:"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 104
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v13, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v5, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, "bcc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 108
    .local v12, "subject":Ljava/lang/String;
    const/4 v4, 0x0

    .line 110
    .local v4, "body":Ljava/lang/String;
    const-string v17, "mailto:"

    const-string v18, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 111
    const-string v17, "\\?|&"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "urlSections":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 114
    const/16 v17, 0x0

    aget-object v17, v15, v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 117
    aget-object v14, v15, v9

    .line 118
    .local v14, "urlSection":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, "keyValue":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 121
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .line 122
    .local v10, "key":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v16, v11, v17

    .line 124
    .local v16, "value":Ljava/lang/String;
    const-string v17, "UTF-8"

    invoke-static/range {v16 .. v17}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 126
    const-string v17, "cc"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 127
    const-string v17, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .end local v10    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 128
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_2
    const-string v17, "bcc"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 129
    const-string v17, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 161
    .end local v3    # "bcc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "keyValue":[Ljava/lang/String;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "urlSection":Ljava/lang/String;
    .end local v15    # "urlSections":[Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 163
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string v17, "DA2.WebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "displayWebView->run()->shouldOverrideUrlLoading() call was \"Unsupported\". Exception message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v3    # "bcc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "body":Ljava/lang/String;
    .restart local v5    # "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "keyValue":[Ljava/lang/String;
    .restart local v12    # "subject":Ljava/lang/String;
    .restart local v13    # "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "urlSection":Ljava/lang/String;
    .restart local v15    # "urlSections":[Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v17, "subject"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 131
    move-object/from16 v12, v16

    goto :goto_2

    .line 132
    :cond_5
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 133
    move-object/from16 v4, v16

    goto :goto_2

    .line 138
    .end local v9    # "i":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "keyValue":[Ljava/lang/String;
    .end local v14    # "urlSection":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    const-string v17, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v8, "emailIntent":Landroid/content/Intent;
    const-string v17, "message/rfc822"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    .line 145
    .local v6, "dummyStringArray":[Ljava/lang/String;
    const-string v18, "android.intent.extra.EMAIL"

    invoke-interface {v13, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_8

    .line 147
    const-string v18, "android.intent.extra.CC"

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 150
    const-string v18, "android.intent.extra.BCC"

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :cond_9
    if-eqz v12, :cond_a

    .line 153
    const-string v17, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_a
    if-eqz v4, :cond_b

    .line 156
    const-string v17, "android.intent.extra.TEXT"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    const/16 v17, 0x1

    goto/16 :goto_0
.end method
