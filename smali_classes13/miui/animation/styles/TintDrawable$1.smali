.class Lmiui/animation/styles/TintDrawable$1;
.super Ljava/lang/Object;
.source "TintDrawable.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/styles/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Lmiui/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1b

    # getter for: Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiui/animation/styles/TintDrawable;->access$000(Lmiui/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    # invokes: Lmiui/animation/styles/TintDrawable;->clear()V
    invoke-static {v0}, Lmiui/animation/styles/TintDrawable;->access$100(Lmiui/animation/styles/TintDrawable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1b
    return-void
.end method
