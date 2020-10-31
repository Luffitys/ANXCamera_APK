.class public final synthetic Landroid/app/-$$Lambda$AppOpsManager$OnOpNotedCallback$1$Rp-GotIWwSMrFjDEmAcFNvnPRkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager$OnOpNotedCallback$1;

.field public final synthetic f$1:Landroid/app/AsyncNotedAppOp;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager$OnOpNotedCallback$1;Landroid/app/AsyncNotedAppOp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$AppOpsManager$OnOpNotedCallback$1$Rp-GotIWwSMrFjDEmAcFNvnPRkY;->f$0:Landroid/app/AppOpsManager$OnOpNotedCallback$1;

    iput-object p2, p0, Landroid/app/-$$Lambda$AppOpsManager$OnOpNotedCallback$1$Rp-GotIWwSMrFjDEmAcFNvnPRkY;->f$1:Landroid/app/AsyncNotedAppOp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$AppOpsManager$OnOpNotedCallback$1$Rp-GotIWwSMrFjDEmAcFNvnPRkY;->f$0:Landroid/app/AppOpsManager$OnOpNotedCallback$1;

    iget-object v1, p0, Landroid/app/-$$Lambda$AppOpsManager$OnOpNotedCallback$1$Rp-GotIWwSMrFjDEmAcFNvnPRkY;->f$1:Landroid/app/AsyncNotedAppOp;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager$OnOpNotedCallback$1;->lambda$opNoted$0$AppOpsManager$OnOpNotedCallback$1(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method
