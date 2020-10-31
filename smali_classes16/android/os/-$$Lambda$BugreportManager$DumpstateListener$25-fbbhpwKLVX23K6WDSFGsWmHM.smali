.class public final synthetic Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$25-fbbhpwKLVX23K6WDSFGsWmHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/BugreportManager$DumpstateListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/BugreportManager$DumpstateListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$25-fbbhpwKLVX23K6WDSFGsWmHM;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iput-boolean p2, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$25-fbbhpwKLVX23K6WDSFGsWmHM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$25-fbbhpwKLVX23K6WDSFGsWmHM;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iget-boolean v1, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$25-fbbhpwKLVX23K6WDSFGsWmHM;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onScreenshotTaken$3$BugreportManager$DumpstateListener(Z)V

    return-void
.end method
