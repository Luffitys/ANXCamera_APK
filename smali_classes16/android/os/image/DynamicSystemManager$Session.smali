.class public Landroid/os/image/DynamicSystemManager$Session;
.super Ljava/lang/Object;
.source "DynamicSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/image/DynamicSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/image/DynamicSystemManager;


# direct methods
.method private constructor <init>(Landroid/os/image/DynamicSystemManager;)V
    .registers 2

    iput-object p1, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/image/DynamicSystemManager;Landroid/os/image/DynamicSystemManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemManager$Session;-><init>(Landroid/os/image/DynamicSystemManager;)V

    return-void
.end method


# virtual methods
.method public commit()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    # getter for: Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;
    invoke-static {v0}, Landroid/os/image/DynamicSystemManager;->access$000(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Landroid/os/image/IDynamicSystemService;->setEnable(ZZ)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    # getter for: Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;
    invoke-static {v0}, Landroid/os/image/DynamicSystemManager;->access$000(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/image/IDynamicSystemService;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAshmem(Landroid/os/ParcelFileDescriptor;J)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    # getter for: Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;
    invoke-static {v0}, Landroid/os/image/DynamicSystemManager;->access$000(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/image/IDynamicSystemService;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public submitFromAshmem(I)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager$Session;->this$0:Landroid/os/image/DynamicSystemManager;

    # getter for: Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;
    invoke-static {v0}, Landroid/os/image/DynamicSystemManager;->access$000(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroid/os/image/IDynamicSystemService;->submitFromAshmem(J)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
