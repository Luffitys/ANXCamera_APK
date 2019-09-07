.class public Landroid/arch/lifecycle/LifecycleRegistry;
.super Landroid/arch/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleRegistry"


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroid/arch/core/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/a<",
            "Landroid/arch/lifecycle/LifecycleObserver;",
            "Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroid/arch/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    new-instance v0, Landroid/arch/core/b/a;

    invoke-direct {v0}, Landroid/arch/core/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method

.method private backwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/c;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/LifecycleRegistry;->downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateTargetState(Landroid/arch/lifecycle/LifecycleObserver;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/core/b/a;->g(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object p1, p1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$State;

    :cond_1
    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p0

    return-object p0
.end method

.method private static downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private forwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/c;->T()Landroid/arch/core/b/c$d;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    iget-object v3, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v3}, Landroid/arch/lifecycle/LifecycleRegistry;->upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->RESUMED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSynced()Z
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/c;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v0}, Landroid/arch/core/b/c;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v2}, Landroid/arch/core/b/c;->U()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static min(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1
    .param p0    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private moveToState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-boolean p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->sync()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private popParentState()V
    .locals 1

    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0

    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    const-string p0, "LifecycleRegistry"

    const-string v0, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v2}, Landroid/arch/core/b/c;->eldest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->backwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v1}, Landroid/arch/core/b/c;->U()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v1, v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->forwardPass(Landroid/arch/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private static upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0
.end method


# virtual methods
.method public addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 6
    .param p1    # Landroid/arch/lifecycle/LifecycleObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    :goto_0
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v0, p1, v1}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroid/arch/lifecycle/LifecycleObserver;Landroid/arch/lifecycle/Lifecycle$State;)V

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v1, p1, v0}, Landroid/arch/core/b/a;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleOwner;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    :goto_2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->calculateTargetState(Landroid/arch/lifecycle/LifecycleObserver;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    iget v5, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    :goto_3
    iget-object v5, v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {v4, p1}, Landroid/arch/core/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/LifecycleRegistry;->pushParentState(Landroid/arch/lifecycle/Lifecycle$State;)V

    iget-object v4, v0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v4}, Landroid/arch/lifecycle/LifecycleRegistry;->upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->popParentState()V

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->calculateTargetState(Landroid/arch/lifecycle/LifecycleObserver;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleRegistry;->sync()V

    :cond_6
    iget p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    return-void
.end method

.method public getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mState:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public getObserverCount()I
    .locals 0

    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {p0}, Landroid/arch/core/b/c;->size()I

    move-result p0

    return p0
.end method

.method public handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/Lifecycle$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->moveToState(Landroid/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public markState(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/Lifecycle$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->moveToState(Landroid/arch/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 0
    .param p1    # Landroid/arch/lifecycle/LifecycleObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Landroid/arch/lifecycle/LifecycleRegistry;->mObserverMap:Landroid/arch/core/b/a;

    invoke-virtual {p0, p1}, Landroid/arch/core/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
