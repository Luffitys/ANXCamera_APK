.class public Landroid/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static sDefaultTransition:Landroid/transition/Transition;

.field private static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field mScenePairTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/transition/Scene;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TransitionManager"

    sput-object v0, Landroid/transition/TransitionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/transition/TransitionManager;->EMPTY_STRINGS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/ArrayMap;
    .registers 1

    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .registers 4

    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_17

    sget-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    :cond_17
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/ViewGroup;Landroid/transition/Scene;)V

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_25
    return-void
.end method

.method private static changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 6

    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v1

    if-nez p1, :cond_1b

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/transition/Scene;->exit()V

    :cond_17
    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    goto :goto_3c

    :cond_1b
    sget-object v2, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setCanRemoveViews(Z)V

    :cond_33
    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/transition/Scene;->enter()V

    invoke-static {v0, v2}, Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .registers 5

    sget-object v0, Landroid/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_22
    if-ltz v2, :cond_30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v3, p0}, Landroid/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_30
    return-void
.end method

.method public static getDefaultTransition()Landroid/transition/Transition;
    .registers 1

    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method private static getRunningTransitions()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/transition/Transition;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move-object v0, v2

    if-nez v2, :cond_25

    :cond_14
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v2

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    sget-object v2, Landroid/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_25
    return-object v0
.end method

.method public static go(Landroid/transition/Scene;)V
    .registers 2

    sget-object v0, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method

.method public static go(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .registers 4

    if-eqz p1, :cond_13

    if-eqz p0, :cond_13

    new-instance v0, Landroid/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/transition/TransitionManager$MultiListener;-><init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_13
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .registers 5

    invoke-static {}, Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2, p0}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    goto :goto_16

    :cond_26
    if-eqz p1, :cond_2c

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    :cond_2c
    invoke-static {p0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/transition/Scene;->exit()V

    :cond_35
    return-void
.end method


# virtual methods
.method public getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-static {v1}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroid/transition/Scene;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v3, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-eqz v3, :cond_21

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/transition/Transition;

    if-eqz v0, :cond_21

    return-object v0

    :cond_21
    iget-object v2, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/transition/Transition;

    if-eqz v0, :cond_2e

    move-object v2, v0

    goto :goto_30

    :cond_2e
    sget-object v2, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    :goto_30
    return-object v2
.end method

.method public setDefaultTransition(Landroid/transition/Transition;)V
    .registers 2

    sput-object p1, Landroid/transition/TransitionManager;->sDefaultTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 6

    iget-object v0, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_15

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/transition/TransitionManager;->mScenePairTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V
    .registers 4

    iget-object v0, p0, Landroid/transition/TransitionManager;->mSceneTransitions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transitionTo(Landroid/transition/Scene;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/transition/TransitionManager;->getTransition(Landroid/transition/Scene;)Landroid/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->changeScene(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method
