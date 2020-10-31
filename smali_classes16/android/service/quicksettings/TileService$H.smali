.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_SUCCESS:I = 0x7

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_TILE_ADDED:I = 0x3

.field private static final MSG_TILE_CLICKED:I = 0x5

.field private static final MSG_TILE_REMOVED:I = 0x4

.field private static final MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field private final mTileServiceName:Ljava/lang/String;

.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->mTileServiceName:Ljava/lang/String;

    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Handler - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_80

    goto/16 :goto_7f

    :pswitch_8
    :try_start_8
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mService:Landroid/service/quicksettings/IQSService;
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$100(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mTileToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/service/quicksettings/TileService;->access$000(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_7f

    :catch_18
    move-exception v0

    goto :goto_7f

    :pswitch_1a
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$500(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mUnlockRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$500(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_7f

    :pswitch_2c
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    # setter for: Landroid/service/quicksettings/TileService;->mToken:Landroid/os/IBinder;
    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->access$402(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onClick()V

    goto :goto_7f

    :pswitch_3b
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mListening:Z
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$300(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # setter for: Landroid/service/quicksettings/TileService;->mListening:Z
    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->access$302(Landroid/service/quicksettings/TileService;Z)Z

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    :cond_4d
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    goto :goto_7f

    :pswitch_53
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    goto :goto_7f

    :pswitch_59
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mListening:Z
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$300(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # setter for: Landroid/service/quicksettings/TileService;->mListening:Z
    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->access$302(Landroid/service/quicksettings/TileService;Z)Z

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    goto :goto_7f

    :pswitch_6c
    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    # getter for: Landroid/service/quicksettings/TileService;->mListening:Z
    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$300(Landroid/service/quicksettings/TileService;)Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    const/4 v1, 0x1

    # setter for: Landroid/service/quicksettings/TileService;->mListening:Z
    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->access$302(Landroid/service/quicksettings/TileService;Z)Z

    iget-object v0, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    :cond_7f
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_59
        :pswitch_53
        :pswitch_3b
        :pswitch_2c
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method
