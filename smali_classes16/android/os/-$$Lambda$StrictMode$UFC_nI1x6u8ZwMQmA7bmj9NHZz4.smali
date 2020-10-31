.class public final synthetic Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/StrictMode$OnVmViolationListener;

.field public final synthetic f$1:Landroid/os/strictmode/Violation;


# direct methods
.method public synthetic constructor <init>(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;->f$0:Landroid/os/StrictMode$OnVmViolationListener;

    iput-object p2, p0, Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;->f$1:Landroid/os/strictmode/Violation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;->f$0:Landroid/os/StrictMode$OnVmViolationListener;

    iget-object v1, p0, Landroid/os/-$$Lambda$StrictMode$UFC_nI1x6u8ZwMQmA7bmj9NHZz4;->f$1:Landroid/os/strictmode/Violation;

    invoke-static {v0, v1}, Landroid/os/StrictMode;->lambda$onVmPolicyViolation$3(Landroid/os/StrictMode$OnVmViolationListener;Landroid/os/strictmode/Violation;)V

    return-void
.end method
