.class Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;
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
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    const/4 v1, 0x1

    # setter for: Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mcancelStatus:I
    invoke-static {v0, v1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$402(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;I)I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    # invokes: Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelAuthentication()V
    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$500(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V

    return-void
.end method
