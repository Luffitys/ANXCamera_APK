.class public Landroid/os/DynamicEffect;
.super Landroid/os/VibrationEffect;
.source "DynamicEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DynamicEffect$Parameter;,
        Landroid/os/DynamicEffect$PrimitiveEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DynamicEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTENSITY:I = 0x0

.field private static final PARCEL_TOKEN_DYNAMIC:I = 0x5

.field public static final SHARPNESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DynamicEffect"


# instance fields
.field public mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Landroid/os/DynamicEffect$PrimitiveEffect;",
            ">;>;"
        }
    .end annotation
.end field

.field public mGlobalParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Landroid/os/DynamicEffect$Parameter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 14

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_6e

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    new-instance v3, Landroid/os/DynamicEffect$PrimitiveEffect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(FFF)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v4, :cond_5d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-array v8, v7, [F

    new-array v9, v7, [F

    const/4 v10, 0x0

    :goto_41
    if-ge v10, v7, :cond_52

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    aput v11, v8, v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    :cond_52
    new-instance v10, Landroid/os/DynamicEffect$Parameter;

    invoke-direct {v10, v6, v8, v9}, Landroid/os/DynamicEffect$Parameter;-><init>(I[F[F)V

    invoke-virtual {v3, v10}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_5d
    iget-object v5, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    new-instance v6, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_73
    if-ge v2, v1, :cond_ad

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v6, v5, [F

    new-array v7, v5, [F

    const/4 v8, 0x0

    :goto_86
    if-ge v8, v5, :cond_97

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    aput v9, v6, v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    :cond_97
    iget-object v8, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    new-instance v11, Landroid/os/DynamicEffect$Parameter;

    invoke-direct {v11, v4, v6, v7}, Landroid/os/DynamicEffect$Parameter;-><init>(I[F[F)V

    invoke-direct {v9, v10, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    :cond_ad
    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/os/DynamicEffect;
    .registers 15

    const-string v0, "ParameterCurve"

    const-string v1, "Event"

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/os/DynamicEffect;

    invoke-direct {v7}, Landroid/os/DynamicEffect;-><init>()V

    const-string v8, "Pattern"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2e
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_73

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_74

    const-string v12, "Time"

    if-eqz v11, :cond_56

    :try_start_40
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Landroid/os/DynamicEffect;->parsePrimitive(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/DynamicEffect;->addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;

    nop

    goto :goto_70

    :cond_56
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_70

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Landroid/os/DynamicEffect;->parseParameter(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$Parameter;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_70} :catch_74

    :cond_70
    :goto_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_73
    return-object v7

    :catch_74
    move-exception v0

    const-string v1, "DynamicEffect"

    const-string/jumbo v2, "parse file error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Ljava/lang/String;F)Landroid/os/DynamicEffect;
    .registers 10

    const-string v0, "ParameterCurve"

    const-string v1, "Event"

    :try_start_4
    new-instance v2, Landroid/os/DynamicEffect;

    invoke-direct {v2}, Landroid/os/DynamicEffect;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_54

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_67

    const-string v7, "Time"

    if-eqz v6, :cond_37

    :try_start_21
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Landroid/os/DynamicEffect;->parsePrimitive(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/DynamicEffect;->addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;

    nop

    goto :goto_51

    :cond_37
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Landroid/os/DynamicEffect;->parseParameter(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$Parameter;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;

    :cond_51
    :goto_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_54
    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v1, v5

    new-array v0, v0, [F

    aput p1, v0, v5

    invoke-static {v5, v1, v0}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_66} :catch_67

    return-object v2

    :catch_67
    move-exception v0

    const-string v1, "DynamicEffect"

    const-string/jumbo v2, "parse json array error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 4

    new-instance v0, Landroid/os/DynamicEffect$PrimitiveEffect;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(FFF)V

    return-object v0
.end method

.method public static createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;
    .registers 4

    new-instance v0, Landroid/os/DynamicEffect$Parameter;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/DynamicEffect$Parameter;-><init>(I[F[F)V

    return-object v0
.end method

.method public static createTransient(FF)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 3

    new-instance v0, Landroid/os/DynamicEffect$PrimitiveEffect;

    invoke-direct {v0, p0, p1}, Landroid/os/DynamicEffect$PrimitiveEffect;-><init>(FF)V

    return-object v0
.end method

.method private static parseParameter(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$Parameter;
    .registers 8

    :try_start_0
    const-string v0, "ParameterID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParameterCurveControlPoints"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [F

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3c

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "Time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ParameterValue"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_3c
    const-string v4, "HapticIntensityControl"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v4

    return-object v4

    :cond_4a
    const-string v4, "HapticSharpnessControl"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v4
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_59

    return-object v4

    :cond_58
    goto :goto_62

    :catch_59
    move-exception v0

    const-string v1, "DynamicEffect"

    const-string/jumbo v2, "parse json fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parsePrimitive(Lorg/json/JSONObject;)Landroid/os/DynamicEffect$PrimitiveEffect;
    .registers 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_3
    const-string v0, "EventType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const-string v9, "EventParameters"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v10, 0x0

    :goto_17
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_62

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "ParameterID"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ParameterValue"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-float v13, v13

    const-string v14, "HapticIntensity"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_38

    move v3, v13

    goto :goto_5f

    :cond_38
    const-string v14, "HapticSharpness"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42

    move v4, v13

    goto :goto_5f

    :cond_42
    const-string v14, "AttackTime"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4c

    move v5, v13

    goto :goto_5f

    :cond_4c
    const-string v14, "ReleaseTime"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    move v6, v13

    goto :goto_5f

    :cond_56
    const-string v14, "Sustained"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5f

    move v7, v13

    :cond_5f
    :goto_5f
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_62
    const-string v10, "HapticContinuous"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_db

    const-string v10, "EventDuration"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    const/4 v14, 0x0

    if-lez v12, :cond_ab

    add-float v12, v10, v6

    invoke-static {v3, v4, v12}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v17

    move-object/from16 v2, v17

    const/4 v13, 0x4

    new-array v15, v13, [F

    aput v11, v15, v14

    const/16 v18, 0x1

    aput v5, v15, v18

    const/16 v17, 0x2

    aput v10, v15, v17

    add-float v19, v10, v6

    const/16 v16, 0x3

    aput v19, v15, v16

    new-array v13, v13, [F

    aput v11, v13, v14

    const/16 v18, 0x1

    aput v3, v13, v18

    const/16 v17, 0x2

    aput v3, v13, v17

    const/16 v16, 0x3

    aput v11, v13, v16

    invoke-static {v14, v15, v13}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    nop

    goto :goto_e9

    :cond_ab
    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_d5

    invoke-static {v3, v4, v10}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v12

    move-object v2, v12

    const/4 v12, 0x3

    new-array v13, v12, [F

    aput v11, v13, v14

    const/4 v12, 0x1

    aput v5, v13, v12

    const/4 v12, 0x2

    aput v8, v13, v12

    const/4 v12, 0x3

    new-array v12, v12, [F

    aput v11, v12, v14

    const/4 v15, 0x1

    aput v3, v12, v15

    const/4 v15, 0x2

    aput v11, v12, v15

    invoke-static {v14, v13, v12}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/os/DynamicEffect$PrimitiveEffect;->addParameter(Landroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect$PrimitiveEffect;

    nop

    goto :goto_e9

    :cond_d5
    invoke-static {v3, v4, v10}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v11

    move-object v2, v11

    goto :goto_e9

    :cond_db
    const-string v10, "HapticTransient"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    invoke-static {v3, v4}, Landroid/os/DynamicEffect;->createTransient(FF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v10
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e7} :catch_eb

    move-object v2, v10

    goto :goto_ea

    :cond_e9
    :goto_e9
    nop

    :goto_ea
    goto :goto_f4

    :catch_eb
    move-exception v0

    const-string v3, "DynamicEffect"

    const-string/jumbo v4, "parse json fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f4
    return-object v2
.end method

.method public static startCompose()Landroid/os/DynamicEffect;
    .registers 1

    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0}, Landroid/os/DynamicEffect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;
    .registers 6

    if-nez p2, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "fail to add global parameter, time : %f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;
    .registers 6

    if-nez p2, :cond_17

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "fail to add Primitive, time : %f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/os/DynamicEffect;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/DynamicEffect;

    iget-object v2, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    iget-object v3, v0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    iget-object v3, v0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    return v1
.end method

.method public getDuration()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DynamicEffect"

    return-object v0
.end method

.method public validate()V
    .registers 1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/DynamicEffect;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DynamicEffect$PrimitiveEffect;

    iget v3, v2, Landroid/os/DynamicEffect$PrimitiveEffect;->intensity:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    iget v3, v2, Landroid/os/DynamicEffect$PrimitiveEffect;->sharpness:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    iget v3, v2, Landroid/os/DynamicEffect$PrimitiveEffect;->duration:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v3, v2, Landroid/os/DynamicEffect$PrimitiveEffect;->mParameters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v2, Landroid/os/DynamicEffect$PrimitiveEffect;->mParameters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/DynamicEffect$Parameter;

    iget v5, v4, Landroid/os/DynamicEffect$Parameter;->type:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v4, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_68
    iget-object v6, v4, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    array-length v6, v6

    if-ge v5, v6, :cond_7e

    iget-object v6, v4, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    aget v6, v6, v5

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v6, v4, Landroid/os/DynamicEffect$Parameter;->mValues:[F

    aget v6, v6, v5

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_7e
    goto :goto_50

    :cond_7f
    goto :goto_13

    :cond_80
    iget-object v0, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/DynamicEffect;->mGlobalParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DynamicEffect$Parameter;

    iget v3, v2, Landroid/os/DynamicEffect$Parameter;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v2, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    array-length v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_ba
    iget-object v4, v2, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    array-length v4, v4

    if-ge v3, v4, :cond_d0

    iget-object v4, v2, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v4, v2, Landroid/os/DynamicEffect$Parameter;->mValues:[F

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    :cond_d0
    goto :goto_8f

    :cond_d1
    return-void
.end method
