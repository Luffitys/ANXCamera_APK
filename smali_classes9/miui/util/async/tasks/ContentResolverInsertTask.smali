.class public Lmiui/util/async/tasks/ContentResolverInsertTask;
.super Lmiui/util/async/Task;
.source ""


# instance fields
.field private mDescription:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    iput-object p1, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public doLoad()Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverInsertTask;->doLoad()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mDescription:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverInsertTask;->mDescription:Ljava/lang/String;

    return-object p0
.end method
