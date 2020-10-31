.class public final synthetic Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic f$1:Landroid/os/storage/VolumeInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Landroid/os/storage/VolumeInfo;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-object p2, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$1:Landroid/os/storage/VolumeInfo;

    iput p3, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$2:I

    iput p4, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$1:Landroid/os/storage/VolumeInfo;

    iget v2, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$2:I

    iget v3, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$pyZP4UQS232-tqmtk5lSCyZx9qU;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onVolumeStateChanged$2$StorageManager$StorageEventListenerDelegate(Landroid/os/storage/VolumeInfo;II)V

    return-void
.end method
