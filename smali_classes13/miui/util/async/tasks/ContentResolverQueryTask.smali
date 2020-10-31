.class public abstract Lmiui/util/async/tasks/ContentResolverQueryTask;
.super Lmiui/util/async/Task;
.source "ContentResolverQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;,
        Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/Task<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field private mDescription:Ljava/lang/String;

.field private mHasMissingContentChange:Z

.field private mPauseAutoRequery:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private mTaskManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/TaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;

.field private mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    iput-object p3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    iput-object p4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    iput-object p5, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableAutoRequery()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mAutoRequery:Z

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    :cond_17
    return-void
.end method

.method public enableAutoRequery()Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/async/tasks/ContentResolverQueryTask<",
            "TT;>.Cookie;"
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mAutoRequery:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mAutoRequery:Z

    new-instance v1, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-direct {v1, p0}, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;-><init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUriObserver:Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1d
    new-instance v0, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/ContentResolverQueryTask$Cookie;-><init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_8b

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    const/16 v2, 0x3b

    const-string v3, "]@"

    const/4 v4, 0x0

    const/16 v5, 0x5b

    if-eqz v1, :cond_39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_24
    iget-object v6, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    if-eqz v1, :cond_70

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v1, :cond_6b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_56
    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_68

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    if-eqz v1, :cond_7e

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mDescription:Ljava/lang/String;

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :cond_8b
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mTaskManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mPauseAutoRequery:Z

    return-void
.end method

.method protected query()Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method requery()V
    .registers 2

    iget-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mPauseAutoRequery:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mHasMissingContentChange:Z

    goto :goto_1e

    :cond_8
    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mTaskManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskManager;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->restart()Z

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskManager;->add(Lmiui/util/async/Task;)V

    goto :goto_1e

    :cond_1b
    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->disableAutoRequery()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method resume()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mPauseAutoRequery:Z

    iget-boolean v1, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mHasMissingContentChange:Z

    if-eqz v1, :cond_c

    iput-boolean v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask;->mHasMissingContentChange:Z

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->requery()V

    :cond_c
    return-void
.end method
