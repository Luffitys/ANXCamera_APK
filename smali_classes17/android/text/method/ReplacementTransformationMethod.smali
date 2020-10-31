.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getOriginal()[C
.end method

.method protected abstract getReplacement()[C
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 10

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    move-result-object v1

    instance-of v2, p1, Landroid/text/Editable;

    if-nez v2, :cond_41

    const/4 v2, 0x1

    array-length v3, v0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1e

    aget-char v5, v0, v4

    invoke-static {p1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    if-ltz v5, :cond_1b

    const/4 v2, 0x0

    goto :goto_1e

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_21

    return-object p1

    :cond_21
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_41

    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_37

    new-instance v4, Landroid/text/SpannedString;

    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    move-object v6, p1

    check-cast v6, Landroid/text/Spanned;

    invoke-direct {v5, v6, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v4, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_37
    new-instance v4, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v4, p1, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    invoke-virtual {v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_41
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_4e

    new-instance v2, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    invoke-direct {v2, v3, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    return-object v2

    :cond_4e
    new-instance v2, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v2, p1, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    return-object v2
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6

    return-void
.end method
