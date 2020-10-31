.class Lmiui/contentcatcher/sdk/ContentCatcherManager$1;
.super Ljava/lang/Object;
.source "ContentCatcherManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/ContentCatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/contentcatcher/sdk/ContentCatcherManager;


# direct methods
.method constructor <init>(Lmiui/contentcatcher/sdk/ContentCatcherManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;->this$0:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    # getter for: Lmiui/contentcatcher/sdk/ContentCatcherManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentCatcher binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;->this$0:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    # getter for: Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    invoke-static {v0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->access$100(Lmiui/contentcatcher/sdk/ContentCatcherManager;)Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;->this$0:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    # getter for: Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    invoke-static {v0}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->access$100(Lmiui/contentcatcher/sdk/ContentCatcherManager;)Lmiui/contentcatcher/IContentCatcherService;

    move-result-object v0

    invoke-interface {v0}, Lmiui/contentcatcher/IContentCatcherService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;->this$0:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    iget-object v1, v1, Lmiui/contentcatcher/sdk/ContentCatcherManager;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lmiui/contentcatcher/sdk/ContentCatcherManager$1;->this$0:Lmiui/contentcatcher/sdk/ContentCatcherManager;

    const/4 v1, 0x0

    # setter for: Lmiui/contentcatcher/sdk/ContentCatcherManager;->mService:Lmiui/contentcatcher/IContentCatcherService;
    invoke-static {v0, v1}, Lmiui/contentcatcher/sdk/ContentCatcherManager;->access$102(Lmiui/contentcatcher/sdk/ContentCatcherManager;Lmiui/contentcatcher/IContentCatcherService;)Lmiui/contentcatcher/IContentCatcherService;

    :cond_29
    return-void
.end method
