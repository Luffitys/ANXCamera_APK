.class final Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/db/provider/DbProvider;


# instance fields
.field private dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

.field final synthetic this$0:Lcom/android/camera/db/provider/DbProviderMgr;


# direct methods
.method public constructor <init>(Lcom/android/camera/db/provider/DbProviderMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;->this$0:Lcom/android/camera/db/provider/DbProviderMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/camera/db/item/DbItemSaveTask;

    invoke-direct {p1}, Lcom/android/camera/db/item/DbItemSaveTask;-><init>()V

    iput-object p1, p0, Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    return-void
.end method


# virtual methods
.method public dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;->dbItemSaveTask:Lcom/android/camera/db/item/DbItemSaveTask;

    return-object p0
.end method

.method public bridge synthetic dbItemSaveTask()Lcom/android/camera/db/provider/DbProvider$providerDb;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/db/provider/DbProviderMgr$DbProviderImpl;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object p0

    return-object p0
.end method
