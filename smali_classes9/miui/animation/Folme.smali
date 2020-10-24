.class public Lmiui/animation/Folme;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLAG_IN_TOUCH:J = 0x4L

.field public static final FLAG_PARALLEL:J = 0x2L

.field public static final FLAG_QUEUE:J = 0x1L

.field private static final sImplMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs clean([Landroid/view/View;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lmiui/animation/Folme;->doClean(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs clean([Ljava/lang/Object;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lmiui/animation/Folme;->doClean(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static doClean(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/animation/Folme$FolmeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/animation/Folme$FolmeImpl;->clean()V

    :cond_0
    return-void
.end method

.method public static varargs end([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/Folme$FolmeImpl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lmiui/animation/Folme$FolmeImpl;->end()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiui/animation/IAnimTarget;)Lmiui/animation/Folme$FolmeImpl;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    aget-object v4, p0, v1

    sget-object v5, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {v4, v5}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v4

    aput-object v4, p1, v1

    sget-object v4, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/animation/Folme$FolmeImpl;

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    return-object v0
.end method

.method public static getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;
    .locals 3

    instance-of v0, p0, Lmiui/animation/IAnimTarget;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/animation/IAnimTarget;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lmiui/animation/Folme;->getTargets(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/IAnimTarget;

    invoke-virtual {v1}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lmiui/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTargets(Ljava/util/Collection;)V
    .locals 3

    sget-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/IAnimTarget;

    invoke-virtual {v1}, Lmiui/animation/IAnimTarget;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getValueTarget(Ljava/lang/Object;)Lmiui/animation/ValueTarget;
    .locals 1

    sget-object v0, Lmiui/animation/ValueTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    check-cast p0, Lmiui/animation/ValueTarget;

    return-object p0
.end method

.method public static isInDraggingState(Landroid/view/View;)Z
    .locals 1

    const v0, 0x100b0005

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onListViewTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {p0}, Lmiui/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiui/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lmiui/animation/controller/ListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static setAnimPlayRatio(F)V
    .locals 1

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/animation/internal/AnimRunner;->setTimeRatio(F)V

    return-void
.end method

.method public static setDraggingState(Landroid/view/View;Z)V
    .locals 1

    const v0, 0x100b0005

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;
    .locals 3

    sget-object v0, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/Folme$FolmeImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/animation/Folme$FolmeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/IAnimTarget;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/animation/Folme$FolmeImpl;-><init>([Lmiui/animation/IAnimTarget;Lmiui/animation/Folme$1;)V

    sget-object v1, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static varargs useAt([Landroid/view/View;)Lmiui/animation/IFolme;
    .locals 5

    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    sget-object v0, Lmiui/animation/ViewTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    invoke-static {p0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v2, v0, [Lmiui/animation/IAnimTarget;

    invoke-static {p0, v2}, Lmiui/animation/Folme;->fillTargetArrayAndGetImpl([Landroid/view/View;[Lmiui/animation/IAnimTarget;)Lmiui/animation/Folme$FolmeImpl;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lmiui/animation/Folme$FolmeImpl;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lmiui/animation/Folme$FolmeImpl;-><init>([Lmiui/animation/IAnimTarget;Lmiui/animation/Folme$1;)V

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, v2, v1

    sget-object v4, Lmiui/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "useAt can not be applied to empty views array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs useValue([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .locals 2

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    sget-object v0, Lmiui/animation/ValueTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lmiui/animation/ValueTarget;

    invoke-direct {p0}, Lmiui/animation/ValueTarget;-><init>()V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lmiui/animation/IAnimTarget;->setFlags(J)V

    :goto_0
    invoke-static {p0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public static useVarFontAt(Landroid/widget/TextView;II)Lmiui/animation/IVarFontStyle;
    .locals 1

    new-instance v0, Lmiui/animation/controller/FolmeFont;

    invoke-direct {v0}, Lmiui/animation/controller/FolmeFont;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lmiui/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiui/animation/IVarFontStyle;

    move-result-object p0

    return-object p0
.end method
