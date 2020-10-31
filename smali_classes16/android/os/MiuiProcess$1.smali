.class Landroid/os/MiuiProcess$1;
.super Ljava/lang/ThreadLocal;
.source "MiuiProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MiuiProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/os/MiuiProcess$PriorityState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/os/MiuiProcess$PriorityState;
    .registers 3

    new-instance v0, Landroid/os/MiuiProcess$PriorityState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/MiuiProcess$PriorityState;-><init>(Landroid/os/MiuiProcess$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/os/MiuiProcess$1;->initialValue()Landroid/os/MiuiProcess$PriorityState;

    move-result-object v0

    return-object v0
.end method
