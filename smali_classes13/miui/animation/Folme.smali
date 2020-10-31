.class public Lmiui/animation/Folme;
.super Ljava/lang/Object;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/Folme$FolmeImpl;,
        Lmiui/animation/Folme$FontWeight;,
        Lmiui/animation/Folme$FontType;
    }
.end annotation


# static fields
.field public static final FLAG_IN_TOUCH:J = 0x4L

.field public static final FLAG_PARALLEL:J = 0x2L

.field public static final FLAG_QUEUE:J = 0x1L

.field private static final sImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiui/animation/IAnimTarget;",
            "Lmiui/animation/Folme$FolmeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs clean([Landroid/view/View;)V
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    invoke-static {v2}, Lmiui/animation/Folme;->doClean(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static varargs clean([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    invoke-static {v2}, Lmiui/animation/Folme;->doClean(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method private static doClean(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-object v1, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/Folme$FolmeImpl;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lmiui/animation/Folme$FolmeImpl;->clean()V

    :cond_14
    return-void
.end method

.method public static varargs end([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_1b

    :cond_e
    sget-object v4, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/animation/Folme$FolmeImpl;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lmiui/animation/Folme$FolmeImpl;->end()V

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return-void
.end method

.method private static fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiui/animation/IAnimTarget;)Lmiui/animation/Folme$FolmeImpl;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_24

    aget-object v3, p0, v2

    sget-object v4, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {v3, v4}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v3

    aput-object v3, p1, v2

    sget-object v3, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/Folme$FolmeImpl;

    if-nez v1, :cond_1e

    move-object v1, v3

    goto :goto_21

    :cond_1e
    if-eq v1, v3, :cond_21

    const/4 v0, 0x1

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_24
    if-eqz v0, :cond_28

    const/4 v2, 0x0

    goto :goto_29

    :cond_28
    move-object v2, v1

    :goto_29
    return-object v2
.end method

.method public static getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lmiui/animation/ITargetCreator<",
            "TT;>;)",
            "Lmiui/animation/IAnimTarget;"
        }
    .end annotation

    instance-of v0, p0, Lmiui/animation/IAnimTarget;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lmiui/animation/IAnimTarget;

    return-object v0

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lmiui/animation/Folme;->getTargets(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/IAnimTarget;

    invoke-virtual {v2}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    return-object v2

    :cond_2d
    goto :goto_14

    :cond_2e
    if-eqz p1, :cond_35

    invoke-interface {p1, p0}, Lmiui/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiui/animation/IAnimTarget;

    move-result-object v1

    return-object v1

    :cond_35
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getTargets(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/IAnimTarget;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/IAnimTarget;

    invoke-virtual {v1}, Lmiui/animation/IAnimTarget;->isValid()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_20
    sget-object v2, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    goto :goto_a

    :cond_26
    return-void
.end method

.method public static getValueTarget(Ljava/lang/Object;)Lmiui/animation/ValueTarget;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lmiui/animation/ValueTarget;"
        }
    .end annotation

    sget-object v0, Lmiui/animation/ValueTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    check-cast v0, Lmiui/animation/ValueTarget;

    return-object v0
.end method

.method public static isInDraggingState(Landroid/view/View;)Z
    .registers 2

    const v0, 0x100b0005

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static onListViewTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-static {p0}, Lmiui/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiui/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0, p1}, Lmiui/animation/controller/ListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_9
    return-void
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public static setAnimPlayRatio(F)V
    .registers 2

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/animation/internal/AnimRunner;->setTimeRatio(F)V

    return-void
.end method

.method public static setDraggingState(Landroid/view/View;Z)V
    .registers 4

    const v0, 0x100b0005

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_12

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_12
    return-void
.end method

.method public static useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;
    .registers 5

    sget-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/Folme$FolmeImpl;

    if-nez v0, :cond_1c

    new-instance v1, Lmiui/animation/Folme$FolmeImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiui/animation/IAnimTarget;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiui/animation/Folme$FolmeImpl;-><init>([Lmiui/animation/IAnimTarget;Lmiui/animation/Folme$1;)V

    move-object v0, v1

    sget-object v1, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0
.end method

.method public static varargs useAt([Landroid/view/View;)Lmiui/animation/IFolme;
    .registers 7

    array-length v0, p0

    if-eqz v0, :cond_33

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    aget-object v0, p0, v1

    sget-object v1, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {v0, v1}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v0

    return-object v0

    :cond_15
    array-length v0, p0

    new-array v0, v0, [Lmiui/animation/IAnimTarget;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiui/animation/IAnimTarget;)Lmiui/animation/Folme$FolmeImpl;

    move-result-object v2

    if-nez v2, :cond_32

    new-instance v3, Lmiui/animation/Folme$FolmeImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lmiui/animation/Folme$FolmeImpl;-><init>([Lmiui/animation/IAnimTarget;Lmiui/animation/Folme$1;)V

    move-object v2, v3

    array-length v3, v0

    :goto_26
    if-ge v1, v3, :cond_32

    aget-object v4, v0, v1

    sget-object v5, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_32
    return-object v2

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "useAt can not be applied to empty views array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs useValue([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .registers 4

    array-length v0, p0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    aget-object v0, p0, v0

    sget-object v1, Lmiui/animation/ValueTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {v0, v1}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v0

    goto :goto_20

    :cond_11
    new-instance v0, Lmiui/animation/ValueTarget;

    invoke-direct {v0}, Lmiui/animation/ValueTarget;-><init>()V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/animation/ValueTarget;->setFlags(J)V

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v1

    move-object v0, v1

    :goto_20
    invoke-interface {v0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v1

    return-object v1
.end method

.method public static useVarFontAt(Landroid/widget/TextView;II)Lmiui/animation/IVarFontStyle;
    .registers 4

    new-instance v0, Lmiui/animation/controller/FolmeFont;

    invoke-direct {v0}, Lmiui/animation/controller/FolmeFont;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lmiui/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiui/animation/IVarFontStyle;

    move-result-object v0

    return-object v0
.end method
