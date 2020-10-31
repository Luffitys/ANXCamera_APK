.class public Lmiui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lmiui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    return-object v3

    :cond_c
    const/4 v0, 0x0

    if-eqz v2, :cond_14

    array-length v4, v2

    if-lez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    move v4, v0

    :goto_15
    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v5, v11, :cond_6b

    if-eq v6, v11, :cond_6b

    const/4 v9, 0x1

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v1, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    const-string v14, ""

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v11, :cond_47

    const/4 v10, 0x1

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_47
    :try_start_47
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v7, v0

    if-eqz v10, :cond_53

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_52} :catch_54

    move v8, v0

    :cond_53
    goto :goto_6b

    :catch_54
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "InterpolatorFactory"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    const-string v0, "BackEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_79
    const-string v3, "BackEaseOut"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_87

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_87
    const-string v11, "BackEaseInOut"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_95

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_95
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ab

    if-eqz v4, :cond_a3

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_a3
    if-eqz v9, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v0, v7}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object v0

    :cond_ab
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    if-eqz v4, :cond_b9

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_b9
    if-eqz v9, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v0, v7}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object v0

    :cond_c1
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d7

    if-eqz v4, :cond_cf

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_cf
    if-eqz v9, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v0, v7}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object v0

    :cond_d7
    const-string v0, "BounceEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5

    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object v0

    :cond_e5
    const-string v0, "BounceEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_f3
    const-string v0, "BounceEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_101
    const-string v0, "CircEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    new-instance v0, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object v0

    :cond_10f
    const-string v0, "CircEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    new-instance v0, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_11d
    const-string v0, "CircEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    new-instance v0, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_12b
    const-string v0, "CubicEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object v0

    :cond_139
    const-string v0, "CubicEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_147
    const-string v0, "CubicEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_155
    const-string v0, "ElasticEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_163

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_163
    const-string v3, "ElasticEaseOut"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_171

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_171
    const-string v11, "ElasticEaseInOut"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17f

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_17f
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_195

    if-eqz v4, :cond_18d

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_18d
    if-eqz v10, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object v0

    :cond_195
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    if-eqz v4, :cond_1a3

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_1a3
    if-eqz v10, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object v0

    :cond_1ab
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    if-eqz v4, :cond_1b9

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_1b9
    if-eqz v10, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object v0

    :cond_1c1
    const-string v0, "ExpoEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    new-instance v0, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object v0

    :cond_1cf
    const-string v0, "ExpoEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    new-instance v0, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_1dd
    const-string v0, "ExpoEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    new-instance v0, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_1eb
    const-string v0, "QuadEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    new-instance v0, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object v0

    :cond_1f9
    const-string v0, "QuadEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_207

    new-instance v0, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_207
    const-string v0, "QuadEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_215

    new-instance v0, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_215
    const-string v0, "QuartEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_223

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object v0

    :cond_223
    const-string v0, "QuartEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_231

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_231
    const-string v0, "QuartEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23f

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_23f
    const-string v0, "QuintEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24d

    new-instance v0, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object v0

    :cond_24d
    const-string v0, "QuintEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25b

    new-instance v0, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_25b
    const-string v0, "QuintEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_269

    new-instance v0, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_269
    const-string v0, "SineEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_277

    new-instance v0, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object v0

    :cond_277
    const-string v0, "SineEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_285

    new-instance v0, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_285
    const-string v0, "SineEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_293

    new-instance v0, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_293
    const-string v0, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a1

    new-instance v0, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object v0

    :cond_2a1
    const-string v0, "PhysicBased"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2af

    new-instance v0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_2af
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c5

    if-eqz v4, :cond_2bd

    new-instance v0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_2bd
    if-eqz v10, :cond_2c5

    new-instance v0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-object v0

    :cond_2c5
    const/4 v3, 0x0

    return-object v3
.end method
