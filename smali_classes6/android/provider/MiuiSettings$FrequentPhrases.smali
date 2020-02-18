.class public final Landroid/provider/MiuiSettings$FrequentPhrases;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequentPhrases"
.end annotation


# static fields
.field private static final FREQUENT_PHRASES:Ljava/lang/String; = "frequent_phrases"

.field private static final TAG_PHRASES:Ljava/lang/String; = "phrases"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frequent_phrases"

    invoke-static {v0, v1}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6204
    .local v0, "phraseString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 6205
    return-object v2

    .line 6208
    :cond_12
    const/4 v1, 0x0

    .line 6210
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_49

    move-object v1, v3

    .line 6214
    nop

    .line 6216
    const-string/jumbo v3, "phrases"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 6217
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_48

    .line 6221
    :cond_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6222
    .local v2, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_47

    .line 6223
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 6224
    .local v5, "phrase":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 6225
    goto :goto_44

    .line 6227
    :cond_41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6222
    .end local v5    # "phrase":Ljava/lang/String;
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 6230
    .end local v4    # "i":I
    :cond_47
    return-object v2

    .line 6218
    .end local v2    # "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_48
    :goto_48
    return-object v2

    .line 6211
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_49
    move-exception v3

    .line 6212
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 6213
    return-object v2
.end method

.method public static setFrequentPhrases(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6178
    .local p1, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "frequent_phrases"

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3e

    .line 6181
    :cond_b
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6182
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 6183
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 6182
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6185
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6187
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_26
    const-string/jumbo v3, "phrases"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2c} :catch_39

    .line 6191
    nop

    .line 6193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6194
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6193
    invoke-static {v3, v0, v4}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_47

    .line 6188
    :catch_39
    move-exception v0

    .line 6189
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 6190
    return-void

    .line 6179
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6196
    :goto_47
    return-void
.end method
