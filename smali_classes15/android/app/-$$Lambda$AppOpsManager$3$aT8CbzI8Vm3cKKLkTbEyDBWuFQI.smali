.class public final synthetic Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    iput p2, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$1:I

    iput p3, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$2:I

    iput-object p4, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    iget v1, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$1:I

    iget v2, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$2:I

    iget-object v3, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/app/-$$Lambda$AppOpsManager$3$aT8CbzI8Vm3cKKLkTbEyDBWuFQI;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager$3;->lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;Z)V

    return-void
.end method
