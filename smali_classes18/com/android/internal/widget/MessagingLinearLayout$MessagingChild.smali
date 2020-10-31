.class public interface abstract Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
.super Ljava/lang/Object;
.source "MessagingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MessagingLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessagingChild"
.end annotation


# static fields
.field public static final MEASURED_NORMAL:I = 0x0

.field public static final MEASURED_SHORTENED:I = 0x1

.field public static final MEASURED_TOO_SMALL:I = 0x2


# virtual methods
.method public abstract getConsumedLines()I
.end method

.method public getExtraSpacing()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMeasuredType()I
.end method

.method public hasDifferentHeightWhenFirst()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract hideAnimated()V
.end method

.method public abstract isHidingAnimated()Z
.end method

.method public setIsFirstInLayout(Z)V
    .registers 2

    return-void
.end method

.method public abstract setMaxDisplayedLines(I)V
.end method
