.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivityForCts;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:Landroid/content/IntentFilter;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivityForCts;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$1:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$2:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$0:Lcom/android/internal/app/ChooserActivityForCts;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$1:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$2:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivityForCts$kq7ZIZjVPUyLRZTIzIrQf_4HX0o;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivityForCts;->lambda$queryDirectShareTargets$2$ChooserActivityForCts(Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V

    return-void
.end method
