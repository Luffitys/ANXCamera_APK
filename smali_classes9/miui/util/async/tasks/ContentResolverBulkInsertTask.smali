.class public Lmiui/util/async/tasks/ContentResolverBulkInsertTask;
.super Lmiui/util/async/Task;
.source ""


# instance fields
.field private mDescription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public doLoad()Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->doLoad()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    array-length v2, v1

    if-nez v2, :cond_0

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    array-length v1, v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mValues:[Landroid/content/ContentValues;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mDescription:Ljava/lang/String;

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverBulkInsertTask;->mDescription:Ljava/lang/String;

    return-object p0
.end method
