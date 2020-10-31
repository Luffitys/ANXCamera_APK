.class Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;
.super Ljava/lang/Object;
.source "FolmeTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerViewTouchListener"
.end annotation


# instance fields
.field private mTouchMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lmiui/animation/controller/FolmeTouch;",
            "[",
            "Lmiui/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/animation/controller/FolmeTouch$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method varargs addTouch(Lmiui/animation/controller/FolmeTouch;[Lmiui/animation/base/AnimConfig;)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/controller/FolmeTouch;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmiui/animation/base/AnimConfig;

    # invokes: Lmiui/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V
    invoke-static {v2, p1, p2, v3}, Lmiui/animation/controller/FolmeTouch;->access$600(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiui/animation/base/AnimConfig;)V

    goto :goto_a

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method removeTouch(Lmiui/animation/controller/FolmeTouch;)Z
    .registers 3

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmiui/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method
