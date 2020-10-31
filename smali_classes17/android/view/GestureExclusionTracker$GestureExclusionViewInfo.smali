.class Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;
.super Ljava/lang/Object;
.source "GestureExclusionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureExclusionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GestureExclusionViewInfo"
.end annotation


# static fields
.field public static final CHANGED:I = 0x0

.field public static final GONE:I = 0x2

.field public static final UNCHANGED:I = 0x1


# instance fields
.field mDirty:Z

.field mExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mDirty:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mExclusionRects:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public update()I
    .registers 9

    invoke-virtual {p0}, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_54

    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_45

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    goto :goto_24

    :cond_46
    iget-object v3, p0, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mExclusionRects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v3, 0x1

    return v3

    :cond_50
    iput-object v2, p0, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mExclusionRects:Ljava/util/List;

    const/4 v3, 0x0

    return v3

    :cond_54
    :goto_54
    const/4 v1, 0x2

    return v1
.end method
