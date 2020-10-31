.class public final synthetic Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$Vi18nEKTiYzuC_I5Io1XCZxd88w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/BugreportManager$DumpstateListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/BugreportManager$DumpstateListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$Vi18nEKTiYzuC_I5Io1XCZxd88w;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iput p2, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$Vi18nEKTiYzuC_I5Io1XCZxd88w;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$Vi18nEKTiYzuC_I5Io1XCZxd88w;->f$0:Landroid/os/BugreportManager$DumpstateListener;

    iget v1, p0, Landroid/os/-$$Lambda$BugreportManager$DumpstateListener$Vi18nEKTiYzuC_I5Io1XCZxd88w;->f$1:I

    invoke-virtual {v0, v1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onProgress$0$BugreportManager$DumpstateListener(I)V

    return-void
.end method
