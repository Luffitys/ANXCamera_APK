.class public final synthetic Landroid/app/admin/-$$Lambda$DevicePolicyKeyguardService$1$fjXH0Pq_QzHSYdL9qO2BTxQE-IE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/DevicePolicyKeyguardService$1;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/DevicePolicyKeyguardService$1;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/-$$Lambda$DevicePolicyKeyguardService$1$fjXH0Pq_QzHSYdL9qO2BTxQE-IE;->f$0:Landroid/app/admin/DevicePolicyKeyguardService$1;

    iput-object p2, p0, Landroid/app/admin/-$$Lambda$DevicePolicyKeyguardService$1$fjXH0Pq_QzHSYdL9qO2BTxQE-IE;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/admin/-$$Lambda$DevicePolicyKeyguardService$1$fjXH0Pq_QzHSYdL9qO2BTxQE-IE;->f$0:Landroid/app/admin/DevicePolicyKeyguardService$1;

    iget-object v1, p0, Landroid/app/admin/-$$Lambda$DevicePolicyKeyguardService$1$fjXH0Pq_QzHSYdL9qO2BTxQE-IE;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyKeyguardService$1;->lambda$onCreateKeyguardSurface$0$DevicePolicyKeyguardService$1(Landroid/os/IBinder;)V

    return-void
.end method
