.class public interface abstract Lmiui/animation/IVisibleStyle;
.super Ljava/lang/Object;
.source "IVisibleStyle.java"

# interfaces
.implements Lmiui/animation/IStateContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/IVisibleStyle$VisibleType;
    }
.end annotation


# virtual methods
.method public varargs abstract hide([Lmiui/animation/base/AnimConfig;)V
.end method

.method public varargs abstract setAlpha(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;
.end method

.method public abstract setBound(IIII)Lmiui/animation/IVisibleStyle;
.end method

.method public abstract setHide()Lmiui/animation/IVisibleStyle;
.end method

.method public abstract setMove(II)Lmiui/animation/IVisibleStyle;
.end method

.method public varargs abstract setMove(II[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;
.end method

.method public varargs abstract setScale(F[Lmiui/animation/IVisibleStyle$VisibleType;)Lmiui/animation/IVisibleStyle;
.end method

.method public abstract setShow()Lmiui/animation/IVisibleStyle;
.end method

.method public abstract setShowDelay(J)Lmiui/animation/IVisibleStyle;
.end method

.method public varargs abstract show([Lmiui/animation/base/AnimConfig;)V
.end method

.method public abstract useAutoAlpha(Z)Lmiui/animation/IVisibleStyle;
.end method
