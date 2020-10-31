.class Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "MiuiFaceManagerImpl.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    # invokes: Landroid/hardware/miuiface/MiuiFaceManagerImpl;->cancelEnrollment()V
    invoke-static {v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$400(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    return-void
.end method
