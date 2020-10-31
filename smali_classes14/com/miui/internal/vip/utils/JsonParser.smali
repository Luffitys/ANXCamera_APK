.class public Lcom/miui/internal/vip/utils/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field private static final ARRAY_END:Ljava/lang/String; = "]"

.field private static final ARRAY_START:Ljava/lang/String; = "["

.field private static final D_QUOTE:Ljava/lang/String; = "\""

.field public static final EMPTY_ARRAY:Ljava/lang/String; = "[]"

.field public static final EMPTY_OBJECT:Ljava/lang/String; = "{}"

.field static final ENCODE_END:Ljava/lang/String; = "\\\""

.field static final ENCODE_START:Ljava/lang/String; = "\\\""

.field private static final TAG:Ljava/lang/String; = "JsonParser"

.field private static final sCachedFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/internal/vip/utils/JsonParser;->sCachedFields:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildInToJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->encodeStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0
.end method

.method public static decodeStringData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_14

    :cond_8
    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public static encodeStringData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    move-object v0, p0

    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonValid(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\""

    if-eqz v1, :cond_f

    const-string v1, "\\\""

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static fieldToJson(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getClassFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .registers 4

    const-class v0, Lcom/miui/internal/vip/utils/JsonParser;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/internal/vip/utils/JsonParser;->sCachedFields:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-nez v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Lcom/miui/internal/vip/utils/JsonParser;->sCachedFields:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getValue(Lorg/json/JSONArray;ILjava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_ae

    :cond_22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_a5

    :cond_34
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->decodeStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_9c

    :cond_56
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_79

    :cond_77
    const/4 v0, 0x0

    return-object v0

    :cond_79
    :goto_79
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    goto :goto_93

    :cond_92
    return-object v0

    :cond_93
    :goto_93
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_9c
    :goto_9c
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a5
    :goto_a5
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_ae
    :goto_ae
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    goto :goto_c8

    :cond_c7
    return-object v0

    :cond_c8
    :goto_c8
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method private static getValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_ae

    :cond_22
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_a5

    :cond_34
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->decodeStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_9c

    :cond_56
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_79

    :cond_77
    const/4 v0, 0x0

    return-object v0

    :cond_79
    :goto_79
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    goto :goto_93

    :cond_92
    return-object v0

    :cond_93
    :goto_93
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_9c
    :goto_9c
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_a5
    :goto_a5
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_ae
    :goto_ae
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    goto :goto_c8

    :cond_c7
    return-object v0

    :cond_c8
    :goto_c8
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public static isEmptyJson(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static isIgnoredField(Ljava/lang/reflect/Field;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method public static isJsonArray(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static isJsonValid(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    :try_start_7
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonArray(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :cond_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_19

    :goto_18
    goto :goto_2a

    :catch_19
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JsonParser"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v0, v2, v1

    const-string v1, "%s, isJsonValid fail, e = %s"

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logV(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_2a
    :goto_2a
    return v1
.end method

.method public static parseJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonArray(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :try_start_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "JsonParser"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string v2, "%s, parseJsonArray, json fail, %s, cls = %s, jsonArray = %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_85

    invoke-static {p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_39

    :try_start_1a
    invoke-static {p0, v2, p1}, Lcom/miui/internal/vip/utils/JsonParser;->getValue(Lorg/json/JSONArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_38

    :catch_21
    move-exception v3

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "JsonParser"

    aput-object v9, v8, v6

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v8, v7

    aput-object p1, v8, v5

    aput-object v3, v8, v4

    const-string v4, "%s, Failed to parse json %s as cls %s, %s"

    invoke-static {v4, v8}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_38
    goto :goto_7c

    :cond_39
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x0

    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_4a

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/miui/internal/vip/utils/JsonParser;->tryStrToObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_51

    :cond_4a
    instance-of v9, v3, Lorg/json/JSONObject;

    if-eqz v9, :cond_51

    move-object v8, v3

    check-cast v8, Lorg/json/JSONObject;

    :cond_51
    :goto_51
    if-eqz v8, :cond_5a

    invoke-static {v8, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_7c

    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_67

    aput-object v3, v0, v2

    goto :goto_7c

    :cond_67
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "parseJsonArray for item %d failed, type mismatched, cls = %s, item class = %s"

    invoke-static {v5, v4}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7c
    aget-object v3, v0, v2

    if-nez v3, :cond_82

    add-int/lit8 v1, v1, 0x1

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_85
    if-lez v1, :cond_af

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_ae

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {p1, v3}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_99
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_ac

    aget-object v6, v0, v5

    if-eqz v6, :cond_a9

    aget-object v6, v0, v5

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    :cond_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    :cond_ac
    move-object v0, v3

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    :cond_af
    :goto_af
    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->convertArray([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static parseJsonArrayAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_f
    invoke-static {p0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_15
    const/4 v1, 0x1

    new-array v1, v1, [[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/miui/internal/vip/utils/Utils;->toArrayList([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static parseJsonMap(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Map;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonMap(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "parseJsonMap failed, json = %s, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseJsonMap(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;
    .registers 7

    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_27
    if-eqz p1, :cond_4c

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_3b

    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_3a
    goto :goto_4c

    :cond_3b
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_4c

    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-static {v4, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4c

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_4c
    :goto_4c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_55

    :goto_53
    goto :goto_9

    :cond_54
    return-object v0

    :catch_55
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "parseJsonMap failed, jobj = %s, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseJsonObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->isEmptyJson(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string v2, "parseJsonObject fail, %s, cls = %s, json = %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logV(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/internal/vip/utils/JsonParser;->getClassFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/miui/internal/vip/utils/JsonParser;->isIgnoredField(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_18

    :cond_15
    invoke-static {v0, v4, p0}, Lcom/miui/internal/vip/utils/JsonParser;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)V

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    return-object v0
.end method

.method private static setCollectionField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-class v0, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/vip/utils/ElementClass;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0}, Lcom/miui/internal/vip/utils/ElementClass;->className()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1e

    move-object v1, v2

    goto :goto_3c

    :catch_1e
    move-exception v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/miui/internal/vip/utils/ElementClass;->className()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const-string v4, "loadClass %s failed for %s.%s"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3c
    if-nez v1, :cond_3f

    return-void

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/internal/vip/utils/ReflectionUtils;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_5c

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArrayAsList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5c
    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Lorg/json/JSONObject;)V
    .registers 11

    const-class v0, Lcom/miui/internal/vip/utils/ProtocolField;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-class v0, Lcom/miui/internal/vip/utils/ProtocolField;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/vip/utils/ProtocolField;

    invoke-interface {v0}, Lcom/miui/internal/vip/utils/ProtocolField;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_26
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_4f

    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_43

    move-object v6, v5

    check-cast v6, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_80

    :cond_43
    const-string v6, "obj is array but not JSONArray, %s, %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v4

    aput-object v1, v7, v3

    invoke-static {v6, v7}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_80

    :cond_4f
    const-class v6, Ljava/util/Map;

    invoke-static {v6, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5f

    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_5f

    invoke-static {p0, p1, v5}, Lcom/miui/internal/vip/utils/JsonParser;->setMapField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_80

    :cond_5f
    const-class v6, Ljava/util/Collection;

    invoke-static {v6, v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isTypeMatched(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6f

    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_6f

    invoke-static {p0, p1, v5}, Lcom/miui/internal/vip/utils/JsonParser;->setCollectionField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_80

    :cond_6f
    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-static {p2, v0, v1}, Lcom/miui/internal/vip/utils/JsonParser;->getValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_80

    :cond_7d
    invoke-static {p0, p1, v5, v1}, Lcom/miui/internal/vip/utils/JsonParser;->setProtocolField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_80} :catch_81

    :goto_80
    goto :goto_97

    :catch_81
    move-exception v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aput-object v0, v6, v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    const-string v2, "%s.%s(%s), setField failed, %s"

    invoke-static {v2, v6}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_97
    :goto_97
    return-void
.end method

.method private static setMapField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-class v1, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/vip/utils/ElementClass;

    invoke-interface {v1}, Lcom/miui/internal/vip/utils/ElementClass;->className()Ljava/lang/String;

    move-result-object v1

    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_23

    move-object v0, v2

    goto :goto_3c

    :catch_23
    move-exception v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const-string v4, "setField, get map value type failed, t.class = %s, f = %s, className = %s, %s"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    move-object v1, p2

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonMap(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static setProtocolField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p2, Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_16

    :cond_9
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_16

    new-instance v1, Lorg/json/JSONObject;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_16
    :goto_16
    if-eqz v0, :cond_1f

    invoke-static {v0, p3}, Lcom/miui/internal/vip/utils/JsonParser;->parseJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private static toJSONCompatible(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p0

    :cond_f
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    :try_start_19
    invoke-static {v1}, Lcom/miui/internal/vip/utils/JsonParser;->isJsonArray(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_25
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_2a} :catch_2b

    return-object v2

    :catch_2b
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v4, "json %s to JSONObject failed, %s"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    :try_start_2
    const-string v0, "{}"

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->buildInToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_30

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3f
    invoke-static {p0}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_43} :catch_44

    return-object v0

    :catch_44
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "toJson failed, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static toJsonArray(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {p0}, Lcom/miui/internal/vip/utils/ReflectionUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_4d

    :cond_a
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_13
    array-length v4, v0

    if-ge v3, v4, :cond_43

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/internal/vip/utils/ReflectionUtils;->isBuiltIn(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_29

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/miui/internal/vip/utils/JsonParser;->buildInToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_29
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/miui/internal/vip/utils/JsonParser;->toJsonObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    if-eqz v1, :cond_3c

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    const/4 v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_43
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4d
    :goto_4d
    const-string v1, "[]"
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_4f} :catch_50

    return-object v1

    :catch_50
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "toJson failed, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static toJsonMap(Ljava/util/Map;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/vip/utils/JsonParser;->toJSONCompatible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    goto :goto_d

    :cond_29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v1

    :catch_2e
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "toJsonMap failed, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static toJsonObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_14
    array-length v5, v1

    if-ge v4, v5, :cond_5c

    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/miui/internal/vip/utils/JsonParser;->isIgnoredField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_59

    :cond_20
    :try_start_20
    invoke-static {p0, v5}, Lcom/miui/internal/vip/utils/JsonParser;->fieldToJson(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/internal/vip/utils/JsonParser;->isEmptyJson(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4c

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v3, :cond_33

    const-string v7, ","

    goto :goto_35

    :cond_33
    const-string v7, ""

    :goto_35
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_4c} :catch_4d

    :cond_4c
    goto :goto_59

    :catch_4d
    move-exception v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const-string v8, "toJsonObject, %s"

    invoke-static {v8, v7}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_5c
    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static tryStrToObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    move-object v0, v1

    :goto_9
    return-object v0
.end method
