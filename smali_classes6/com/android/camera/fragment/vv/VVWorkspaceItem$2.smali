.class Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspaceItem;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;->this$0:Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method
