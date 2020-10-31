.class Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "MamlMediaDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/MamlMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mManager:Lmiui/maml/ResourceManager;

.field private mSource:Lmiui/maml/util/MamlMediaDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/ResourceManager;Lmiui/maml/util/MamlMediaDataSource;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mManager:Lmiui/maml/ResourceManager;

    iput-object p3, p0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mManager:Lmiui/maml/ResourceManager;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mSource:Lmiui/maml/util/MamlMediaDataSource;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    # invokes: Lmiui/maml/util/MamlMediaDataSource;->setMemoryFile(Landroid/os/MemoryFile;)V
    invoke-static {v1, v0}, Lmiui/maml/util/MamlMediaDataSource;->access$000(Lmiui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method
