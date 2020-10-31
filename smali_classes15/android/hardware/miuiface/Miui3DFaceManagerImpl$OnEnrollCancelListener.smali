.class Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "Miui3DFaceManagerImpl.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    # invokes: Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelEnrollment()V
    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$700(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V

    return-void
.end method
