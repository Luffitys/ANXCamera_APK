.class public final synthetic Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic f$1:Landroid/os/storage/DiskInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/DiskInfo;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;->f$1:Landroid/os/storage/DiskInfo;

    iput p3, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;->f$1:Landroid/os/storage/DiskInfo;

    iget v2, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$omFTtK-HVLnUiKLog2nIDD0yvGg;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onDiskScanned$5$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method
