.class public interface abstract Lmiui/animation/ITouchStyle;
.super Ljava/lang/Object;
.source "ITouchStyle.java"

# interfaces
.implements Lmiui/animation/IStateContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/ITouchStyle$TouchType;
    }
.end annotation


# virtual methods
.method public varargs abstract bindViewOfListItem(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
.end method

.method public varargs abstract handleTouchOf(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V
.end method

.method public varargs abstract handleTouchOf(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
.end method

.method public abstract ignoreTouchOf(Landroid/view/View;)V
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public varargs abstract onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V
.end method

.method public varargs abstract setAlpha(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;
.end method

.method public abstract setBackgroundColor(FFFF)Lmiui/animation/ITouchStyle;
.end method

.method public abstract setBackgroundColor(I)Lmiui/animation/ITouchStyle;
.end method

.method public varargs abstract setScale(F[Lmiui/animation/ITouchStyle$TouchType;)Lmiui/animation/ITouchStyle;
.end method

.method public abstract setTint(FFFF)Lmiui/animation/ITouchStyle;
.end method

.method public abstract setTint(I)Lmiui/animation/ITouchStyle;
.end method

.method public abstract setTintMode(I)Lmiui/animation/ITouchStyle;
.end method

.method public abstract setTouchDown()V
.end method

.method public abstract setTouchUp()V
.end method

.method public varargs abstract touchDown([Lmiui/animation/base/AnimConfig;)V
.end method

.method public varargs abstract touchUp([Lmiui/animation/base/AnimConfig;)V
.end method

.method public abstract useVarFont(Landroid/widget/TextView;III)Lmiui/animation/ITouchStyle;
.end method
