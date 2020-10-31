.class public final synthetic Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$CPp_W20gR1fGCkqpcUmxn-igDvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/storage/StorageManager$StorageEventListenerDelegate;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$CPp_W20gR1fGCkqpcUmxn-igDvo;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iput-boolean p2, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$CPp_W20gR1fGCkqpcUmxn-igDvo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$CPp_W20gR1fGCkqpcUmxn-igDvo;->f$0:Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-boolean v1, p0, Landroid/os/storage/-$$Lambda$StorageManager$StorageEventListenerDelegate$CPp_W20gR1fGCkqpcUmxn-igDvo;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->lambda$onUsbMassStorageConnectionChanged$0$StorageManager$StorageEventListenerDelegate(Z)V

    return-void
.end method
