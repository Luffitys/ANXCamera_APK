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

.method public static create(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .registers 15

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_60

    if-eq v2, v7, :cond_60

    const/4 v5, 0x1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    const-string v10, ""

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v7, :cond_3b

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_3b
    :try_start_3b
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    move v3, v7

    if-eqz v6, :cond_47

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_46} :catch_48

    move v4, v7

    :cond_47
    goto :goto_60

    :catch_48
    move-exception v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parse error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "InterpolatorFactory"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    const-string v7, "BackEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6e

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>()V

    return-object v1

    :cond_6e
    const-string v8, "BackEaseOut"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7c

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_7c
    const-string v9, "BackEaseInOut"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8a

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_8a
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    if-eqz v5, :cond_98

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v1, v3}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object v1

    :cond_98
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6

    if-eqz v5, :cond_a6

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v1, v3}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object v1

    :cond_a6
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b4

    if-eqz v5, :cond_b4

    new-instance v1, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v1, v3}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object v1

    :cond_b4
    const-string v7, "BounceEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    new-instance v1, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object v1

    :cond_c2
    const-string v7, "BounceEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d0

    new-instance v1, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_d0
    const-string v7, "BounceEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_de

    new-instance v1, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_de
    const-string v7, "CircEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ec

    new-instance v1, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object v1

    :cond_ec
    const-string v7, "CircEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fa

    new-instance v1, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_fa
    const-string v7, "CircEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_108

    new-instance v1, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_108
    const-string v7, "CubicEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_116

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object v1

    :cond_116
    const-string v7, "CubicEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_124

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_124
    const-string v7, "CubicEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_132

    new-instance v1, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_132
    const-string v7, "ElasticEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_140

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>()V

    return-object v1

    :cond_140
    const-string v8, "ElasticEaseOut"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14e

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_14e
    const-string v9, "ElasticEaseInOut"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15c

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_15c
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16a

    if-eqz v6, :cond_16a

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object v1

    :cond_16a
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_178

    if-eqz v6, :cond_178

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object v1

    :cond_178
    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_186

    if-eqz v6, :cond_186

    new-instance v1, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object v1

    :cond_186
    const-string v7, "ExpoEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_194

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object v1

    :cond_194
    const-string v7, "ExpoEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a2

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_1a2
    const-string v7, "ExpoEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b0

    new-instance v1, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_1b0
    const-string v7, "QuadEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1be

    new-instance v1, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object v1

    :cond_1be
    const-string v7, "QuadEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1cc

    new-instance v1, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_1cc
    const-string v7, "QuadEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1da

    new-instance v1, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_1da
    const-string v7, "QuartEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e8

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object v1

    :cond_1e8
    const-string v7, "QuartEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f6

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_1f6
    const-string v7, "QuartEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_204

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_204
    const-string v7, "QuintEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_212

    new-instance v1, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object v1

    :cond_212
    const-string v7, "QuintEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_220

    new-instance v1, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_220
    const-string v7, "QuintEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22e

    new-instance v1, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_22e
    const-string v7, "SineEaseIn"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23c

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object v1

    :cond_23c
    const-string v7, "SineEaseOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24a

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object v1

    :cond_24a
    const-string v7, "SineEaseInOut"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_258

    new-instance v1, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object v1

    :cond_258
    const-string v7, "Linear"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_266

    new-instance v1, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object v1

    :cond_266
    const-string v7, "PhysicBased"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_274

    new-instance v1, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>()V

    return-object v1

    :cond_274
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_282

    if-eqz v6, :cond_282

    new-instance v1, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v1, v3, v4}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-object v1

    :cond_282
    return-object v1
.end method
