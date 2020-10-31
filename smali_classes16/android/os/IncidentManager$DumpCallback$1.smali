.class Landroid/os/IncidentManager$DumpCallback$1;
.super Landroid/os/IIncidentDumpCallback$Stub;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager$DumpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/IncidentManager$DumpCallback;


# direct methods
.method constructor <init>(Landroid/os/IncidentManager$DumpCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    invoke-direct {p0}, Landroid/os/IIncidentDumpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDumpSection$0$IncidentManager$DumpCallback$1(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    # getter for: Landroid/os/IncidentManager$DumpCallback;->mId:I
    invoke-static {v0}, Landroid/os/IncidentManager$DumpCallback;->access$100(Landroid/os/IncidentManager$DumpCallback;)I

    move-result v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/IncidentManager$DumpCallback;->onDumpSection(ILjava/io/OutputStream;)V

    return-void
.end method

.method public onDumpSection(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    # getter for: Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/os/IncidentManager$DumpCallback;->access$000(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    # getter for: Landroid/os/IncidentManager$DumpCallback;->mExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Landroid/os/IncidentManager$DumpCallback;->access$000(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;

    invoke-direct {v1, p0, p1}, Landroid/os/-$$Lambda$IncidentManager$DumpCallback$1$tl253UkNGsQEjl8BxvdvJbVERYo;-><init>(Landroid/os/IncidentManager$DumpCallback$1;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_17
    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    # getter for: Landroid/os/IncidentManager$DumpCallback;->mId:I
    invoke-static {v0}, Landroid/os/IncidentManager$DumpCallback;->access$100(Landroid/os/IncidentManager$DumpCallback;)I

    move-result v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/IncidentManager$DumpCallback;->onDumpSection(ILjava/io/OutputStream;)V

    :goto_25
    return-void
.end method
