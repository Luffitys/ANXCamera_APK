.class public Lmiui/maml/animation/AlphaAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 8

    const-string v0, "Alpha"

    const-string v1, "a"

    invoke-direct {p0, p1, v0, v1, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    const-string v0, "delayValue"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    :try_start_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-exception v1

    :goto_1b
    goto :goto_2a

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/maml/animation/AlphaAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v2, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v3

    double-to-int v1, v3

    iput v1, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/AlphaAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getDefaultValue()D
    .registers 3

    const-wide v0, 0x406fe00000000000L    # 255.0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .registers 4

    iget v0, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    int-to-double v0, v0

    return-wide v0
.end method
