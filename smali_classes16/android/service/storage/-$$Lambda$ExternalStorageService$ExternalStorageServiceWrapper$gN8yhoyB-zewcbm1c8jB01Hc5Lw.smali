.class public final synthetic Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iput-object p2, p0, Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;->f$0:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    iget-object v1, p0, Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/storage/-$$Lambda$ExternalStorageService$ExternalStorageServiceWrapper$gN8yhoyB-zewcbm1c8jB01Hc5Lw;->f$2:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, v2}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;->lambda$endSession$2$ExternalStorageService$ExternalStorageServiceWrapper(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
