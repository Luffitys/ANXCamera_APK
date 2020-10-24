.class Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mTouchMap:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method varargs addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/controller/FolmeTouch;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/base/AnimConfig;

    invoke-static {v1, p1, p2, v0}, Lmiuix/animation/controller/FolmeTouch;->access$900(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->mTouchMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p0

    return p0
.end method
