.class Lmiui/maml/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/SoundManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/SoundManager;


# direct methods
.method constructor <init>(Lmiui/maml/SoundManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    # setter for: Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v1}, Lmiui/maml/SoundManager;->access$002(Lmiui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    # getter for: Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lmiui/maml/SoundManager;->access$000(Lmiui/maml/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    # getter for: Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/maml/SoundManager;->access$100(Lmiui/maml/SoundManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    const/4 v2, 0x1

    # setter for: Lmiui/maml/SoundManager;->mInitialized:Z
    invoke-static {v1, v2}, Lmiui/maml/SoundManager;->access$202(Lmiui/maml/SoundManager;Z)Z

    iget-object v1, p0, Lmiui/maml/SoundManager$1;->this$0:Lmiui/maml/SoundManager;

    # getter for: Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/maml/SoundManager;->access$100(Lmiui/maml/SoundManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_32

    throw v1
.end method
