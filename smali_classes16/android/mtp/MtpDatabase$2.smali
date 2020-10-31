.class Landroid/mtp/MtpDatabase$2;
.super Landroid/mtp/MtpStorageManager$MtpNotifier;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase;)V
    .registers 2

    iput-object p1, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V

    :cond_11
    return-void
.end method

.method public sendObjectInfoChanged(I)V
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectInfoChanged(I)V

    :cond_11
    return-void
.end method

.method public sendObjectRemoved(I)V
    .registers 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    # getter for: Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V

    :cond_11
    return-void
.end method
